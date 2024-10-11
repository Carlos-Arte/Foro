<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Posts extends Model
{
    use HasFactory;
    protected $primaryKey = 'id';
    protected $table = 'posts';
    protected $fillable = [ 'autor', 'nombre','resumen', 'contenido', 'imagen', 'adjuntos', 'categoria_id'];
    public $timestamps = true;
    
    
}


