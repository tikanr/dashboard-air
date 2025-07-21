@extends('layouts.app')

@section('content')
<div class="container mt-4">

    {{-- Notifikasi --}}
    @if(session('success'))
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            <i class="bi bi-check-circle me-2"></i> {{ session('success') }}
            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
        </div>
    @elseif(session('error'))
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
            <i class="bi bi-x-circle me-2"></i> {{ session('error') }}
            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
        </div>
    @endif

    <div class="card shadow-sm mb-4">
        <div class="card-body">
            <h4 class="card-title fw-bold text-primary mb-3">
                <i class="bi bi-clock-history me-2"></i> Riwayat Pembayaran - {{ $pelanggan->nama }}
            </h4>
            <form method="POST" action="{{ route('pembayarans.store', $pelanggan->id) }}" class="row g-2 align-items-end mb-3">
                @csrf
                <div class="col-md-4">
                    <label class="form-label mb-1">Tanggal Bayar</label>
                    <input type="date" name="tanggal_bayar" class="form-control" value="{{ old('tanggal_bayar') }}" required>
                </div>
                <div class="col-md-4">
                    <label class="form-label mb-1">Jumlah Bayar</label>
                    <input type="number" name="jumlah_bayar" class="form-control" value="{{ old('jumlah_bayar') }}" placeholder="Jumlah Bayar" required>
                </div>
                <div class="col-md-4">
                    <button class="btn btn-primary w-100">
                        <i class="bi bi-plus-circle me-1"></i> Tambah Pembayaran
                    </button>
                </div>
            </form>
        </div>
    </div>

    <div class="card shadow-sm">
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered table-hover align-middle mb-0">
                    <thead class="table-light">
                        <tr>
                            <th>ID</th>
                            <th>Tanggal Bayar</th>
                            <th>Jumlah Bayar</th>
                            <th>Status Lunas</th>
                            <th>Status Terlambat</th>
                            <th class="text-center">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse ($pembayarans as $p)
                        <tr>
                            <td>{{ $p->id }}</td>
                            <td>{{ \Carbon\Carbon::parse($p->tanggal_bayar)->translatedFormat('d F Y') }}</td>
                            <td>Rp {{ number_format($p->jumlah_bayar, 0, ',', '.') }}</td>
                            <td>
                                <span class="badge {{ $p->status_lunas === 'Lunas' ? 'bg-success' : ($p->status_lunas === 'Sebagian' ? 'bg-warning text-dark' : 'bg-danger') }}">
                                    {{ $p->status_lunas }}
                                </span>
                            </td>
                            <td>
                                <span class="badge 
                                    @if($p->status_terlambat === 'Tepat Waktu') bg-success 
                                    @elseif($p->status_terlambat === 'Terlambat') bg-warning text-dark
                                    @else bg-danger @endif">
                                    {{ $p->status_terlambat }}
                                </span>
                            </td>
                            <td class="text-center">
                                <form action="{{ route('pembayarans.destroy', $p->id) }}" method="POST" style="display:inline-block;">
                                    @csrf @method('DELETE')
                                    <button class="btn btn-danger btn-sm" onclick="return confirm('Yakin ingin menghapus pembayaran ini?')">
                                        <i class="bi bi-trash"></i> Hapus
                                    </button>
                                </form>
                            </td>
                        </tr>
                        @empty
                        <tr>
                            <td colspan="6" class="text-center text-muted">Belum ada pembayaran.</td>
                        </tr>
                        @endforelse
                    </tbody>
                </table>
            </div>
            <a href="{{ route('pelanggans.index') }}" class="btn btn-secondary mt-3">
                <i class="bi bi-arrow-left"></i> Kembali
            </a>
        </div>
    </div>
</div>
@endsection
