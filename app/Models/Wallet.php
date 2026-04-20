<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Wallet extends Model
{
    use HasFactory, SoftDeletes;

    /** 
     * The attributes that are mass assignable.
     * @var array<int, string> 
     * user_id: foreign key ke tabel users, integer, required
     * balance: saldo wallet, integer, default 0
     */
    protected $fillable = [
        'user_id',
        'balance',
    ];
}
