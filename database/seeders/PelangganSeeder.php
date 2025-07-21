<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Pelanggan;

class PelangganSeeder extends Seeder
{
    public function run()
    {
        $data = [
            // --- Data awal (48 pelanggan) ---
            ['nama' => 'Sudar', 'air_dipakai' => 8, 'tagihan' => 25000],
            ['nama' => 'Andik', 'air_dipakai' => 21, 'tagihan' => 41500],
            ['nama' => 'Paimin', 'air_dipakai' => 19, 'tagihan' => 38500],
            ['nama' => 'Rodin', 'air_dipakai' => 24, 'tagihan' => 46000],
            ['nama' => 'Dafit', 'air_dipakai' => 6, 'tagihan' => 25000],
            ['nama' => 'Silo', 'air_dipakai' => 13, 'tagihan' => 29500],
            ['nama' => 'Saelan', 'air_dipakai' => 14, 'tagihan' => 31000],
            ['nama' => 'Parmon', 'air_dipakai' => 11, 'tagihan' => 26500],
            ['nama' => 'Kabib', 'air_dipakai' => 6, 'tagihan' => 25000],
            ['nama' => 'Tumijan', 'air_dipakai' => 14, 'tagihan' => 31000],
            ['nama' => 'Nur', 'air_dipakai' => 0, 'tagihan' => 25000],
            ['nama' => 'Podo', 'air_dipakai' => 7, 'tagihan' => 25000],
            ['nama' => 'Sutris', 'air_dipakai' => 14, 'tagihan' => 31000],
            ['nama' => 'B. Wo', 'air_dipakai' => 10, 'tagihan' => 25000],
            ['nama' => 'Nyatun', 'air_dipakai' => 3, 'tagihan' => 25000],
            ['nama' => 'Ines', 'air_dipakai' => 14, 'tagihan' => 31000],
            ['nama' => 'Pandi', 'air_dipakai' => 18, 'tagihan' => 25000],
            ['nama' => 'Supri', 'air_dipakai' => 19, 'tagihan' => 38500],
            ['nama' => 'Jiono', 'air_dipakai' => 12, 'tagihan' => 28000],
            ['nama' => 'Warsini', 'air_dipakai' => 12, 'tagihan' => 28000],
            ['nama' => 'Rokim', 'air_dipakai' => 30, 'tagihan' => 55000],
            ['nama' => 'Sugik', 'air_dipakai' => 20, 'tagihan' => 40000],
            ['nama' => 'Eny', 'air_dipakai' => 14, 'tagihan' => 31000],
            ['nama' => 'Sd', 'air_dipakai' => 2, 'tagihan' => 25000],
            ['nama' => 'Makim', 'air_dipakai' => 10, 'tagihan' => 29500],
            ['nama' => 'Marsono', 'air_dipakai' => 29, 'tagihan' => 53500],
            ['nama' => 'Wagimun', 'air_dipakai' => 38, 'tagihan' => 67000],
            ['nama' => 'Meslan', 'air_dipakai' => 10, 'tagihan' => 25000],
            ['nama' => 'Yahmen', 'air_dipakai' => 19, 'tagihan' => 38500],
            ['nama' => 'Bon', 'air_dipakai' => 17, 'tagihan' => 35500],
            ['nama' => 'Sus', 'air_dipakai' => 38, 'tagihan' => 67000],
            ['nama' => 'Ri', 'air_dipakai' => 28, 'tagihan' => 52000],
            ['nama' => 'Budi', 'air_dipakai' => 13, 'tagihan' => 29500],
            ['nama' => 'Rusit', 'air_dipakai' => 18, 'tagihan' => 37000],
            ['nama' => 'Wajib', 'air_dipakai' => 14, 'tagihan' => 31000],
            ['nama' => 'Azis', 'air_dipakai' => 24, 'tagihan' => 46000],
            ['nama' => 'Sokinem', 'air_dipakai' => 16, 'tagihan' => 34000],
            ['nama' => 'Andra', 'air_dipakai' => 1, 'tagihan' => 25000],
            ['nama' => 'Wagiran', 'air_dipakai' => 1, 'tagihan' => 25000],
            ['nama' => 'Jumadi', 'air_dipakai' => 41, 'tagihan' => 71500],
            ['nama' => 'Sigit', 'air_dipakai' => 15, 'tagihan' => 32500],
            ['nama' => 'Sumi', 'air_dipakai' => 8, 'tagihan' => 25000],
            ['nama' => 'Wawan', 'air_dipakai' => 25, 'tagihan' => 47500],
            ['nama' => 'Senen', 'air_dipakai' => 0, 'tagihan' => 20000],
            ['nama' => 'Jamin', 'air_dipakai' => 24, 'tagihan' => 46000],
            ['nama' => 'Kuat', 'air_dipakai' => 18, 'tagihan' => 37000],
            ['nama' => 'Indoko', 'air_dipakai' => 11, 'tagihan' => 26500],
            ['nama' => 'Jogoboyo', 'air_dipakai' => 12, 'tagihan' => 28000],
            ['nama' => 'Bani Lor', 'air_dipakai' => 34, 'tagihan' => 61000],
        ];
        foreach ($data as $item) {
            Pelanggan::create([
                'nama' => $item['nama'],
                'no_wa' => '08' . rand(1000000000, 9999999999),
                'alamat' => 'Basekan, Dagangan, Madiun',
                'air_dipakai' => $item['air_dipakai'],
                'jumlah_tagihan' => $item['tagihan'],
                'tanggal_jatuh_tempo' => now()->addDays(rand(5, 15)),
            ]);
        }
    }
}
