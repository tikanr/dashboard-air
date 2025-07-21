<?php
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
            {
            // database/migrations/..._create_pengingats_table.php
        Schema::create('pengingats', function (Blueprint $table) {
            $table->id();
            $table->foreignId('pelanggan_id')->constrained()->onDelete('cascade');
            $table->foreignId('tagihan_id')->constrained()->onDelete('cascade');
            $table->string('no_wa');
            $table->integer('jumlah_tagihan');
            $table->timestamp('tanggal_dikirim');
            $table->string('status_pengiriman')->default('gagal');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('pengingats');
    }
};