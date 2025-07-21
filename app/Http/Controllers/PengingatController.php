<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Tagihan;
use App\Models\Pengingat;
use App\Notifications\WhatsAppNotification;
use Illuminate\Support\Facades\Log;

class PengingatController extends Controller
{
    public function index(Request $request)
    {
        $query = Pengingat::with(['pelanggan', 'tagihan']);

        if ($request->bulan) {
            $query->whereMonth('tanggal_dikirim', $request->bulan);
        }

        if ($request->tahun) {
            $query->whereYear('tanggal_dikirim', $request->tahun);
        }

        $pengingats = $query->latest('tanggal_dikirim')->get();

        return view('pengingats.index', compact('pengingats'));
    }

    public function create()
    {
        $tagihans = Tagihan::with('pelanggan')
            ->where('status', 'Belum Lunas')
            ->whereDoesntHave('pengingat', function($query) {
                $query->where('status_pengiriman', 'terkirim');
            })
            ->get();

        return view('pengingats.create', compact('tagihans'));
    }

    public function kirim(Request $request)
    {
        $request->validate([
            'tagihan_id' => 'required|exists:tagihans,id'
        ]);

        $tagihan = Tagihan::with('pelanggan')->findOrFail($request->tagihan_id);
        $this->prosesPengiriman($tagihan);

        return redirect()->route('pengingats.index')
            ->with('success', 'Notifikasi berhasil dikirim.');
    }

    public function massal()
    {
        $tagihans = Tagihan::with('pelanggan')
            ->where('status', 'Belum Lunas')
            ->whereDoesntHave('pengingat', function($query) {
                $query->where('status_pengiriman', 'terkirim');
            })
            ->get();

        return view('pengingats.bulk', compact('tagihans'));
    }

    public function kirimMassal(Request $request)
    {
        $request->validate([
            'tagihan_ids' => 'required|array'
        ]);

        $tagihans = Tagihan::with('pelanggan')
            ->whereIn('id', $request->tagihan_ids)
            ->get();

        foreach ($tagihans as $tagihan) {
            $this->prosesPengiriman($tagihan);
        }

        return redirect()->route('pengingats.index')
            ->with('success', 'Notifikasi massal berhasil dikirim.');
    }

    protected function prosesPengiriman(Tagihan $tagihan)
    {
        $notification = new WhatsAppNotification($tagihan);
        $databaseData = $notification->toFonnte($tagihan->pelanggan)['database_data'];

        try {
            $tagihan->pelanggan->notify($notification);
            
            // Simpan record pengiriman sukses
            Pengingat::create($databaseData);
            
            Log::info("Pengingat berhasil dikirim ke {$tagihan->pelanggan->nama}");
            return true;

        } catch (\Exception $e) {
            // Simpan record pengiriman gagal
            Pengingat::create([
                'pelanggan_id' => $databaseData['pelanggan_id'],
                'tagihan_id' => $databaseData['tagihan_id'],
                'no_wa' => $databaseData['no_wa'],
                'jumlah_tagihan' => $databaseData['jumlah_tagihan'],
                'tanggal_dikirim' => now(),
                'status_pengiriman' => 'gagal'
            ]);
            
            Log::error("Gagal mengirim pengingat: " . $e->getMessage());
            return false;
        }
    }
}