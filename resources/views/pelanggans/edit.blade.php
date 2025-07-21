@extends('layouts.app')

@section('content')
<div class="container">
    <h3>Edit Pelanggan</h3>

    <form action="{{ route('pelanggans.update', $pelanggan->id) }}" method="POST">
        @csrf
        @method('PUT')

        <div class="mb-3">
            <label>Nama</label>
            <input type="text" name="nama" value="{{ $pelanggan->nama }}" class="form-control" required>
        </div>
        <div class="mb-3">
            <label>No WhatsApp</label>
            <input type="text" name="no_wa" value="{{ $pelanggan->no_wa }}" class="form-control" required>
        </div>
        <div class="mb-3">
            <label>Alamat</label>
            <textarea name="alamat" class="form-control" required>{{ $pelanggan->alamat }}</textarea>
        </div>
        <div class="mb-3">
            <label>Air Dipakai (m<sup>3</sup>)</label>
            <input type="number" name="air_dipakai" value="{{ $pelanggan->air_dipakai }}" class="form-control" required>
        </div>
        <div class="mb-3">
            <label>Jumlah Tagihan</label>
            <input type="number" step="0.01" name="jumlah_tagihan" value="{{ $pelanggan->jumlah_tagihan }}" class="form-control" required>
        </div>
        <div class="mb-3">
            <label>Tanggal Jatuh Tempo</label>
            <input type="date" name="tanggal_jatuh_tempo" value="{{ $pelanggan->tanggal_jatuh_tempo }}" class="form-control" required>
        </div>
        <div class="mb-3">
            <label>Status</label>
            <select name="status" class="form-control" required>
                <option value="Aktif" {{ $pelanggan->status == 'Aktif' ? 'selected' : '' }}>Aktif</option>
                <option value="Non-Aktif" {{ $pelanggan->status == 'Non-Aktif' ? 'selected' : '' }}>Non-Aktif</option>
            </select>
        </div>
        <button type="submit" class="btn btn-primary">Update</button>
        <a href="{{ route('pelanggans.index') }}" class="btn btn-secondary">Kembali</a>
    </form>
</div>
@endsection