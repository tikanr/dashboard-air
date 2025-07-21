@extends('layouts.app')

@section('title', 'Tambah Tagihan')

@section('content')
<div class="container">
    <h1 class="mb-4">Tambah Tagihan</h1>

    {{-- Tampilkan error validasi --}}
    @if ($errors->any())
        <div class="alert alert-danger">
            <strong>Terjadi kesalahan:</strong>
            <ul class="mb-0">
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <form action="{{ route('tagihans.store') }}" method="POST">
        @csrf

        <div class="mb-3">
            <label for="pelanggan_id" class="form-label">Pelanggan</label>
            <select name="pelanggan_id" id="pelanggan_id" class="form-select" required>
                <option value="">-- Pilih Pelanggan --</option>
                @foreach ($pelanggans as $pelanggan)
                    <option value="{{ $pelanggan->id }}" {{ old('pelanggan_id') == $pelanggan->id ? 'selected' : '' }}>
                        {{ $pelanggan->nama }} - {{ $pelanggan->no_wa }} (ID: {{ $pelanggan->id }})
                    </option>
                @endforeach
            </select>
        </div>

        <div class="mb-3">
            <label for="air_dipakai" class="form-label">Air Dipakai (m<sup>3</sup>)</label>
            <input type="number" name="air_dipakai" id="air_dipakai" class="form-control" min="0" required value="{{ old('air_dipakai') }}">
        </div>

        <div class="mb-3">
            <label for="bulan" class="form-label">Bulan</label>
            <input type="number" name="bulan" id="bulan" class="form-control" min="1" max="12" required value="{{ old('bulan') }}">
        </div>

        <div class="mb-3">
            <label for="tahun" class="form-label">Tahun</label>
            <input type="number" name="tahun" id="tahun" class="form-control" min="2000" required value="{{ old('tahun') }}">
        </div>

        <div class="mb-3">
            <label for="jumlah_tagihan" class="form-label">Jumlah Tagihan</label>
            <input type="number" name="jumlah_tagihan" id="jumlah_tagihan" class="form-control" min="0" required value="{{ old('jumlah_tagihan') }}">
        </div>

        <div class="mb-3">
            <label for="tanggal_jatuh_tempo" class="form-label">Tanggal Jatuh Tempo</label>
            <input type="date" name="tanggal_jatuh_tempo" id="tanggal_jatuh_tempo" class="form-control" required value="{{ old('tanggal_jatuh_tempo') }}">
        </div>

        <div class="mb-3">
            <label for="status" class="form-label">Status</label>
            <select name="status" id="status" class="form-select" required>
                <option value="Belum Lunas" {{ old('status') == 'Belum Lunas' ? 'selected' : '' }}>Belum Bayar</option>
                <option value="Lunas" {{ old('status') == 'Lunas' ? 'selected' : '' }}>Lunas</option>
            </select>
        </div>

        <button type="submit" class="btn btn-primary">Simpan</button>
        <a href="{{ route('tagihans.index') }}" class="btn btn-secondary">Batal</a>
    </form>
</div>
@endsection
