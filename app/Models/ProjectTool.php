<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class ProjectTool extends Model
{
    use HasFactory, SoftDeletes;

    /** 
     * The attributes that are mass assignable.
     * @var array<int, string> 
     * project_id: foreign key ke tabel projects, integer, required
     * tool_id: foreign key ke tabel tools, integer, required
     */
    protected $fillable = [
        'project_id',
        'tool_id',
    ];
}
