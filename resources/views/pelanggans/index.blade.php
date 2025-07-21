@extends('layouts.app')

@section('content')
<div class="container mt-4">
    <div class="d-flex justify-content-between align-items-center mb-3">
        <h2 class="fw-bold text-primary">Data Pelanggan</h2>
        <a href="{{ route('pelanggans.create') }}" class="btn btn-success">
            <i class="bi bi-plus-circle me-1"></i> Tambah Pelanggan
        </a>
    </div>

    <div class="table-responsive">
        <table class="table table-bordered table-hover align-middle shadow-sm bg-white">
            <thead class="table-primary">
                <tr>
                    <th>ID</th> <!-- Kolom ID ditambahkan -->
                    <th>Nama</th>
                    <th>No WA</th>
                    <th>Alamat</th>
                    <th>Air Dipakai</th>
                    <th>Tagihan</th>
                    <th>Jatuh Tempo</th>
                    <th class="text-center">Aksi</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($pelanggans as $p)
                <tr>
                    <td>{{ $p->id }}</td> <!-- Tampilkan ID pelanggan -->
                    <td>{{ $p->nama }}</td>
                    <td>{{ $p->no_wa }}</td>
                    <td>{{ $p->alamat }}</td>
                    <td>{{ $p->air_dipakai }} m<sup>3</sup></td>
                    <td>Rp {{ number_format($p->jumlah_tagihan) }}</td>
                    <td>{{ $p->tanggal_jatuh_tempo }}</td>
                    <td class="text-center">
                        <a href="{{ route('pelanggans.edit', $p->id) }}" class="btn btn-warning btn-sm">
                            <i class="bi bi-pencil-square"></i> Edit
                        </a>
                        <form action="{{ route('pelanggans.destroy', $p->id) }}" method="POST" style="display:inline-block;">
                            @csrf @method('DELETE')
                            <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Yakin hapus?')">
                                <i class="bi bi-trash"></i> Hapus
                            </button>
                        </form>
                        <a href="{{ route('pembayarans.show', $p->id) }}" class="btn btn-info btn-sm">
                            <i class="bi bi-clock-history"></i> Riwayat
                        </a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
@endsection
