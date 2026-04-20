<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Category extends Model
{
    //
    use HasFactory, SoftDeletes;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */

    protected $fillable = [
        'name',
        'slug',
        'icon',
    ];

    // Relasi dengan Project (one-to-many) 
    public function projects()
    {
        return $this->hasMany(Project::class);
        // menampilkan seluruh project dengan category tersebut
    }
}
