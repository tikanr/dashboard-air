<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Notifications\Notification;
use App\Models\Tagihan;
use App\Models\Pelanggan;

class WhatsAppNotification extends Notification
{
    use Queueable;

    protected $tagihan;
    protected $pelanggan;

    /**
     * Create a new notification instance.
     */
    public function __construct(Tagihan $tagihan)
    {
        $this->tagihan = $tagihan;
        $this->pelanggan = $tagihan->pelanggan;
    }

    /**
     * Notification channel
     */
    public function via($notifiable)
    {
        return ['fonnte']; // Pastikan kamu punya FonnteChannel di App\Notifications\Channels
    }

    /**
     * Format untuk FonnteChannel
     */
    public function toFonnte($notifiable)
    {
        return [
            'phone' => $this->formatNomorWhatsApp(),
            'message' => $this->generateMessage(),
            'database_data' => $this->prepareDatabaseData(), // Jika kamu ingin simpan ke DB
        ];
    }

    /**
     * Format nomor WA ke format internasional (62...)
     */
    protected function formatNomorWhatsApp()
    {
        $noWa = preg_replace('/\D/', '', $this->pelanggan->no_wa); // hanya angka
        if (str_starts_with($noWa, '0')) {
            $noWa = '62' . substr($noWa, 1);
        }
        return $noWa;
    }

    /**
     * Format isi pesan WhatsApp
     */
    protected function generateMessage()
{
    $formattedJumlah = number_format($this->tagihan->jumlah_tagihan, 0, ',', '.');
    $jatuhTempo = $this->tagihan->tanggal_jatuh_tempo
        ? $this->tagihan->tanggal_jatuh_tempo->format('d-m-Y')
        : '-';
    $linkPembayaran = url("/pembayaran/{$this->tagihan->id}");

    return <<<EOT
        📩 *Pengingat Tagihan Air*

        Halo, Bapak/Ibu *{$this->pelanggan->nama}*, semoga hari Anda menyenangkan!

        Kami ingin mengingatkan bahwa Anda memiliki tagihan air untuk bulan *{$this->tagihan->bulan}/{$this->tagihan->tahun}* dengan rincian:

        📞 Nomor WA: *{$this->pelanggan->no_wa}*
        📍 Alamat: {$this->pelanggan->alamat}  
        💰 Jumlah Tagihan: *Rp {$formattedJumlah}*  
        📅 Jatuh Tempo: *{$jatuhTempo}*  
        📌 Status: *{$this->tagihan->status}*

        Mohon segera lakukan pembayaran sebelum jatuh tempo untuk menghindari denda keterlambatan.

        Terima kasih atas perhatian dan kerja samanya.  
        Salam,  
        _Tim Sumur Bor Tirto Nur Abadi_
        EOT;
}

    /**
     * Data opsional jika ingin simpan ke DB
     */
    protected function prepareDatabaseData()
    {
        return [
            'pelanggan_id' => $this->pelanggan->id,
            'tagihan_id' => $this->tagihan->id,
            'no_wa' => $this->formatNomorWhatsApp(),
            'jumlah_tagihan' => $this->tagihan->jumlah_tagihan,
            'tanggal_dikirim' => now(),
            'status_pengiriman' => 'terkirim',
        ];
    }
}
