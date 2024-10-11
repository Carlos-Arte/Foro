<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comentarios extends Model
{
    use HasFactory;
    protected $primaryKey = 'id';
    protected $table = 'comentarios';
    protected $fillable = [ 'comentario', 'adjunto', 'user_id'];
    public $timestamps = true;
}
