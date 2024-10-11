<x-app-layout>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<br>
    <div class="row mx-auto">
        <h2>
        <div style="font-size: 32px; font-weight: bold; color: green">{{ $categoria->nombre }}
        </div>
        </h2>
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="card ">
                <div class="card-body">
                    <br>
                    <p>{{ $categoria->descripcion }}</p>
                    <br>
        <a class= "btn btn-outline-success mb-4" href= "{{ route('dashboard') }}">Regresar</a>
                </div>
            </div>
        </div>
    </div>
    <div class="row mx-auto">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="card">
                <div class= "card-body">
                    <h3 class="text-primary">Preguntas:</h3>
                    <br>
                        @if ($posts->isEmpty())
                            <p>No hay posts en esta categoría.</p>
                            @else
                            @foreach ($posts as $post)
                                <div class="card mb-3">
                                    <div class="card-body">
                                        <h5 class="card-title" style="color: orange;">{{ $post->nombre }}</h5>
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th scope="col">Pregunta/Suceso</th>
                                                    <td>{{ $post->resumen }}</td>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <th scope="col">Detalles</th>
                                                    <td>{{ $post->contenido }} </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <!-- Mostrar los comentarios con scroll-->
                                        <h6 style='color: purple;'>Comentarios:</h6>
                                            <div id="comentarios-container" style="max-height: 200px; overflow-y: auto; border: 1px solid #ccc; padding: 10px;">
                                                @if (isset($comentariosPorPost[$post->id]))
                                                    @foreach ($comentariosPorPost[$post->id] as $comentario)
                                                        <div class="mb-2">
                                                            <strong>{{ $comentario->user_name }}</strong> 
                                                            <label style='color: gray;'>({{ $comentario->created_at }})</label><br>
                                                            {{ $comentario->comentario }}
                                                        </div>
                                                    @endforeach
                                                @else
                                                    <p>No hay comentarios para este post.</p>
                                                @endif
                                            </div>

                                        <form action="{{ route('comentario.crear', ['post_id' => $post->id]) }}" method="POST">
                                            @csrf
                                            <div class="mb-3">
                                                <label for="comentario" class="form-label" style='color: green;'>Nuevo Comentario</label>
                                                <textarea class="form-control" id="comentario" name="comentario" required></textarea>
                                            </div>
                                            <button type="submit" class="btn btn-success">Comentar</button>
                                        </form>
                                    </div>
                                </div>
                            @endforeach
                        @endif
                </div>
            </div>
        </div>
    </div>
    
    <button class="btn btn-primary" id="crearPostBtn">Nueva Pregunta o suceso</button>

    <!-- Formulario para crear nuevo post (inicialmente oculto) -->
    <div id="nuevoPostForm" style="display: none; margin-top: 20px;">
                        <form action="{{ route('post.crear', ['categoria_id' => $categoria->id]) }}" method="POST">
                            @csrf
                            <div class="mb-3">
                                <label for="nombre" class="form-label">Titulo</label>
                                <input type="text" class="form-control" id="nombre" name="nombre" required>
                            </div>
                            <div class="mb-3">
                                <label for="resumen" class="form-label">Genera tu pregunta o suceso</label>
                                <textarea class="form-control" id="resumen" name="resumen" required></textarea>
                            </div>
                            <div class="mb-3">
                                <label for="contenido" class="form-label">Danos más detalles</label>
                                <textarea class="form-control" id="contenido" name="contenido" required></textarea>
                            </div>
                            <button type="submit" class="btn btn-success">Publicar</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        document.getElementById('crearPostBtn').addEventListener('click', function() {
            var form = document.getElementById('nuevoPostForm');
            if (form.style.display === 'none') {
                form.style.display = 'block'; // Muestra el formulario
            } else {
                form.style.display = 'none'; // Oculta el formulario
            }
        });
    </script>
</x-app-layout>
