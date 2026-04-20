<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Project extends Model
{
    //
    use HasFactory, SoftDeletes;

    /** 
     * The attributes that are mass assignable. 
     * @var array<int, string>
     * name: nama project, string, required
     * slug: slug project, string, required, unique
     * thumbnail: thumbnail project, string, nullable
     * about: deskripsi project, text, required
     * category_id: foreign key ke tabel categories, integer, required
     * client_id: foreign key ke tabel users, integer, required
     * budget: budget project, integer, required
     * skill_level: tingkat kesulitan project, enum (beginner, intermediate, expert), required
     * has_finished: status project sudah selesai atau belum, boolean, default false
     * has_star: status project sudah diberi bintang atau belum, boolean, default false 
     */
    protected $fillable = [
        'name',
        'slug',
        'thumbnail',
        'about',
        'category_id',
        'client_id',
        'budget',
        'skill_level',
        'has_finished',
        'has_started'
    ];

    // Relasi dengan Category (many-to-one) Setiap project memiliki satu category, dan setiap category dapat memiliki banyak project
    public function category()
    {
        return $this->belongsTo(Category::class);
        // menampilkan category dari project tersebut 
    }

    // Relasi dengan User (many-to-one) Setiap project dimiliki oleh satu user (client), dan setiap user dapat memiliki banyak project 
    public function owner()
    {
        return $this->belongsTo(User::class, 'client_id', 'id');
        // menampilkan user (client) dari project tersebut
        // client_id adalah foreign key di tabel projects yang merujuk ke id di tabel users
    }

    // Relasi dengan Tool (many-to-many) Setiap project dapat menggunakan banyak tool, dan setiap tool dapat digunakan oleh banyak project 
    // Relasi many-to-many menggunakan tabel pivot project_tools dengan foreign key project_id dan tool_id
    public function tools()
    {
        // menampilkan seluruh tool yang digunakan oleh project tersebut, dengan kondisi hanya menampilkan tool yang belum soft deleted di tabel pivot project_tools
        return $this->belongsToMany(Tool::class, 'project_tools', 'project_id', 'tool_id')
            ->wherePivotNull('deleted_at') // menampilkan hanya tool yang belum soft deleted di tabel pivot project_tools 
            ->withPivot('id'); // menampilkan id dari tabel pivot project_tools untuk keperluan update atau delete data pivot 
    }

    // Relasi dengan ProjectApplicant (one-to-many) Setiap project dapat memiliki banyak applicant (freelancer yang mengajukan proposal), dan setiap applicant hanya untuk satu project 
    // Relasi one-to-many menggunakan foreign key project_id di tabel project_applicants yang merujuk ke id di tabel projects 
    public function applicants()
    {
        return $this->hasMany(ProjectApplicant::class);
        // menampilkan seluruh applicant (freelancer yang mengajukan proposal) dari project tersebut
    }
}
