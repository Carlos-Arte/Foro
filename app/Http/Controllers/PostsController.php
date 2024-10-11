<?php

namespace App\Http\Controllers;

use App\Models\Posts;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class PostsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index($categoriaId)
    {
        $posts = DB::connection('mariadb1')->table('posts')
        ->where('categoria_id', $categoriaId)
        ->get();

        return view('/categorias/index', ['posts' => $posts]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create(Request $request, $categoriaId)
    {
        $autorId = auth()->id();

        DB::table('posts')->insert([
            'nombre' => $request->nombre,
            'resumen' => $request->resumen,
            'contenido' => $request->contenido,
            'categoria_id' => $request->categoria_id,
            'autor' => $autorId,
            'created_at' => now()

        ]);

        return redirect()->route('categoria.ver', ['id' => $request->categoria_id])
                     ->with('success', 'Post creado exitosamente.');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StorePostsRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Posts $posts)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Posts $posts)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdatePostsRequest $request, Posts $posts)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Posts $posts)
    {
        //
    }
}
