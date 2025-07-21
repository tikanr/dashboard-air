<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;

class Tagihan extends Model
{
    use HasFactory;

    protected $fillable = [
        'pelanggan_id',
        'bulan',
        'tahun',
        'jumlah_tagihan',
        'air_dipakai',
        'tanggal_jatuh_tempo',
        'status',
        'denda',
        'keterangan'
    ];

    protected $casts = [
        'bulan' => 'integer',
        'tahun' => 'integer',
        'jumlah_tagihan' => 'decimal:2',
        'air_dipakai' => 'integer',
        'tanggal_jatuh_tempo' => 'date',
        'denda' => 'decimal:2'
    ];

    /** 🔁 Relasi ke Pelanggan */
    public function pelanggan()
    {
        return $this->belongsTo(Pelanggan::class);
    }

    /** 🔁 Relasi ke Pembayaran */
    public function pembayarans()
    {
        return $this->hasMany(Pembayaran::class);
    }

    /** 🔁 Relasi ke Pengingat (hanya satu) */
    public function pengingat()
    {
        return $this->hasOne(Pengingat::class);
    }

    /** 🔁 Apakah pengingat sudah dikirim */
    public function getSudahDikirimPengingatAttribute(): bool
    {
        return $this->pengingat()->exists();
    }

    /** 📌 Scope: Tagihan tanpa pengingat */
    public function scopeTanpaPengingat($query)
    {
        return $query->whereDoesntHave('pengingat');
    }

    /** 📌 Scope: Tagihan dengan pengingat */
    public function scopeDenganPengingat($query)
    {
        return $query->whereHas('pengingat');
    }

    /** 💰 Total pembayaran */
    public function getTotalPembayaranAttribute(): float
    {
        return (float) $this->pembayarans()->sum('jumlah_bayar');
    }

    /** ✅ Apakah tagihan lunas */
    public function getIsLunasAttribute(): bool
    {
        return $this->total_pembayaran >= $this->jumlah_tagihan;
    }

    /** 🕓 Apakah tagihan sudah lewat jatuh tempo dan belum lunas */
    public function getIsTerlambatAttribute(): bool
    {
        return now()->gt($this->tanggal_jatuh_tempo) && !$this->isLunas;
    }

    /** 💸 Sisa tagihan */
    public function getSisaTagihanAttribute(): float
    {
        return max(0, $this->jumlah_tagihan - $this->total_pembayaran);
    }

    /** 📌 Scope: Belum Lunas */
    public function scopeBelumLunas($query)
    {
        return $query->where('status', 'Belum Lunas');
    }

    /** 📌 Scope: Lunas */
    public function scopeLunas($query)
    {
        return $query->where('status', 'Lunas');
    }

    /** 📌 Scope: Sebagian */
    public function scopeSebagian($query)
    {
        return $query->where('status', 'Sebagian');
    }

    /** 📅 Scope: Bulan Ini */
    public function scopeBulanIni($query)
    {
        return $query->where('bulan', now()->month)
                     ->where('tahun', now()->year);
    }

    /**
     * 🔄 Update status tagihan berdasarkan total pembayaran
     * ❌ Tidak akan lagi menyimpan status 'Terlambat'
     */
    public function updateStatus(): void
    {
        if ($this->isLunas) {
            $this->update(['status' => 'Lunas']);
        } elseif ($this->total_pembayaran > 0) {
            $this->update(['status' => 'Sebagian']);
        } else {
            $this->update(['status' => 'Belum Lunas']);
        }
    }
}
