<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use App\Models\User;

class UserSeeder extends Seeder
{
    public function run(): void
    {
        User::create([
            'name' => 'Admin Tirto',
            'email' => 'admin@tirto.test',
            'password' => Hash::make('password123'), // Gunakan hash untuk keamanan
        ]);
    }
}
