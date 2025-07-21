@extends('layouts.app')
@section('title', 'Laporan Tagihan')

@section('content')
<div class="container">
    <h3 class="fw-bold mb-3">Laporan Tagihan Air</h3>

    <form method="GET" class="row g-2 mb-3">
        <div class="col-md-3">
            <select name="bulan" class="form-select">
                <option value="">-- Pilih Bulan --</option>
                @foreach(range(1, 12) as $b)
                    <option value="{{ sprintf('%02d', $b) }}"
                        {{ request('bulan') == sprintf('%02d', $b) ? 'selected' : '' }}>
                        {{ \Carbon\Carbon::create()->month($b)->locale('id')->translatedFormat('F') }}
                    </option>
                @endforeach
            </select>
        </div>
        <div class="col-md-3">
            <select name="tahun" class="form-select">
                <option value="">-- Pilih Tahun --</option>
                @for($year = 2020; $year <= now()->year; $year++)
                    <option value="{{ $year }}" {{ request('tahun') == $year ? 'selected' : '' }}>
                        {{ $year }}
                    </option>
                @endfor
            </select>
        </div>
        <div class="col-md-3">
            <select name="status" class="form-select">
                <option value="">Semua Status</option>
                <option value="Lunas" {{ request('status') == 'Lunas' ? 'selected' : '' }}>Lunas</option>
                <option value="Belum Lunas" {{ request('status') == 'Belum Lunas' ? 'selected' : '' }}>Belum Lunas</option>
            </select>
        </div>
        <div class="col-md-3">
            <button class="btn btn-primary w-100">Filter</button>
        </div>
    </form>

    <div class="mb-3">
        <strong>Total Tagihan:</strong> Rp {{ number_format($rekap['total_tagihan'], 0, ',', '.') }} |
        <strong>Lunas:</strong> {{ $rekap['lunas'] }} |
        <strong>Belum Lunas:</strong> {{ $rekap['belum'] }}
    </div>

    <a href="{{ route('laporan.exportPdf', request()->all()) }}" class="btn btn-danger mb-3">📄 Ekspor PDF</a>

    <table class="table table-bordered table-striped">
        <thead>
            <tr>
                <th>Nama</th>
                <th>No WA</th>
                <th>Periode</th>
                <th>Jumlah</th>
                <th>Status</th>
                <th>Jatuh Tempo</th>
            </tr>
        </thead>
        <tbody>
            @forelse($tagihans as $t)
                <tr>
                    <td>{{ $t->pelanggan->nama }}</td>
                    <td>{{ $t->pelanggan->no_wa }}</td>
                    <td>{{ $t->bulan }}/{{ $t->tahun }}</td>
                    <td>Rp {{ number_format($t->jumlah_tagihan, 0, ',', '.') }}</td>
                    <td>{{ $t->status }}</td>
                    <td>{{ \Carbon\Carbon::parse($t->tanggal_jatuh_tempo)->format('d-m-Y') }}</td>
                </tr>
            @empty
                <tr>
                    <td colspan="6" class="text-center">Tidak ada data tagihan.</td>
                </tr>
            @endforelse
        </tbody>
    </table>
</div>
@endsection
