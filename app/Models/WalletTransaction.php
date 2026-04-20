<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class WalletTransaction extends Model
{
    use HasFactory, SoftDeletes;

    /** 
     * The attributes that are mass assignable.
     * @var array<int, string> 
     * user_id: foreign key ke tabel users, integer, required
     * amount: jumlah transaksi, integer, required
     * type: jenis transaksi, enum (deposit, withdraw), required
     * is_paid: status transaksi sudah dibayar atau belum, boolean, default false
     * proof: bukti transaksi, string, nullable
     * bank_name: nama bank, string, nullable
     * bank_account_name: nama pemilik rekening bank, string, nullable
     * bank_account_number: nomor rekening bank, string, nullable
     */
    protected $fillable = [
        'user_id',
        'amount',
        'type',
        'is_paid',
        'proof',
        'bank_name',
        'bank_account_name',
        'bank_account_number',
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
        // menampilkan user yang melakukan transaksi wallet tersebut
    }
}
