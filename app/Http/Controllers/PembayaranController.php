<?php

namespace App\Http\Controllers;

use App\Models\Pembayaran;
use App\Models\Pelanggan;
use App\Models\Tagihan;
use Illuminate\Http\Request;
use Carbon\Carbon;

class PembayaranController extends Controller
{
    // Menampilkan semua pembayaran
    public function all()
    {
        $pembayarans = Pembayaran::with(['pelanggan', 'tagihan'])->latest()->paginate(10);
        return view('pembayarans.all', compact('pembayarans'));
    }

    // Menampilkan riwayat pembayaran pelanggan
    public function show($id)
    {
        $pelanggan = Pelanggan::findOrFail($id);
        $tagihan = Tagihan::where('pelanggan_id', $id)->latest()->first();
        $pembayarans = Pembayaran::where('pelanggan_id', $id)->with('tagihan')->latest()->get();

        return view('pembayarans.show', compact('pelanggan', 'tagihan', 'pembayarans'));
    }

    // Simpan pembayaran baru
    public function store(Request $request, $pelangganId)
    {
        $request->validate([
            'tanggal_bayar' => 'required|date',
            'jumlah_bayar' => 'required|numeric|min:0',
        ]);

        $pelanggan = Pelanggan::findOrFail($pelangganId);
        $tagihan = Tagihan::where('pelanggan_id', $pelangganId)->latest()->first();

        if (!$tagihan) {
            return back()->with('error', 'Tagihan tidak ditemukan.');
        }

        $statusLunas = $request->jumlah_bayar >= $tagihan->jumlah_tagihan ? 'Lunas' : 'Belum Lunas';

        // Hitung keterlambatan (logika diperbaiki)
        $jatuhTempo = Carbon::parse($tagihan->tanggal_jatuh_tempo);
        $tanggalBayar = Carbon::parse($request->tanggal_bayar);

        if ($tanggalBayar->greaterThan($jatuhTempo)) {
            $statusTerlambat = 'Terlambat';
        } else {
            $statusTerlambat = 'Tepat Waktu';
        }

        Pembayaran::create([
            'tagihan_id' => $tagihan->id,
            'pelanggan_id' => $pelangganId,
            'tanggal_bayar' => $request->tanggal_bayar,
            'jumlah_bayar' => $request->jumlah_bayar,
            'status_lunas' => $statusLunas,
            'status_terlambat' => $statusTerlambat,
        ]);

        if ($statusLunas === 'Lunas') {
            $tagihan->update(['status' => 'Lunas']);
        }

        return back()->with('success', 'Pembayaran berhasil ditambahkan.');
    }

    // Hapus pembayaran
    public function destroy($id)
    {
        $pembayaran = Pembayaran::findOrFail($id);
        $tagihan = $pembayaran->tagihan;

        $pembayaran->delete();

        if ($tagihan && $tagihan->pembayarans()->where('status_lunas', 'Lunas')->count() === 0) {
            $tagihan->update(['status' => 'Belum Lunas']);
        }

        return back()->with('success', 'Pembayaran berhasil dihapus.');
    }
}
