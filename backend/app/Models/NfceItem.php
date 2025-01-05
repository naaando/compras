<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Laravel\Scout\Searchable;

class NfceItem extends Model
{
    use HasFactory;
    use Searchable;

    protected $guarded = [];

    public function nfce()
    {
        return $this->belongsTo(Nfce::class);
    }
}
