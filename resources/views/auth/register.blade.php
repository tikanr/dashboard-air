@extends('layouts.guest')

@section('content')
<style>
    body {
        margin: 0;
        padding: 0;
        background-color: #f4f6fb;
        font-family: 'Segoe UI', sans-serif;
    }

    .register-container {
        display: flex;
        min-height: 100vh;
        align-items: center;
        justify-content: center;
        padding: 20px;
    }

    .register-box {
        display: flex;
        flex-direction: row;
        background-color: #fff;
        border-radius: 16px;
        overflow: hidden;
        box-shadow: 0 10px 40px rgba(0, 0, 0, 0.08);
        max-width: 1000px;
        width: 100%;
        height: 600px;
    }

    .register-image {
        flex: 1;
        background: url('{{ asset('images/instalasi-air-bersih-freepik (1).jpg') }}') no-repeat center center;
        background-size: cover;
    }

    .register-form {
        flex: 1;
        padding: 60px 40px;
        background-color: #ffffff;
        display: flex;
        flex-direction: column;
        justify-content: center;
    }

    .register-form h2 {
        color: #6C63FF;
        font-weight: 700;
        margin-bottom: 25px;
    }

    .form-label {
        font-weight: 500;
        margin-top: 15px;
        color: #333;
    }

    .form-control {
        border: 1px solid #ddd;
        border-radius: 8px;
        padding: 10px 12px;
        margin-top: 5px;
        width: 100%;
        transition: border-color 0.3s ease;
    }

    .form-control:focus {
        border-color: #6C63FF;
        box-shadow: none;
    }

    .btn-register {
        background-color: #6C63FF;
        color: #fff;
        font-weight: 600;
        padding: 12px;
        border: none;
        border-radius: 8px;
        width: 100%;
        margin-top: 25px;
        transition: background-color 0.3s ease;
    }

    .btn-register:hover {
        background-color: #574ddd;
    }

    .btn-login-link {
        background-color: transparent;
        border: 2px solid #6C63FF;
        color: #6C63FF;
        font-weight: 600;
        padding: 12px;
        border-radius: 8px;
        width: 100%;
        margin-top: 15px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        transition: all 0.3s ease;
    }

    .btn-login-link:hover {
        background-color: #6C63FF;
        color: #fff;
    }

    @media (max-width: 768px) {
        .register-box {
            flex-direction: column;
            height: auto;
        }

        .register-image {
            height: 250px;
            background-position: center;
        }

        .register-form {
            padding: 30px;
        }
    }
</style>

<div class="register-container">
    <div class="register-box">
        {{-- Gambar di kiri --}}
        <div class="register-image"></div>

        {{-- Form Register di kanan --}}
        <div class="register-form">
            <h2>Daftarkan Akun Baru</h2>

            <form method="POST" action="{{ route('register') }}">
                @csrf

                <label class="form-label" for="name">Nama</label>
                <input type="text" name="name" id="name" class="form-control" placeholder="Masukkan nama lengkap" required>

                <label class="form-label" for="email">Email</label>
                <input type="email" name="email" id="email" class="form-control" placeholder="Masukkan email" required>

                <label class="form-label" for="password">Kata Sandi</label>
                <input type="password" name="password" id="password" class="form-control" placeholder="Masukkan kata sandi" required>

                <label class="form-label" for="password_confirmation">Konfirmasi Kata Sandi</label>
                <input type="password" name="password_confirmation" id="password_confirmation" class="form-control" placeholder="Ulangi kata sandi" required>

                <button type="submit" class="btn-register">Daftar</button>
                <a href="{{ route('login') }}" class="btn-login-link">Sudah punya akun? Masuk</a>
            </form>
        </div>
    </div>
</div>
@endsection
