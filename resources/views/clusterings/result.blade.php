@extends('layouts.app')

@section('title', 'Hasil Clustering')

@section('content')
<div class="container">
    <h3 class="fw-bold mb-4">Hasil Clustering Pelanggan</h3>

    {{-- Filter Bulan dan Tahun --}}
    <form method="GET" action="{{ route('clusterings.index') }}" class="row g-3 mb-4">
        <div class="col-md-3">
            <label for="bulan" class="form-label">Bulan</label>
            <select name="bulan" id="bulan" class="form-select">
                <option value="">-- Semua Bulan --</option>
                @for ($i = 1; $i <= 12; $i++)
                    <option value="{{ $i }}" {{ request('bulan') == $i ? 'selected' : '' }}>
                        {{ \Carbon\Carbon::create()->month($i)->translatedFormat('F') }}
                    </option>
                @endfor
            </select>
        </div>
        <div class="col-md-3">
            <label for="tahun" class="form-label">Tahun</label>
            <select name="tahun" id="tahun" class="form-select">
                <option value="">-- Semua Tahun --</option>
                @for ($i = 2023; $i <= now()->year; $i++)
                    <option value="{{ $i }}" {{ request('tahun') == $i ? 'selected' : '' }}>
                        {{ $i }}
                    </option>
                @endfor
            </select>
        </div>
        <div class="col-md-3 d-flex align-items-end">
            <button type="submit" class="btn btn-secondary">Filter</button>
        </div>
    </form>

    {{-- Tombol Proses --}}
    @if(!isset($results))
    <form action="{{ route('clusterings.process') }}" method="POST" class="mb-3">
        @csrf
        <input type="hidden" name="bulan" value="{{ request('bulan') }}">
        <input type="hidden" name="tahun" value="{{ request('tahun') }}">
        <button type="submit" class="btn btn-primary">
            <i class="bi bi-gear-fill me-1"></i> Proses Clustering
        </button>
    </form>
@endif


    @if(session('success'))
        <div class="alert alert-success">{{ session('success') }}</div>
    @endif

    @if(isset($results) && count($results))
        @php
            $kategoriCounts = ['Tepat Waktu' => 0, 'Terlambat' => 0, 'Sering Terlambat' => 0];
            $scatterData = [];

            foreach ($results as $item) {
                $kategoriCounts[$item['kategori']]++;
                $scatterData[] = [
                    'x' => $item['jumlah_pembayaran'],
                    'y' => $item['total_bayar'],
                    'label' => $item['kategori']
                ];
            }
        @endphp

        {{-- Chart Pie --}}
        <div class="mb-4 text-center">
            <h5>Distribusi Kategori Pelanggan</h5>
            <div style="max-width: 400px; margin: 0 auto;">
                <canvas id="pieChart" height="60"></canvas>
            </div>
            <div class="mt-2">
                <span class="badge bg-success me-2">Tepat Waktu: {{ $kategoriCounts['Tepat Waktu'] }}</span>
                <span class="badge bg-warning text-dark me-2">Terlambat: {{ $kategoriCounts['Terlambat'] }}</span>
                <span class="badge bg-danger">Sering Terlambat: {{ $kategoriCounts['Sering Terlambat'] }}</span>
            </div>
        </div>

        {{-- Chart Scatter --}}
        <div class="mb-5">
            <canvas id="scatterChart" height="120"></canvas>
        </div>

        {{-- Tabel Hasil --}}
        <div class="table-responsive">
            <table class="table table-bordered table-hover">
                <thead class="table-light">
                    <tr>
                        <th>#</th>
                        <th>Nama</th>
                        <th>Jumlah Pembayaran</th>
                        <th>Total Pembayaran (Rp)</th>
                        <th>Jumlah Terlambat</th>
                        <th>Rata-rata Keterlambatan (hari)</th>
                        <th>Jarak ke C1</th>
                        <th>Jarak ke C2</th>
                        <th>Jarak ke C3</th>
                        <th>Cluster</th>
                        <th>Kategori</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($results as $index => $item)
                        <tr>
                            <td>{{ $index + 1 }}</td>
                            <td>{{ $item['nama'] }}</td>
                            <td>{{ number_format($item['jumlah_pembayaran'], 0, ',', '.') }}</td>
                            <td>Rp {{ number_format($item['total_bayar'], 0, ',', '.') }}</td>
                            <td>{{ $item['jumlah_terlambat'] }}</td>
                            <td>{{ $item['rata_rata_keterlambatan'] }}</td>
                            <td>{{ $item['c1'] ?? '-' }}</td>
                            <td>{{ $item['c2'] ?? '-' }}</td>
                            <td>{{ $item['c3'] ?? '-' }}</td>
                            <td>{{ $item['cluster'] }}</td>
                            <td>
                                <span class="badge bg-{{ 
                                    $item['kategori'] === 'Tepat Waktu' ? 'success' : 
                                    ($item['kategori'] === 'Terlambat' ? 'warning text-dark' : 'danger') 
                                }}">
                                    {{ $item['kategori'] }}
                                </span>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>

        {{-- Chart.js --}}
       @push('scripts')
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
    const pieData = {
        labels: [
            'Tepat Waktu ({{ $kategoriCounts["Tepat Waktu"] }})',
            'Terlambat ({{ $kategoriCounts["Terlambat"] }})',
            'Sering Terlambat ({{ $kategoriCounts["Sering Terlambat"] }})'
        ],
        datasets: [{
            data: {!! json_encode(array_values($kategoriCounts)) !!},
            backgroundColor: ['#198754', '#ffc107', '#dc3545'],
            borderWidth: 1
        }]
    };

    new Chart(document.getElementById('pieChart'), {
        type: 'pie',
        data: pieData,
        options: {
            plugins: {
                legend: {
                    position: 'bottom',
                    labels: {
                        boxWidth: 20,
                        padding: 15
                    }
                },
                tooltip: {
                    callbacks: {
                        label: function(context) {
                            const data = context.dataset.data;
                            const total = data.reduce((a, b) => a + b, 0);
                            const value = context.raw;
                            const percentage = ((value / total) * 100).toFixed(2);
                            return `${context.label}: ${value} (${percentage}%)`;
                        }
                    }
                }
            }
        }
    });

    const scatterData = {
        datasets: [
            @foreach($kategoriCounts as $kategori => $jumlah)
            {
                label: '{{ $kategori }}',
                data: [
                    @foreach($scatterData as $point)
                        @if($point['label'] === $kategori)
                            {x: {{ $point['x'] }}, y: {{ $point['y'] }}} ,
                        @endif
                    @endforeach
                ],
                backgroundColor: '{{ $kategori === 'Tepat Waktu' ? '#198754' : ($kategori === 'Terlambat' ? '#ffc107' : '#dc3545') }}'
            },
            @endforeach
        ]
    };

    new Chart(document.getElementById('scatterChart'), {
        type: 'scatter',
        data: scatterData,
        options: {
            scales: {
                x: { title: { display: true, text: 'Jumlah Pembayaran' } },
                y: { title: { display: true, text: 'Total Pembayaran (Rp)' } }
            }
        }
    });
</script>
@endpush


    @else
        <p>Belum ada hasil clustering.</p>
    @endif
</div>
@endsection
