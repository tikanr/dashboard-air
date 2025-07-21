<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('clusterings', function (Blueprint $table) {
            $table->id();
            $table->foreignId('pelanggan_id')->constrained()->onDelete('cascade');

            // Data numerik untuk clustering
            $table->integer('jumlah_pembayaran')->default(0);
            $table->float('rata_rata_keterlambatan')->default(0);
            $table->integer('total_tagihan')->default(0); // Opsional

            $table->integer('cluster_ke')->nullable(); // hasil KMeans

            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('clusterings');
    }
};
