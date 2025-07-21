<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Pelanggan;
use App\Models\Tagihan;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class TagihanSeeder extends Seeder
{
    public function run()
    {
        // 1. Hapus data terkait (jika ada relasi pembayaran)
        DB::table('pembayarans')->delete();
        DB::table('tagihans')->delete();

        // Data tagihan bulan Januari (34 pelanggan)
        $dataAsli = [
            ['nama' => 'Sudar', 'air' => 8, 'bayar' => 25000],
            ['nama' => 'Makim', 'air' => 10, 'bayar' => 29500],
            ['nama' => 'Andik', 'air' => 21, 'bayar' => 41500],
            ['nama' => 'Marsono', 'air' => 29, 'bayar' => 53500],
            ['nama' => 'Paimin', 'air' => 19, 'bayar' => 38500],
            ['nama' => 'Wagimun', 'air' => 38, 'bayar' => 67000],
            ['nama' => 'Rodin', 'air' => 24, 'bayar' => 46000],
            ['nama' => 'Meslan', 'air' => 10, 'bayar' => 25000],
            ['nama' => 'Dafit', 'air' => 6, 'bayar' => 25000],
            ['nama' => 'Silo', 'air' => 13, 'bayar' => 29500],
            ['nama' => 'Saelan', 'air' => 14, 'bayar' => 31000],
            ['nama' => 'Parmon', 'air' => 11, 'bayar' => 26500],
            ['nama' => 'Kabib', 'air' => 6, 'bayar' => 25000],
            ['nama' => 'Tumijan', 'air' => 14, 'bayar' => 31000],
            ['nama' => 'Nur', 'air' => 0, 'bayar' => 25000],
            ['nama' => 'Podo', 'air' => 7, 'bayar' => 25000],
            ['nama' => 'Sutris', 'air' => 14, 'bayar' => 31000],
            ['nama' => 'Sokinem', 'air' => 16, 'bayar' => 34000],
            ['nama' => 'Andra', 'air' => 1, 'bayar' => 25000],
            ['nama' => 'B. Wo', 'air' => 10, 'bayar' => 25000],
            ['nama' => 'Nyatun', 'air' => 3, 'bayar' => 25000],
            ['nama' => 'Ines', 'air' => 14, 'bayar' => 31000],
            ['nama' => 'Pandi', 'air' => 18, 'bayar' => 25000],
            ['nama' => 'Supri', 'air' => 19, 'bayar' => 38500],
            ['nama' => 'Jiono', 'air' => 12, 'bayar' => 28000],
            ['nama' => 'Senen', 'air' => 0, 'bayar' => 20000],
            ['nama' => 'Jamin', 'air' => 24, 'bayar' => 46000],
            ['nama' => 'Kuat', 'air' => 18, 'bayar' => 37000],
            ['nama' => 'Sugik', 'air' => 20, 'bayar' => 40000],
            ['nama' => 'Eny', 'air' => 14, 'bayar' => 31000],
            ['nama' => 'Jogoboyo', 'air' => 12, 'bayar' => 28000],
            ['nama' => 'Sd', 'air' => 2, 'bayar' => 25000],
            ['nama' => 'Bani Lor', 'air' => 34, 'bayar' => 61000],
        ];

        // Konversi ke array dengan key nama
        $dataJanuari = [];
        foreach ($dataAsli as $item) {
            $dataJanuari[$item['nama']] = $item;
        }

        $pelanggans = Pelanggan::all();

        foreach ($pelanggans as $pelanggan) {
            for ($i = 0; $i < 6; $i++) {
                $tanggalTagihan = Carbon::create(2025, 1, 1)->addMonths($i);
                $tanggalJatuhTempo = $tanggalTagihan->copy()->addDays(10);
                $bulan = $tanggalTagihan->format('m');
                $tahun = $tanggalTagihan->format('Y');

                // Data bulan Januari (data asli)
                if ($i == 0 && isset($dataJanuari[$pelanggan->nama])) {
                    $air = $dataJanuari[$pelanggan->nama]['air'];
                    $tagihan = $dataJanuari[$pelanggan->nama]['bayar'];
                } else {
                    $air = rand(0, 30);
                    $tagihan = rand(20000, 100000);
                }

                // Acak status lunas/belum lunas
                $status = rand(0, 1) ? 'Lunas' : 'Belum Lunas';

                Tagihan::create([
                    'pelanggan_id'         => $pelanggan->id,
                    'bulan'                => $bulan,
                    'tahun'                => $tahun,
                    'tanggal_tagihan'      => $tanggalTagihan,
                    'tanggal_jatuh_tempo'  => $tanggalJatuhTempo,
                    'jumlah_tagihan'       => $tagihan,
                    'air_dipakai'          => $air,
                    'status'               => $status,
                    'created_at'           => now(),
                    'updated_at'           => now(),
                ]);
            }
        }
    }
}
