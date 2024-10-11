<x-app-layout>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ __('Inicio') }}
        </h2>
        <div>{{ __('Bienvenido')  }} {{ Auth::user()->name }}</div>
    </x-slot>
    <br>

@if($categorias->isEmpty())
    <p> No hay categorías.</p>
@else
    <div class="row">
        @foreach($categorias as $categoria)
            <div class="max-w-7xl mx-auto col-md-3 mr-2 ml-2 mb-5">
                <div class="card ">
                    <div class= "card-body">
                        <div style="font-size: 24px; font-weight: bold;">{{ $categoria->nombre }}</div>
                        <br>
                        <a class= "btn btn-primary mb-4" href= "{{ route('categoria.ver', $categoria->id) }}">Ingresar</a>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
@endif
</x-app-layout>
