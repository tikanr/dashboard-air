<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Menjalankan migrasi.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('clusterings', function (Blueprint $table) {
            $table->unsignedTinyInteger('bulan')->nullable();
            $table->unsignedSmallInteger('tahun')->nullable();
        });
    }

    /**
     * Mengembalikan migrasi.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('clusterings', function (Blueprint $table) {
            $table->dropColumn(['bulan', 'tahun']);
        });
    }
};
