<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class ProjectApplicant extends Model
{
    use HasFactory, SoftDeletes;

    /** 
     * The attributes that are mass assignable.
     * @var array<int, string> 
     * project_id: foreign key ke tabel projects, integer, required
     * freelancer_id: foreign key ke tabel users, integer, required
     * message: pesan lamaran, text, required
     */
    protected $fillable = [
        'project_id',
        'freelancer_id',
        'message',
        'status',
    ];

    // Relasi dengan User (many-to-one) Setiap applicant dimiliki oleh satu user (freelancer), dan setiap user dapat memiliki banyak applicant
    // Relasi many-to-one menggunakan foreign key freelancer_id di tabel project_applicants yang merujuk ke id di tabel users
    public function freelancer()
    {
        return $this->belongsTo(User::class, 'freelancer_id');
        // menampilkan user (freelancer) dari applicant tersebut
    }

    // Relasi dengan Project (many-to-one) Setiap applicant untuk satu project, dan setiap project dapat memiliki banyak applicant 
    // Relasi many-to-one menggunakan foreign key project_id di tabel project_applicants yang merujuk ke id di tabel projects 
    public function project()
    {
        return $this->belongsTo(Project::class);
        // menampilkan project dari applicant tersebut
    }
}
