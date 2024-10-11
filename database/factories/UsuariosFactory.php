<?php

namespace Database\Factories;

use App\Models\Usuarios;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Faker\Factory as Faker;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Usuarios>
 */
class UsuariosFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    protected $model = Usuarios::class;
    
    public function definition(): array
    {
        $faker = Faker::create('es_MX');

        return [
            'imagen' => $this->faker->imageUrl(),
            'perfil' => $this->faker->randomElement(['Admin', 'escritor', 'usuario', 'lector']),
            'username' => $this->faker->userName,
            'estado' => $this->faker->randomElement([0, 1]),
            'name' => $this->faker->firstName,
            'apellido_paterno' => $this->faker->lastName,
            'apellido_materno' => $this->faker->lastName,
            'email' => $this->faker->unique()->safeEmail(),
            'email_verified_at' => now(),
            'password' => Hash::make('password'),
            'descripcion' => $this->faker->sentence,
            'remember_token' => Str::random(10),
        ];
    }
}
