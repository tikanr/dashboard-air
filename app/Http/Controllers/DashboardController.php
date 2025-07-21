<?php


namespace App\Http\Controllers;

use App\Models\Pelanggan;
use App\Models\Pembayaran;
use Illuminate\Http\Request;
use Carbon\Carbon;

class DashboardController extends Controller
{
   public function index(Request $request)
{
    $bulan = $request->input('bulan', date('m'));
    $tahun = $request->input('tahun', date('Y'));

    $totalPelanggan = Pelanggan::count();

    $totalPembayaranBulanIni = Pembayaran::whereMonth('tanggal_bayar', $bulan)
        ->whereYear('tanggal_bayar', $tahun)
        ->sum('jumlah_bayar');

    // Hitung pelanggan terlambat dan tidak terlambat di bulan & tahun yang difilter
    $pembayarans = Pembayaran::whereMonth('tanggal_bayar', $bulan)
        ->whereYear('tanggal_bayar', $tahun)
        ->get();

    $terlambat = 0;
    $tidakTerlambat = 0;
    foreach ($pembayarans as $p) {
        $jatuh_tempo = Carbon::createFromDate($p->tanggal_bayar)->startOfMonth()->addDays(9); // tgl 10
        $bayar_di = Carbon::parse($p->tanggal_bayar);
        if ($bayar_di->greaterThan($jatuh_tempo)) {
            $terlambat++;
        } else {
            $tidakTerlambat++;
        }
    }

    // Grafik: Total pembayaran per bulan dalam tahun yang dipilih
    $dataPerBulan = Pembayaran::selectRaw('MONTH(tanggal_bayar) as bulan, SUM(jumlah_bayar) as total')
        ->whereYear('tanggal_bayar', $tahun)
        ->groupBy('bulan')
        ->pluck('total', 'bulan');

    $grafikData = [];
    for ($i = 1; $i <= 12; $i++) {
        $grafikData[] = $dataPerBulan[$i] ?? 0;
    }

    return view('dashboard.index', compact(
        'totalPelanggan',
        'totalPembayaranBulanIni',
        'terlambat',
        'tidakTerlambat',
        'grafikData',
        'bulan',
        'tahun'
    ));
}
}