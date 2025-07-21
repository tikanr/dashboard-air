<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use App\Models\Tagihan;
use App\Models\Pembayaran;
use App\Models\Pelanggan;
use Carbon\Carbon;

class PembayaranSeeder extends Seeder
{
    public function run()
    {
        // Nonaktifkan pengecekan foreign key
        DB::statement('SET FOREIGN_KEY_CHECKS=0;');

        // Hapus data dari pembayaran dulu, baru tagihan
        DB::table('pembayarans')->delete();
        DB::table('tagihans')->delete();

        // Reset AUTO_INCREMENT ID ke 1 (jika pakai MySQL)
        DB::statement('ALTER TABLE pembayarans AUTO_INCREMENT = 1');
        DB::statement('ALTER TABLE tagihans AUTO_INCREMENT = 1');

        // Aktifkan kembali foreign key check
        DB::statement('SET FOREIGN_KEY_CHECKS=1;');

        $pelanggan = Pelanggan::all();
        $totalPelanggan = $pelanggan->count();

        $jumlahTepatWaktu   = round($totalPelanggan * 0.56);
        $jumlahTerlambat    = round($totalPelanggan * 0.18);
        $jumlahSeringLambat = $totalPelanggan - $jumlahTepatWaktu - $jumlahTerlambat;

        $pelangganAcak = $pelanggan->shuffle();
        $pelangganTepatWaktu   = $pelangganAcak->splice(0, $jumlahTepatWaktu);
        $pelangganTerlambat    = $pelangganAcak->splice(0, $jumlahTerlambat);
        $pelangganSeringLambat = $pelangganAcak;

        $kategoriMap = [];
        foreach ($pelangganTepatWaktu as $p) $kategoriMap[$p->id] = 'tepat';
        foreach ($pelangganTerlambat as $p) $kategoriMap[$p->id] = 'terlambat';
        foreach ($pelangganSeringLambat as $p) $kategoriMap[$p->id] = 'sering';

        $bulanSekarang = Carbon::now();

        foreach ($pelanggan as $p) {
            $kategori = $kategoriMap[$p->id];
            $jumlahTelat = 0;

            for ($i = 0; $i < 6; $i++) {
                $tanggalTagihan = $bulanSekarang->copy()->subMonths($i)->startOfMonth();
                $tanggalJatuhTempo = $tanggalTagihan->copy()->addDays(10);
                $bulan = $tanggalTagihan->format('m');
                $tahun = $tanggalTagihan->format('Y');

                $jumlahTagihan = rand(10000, 82000);
                $airDipakai = rand(5, 30);

                $tagihan = Tagihan::create([
                    'pelanggan_id'         => $p->id,
                    'bulan'                => $bulan,
                    'tahun'                => $tahun,
                    'tanggal_tagihan'      => $tanggalTagihan,
                    'tanggal_jatuh_tempo'  => $tanggalJatuhTempo,
                    'jumlah_tagihan'       => $jumlahTagihan,
                    'air_dipakai'          => $airDipakai,
                    'status'               => 'Lunas',
                    'created_at'           => now(),
                    'updated_at'           => now(),
                ]);

                // Atur tanggal bayar berdasarkan kategori
                if ($kategori === 'tepat') {
                    $tanggalBayar = $tanggalJatuhTempo->copy()->subDays(rand(0, 2));
                } elseif ($kategori === 'terlambat') {
                    if ($jumlahTelat < 2 && rand(0, 1)) {
                        $tanggalBayar = $tanggalJatuhTempo->copy()->addDays(rand(1, 4));
                        $jumlahTelat++;
                    } else {
                        $tanggalBayar = $tanggalJatuhTempo->copy()->subDays(rand(0, 2));
                    }
                } else { // sering
                    if ($jumlahTelat < 5) {
                        $tanggalBayar = $tanggalJatuhTempo->copy()->addDays(rand(3, 7));
                        $jumlahTelat++;
                    } else {
                        $tanggalBayar = $tanggalJatuhTempo->copy()->subDays(rand(0, 2));
                    }
                }

                Pembayaran::create([
                    'tagihan_id'    => $tagihan->id,
                    'pelanggan_id'  => $p->id,
                    'tanggal_bayar' => $tanggalBayar,
                    'jumlah_bayar'  => $jumlahTagihan,
                    'created_at'    => now(),
                    'updated_at'    => now(),
                ]);
            }
        }
    }
}
