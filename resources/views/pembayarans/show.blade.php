@extends('layouts.app')

@section('content')
<div class="container mt-4">
    <h3 class="mb-3 fw-bold">Riwayat Pembayaran - {{ $pelanggan->nama }}</h3>

    {{-- Tampilkan Tagihan jika ada dan belum lunas --}}
    @if ($tagihan && $tagihan->status == 'Belum Lunas')
        <div class="alert alert-info">
            <strong>Tagihan Bulan Ini:</strong> 
            Rp {{ number_format($tagihan->jumlah_tagihan, 0, ',', '.') }} 
            ({{ \Carbon\Carbon::create()->month($tagihan->bulan)->locale('id')->isoFormat('MMMM') }} {{ $tagihan->tahun }})
        </div>
    @endif

    {{-- Form Pembayaran --}}
    <div class="card mb-3 shadow-sm">
        <div class="card-body">
            <form method="POST" action="{{ route('pembayarans.store', $pelanggan->id) }}" class="row g-3 align-items-end">
                @csrf
                <div class="col-md-4">
                    <label class="form-label mb-1">Tanggal Bayar</label>
                    <input type="date" name="tanggal_bayar" class="form-control" required>
                </div>
                <div class="col-md-4">
                    <label class="form-label mb-1">Jumlah Bayar</label>
                    <input type="number" name="jumlah_bayar" class="form-control" placeholder="Jumlah Bayar" required>
                </div>
                <div class="col-md-4">
                    <button class="btn btn-primary w-100">
                        <i class="bi bi-plus-circle me-1"></i> Tambah Pembayaran
                    </button>
                </div>
            </form>
        </div>
    </div>

    {{-- Tabel Riwayat Pembayaran --}}
    <div class="table-responsive">
        <table class="table table-bordered table-hover shadow-sm">
            <thead class="table-primary">
                <tr>
                    <th>Tanggal Bayar</th>
                    <th>Jumlah Bayar</th>
                    <th>Status Lunas</th>
                    <th>Status Terlambat</th>
                </tr>
            </thead>
            <tbody>
                @forelse($pembayarans as $p)
                    <tr>
                        <td>{{ \Carbon\Carbon::parse($p->tanggal_bayar)->format('d M Y') }}</td>
                        <td>Rp {{ number_format($p->jumlah_bayar, 0, ',', '.') }}</td>
                        <td>{{ $p->status_lunas }}</td>
                        <td>{{ $p->status_terlambat }}</td>
                    </tr>
                @empty
                    <tr>
                        <td colspan="4" class="text-center text-muted">Belum ada pembayaran.</td>
                    </tr>
                @endforelse
            </tbody>
        </table>
    </div>
</div>
@endsection
