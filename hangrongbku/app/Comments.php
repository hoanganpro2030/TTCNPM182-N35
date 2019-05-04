<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Comments extends Model
{
    protected $table="comments";
    protected $fillable = ['id','userID','productID','content'];
}
