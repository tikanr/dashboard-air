
@extends('layouts.app')

@section('title', 'Semua Pembayaran')

@section('content')
<h3>Semua Pembayaran</h3>

<div class="table-responsive">
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>ID</th>
                <th>ID Pelanggan</th>
                <th>Nama Pelanggan</th>
                <th>Tanggal Bayar</th>
                <th>Jumlah Bayar</th>
                <th>Status Lunas</th>
                <th>Status Terlambat</th>
                <th class="text-center">Aksi</th>
            </tr>
        </thead>
        <tbody>
            @forelse($pembayarans as $p)
            <tr>
                <td>{{ $p->id }}</td>
                <td>{{ $p->pelanggan_id }}</td>
                <td>{{ $p->pelanggan->nama ?? '-' }}</td>
                <td>{{ $p->tanggal_bayar }}</td>
                <td>Rp {{ number_format($p->jumlah_bayar) }}</td>
                <td>{{ $p->status_lunas }}</td>
                <td>{{ $p->status_terlambat }}</td>
                <td class="text-center">
                    <form action="{{ route('pembayarans.destroy', $p->id) }}" method="POST" style="display:inline-block;">
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Yakin hapus?')">
                            <i class="bi bi-trash"></i> Hapus
                        </button>
                    </form>
                </td>
            </tr>
            @empty
            <tr>
                <td colspan="8" class="text-center text-muted">Belum ada data pembayaran.</td>
            </tr>
            @endforelse
        </tbody>
    </table>
</div>

<div class="d-flex justify-content-center mt-3">
    {{ $pembayarans->onEachSide(1)->links('pagination::bootstrap-5') }}
</div>

@endsection