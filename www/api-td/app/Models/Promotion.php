<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Promotion extends Model{

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'promotion';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['id'];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = [];
}
