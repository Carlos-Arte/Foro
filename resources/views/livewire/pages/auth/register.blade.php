<?php

use App\Models\User;
use Illuminate\Auth\Events\Registered;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\Rules;
use Livewire\Attributes\Layout;
use Livewire\Volt\Component;

new #[Layout('layouts.guest')] class extends Component
{
    public string $name = '';
    public string $apellido_paterno = '';
    public string $apellido_materno = '';
    public string $email = '';
    public string $password = '';
    public string $password_confirmation = '';
    public string $imagen = '';
    public string $perfil = '';
    public string $username = '';
    public string $estado = '';
    public string $descripcion = '';

    /**
     * Handle an incoming registration request.
     */
    public function register(): void
    {
        $validated = $this->validate([
            'name' => ['required', 'string', 'max:255'],
            'apellido_paterno' => ['required', 'string', 'max:255'],
            'apellido_materno' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'lowercase', 'email', 'max:255', 'unique:' . User::class],
            'password' => ['required', 'string', 'confirmed', Rules\Password::defaults()],
            'imagen' => ['nullable', 'string', 'max:255'],
            'perfil' => ['required', 'string', 'max:255'],
            'username' => ['required', 'string', 'max:255', 'unique:' . User::class],
            'estado' => ['required', 'string', 'max:255'],
            'descripcion' => ['nullable', 'string', 'max:1000'],
        ]);

        // Hash the password
        $validated['password'] = Hash::make($validated['password']);

        // Create the user
        $user = User::create($validated);

        // Trigger the Registered event and login the user
        event(new Registered($user));
        Auth::login($user);

        // Redirect to dashboard
        $this->redirect(route('dashboard', absolute: false), navigate: true);
    }
};

?>

<div>
    <form wire:submit="register">
        <!-- Nombre -->
        <div>
            <x-input-label for="name" :value="__('Nombre')" />
            <x-text-input wire:model="name" id="name" class="block mt-1 w-full" type="text" name="name" required autofocus autocomplete="name" />
            <x-input-error :messages="$errors->get('name')" class="mt-2" />
        </div>

        <!-- Apellido Paterno -->
        <div class="mt-4">
            <x-input-label for="apellido_paterno" :value="__('Apellido Paterno')" />
            <x-text-input wire:model="apellido_paterno" id="apellido_paterno" class="block mt-1 w-full" type="text" name="apellido_paterno" required autocomplete="apellido_paterno" />
            <x-input-error :messages="$errors->get('apellido_paterno')" class="mt-2" />
        </div>

        <!-- Apellido Materno -->
        <div class="mt-4">
            <x-input-label for="apellido_materno" :value="__('Apellido Materno')" />
            <x-text-input wire:model="apellido_materno" id="apellido_materno" class="block mt-1 w-full" type="text" name="apellido_materno" required autocomplete="apellido_materno" />
            <x-input-error :messages="$errors->get('apellido_materno')" class="mt-2" />
        </div>

        <!-- Email -->
        <div class="mt-4">
            <x-input-label for="email" :value="__('Correo')" />
            <x-text-input wire:model="email" id="email" class="block mt-1 w-full" type="email" name="email" required autocomplete="email" />
            <x-input-error :messages="$errors->get('email')" class="mt-2" />
        </div>

        <!-- Username -->
        <div class="mt-4">
            <x-input-label for="username" :value="__('Usuario')" />
            <x-text-input wire:model="username" id="username" class="block mt-1 w-full" type="text" name="username" required autocomplete="username" />
            <x-input-error :messages="$errors->get('username')" class="mt-2" />
        </div>

        <!-- Estado -->
        <div class="mt-4">
            <x-input-label for="estado" :value="__('Estado')" />
            <x-text-input wire:model="estado" id="estado" class="block mt-1 w-full" type="text" name="estado" required autocomplete="estado" />
            <x-input-error :messages="$errors->get('estado')" class="mt-2" />
        </div>

        <!-- Descripción -->
        <div class="mt-4">
            <x-input-label for="descripcion" :value="__('Descripción')" />
            <textarea wire:model="descripcion" id="descripcion" class="block mt-1 w-full" name="descripcion" rows="4"></textarea>
            <x-input-error :messages="$errors->get('descripcion')" class="mt-2" />
        </div>


        <!-- Imagen -->
        <div class="mt-4">
            <x-input-label for="imagen" :value="__('Imagen')" />
            <x-text-input wire:model="imagen" id="imagen" class="block mt-1 w-full" type="text" name="imagen" />
            <x-input-error :messages="$errors->get('imagen')" class="mt-2" />
        </div>

        <!-- Perfil -->
        <div class="mt-4">
            <x-input-label for="perfil" :value="__('Perfil')" />
            <x-text-input wire:model="perfil" id="perfil" class="block mt-1 w-full" type="text" name="perfil" required autocomplete="perfil" />
            <x-input-error :messages="$errors->get('perfil')" class="mt-2" />
        </div>

        <!-- Password -->
        <div class="mt-4">
            <x-input-label for="password" :value="__('Contraseña')" />
            <x-text-input wire:model="password" id="password" class="block mt-1 w-full" type="password" name="password" required autocomplete="new-password" />
            <x-input-error :messages="$errors->get('password')" class="mt-2" />
        </div>

        <!-- Confirmar contraseña -->
        <div class="mt-4">
            <x-input-label for="password_confirmation" :value="__('Confirmar Contraseña')" />
            <x-text-input wire:model="password_confirmation" id="password_confirmation" class="block mt-1 w-full" type="password" name="password_confirmation" required autocomplete="new-password" />
            <x-input-error :messages="$errors->get('password_confirmation')" class="mt-2" />
        </div>

        <div class="flex items-center justify-end mt-4">
            <a class="underline text-sm text-gray-600 dark:text-gray-400 hover:text-gray-900 dark:hover:text-gray-100 rounded-md focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500 dark:focus:ring-offset-gray-800" href="{{ route('login') }}" wire:navigate>
                {{ __('¿Ya estás registrado?') }}
            </a>

            <x-primary-button class="ms-4">
                {{ __('Registrarse') }}
            </x-primary-button>
        </div>
    </form>
</div>
