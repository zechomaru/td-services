<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Partner extends Model{

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'partner';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['id', 'name'];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = [];
}
