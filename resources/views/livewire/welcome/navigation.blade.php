<nav class="-mx-3 flex flex-1 justify-end">
    @auth
        <a
            href="{{ url('/dashboard') }}"
            class="rounded-md px-3 py-2 text-black ring-1 ring-transparent transition hover:text-black/70 focus:outline-none focus-visible:ring-[#FF2D20] dark:text-white dark:hover:text-white/80 dark:focus-visible:ring-white"
        >
            Inicio
        </a>
    @else
    <div class="py-4">
    <a
        href="{{ route('login') }}"
        class="block mx-auto rounded-md px-5 py-2 text-black ring-1 ring-transparent transition hover:text-black/70 focus:outline-none focus-visible:ring-[#FF2D20] dark:text-white dark:hover:text-white/80 dark:focus-visible:ring-white"
    >
        Iniciar sesión
    </a>

    @if (Route::has('register'))
        <a
            href="{{ route('register') }}"
            class="block mx-auto rounded-md px-5 py-2 text-black ring-1 ring-transparent transition hover:text-black/70 focus:outline-none focus-visible:ring-[#FF2D20] dark:text-white dark:hover:text-white/80 dark:focus-visible:ring-white"
        >
            Registrarse
        </a>
    @endif
</div>

    @endauth
</nav>
