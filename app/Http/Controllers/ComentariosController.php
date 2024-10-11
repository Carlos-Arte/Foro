<?php

namespace App\Http\Controllers;

use App\Models\Comentarios;
use App\Models\Posts;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class ComentariosController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create(Request $request, $postId)
    {
        $comentario = new Comentarios();
        $comentario->comentario = $request->comentario;
        $comentario->user_id = auth()->id();

        $comentario->save();

        DB::table('comentario_post')->insert([
            'post' => $postId,
            'comentario' => $comentario->id,
            'created_at' => now()
        ]);
        $post = Posts::find($postId);
    $categoriaId = $post ? $post->categoria_id : null;

    return redirect()->route('categoria.ver', ['id' => $categoriaId])
        ->with('success', 'Comentario creado exitosamente.');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreComentariosRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Comentarios $comentarios)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Comentarios $comentarios)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateComentariosRequest $request, Comentarios $comentarios)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Comentarios $comentarios)
    {
        //
    }
}
