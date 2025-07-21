<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTagihansTable extends Migration
{
    public function up()
    {
        Schema::create('tagihans', function (Blueprint $table) {
            $table->id();
            $table->foreignId('pelanggan_id')->constrained('pelanggans')->onDelete('cascade');
            $table->tinyInteger('bulan')->unsigned(); // 1-12 (unsigned to ensure positive)
            $table->smallInteger('tahun')->unsigned(); // year (unsigned to ensure positive)
            $table->decimal('jumlah_tagihan', 12, 2); // using decimal for precise monetary values
            $table->integer('air_dipakai')->unsigned(); // water usage in liters
            $table->date('tanggal_jatuh_tempo');
            $table->enum('status', ['Belum Lunas', 'Lunas', 'Terlambat', 'Sebagian'])->default('Belum Lunas');
            $table->timestamps();

            // Composite unique index to prevent duplicate monthly bills
            $table->unique(['pelanggan_id', 'bulan', 'tahun']);

            // Indexes for better query performance
            $table->index('pelanggan_id');
            $table->index(['bulan', 'tahun']);
            $table->index('status');
            $table->index('tanggal_jatuh_tempo');
        });
    }

    public function down()
    {
        Schema::dropIfExists('tagihans');
    }
}