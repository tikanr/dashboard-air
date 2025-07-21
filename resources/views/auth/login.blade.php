@extends('layouts.guest')

@section('content')
<style>
    body {
        margin: 0;
        padding: 0;
        background-color: #f4f6fb;
        font-family: 'Segoe UI', sans-serif;
    }

    .login-container {
        display: flex;
        min-height: 100vh;
        align-items: center;
        justify-content: center;
        padding: 20px;
    }

    .login-box {
        display: flex;
        flex-direction: row;
        background-color: #fff;
        border-radius: 16px;
        overflow: hidden;
        box-shadow: 0 10px 40px rgba(0, 0, 0, 0.08);
        max-width: 1000px;
        width: 100%;
    }

    .login-image {
        background-color: #eaeaff;
        flex: 1;
        display: flex;
        align-items: center;
        justify-content: center;
        padding: 40px;
    }

    .login-image img {
        max-width: 100%;
        height: auto;
        animation: float 3s ease-in-out infinite;
    }

    @keyframes float {
        0%, 100% { transform: translateY(0); }
        50% { transform: translateY(-10px); }
    }

    .login-form {
        flex: 1;
        padding: 60px 40px;
    }

    .login-form h2 {
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

    .login-options {
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin-top: 10px;
        font-size: 0.9rem;
    }

    .login-options label {
        margin-bottom: 0;
        color: #555;
    }

    .login-options a {
        color: #6C63FF;
        text-decoration: none;
    }

    .login-options a:hover {
        text-decoration: underline;
    }

    .btn-login {
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

    .btn-login:hover {
        background-color: #574ddd;
    }

    .btn-register {
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

    .btn-register:hover {
        background-color: #6C63FF;
        color: #fff;
    }

    @media (max-width: 768px) {
        .login-box {
            flex-direction: column;
        }

        .login-image, .login-form {
            width: 100%;
            padding: 30px;
        }
    }
</style>

<div class="login-container">
    <div class="login-box">
        {{-- Ilustrasi di kiri --}}
        <div class="login-image">
            <img src="{{ asset('images/instalasi-air-bersih-freepik (1).jpg') }}" alt="Ilustrasi Sumur Bor">
        </div>

        {{-- Form Login di kanan --}}
        <div class="login-form">
            <h2>Masuk ke Akun Anda</h2>

            <form method="POST" action="{{ route('login') }}">
                @csrf

                <label for="email" class="form-label">Email</label>
                <input type="email" id="email" name="email" class="form-control" placeholder="Masukkan email" required>

                <label for="password" class="form-label">Kata Sandi</label>
                <input type="password" id="password" name="password" class="form-control" placeholder="Masukkan kata sandi" required>

                <div class="login-options mt-3">
                    <div class="form-check">
                        <input type="checkbox" name="remember" class="form-check-input" id="remember">
                        <label class="form-check-label" for="remember">Ingat saya</label>
                    </div>
                    <a href="#">Lupa kata sandi?</a>
                </div>

                <button type="submit" class="btn-login">Masuk</button>
                <a href="{{ route('register') }}" class="btn-register">Daftar Akun Baru</a>
            </form>
        </div>
    </div>
</div>
@endsection
