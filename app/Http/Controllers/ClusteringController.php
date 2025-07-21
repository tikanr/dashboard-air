<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Clustering;
use App\Models\Pelanggan;

class ClusteringController extends Controller
{
    /**
     * Tampilkan hasil clustering berdasarkan filter bulan dan tahun
     */
    public function index(Request $request)
    {
        $bulan = $request->input('bulan');
        $tahun = $request->input('tahun');

        $query = Clustering::with('pelanggan');

        if ($bulan && $tahun) {
            $query->whereMonth('updated_at', $bulan)
                  ->whereYear('updated_at', $tahun);
        }

        $clusters = $query->get()->groupBy('cluster');

        return view('clusterings.result', compact('clusters', 'bulan', 'tahun'));
    }

    /**
     * Proses clustering pelanggan berdasarkan pembayaran dan keterlambatan
     */
    public function process(Request $request)
    {
        $bulan = $request->input('bulan');
        $tahun = $request->input('tahun');

        // Nilai centroid tetap (air, bayar) - untuk referensi saja
        $centroids = [
            'c1' => ['air' => 8,  'bayar' => 25000],
            'c2' => ['air' => 24, 'bayar' => 46000],
            'c3' => ['air' => 14, 'bayar' => 31000],
        ];

        $pelanggans = Pelanggan::with([
            'pembayarans' => function ($q) use ($bulan, $tahun) {
                if ($bulan && $tahun) {
                    $q->whereMonth('tanggal_bayar', $bulan)
                      ->whereYear('tanggal_bayar', $tahun);
                }
            },
            'tagihans.pembayarans' => function ($q) use ($bulan, $tahun) {
                if ($bulan && $tahun) {
                    $q->whereMonth('tanggal_bayar', $bulan)
                      ->whereYear('tanggal_bayar', $tahun);
                }
            }
        ])->get();

        $results = [];

        foreach ($pelanggans as $pelanggan) {
            $jumlahAir = $pelanggan->pemakaian_air ?? 0;
            $totalBayar = $pelanggan->pembayarans->sum('jumlah_bayar');
            $jumlahPembayaran = $pelanggan->pembayarans->count();

            $jumlahTerlambat = 0;
            $totalTerlambatHari = 0;

            foreach ($pelanggan->tagihans as $tagihan) {
                foreach ($tagihan->pembayarans as $pembayaran) {
                    if ($pembayaran->tanggal_bayar > $tagihan->tanggal_jatuh_tempo) {
                        $jumlahTerlambat++;
                        $totalTerlambatHari += $pembayaran->tanggal_bayar->diffInDays($tagihan->tanggal_jatuh_tempo);
                    }
                }
            }

            $rata2Terlambat = $jumlahTerlambat > 0 
                ? $totalTerlambatHari / $jumlahTerlambat 
                : 0;

            // Hitung jarak ke masing-masing centroid (untuk referensi/tampilan)
            $distances = [];
            foreach ($centroids as $key => $c) {
                $dx = $jumlahAir - $c['air'];
                $dy = $totalBayar - $c['bayar'];
                $distances[$key] = round(sqrt($dx * $dx + $dy * $dy), 2);
            }

            // Tentukan cluster berdasarkan jumlah keterlambatan
            if ($jumlahTerlambat === 0) {
                $cluster = 'Cluster 1';
                $kategori = 'Tepat Waktu';
            } elseif ($jumlahTerlambat <= 2) {
                $cluster = 'Cluster 2';
                $kategori = 'Terlambat';
            } else {
                $cluster = 'Cluster 3';
                $kategori = 'Sering Terlambat';
            }

            // Simpan ke database (update jika sudah ada)
            Clustering::updateOrCreate(
                [
                    'pelanggan_id' => $pelanggan->id,
                ],
                [
                    'cluster' => $cluster,
                    'kategori' => $kategori,
                    'updated_at' => now(),
                ]
            );

            // Simpan hasil ke array (untuk view)
            $results[] = [
                'pelanggan_id' => $pelanggan->id,
                'nama' => $pelanggan->nama,
                'jumlah_air' => $jumlahAir,
                'total_bayar' => $totalBayar,
                'jumlah_pembayaran' => $jumlahPembayaran,
                'jumlah_terlambat' => $jumlahTerlambat,
                'rata_rata_keterlambatan' => round($rata2Terlambat, 2),
                'c1' => $distances['c1'], // Tetap tampilkan jarak ke C1
                'c2' => $distances['c2'], // Tetap tampilkan jarak ke C2
                'c3' => $distances['c3'], // Tetap tampilkan jarak ke C3
                'cluster' => $cluster,
                'kategori' => $kategori,
            ];
        }

        return view('clusterings.result', compact('results', 'bulan', 'tahun'));
    }
}