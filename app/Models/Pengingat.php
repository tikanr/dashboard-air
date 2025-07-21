<?php

// app/Models/Pengingat.php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Pengingat extends Model
{
    protected $fillable = [
        'pelanggan_id',
        'tagihan_id',
        'no_wa',
        'jumlah_tagihan',
        'tanggal_dikirim',
        'status_pengiriman',
    ];

    public function pelanggan() {
        return $this->belongsTo(Pelanggan::class);
    }

    public function tagihan() {
        return $this->belongsTo(Tagihan::class);
    }
}

