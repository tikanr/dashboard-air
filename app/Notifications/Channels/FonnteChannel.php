<?php

namespace App\Notifications\Channels;

use Illuminate\Notifications\Notification;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;

class FonnteChannel
{
    public function send($notifiable, Notification $notification)
    {
        $data = $notification->toFonnte($notifiable);

        try {
            $token = config('services.fonnte.key'); // ✅ PAKAI 'key' SESUAI services.php

            $response = Http::withHeaders([
                'Authorization' => $token,
            ])->post('https://api.fonnte.com/send', [
                'target' => $data['phone'],     // nomor WA tujuan (misalnya 6281234567890)
                'message' => $data['message'],  // isi pesan WA
            ]);

            if ($response->failed()) {
                Log::error('Fonnte Error: ' . $response->body());
                throw new \Exception('Gagal mengirim pesan ke Fonnte: ' . $response->body());
            }

            Log::info('Pesan berhasil dikirim ke Fonnte', $response->json());
        } catch (\Exception $e) {
            Log::error('FonnteChannel Exception: ' . $e->getMessage());
            throw $e;
        }
    }
}
