<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;

class Pembayaran extends Model
{
    use HasFactory;

    protected $fillable = [
        'pelanggan_id',
        'tagihan_id',
        'tanggal_bayar',
        'jumlah_bayar',
        'status_lunas',
        'status_terlambat',
        'metode_pembayaran',
        'bukti_pembayaran',
        'keterangan'
    ];

    protected $casts = [
        'tanggal_bayar' => 'date',
        'jumlah_bayar' => 'decimal:2',
        'created_at' => 'datetime',
        'updated_at' => 'datetime'
    ];

    /**
     * Relationship with Pelanggan
     */
    public function pelanggan()
    {
        return $this->belongsTo(Pelanggan::class);
    }

    /**
     * Relationship with Tagihan
     */
    public function tagihan()
    {
        return $this->belongsTo(Tagihan::class);
    }

    /**
     * Determine if payment is late
     */
    public function isTerlambat(): bool
    {
        if (!$this->tagihan || !$this->tanggal_bayar) {
            return false;
        }

        return $this->tanggal_bayar->gt($this->tagihan->tanggal_jatuh_tempo);
    }

    /**
     * Determine payment completeness status
     */
    public function getStatusPembayaranAttribute(): string
    {
        if (!$this->tagihan) {
            return 'Tidak Diketahui';
        }

        $totalPaid = $this->tagihan->pembayarans->sum('jumlah_bayar');
        $totalDue = $this->tagihan->jumlah_tagihan;

        if ($totalPaid >= $totalDue) {
            return 'Lunas';
        } elseif ($totalPaid > 0) {
            return 'Sebagian';
        }

        return 'Belum Lunas';
    }

    /**
     * Scope for late payments
     */
    public function scopeTerlambat($query)
    {
        return $query->where('status_terlambat', 'Terlambat');
    }

    /**
     * Scope for on-time payments
     */
    public function scopeTepatWaktu($query)
    {
        return $query->where('status_terlambat', 'Tepat Waktu');
    }

    /**
     * Scope for complete payments
     */
    public function scopeLunas($query)
    {
        return $query->where('status_lunas', 'Lunas');
    }

    /**
     * Scope for partial payments
     */
    public function scopeSebagian($query)
    {
        return $query->where('status_lunas', 'Sebagian');
    }
}