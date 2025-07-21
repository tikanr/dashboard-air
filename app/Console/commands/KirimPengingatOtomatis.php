<?php
namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Models\Tagihan;
use App\Http\Controllers\PengingatController;

class KirimPengingatOtomatis extends Command
{
    protected $signature = 'pengingat:otomatis';
    protected $description = 'Kirim notifikasi otomatis untuk tagihan belum lunas';

    public function handle()
    {
        $controller = new PengingatController();
        $tagihans = Tagihan::with('pelanggan')
            ->where('status', 'Belum Lunas')
            ->whereDate('tanggal_jatuh_tempo', '<=', now()->addDays(3))
            ->get();

        foreach ($tagihans as $tagihan) {
            $controller->kirimNotifikasi($tagihan);
        }

        $this->info("Notifikasi otomatis dikirimkan.");
    }
}
