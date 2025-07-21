@extends('layouts.app')

@section('title', 'Dashboard')

@section('content')
<div>
    {{-- Kartu Statistik --}}
    <div class="row mb-4">
        <div class="col-md-6 mb-3">
            <div class="glass-card d-flex align-items-center">
                <div class="icon-circle bg-primary text-white me-3 shadow-sm">
                    <i class="bi bi-people-fill"></i>
                </div>
                <div>
                    <div class="fw-semibold text-secondary">Total Pelanggan</div>
                    <div class="fs-2 fw-bold text-dark">{{ $totalPelanggan }}</div>
                </div>
            </div>
        </div>
        <div class="col-md-6 mb-3">
            <div class="glass-card d-flex align-items-center">
                <div class="icon-circle bg-info text-white me-3 shadow-sm">
                    <i class="bi bi-cash-stack"></i>
                </div>
                <div>
                    <div class="fw-semibold text-secondary">Total Pembayaran Bulan Ini</div>
                    <div class="fs-2 fw-bold text-dark">Rp {{ number_format($totalPembayaranBulanIni, 0, ',', '.') }}</div>
                </div>
            </div>
        </div>
    </div>

    {{-- Filter Bulan dan Tahun --}}
    <div class="mb-4">
        <form method="GET" class="d-flex flex-wrap gap-2 align-items-center">
            <label class="fw-semibold">Filter Bulan:</label>
            <select name="bulan" class="form-select w-auto">
                @for ($i = 1; $i <= 12; $i++)
                    <option value="{{ $i }}" {{ $i == $bulan ? 'selected' : '' }}>
                        {{ \Carbon\Carbon::create()->month($i)->locale('id')->monthName }}
                    </option>
                @endfor
            </select>

            <label class="fw-semibold ms-3">Tahun:</label>
            <select name="tahun" class="form-select w-auto">
                @for ($y = date('Y'); $y >= 2022; $y--)
                    <option value="{{ $y }}" {{ $y == $tahun ? 'selected' : '' }}>{{ $y }}</option>
                @endfor
            </select>

            <button class="btn btn-primary ms-3">Terapkan</button>
        </form>
    </div>

    {{-- Grafik Pembayaran Per Bulan --}}
    <div class="glass-card p-4 mb-4">
        <h5 class="fw-bold text-primary mb-3">Grafik Pembayaran per Bulan - {{ $tahun }}</h5>
        <canvas id="grafikPembayaran" height="100"></canvas>
    </div>

    {{-- Grafik Doughnut Terlambat / Tepat Waktu --}}
    <div class="row mb-3">
        <div class="col-md-12">
            <div class="glass-card p-4">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h5 class="mb-0 fw-bold text-primary">Grafik Pelanggan Terlambat dan Tepat Waktu</h5>
                </div>
                <div class="d-flex flex-column flex-md-row justify-content-center align-items-center" style="min-height:240px;">
                    <div style="position:relative; width:320px; height:220px;">
                        <canvas id="grafikTerlambat" width="320" height="220"></canvas>
                        <div id="grafikLabel" style="position:absolute;top:50%;left:50%;transform:translate(-50%,-50%);font-size:1.5rem;font-weight:600;color:#0072ff;"></div>
                    </div>
                    <div class="ms-md-5 mt-4 mt-md-0">
                        <ul class="list-unstyled mb-0">
                            <li class="mb-2">
                                <span class="badge me-2" style="background:#e74c3c;">&nbsp;</span>
                                <span class="fw-semibold">Terlambat:</span> {{ $terlambat ?? 0 }}
                            </li>
                            <li>
                                <span class="badge me-2" style="background:#2ecc71;">&nbsp;</span>
                                <span class="fw-semibold">Tepat Waktu:</span> {{ $tidakTerlambat ?? 0 }}
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

{{-- Custom CSS --}}
<style>
    .glass-card {
        background: rgba(255,255,255,0.92);
        border-radius: 18px;
        box-shadow: 0 8px 32px 0 rgba(31,38,135,0.10);
        border: 1px solid #e3e6f0;
        padding: 2rem 2rem;
        margin-bottom: 1rem;
        transition: box-shadow 0.2s;
    }
    .glass-card:hover {
        box-shadow: 0 12px 36px 0 rgba(31,38,135,0.18);
    }
    .icon-circle {
        width: 56px;
        height: 56px;
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 2rem;
        box-shadow: 0 2px 8px rgba(0,0,0,0.08);
    }
    #grafikLabel {
        pointer-events: none;
        user-select: none;
        text-align: center;
    }
</style>

{{-- Chart.js CDN --}}
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

{{-- Grafik Doughnut --}}
<script>
    document.addEventListener('DOMContentLoaded', function () {
        const terlambat = {{ $terlambat ?? 0 }};
        const tidakTerlambat = {{ $tidakTerlambat ?? 0 }};
        const total = terlambat + tidakTerlambat;

        let persen = total > 0 ? Math.round((terlambat / total) * 100) : 0;
        document.getElementById('grafikLabel').innerHTML = persen + '%<br><span style="font-size:1rem;font-weight:400;">Terlambat</span>';

        const ctx = document.getElementById('grafikTerlambat').getContext('2d');
        new Chart(ctx, {
            type: 'doughnut',
            data: {
                labels: ['Terlambat', 'Tidak Terlambat'],
                datasets: [{
                    data: [terlambat, tidakTerlambat],
                    backgroundColor: ['rgba(231, 76, 60, 0.85)', 'rgba(46, 204, 113, 0.85)'],
                    borderColor: ['rgba(231, 76, 60, 1)', 'rgba(46, 204, 113, 1)'],
                    borderWidth: 2
                }]
            },
            options: {
                cutout: '70%',
                plugins: {
                    legend: { display: false },
                    tooltip: {
                        callbacks: {
                            label: function (context) {
                                let label = context.label || '';
                                let value = context.parsed || 0;
                                let percent = total > 0 ? Math.round((value / total) * 100) : 0;
                                return `${label}: ${value} (${percent}%)`;
                            }
                        }
                    }
                }
            }
        });

        // Grafik Bar Pembayaran per Bulan
        const ctxBar = document.getElementById('grafikPembayaran').getContext('2d');
        new Chart(ctxBar, {
            type: 'bar',
            data: {
                labels: ['Jan', 'Feb', 'Mar', 'Apr', 'Mei', 'Jun', 'Jul', 'Agu', 'Sep', 'Okt', 'Nov', 'Des'],
                datasets: [{
                    label: 'Total Pembayaran (Rp)',
                    data: @json($grafikData),
                    backgroundColor: 'rgba(54, 162, 235, 0.7)',
                    borderColor: 'rgba(54, 162, 235, 1)',
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true,
                        ticks: {
                            callback: function (value) {
                                return 'Rp ' + value.toLocaleString();
                            }
                        }
                    }
                },
                plugins: {
                    tooltip: {
                        callbacks: {
                            label: function (context) {
                                return 'Rp ' + context.parsed.y.toLocaleString();
                            }
                        }
                    }
                }
            }
        });
    });
</script>
@endsection
