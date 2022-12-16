<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class pemesanan extends Model
{
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'pemesanans';

    /**
    * The database primary key value.
    *
    * @var string
    */
    protected $primaryKey = 'id';

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['id_pemesanan', 'id_produk', 'jumlah_produk'];

    
}
