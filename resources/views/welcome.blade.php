<!DOCTYPE html>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">

<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>

        <!-- Fonts -->
        <link rel="preconnect" href="https://fonts.bunny.net">
        <link href="https://fonts.bunny.net/css?family=figtree:400,600&display=swap" rel="stylesheet" />

        <!-- Styles -->
        @vite(['resources/css/app.css', 'resources/js/app.js'])
    </head>
    <body class="antialiased font-sans">
        <div class="bg-gray-50 text-black/50 dark:bg-black dark:text-white/50">
                        <div class="relative min-h-screen flex flex-col items-center justify-center selection:bg-[#FF2D20] selection:text-white">
                <div class="relative w-full max-w-2xl px-6 lg:max-w-7xl">
                <div class="flex lg:justify-center lg:col-start-2">
                    <svg class="h-12 w-auto text-gray-500 lg:h-16 lg:text-gray-700" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64">
                        <path fill="currentColor" d="M56 0H8C3.58 0 0 3.58 0 8v48c0 4.42 3.58 8 8 8h48c4.42 0 8-3.58 8-8V8c0-4.42-3.58-8-8-8zm-4 56H12V8h40v48zm-8-28H24v-4h24v4zm0 8H24v-4h24v4zm0 8H24v-4h24v4zm-8-20h-8v-4h8v4zm12-4H36v-4h12v4zM12 4h40c2.22 0 4 1.78 4 4v4H8V8c0-2.22 1.78-4 4-4zm0 56c-2.22 0-4-1.78-4-4h48c0 2.22-1.78 4-4 4H12z"/>
                        <path fill="currentColor" d="M38.39 25.68l-2.83 2.83-8.49-8.49 2.83-2.83c.39-.39.91-.58 1.41-.58.51 0 1.02.19 1.41.58l8.49 8.49c.39.39.58.91.58 1.41 0 .51-.19 1.02-.58 1.41z"/>
                    </svg>
                </div>
                <header class="text-center text-2xl text-black/75 font-bold">Bienvenido al Foro</header>

                <header class="grid grid-cols-3 items-center gap-4 py-16 lg:grid-cols-2 text-3xl font-bold">
                        
                        @if (Route::has('login'))
                            <livewire:welcome.navigation />
                        @endif
                    </header>

                </div>
            </div>
        </div>
    </body>
</html>
