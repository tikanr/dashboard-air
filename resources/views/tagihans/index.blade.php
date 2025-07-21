@extends('layouts.app')

@section('content')
<div class="container">
    <h3 class="mb-4">Daftar Tagihan</h3>

    @if(session('success'))
        <div class="alert alert-success">{{ session('success') }}</div>
    @endif

    <!-- Form Filter Bulan & Tahun -->
    <form method="GET" class="row g-2 mb-3">
        <div class="col-md-4">
            <select name="bulan" class="form-select">
                <option value="">Pilih Bulan</option>
                @foreach(range(1, 12) as $b)
                    <option value="{{ $b }}" {{ request('bulan') == $b ? 'selected' : '' }}>
                        {{ DateTime::createFromFormat('!m', $b)->format('F') }}
                    </option>
                @endforeach
            </select>
        </div>
        <div class="col-md-4">
            <select name="tahun" class="form-select">
                <option value="">Pilih Tahun</option>
                @for($year = now()->year; $year >= 2020; $year--)
                    <option value="{{ $year }}" {{ request('tahun') == $year ? 'selected' : '' }}>
                        {{ $year }}
                    </option>
                @endfor
            </select>
        </div>
        <div class="col-md-4">
            <button class="btn btn-primary w-100">🔍 Filter</button>
        </div>
    </form>

    <a href="{{ route('tagihans.create') }}" class="btn btn-primary mb-3">➕ Tambah Tagihan</a>

    <div class="table-responsive">
        <table class="table table-bordered table-striped align-middle">
            <thead class="table-dark">
                <tr>
                    <th>ID</th>
                    <th>Nama Pelanggan</th>
                    <th>Air Dipakai (m<sup>3</sup>)</th>
                    <th>Bulan</th>
                    <th>Tahun</th>
                    <th>Jumlah Tagihan</th>
                    <th>Jatuh Tempo</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                @forelse($tagihans as $tagihan)
                <tr>
                    <td>{{ $tagihan->id }}</td>
                    <td>{{ $tagihan->pelanggan->nama ?? '-' }}</td>
                    <td>{{ $tagihan->air_dipakai ?? '-' }} m<sup>3</sup></td>
                    <td>{{ str_pad($tagihan->bulan, 2, '0', STR_PAD_LEFT) }}</td>
                    <td>{{ $tagihan->tahun }}</td>
                    <td>Rp {{ number_format($tagihan->jumlah_tagihan, 0, ',', '.') }}</td>
                    <td>{{ \Carbon\Carbon::parse($tagihan->tanggal_jatuh_tempo)->format('d-m-Y') }}</td>
                    <td>
                        @if($tagihan->status == 'Belum Lunas')
                            <span class="badge bg-danger">Belum Lunas</span>
                        @elseif($tagihan->status == 'Sebagian')
                            <span class="badge bg-info text-dark">Sebagian</span>
                        @elseif($tagihan->status == 'Lunas')
                            <span class="badge bg-success">Lunas</span>
                        @else
                            <span class="badge bg-secondary">-</span>
                        @endif
                    </td>
                </tr>
                @empty
                <tr>
                    <td colspan="8" class="text-center">Tidak ada data tagihan.</td>
                </tr>
                @endforelse
            </tbody>
        </table>
    </div>

    <div class="d-flex justify-content-center mt-3">
        {{ $tagihans->onEachSide(1)->links('pagination::bootstrap-5') }}
    </div>
</div>
@endsection
