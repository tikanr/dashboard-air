<!DOCTYPE html>
<html>
<head>
    <title>Laporan Tagihan</title>
    <style>
        body { font-family: sans-serif; font-size: 12px; }
        h3 { margin-bottom: 5px; }
        .filter { margin-bottom: 10px; font-style: italic; }
        table { width: 100%; border-collapse: collapse; margin-top: 10px; }
        th, td { border: 1px solid #000; padding: 6px; font-size: 11px; }
        th { background: #eee; }
        .rekap { margin-top: 20px; }
    </style>
</head>
<body>
    <h3>Laporan Tagihan Air</h3>

    @if(request('bulan') || request('tahun') || request('status'))
        <div class="filter">
            <strong>Filter:</strong>
            @if(request('bulan'))
                Bulan: {{ \Carbon\Carbon::create()->month(request('bulan'))->locale('id')->translatedFormat('F') }},
            @endif
            @if(request('tahun'))
                Tahun: {{ request('tahun') }},
            @endif
            @if(request('status'))
                Status: {{ request('status') }}
            @endif
        </div>
    @endif

    <table>
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
            @foreach($tagihans as $t)
                <tr>
                    <td>{{ $t->pelanggan->nama }}</td>
                    <td>{{ $t->pelanggan->no_wa }}</td>
                    <td>{{ $t->bulan }}/{{ $t->tahun }}</td>
                    <td>Rp {{ number_format($t->jumlah_tagihan, 0, ',', '.') }}</td>
                    <td>{{ $t->status }}</td>
                    <td>{{ \Carbon\Carbon::parse($t->tanggal_jatuh_tempo)->format('d-m-Y') }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>

    <div class="rekap">
        <p><strong>Total Tagihan:</strong> Rp {{ number_format($rekap['total_tagihan'], 0, ',', '.') }}</p>
        <p><strong>Lunas:</strong> {{ $rekap['lunas'] }} | <strong>Belum Lunas:</strong> {{ $rekap['belum'] }}</p>
    </div>
</body>
</html>
