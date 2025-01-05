<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Nfce extends Model
{
    use HasFactory;

    protected $guarded = [];

    protected $casts = [
        'issue_date' => 'datetime',
        'raw' => 'array',
    ];

    public function items()
    {
        return $this->hasMany(NfceItem::class);
    }
}
