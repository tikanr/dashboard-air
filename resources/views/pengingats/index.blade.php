@extends('layouts.app')

@section('content')
<div class="container">
    <h3 class="mb-4">Riwayat Pengingat WhatsApp</h3>

    <form method="GET" class="row g-3 mb-4">
        <div class="col-md-3">
            <select name="bulan" class="form-control">
                <option value="">-- Filter Bulan --</option>
                @for ($i = 1; $i <= 12; $i++)
                    <option value="{{ $i }}" {{ request('bulan') == $i ? 'selected' : '' }}>
                        {{ DateTime::createFromFormat('!m', $i)->format('F') }}
                    </option>
                @endfor
            </select>
        </div>
        <div class="col-md-3">
            <input type="number" name="tahun" class="form-control" placeholder="Tahun" value="{{ request('tahun') }}">
        </div>
        <div class="col-md-3">
            <button type="submit" class="btn btn-primary">Filter</button>
        </div>
    </form>

    <a href="{{ route('pengingats.create') }}" class="btn btn-success mb-3">Kirim Manual</a>
    <a href="{{ route('pengingats.massal') }}" class="btn btn-warning mb-3">Kirim Massal</a>

    <table class="table table-bordered">
        <thead class="table-dark">
            <tr>
                <th>Nama Pelanggan</th>
                <th>No WA</th>
                <th>Tagihan</th>
                <th>Tanggal Dikirim</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($pengingats as $item)
                <tr>
                    <td>{{ $item->pelanggan->nama ?? '-' }}</td>
                    <td>{{ $item->no_wa }}</td>
                    <td>Rp {{ number_format($item->jumlah_tagihan, 0, ',', '.') }}</td>
                    <td>{{ \Carbon\Carbon::parse($item->tanggal_dikirim)->format('d-m-Y H:i') }}</td>
                    <td>
                        <span class="badge bg-{{ $item->status_pengiriman == 'terkirim' ? 'success' : 'danger' }}">
                            {{ $item->status_pengiriman }}
                        </span>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection
