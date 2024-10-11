<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Categorias;
use Illuminate\Support\Facades\DB;
use App\Http\Requests\StoreCategoriasRequest;
use App\Http\Requests\UpdateCategoriasRequest;

class CategoriasController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $categoria =DB::connection('mariadb1')->table('categorias')->where('id', '>=', 4)->orderBy('id', 'desc')->get();

        return view('/dashboard', ['categorias' => $categoria]);
    }

    public function ver(Request $request, int $id)
    {
        $categoria = DB::table("categorias")->select ('categorias.id', 'categorias.nombre', 'categorias.descripcion' )
        ->where("id", "=", $id)->first();

        $posts = DB::table('posts')
        ->where('categoria_id', $id) 
        ->get();

        $comentarios = DB::table('comentario_post')
        ->join('comentarios', 'comentario_post.comentario', '=', 'comentarios.id')
        ->join('users', 'comentarios.user_id', '=', 'users.id')
        ->whereIn('comentario_post.post', $posts->pluck('id'))
        ->select('comentarios.comentario', 'comentarios.created_at', 'comentario_post.post', 'users.name AS user_name')
        ->get();

        $comentariosPorPost = [];
        foreach ($comentarios as $comentario) {
        $comentariosPorPost[$comentario->post][] = $comentario;
        }        

        return view('/categorias/index', ['categoria' => $categoria, 'posts'=> $posts, 'comentariosPorPost' => $comentariosPorPost]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreCategoriasRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Categorias $categorias)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Categorias $categorias)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateCategoriasRequest $request, Categorias $categorias)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Categorias $categorias)
    {
        //
    }
}
