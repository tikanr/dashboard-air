<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Laporan extends Model
{
    use HasFactory;

    protected $fillable = [
        'bulan',
        'tahun',
        'total_tagihan',
        'jumlah_lunas',
        'jumlah_belum_lunas',
    ];

    public $timestamps = true; // Untuk menyimpan created_at (waktu laporan dibuat)
}
