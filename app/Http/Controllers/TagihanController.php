<?php

namespace App\Http\Controllers;

use App\Models\Tagihan;
use App\Models\Pelanggan;
use Illuminate\Http\Request;
use Carbon\Carbon;

class TagihanController extends Controller
{
    public function index(Request $request)
    {
        $query = Tagihan::with(['pelanggan', 'pembayarans'])
                        ->whereNotIn('status', ['Terlambat']);

        // Filter bulan dan tahun
        if ($request->filled('bulan')) {
            $query->where('bulan', $request->bulan);
        }

        if ($request->filled('tahun')) {
            $query->where('tahun', $request->tahun);
        }

        $tagihans = $query->orderByDesc('tahun')
                          ->orderByDesc('bulan')
                          ->paginate(10);

        return view('tagihans.index', compact('tagihans'));
    }

    public function create()
    {
        $pelanggans = Pelanggan::active()->get();
        return view('tagihans.create', compact('pelanggans'));
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'pelanggan_id' => 'required|exists:pelanggans,id',
            'bulan' => 'required|integer|min:1|max:12',
            'tahun' => 'required|integer|min:2015|max:' . (date('Y') + 1),
            'jumlah_tagihan' => 'required|numeric|min:0',
            'air_dipakai' => 'required|integer|min:0',
            'tanggal_jatuh_tempo' => 'required|date',
            'status' => 'sometimes|in:Belum Lunas,Lunas,Sebagian'
        ]);

        // Cegah duplikasi tagihan
        if (Tagihan::where('pelanggan_id', $validated['pelanggan_id'])
            ->where('bulan', $validated['bulan'])
            ->where('tahun', $validated['tahun'])
            ->exists()) {
            return back()->withErrors(['bulan' => 'Tagihan untuk bulan dan tahun ini sudah ada.'])->withInput();
        }

        Tagihan::create([
            'pelanggan_id' => $validated['pelanggan_id'],
            'bulan' => $validated['bulan'],
            'tahun' => $validated['tahun'],
            'jumlah_tagihan' => $validated['jumlah_tagihan'],
            'air_dipakai' => $validated['air_dipakai'],
            'tanggal_jatuh_tempo' => $validated['tanggal_jatuh_tempo'],
            'status' => $validated['status'] ?? 'Belum Lunas'
        ]);

        return redirect()->route('tagihans.index')->with('success', 'Tagihan berhasil dibuat.');
    }

    public function show($id)
    {
        $tagihan = Tagihan::with(['pelanggan', 'pembayarans'])->findOrFail($id);
        return view('tagihans.show', compact('tagihan'));
    }

    public function edit($id)
    {
        $tagihan = Tagihan::findOrFail($id);
        $pelanggans = Pelanggan::active()->get();
        return view('tagihans.edit', compact('tagihan', 'pelanggans'));
    }

    public function update(Request $request, $id)
    {
        $tagihan = Tagihan::findOrFail($id);

        $validated = $request->validate([
            'pelanggan_id' => 'required|exists:pelanggans,id',
            'bulan' => 'required|integer|min:1|max:12',
            'tahun' => 'required|integer|min:2015|max:' . (date('Y') + 1),
            'jumlah_tagihan' => 'required|numeric|min:0',
            'air_dipakai' => 'required|integer|min:0',
            'tanggal_jatuh_tempo' => 'required|date',
            'status' => 'required|in:Belum Lunas,Lunas,Sebagian'
        ]);

        // Cegah duplikasi tagihan selain yang sedang di-edit
        if (Tagihan::where('pelanggan_id', $validated['pelanggan_id'])
            ->where('bulan', $validated['bulan'])
            ->where('tahun', $validated['tahun'])
            ->where('id', '!=', $id)
            ->exists()) {
            return back()->withErrors(['bulan' => 'Tagihan untuk bulan dan tahun ini sudah ada.'])->withInput();
        }

        $tagihan->update($validated);

        return redirect()->route('tagihans.index')->with('success', 'Tagihan berhasil diperbarui.');
    }

    public function destroy($id)
    {
        $tagihan = Tagihan::findOrFail($id);

        if ($tagihan->pembayarans()->exists()) {
            return redirect()->route('tagihans.index')
                   ->with('error', 'Tagihan tidak dapat dihapus karena sudah memiliki pembayaran.');
        }

        $tagihan->delete();
        return redirect()->route('tagihans.index')->with('success', 'Tagihan berhasil dihapus.');
    }

    public function updateStatus(Request $request, $id)
    {
        $tagihan = Tagihan::findOrFail($id);

        $request->validate([
            'status' => 'required|in:Belum Lunas,Lunas,Sebagian'
        ]);

        $tagihan->update(['status' => $request->status]);

        return back()->with('success', 'Status tagihan berhasil diperbarui.');
    }
}
