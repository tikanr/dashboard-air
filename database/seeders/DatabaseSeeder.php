<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    public function run(): void
    {
        $this->call([
    PelangganSeeder::class,
    TagihanSeeder::class,
    PembayaranSeeder::class,
    UserSeeder::class,
]);

    }
}
