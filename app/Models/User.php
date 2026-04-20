<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Spatie\Permission\Traits\HasRoles;

class User extends Authenticatable
{
    use HasFactory, Notifiable, HasRoles;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'email',
        'password',
        'avatar',
        'occupation',
        'connect',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * Get the attributes that should be cast.
     *
     * @return array<string, string>
     */
    protected function casts(): array
    {
        return [
            'email_verified_at' => 'datetime',
            'password' => 'hashed',
        ];
    }

    // Relasi dengan Wallet (one-to-one) 
    public function wallet()
    {
        return $this->hasOne(Wallet::class);
    }

    // Relasi dengan Project (one-to-many) 
    public function projects()
    {
        return $this->hasMany(Project::class, 'client_id', 'id')->orderByDesc('id');
        // orderByDesc('id') menampilkan seluruh project user tersebut
    }

    // Relasi dengan ProjectApplicant (one-to-many) untuk freelancer yang mengajukan proposal
    public function proposals()
    {
        return $this->hasMany(ProjectApplicant::class, 'freelancer_id', 'id')->orderByDesc('id');
        // orderByDesc('id') menampilkan seluruh proposal (applicant) yang diajukan oleh freelancer tersebut, dengan kondisi freelancer_id di tabel project_applicants yang merujuk ke id di tabel users
    }

    public function hasAppliedToProject($projectId)
    {
        return ProjectApplicant::where('project_id', $projectId)
            ->where('freelancer_id', $this->id)
            ->exists(); // True jika sudah pernah apply, false jika belum pernah apply
    }
}
