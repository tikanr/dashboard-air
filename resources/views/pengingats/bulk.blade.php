@extends('layouts.app')
@section('content')
<div class="container">
    <h4>Kirim Notifikasi Massal</h4>
    <form action="{{ route('pengingats.kirimMassal') }}" method="POST">
        @csrf
        <div class="form-group">
            @foreach($tagihans as $tagihan)
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" name="tagihan_ids[]" value="{{ $tagihan->id }}">
                    <label class="form-check-label">
                        {{ $tagihan->pelanggan->nama }} - {{ $tagihan->bulan }}/{{ $tagihan->tahun }} (Rp {{ number_format($tagihan->jumlah_tagihan, 0, ',', '.') }})
                    </label>
                </div>
            @endforeach
        </div>
        <button type="submit" class="btn btn-success mt-3">Kirim Semua</button>
    </form>
</div>
@endsection
