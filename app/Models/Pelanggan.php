<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable; // ✅ Tambahkan ini

class Pelanggan extends Model
{
    use HasFactory, Notifiable; // ✅ Tambahkan Notifiable di sini juga

    protected $fillable = [
        'nama',
        'no_wa',
        'alamat',
        'air_dipakai',
        'jumlah_tagihan',
        'tanggal_jatuh_tempo',
        'status'
    ];

    protected $casts = [
        'tanggal_jatuh_tempo' => 'date',
        'air_dipakai' => 'integer',
        'jumlah_tagihan' => 'decimal:2'
    ];

    public function tagihans()
    {
        return $this->hasMany(Tagihan::class);
    }

    public function pembayarans()
    {
        return $this->hasMany(Pembayaran::class);
    }

    public function activeTagihan()
    {
        return $this->hasOne(Tagihan::class)->latestOfMany();
    }

    public function scopeActive($query)
    {
        return $query->where('status', 'Aktif');
    }

    public function scopeInactive($query)
    {
        return $query->where('status', 'Non-Aktif');
    }
}
