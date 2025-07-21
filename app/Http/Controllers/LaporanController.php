<?php

namespace App\Http\Controllers;

use App\Models\Tagihan;
use Illuminate\Http\Request;
use Barryvdh\DomPDF\Facade\Pdf;

class LaporanController extends Controller
{
    public function index(Request $request)
    {
        $query = Tagihan::with('pelanggan');

        if ($request->filled('bulan')) {
            $query->where('bulan', $request->bulan);
        }

        if ($request->filled('tahun')) {
            $query->where('tahun', $request->tahun);
        }

        if ($request->filled('status')) {
            $query->where('status', $request->status);
        }

        $tagihans = $query->get();

        $rekap = [
            'total' => $tagihans->count(),
            'lunas' => $tagihans->where('status', 'Lunas')->count(),
            'belum' => $tagihans->where('status', 'Belum Lunas')->count(),
            'total_tagihan' => $tagihans->sum('jumlah_tagihan'),
        ];

        return view('laporan.index', compact('tagihans', 'rekap'));
    }

    public function exportPdf(Request $request)
    {
        $query = Tagihan::with('pelanggan');

        if ($request->filled('bulan')) {
            $query->where('bulan', $request->bulan);
        }

        if ($request->filled('tahun')) {
            $query->where('tahun', $request->tahun);
        }

        if ($request->filled('status')) {
            $query->where('status', $request->status);
        }

        $tagihans = $query->get();

        $rekap = [
            'total' => $tagihans->count(),
            'lunas' => $tagihans->where('status', 'Lunas')->count(),
            'belum' => $tagihans->where('status', 'Belum Lunas')->count(),
            'total_tagihan' => $tagihans->sum('jumlah_tagihan'),
        ];

        $pdf = Pdf::loadView('laporan.pdf', compact('tagihans', 'rekap'));

        return $pdf->download('laporan-tagihan.pdf');
    }
}
