<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Pelanggan;
use Carbon\Carbon;

class Clustering extends Model
{
    use HasFactory;

    protected $fillable = [
        'pelanggan_id',
        'cluster_ke',
        'jumlah_pembayaran',
        'rata_rata_keterlambatan',
        'total_tagihan',
    ];

    public function pelanggan()
    {
        return $this->belongsTo(Pelanggan::class);
    }

    /**
     * Ambil data untuk clustering: total bayar, jumlah pembayaran, rata-rata keterlambatan.
     */
    public static function getDataForClustering()
    {
        return Pelanggan::with(['pembayarans.tagihan'])
            ->get()
            ->map(function ($pelanggan) {
                $totalBayar = $pelanggan->pembayarans->sum('jumlah_bayar');
                $jumlahPembayaran = $pelanggan->pembayarans->count();

                $totalKeterlambatan = 0;
                $jumlahTerlambat = 0;

                foreach ($pelanggan->pembayarans as $pembayaran) {
                    $tagihan = $pembayaran->tagihan;

                    if (
                        $tagihan &&
                        $pembayaran->tanggal_bayar &&
                        $tagihan->tanggal_jatuh_tempo
                    ) {
                        $tanggalBayar = Carbon::parse($pembayaran->tanggal_bayar);
                        $jatuhTempo = Carbon::parse($tagihan->tanggal_jatuh_tempo);

                        if ($tanggalBayar->gt($jatuhTempo)) {
                            $hariTerlambat = $tanggalBayar->diffInDays($jatuhTempo);
                            $totalKeterlambatan += $hariTerlambat;
                            $jumlahTerlambat++;
                        }
                    }
                }

                return [
                    'id' => $pelanggan->id,
                    'nama' => $pelanggan->nama,
                    'total_bayar' => $totalBayar,
                    'jumlah_pembayaran' => $jumlahPembayaran,
                    'rata_rata_keterlambatan' => $jumlahTerlambat > 0 ? $totalKeterlambatan / $jumlahTerlambat : 0
                ];
            })
            ->filter(fn ($item) => $item['jumlah_pembayaran'] > 0 || $item['total_bayar'] > 0)
            ->values()
            ->toArray();
    }

    /**
     * K-Means Clustering dengan banyak fitur dan normalisasi.
     */
    public static function kMeansClustering($data, $k = 3, $maxIterations = 100)
    {
        if (count($data) < $k) return [];

        $features = ['total_bayar', 'jumlah_pembayaran', 'rata_rata_keterlambatan'];
        $normalizedData = [];
        $featureMin = [];
        $featureMax = [];

        foreach ($features as $f) {
            $col = array_column($data, $f);
            $featureMin[$f] = min($col);
            $featureMax[$f] = max($col);
        }

        foreach ($data as $item) {
            $normalized = ['id' => $item['id'], 'nama' => $item['nama']];
            foreach ($features as $f) {
                $min = $featureMin[$f];
                $max = $featureMax[$f];
                $normalized[$f] = $max == $min ? 0 : ($item[$f] - $min) / ($max - $min);
            }
            $normalizedData[] = $normalized;
        }

        $centroids = [];
        $keys = array_rand($normalizedData, $k);
        foreach ((array) $keys as $key) {
            $centroids[] = array_intersect_key($normalizedData[$key], array_flip($features));
        }

        for ($iter = 0; $iter < $maxIterations; $iter++) {
            $clusters = array_fill(0, $k, []);

            foreach ($normalizedData as $item) {
                $distances = array_map(function ($centroid) use ($item, $features) {
                    $sum = 0;
                    foreach ($features as $f) {
                        $sum += pow($item[$f] - $centroid[$f], 2);
                    }
                    return sqrt($sum);
                }, $centroids);

                $clusterIndex = array_search(min($distances), $distances);
                $clusters[$clusterIndex][] = $item;
            }

            $newCentroids = [];
            foreach ($clusters as $cluster) {
                $centroid = [];
                foreach ($features as $f) {
                    $centroid[$f] = count($cluster) > 0
                        ? array_sum(array_column($cluster, $f)) / count($cluster)
                        : 0;
                }
                $newCentroids[] = $centroid;
            }

            if ($centroids === $newCentroids) break;
            $centroids = $newCentroids;
        }

        $result = [];
        foreach ($clusters as $clusterIndex => $items) {
            foreach ($items as $item) {
                $original = collect($data)->firstWhere('id', $item['id']);
                $result[] = [
                    'id' => $original['id'],
                    'nama' => $original['nama'],
                    'total_bayar' => $original['total_bayar'],
                    'jumlah_pembayaran' => $original['jumlah_pembayaran'],
                    'rata_rata_keterlambatan' => $original['rata_rata_keterlambatan'],
                    'cluster_ke' => $clusterIndex
                ];
            }
        }

        return $result;
    }
}
