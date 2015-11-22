<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Zone extends Model{

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'zone';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['id', 'name', 'town_id'];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = [];
}
