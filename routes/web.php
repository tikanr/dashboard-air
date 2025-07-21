<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Http\Controllers\PelangganController;
use App\Http\Controllers\PembayaranController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\PengingatController;
use App\Http\Controllers\ClusteringController;
use App\Http\Controllers\TagihanController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\LaporanController;

/*
|--------------------------------------------------------------------------
| Default redirect to login
|--------------------------------------------------------------------------
*/
Route::get('/', function () {
    return redirect()->route('login');
});

/*
|--------------------------------------------------------------------------
| Auth Routes (menggunakan AuthController tunggal)
|--------------------------------------------------------------------------
*/
Route::middleware('guest')->group(function () {
    Route::get('/login', [AuthController::class, 'showLoginForm'])->name('login');
    Route::post('/login', [AuthController::class, 'login']);
    Route::get('/register', [AuthController::class, 'showRegisterForm'])->name('register');
    Route::post('/register', [AuthController::class, 'register']);
});

// Logout
Route::post('/logout', function (Request $request) {
    Auth::logout();
    $request->session()->invalidate();
    $request->session()->regenerateToken();
    return redirect()->route('login');
})->name('logout');

/*
|--------------------------------------------------------------------------
| Protected Routes (Only if logged in)
|--------------------------------------------------------------------------
*/
Route::middleware(['auth'])->group(function () {
    Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');

    // Pelanggan
    Route::resource('pelanggans', PelangganController::class);

    // Pembayaran
    Route::get('/pembayarans', [PembayaranController::class, 'all'])->name('pembayarans.all');
    Route::get('pelanggans/{id}/pembayarans', [PembayaranController::class, 'show'])->name('pembayarans.show');
    Route::post('pelanggans/{id}/pembayarans', [PembayaranController::class, 'store'])->name('pembayarans.store');
    Route::delete('pembayarans/{id}', [PembayaranController::class, 'destroy'])->name('pembayarans.destroy');

    // Clustering
    Route::get('/clusterings', [ClusteringController::class, 'index'])->name('clusterings.index');
    Route::post('/clusterings/process', [ClusteringController::class, 'process'])->name('clusterings.process');

    // Pengingat
    Route::resource('pengingats', PengingatController::class)->only(['index', 'create']);
    Route::post('/pengingats/kirim', [PengingatController::class, 'kirim'])->name('pengingats.kirim');
    Route::get('/pengingats/massal', [PengingatController::class, 'massal'])->name('pengingats.massal');
    Route::post('/pengingats/kirim-massal', [PengingatController::class, 'kirimMassal'])->name('pengingats.kirimMassal');

    // Tagihan
    Route::resource('tagihans', TagihanController::class);

    // Laporan
    Route::get('/laporan', [LaporanController::class, 'index'])->name('laporan.index');
    Route::get('/laporan/export-pdf', [LaporanController::class, 'exportPdf'])->name('laporan.exportPdf');

    // Edit profil
    Route::get('/profile/edit', function () {
        return view('profile.edit');
    })->name('profile.edit');
});

/*
|--------------------------------------------------------------------------
| Cek Token Fonnte
|--------------------------------------------------------------------------
*/
Route::get('/cek-token', function () {
    return env('FONNTE_API_KEY');
});
