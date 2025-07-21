@extends('layouts.app')
@section('content')
<div class="container">
    <h4>Kirim Notifikasi Manual</h4>
    <form action="{{ route('pengingats.kirim') }}" method="POST">
        @csrf
        <div class="form-group">
            <label>Pilih Tagihan</label>
            <select name="tagihan_id" class="form-control">
                @foreach($tagihans as $tagihan)
                    <option value="{{ $tagihan->id }}">
                        {{ $tagihan->pelanggan->nama }} - {{ $tagihan->bulan }}/{{ $tagihan->tahun }} (Rp {{ number_format($tagihan->jumlah_tagihan, 0, ',', '.') }})
                    </option>
                @endforeach
            </select>
        </div>
        <button class="btn btn-primary mt-3" type="submit">Kirim</button>
    </form>
</div>
@endsection