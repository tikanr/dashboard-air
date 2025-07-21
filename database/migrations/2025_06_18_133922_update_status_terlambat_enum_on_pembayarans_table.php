<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Support\Facades\DB;

return new class extends Migration
{
    public function up(): void
    {
        // Ubah enum lama ke VARCHAR sementara
        DB::statement("ALTER TABLE pembayarans MODIFY status_terlambat VARCHAR(20)");

        // Ganti ke enum dengan 3 status
        DB::statement("ALTER TABLE pembayarans MODIFY status_terlambat ENUM('Tepat Waktu', 'Terlambat', 'Sering Terlambat') DEFAULT 'Tepat Waktu'");
    }

    public function down(): void
    {
        // Rollback ke enum 2 status
        DB::statement("ALTER TABLE pembayarans MODIFY status_terlambat ENUM('Tepat Waktu', 'Terlambat') DEFAULT 'Tepat Waktu'");
    }
};
