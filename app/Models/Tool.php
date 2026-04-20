<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Tool extends Model
{
    use HasFactory, SoftDeletes;

    /** 
     * The attributes that are mass assignable.
     * @var array<int, string> 
     * name: nama tool, string, required
     * slug: slug tool untuk URL, string, required, unique
     * icon: ikon tool, string, nullable
     */
    protected $fillable = [
        'name',
        'slug',
        'icon',
    ];

    // Relasi dengan Project (many-to-many) Setiap tool dapat digunakan oleh banyak project, dan setiap project dapat menggunakan banyak tool 
    // Relasi many-to-many menggunakan tabel pivot project_tools dengan foreign key tool_id dan project_id 
    public function projects()
    {
        // menampilkan seluruh project yang menggunakan tool tersebut, dengan kondisi hanya menampilkan project yang belum soft deleted di tabel pivot project_tools
        return $this->belongsToMany(Project::class, 'project_tools', 'tool_id', 'project_id')
            ->wherePivotNull('deleted_at') // menampilkan hanya project yang belum soft deleted di tabel pivot project_tools
            ->withPivot('id'); // menampilkan id dari tabel pivot project_tools untuk keperluan update atau delete data pivot
    }
}
