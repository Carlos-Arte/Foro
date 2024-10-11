<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CategoriasController;
use App\Http\Controllers\PostsController;
use App\Http\Controllers\ComentariosController;

Route::view('/', 'welcome');

Route::get('/dashboard', [CategoriasController::class, 'index'])
    ->middleware(['auth', 'verified'])
    ->name('dashboard');

Route::view('profile', 'profile')
    ->middleware(['auth'])
    ->name('profile');

require __DIR__.'/auth.php';

Route::get('/dashboard/{id}/categoria', [CategoriasController::class, 'ver'])->name('categoria.ver');
Route::post('/posts/crear/{categoria_id}', [PostsController::class, 'create'])->name('post.crear');
Route::post('/comentario/crear/{post_id}', [ComentariosController::class, 'create'])->name('comentario.crear');
