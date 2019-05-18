<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Notifications extends Model
{
    protected $table = 'notifications';
    protected $fillable = ['id','userID','orderID','isNew','isDone'];
    public function user(){
        return $this->hasMany('App\User','userID','id');
    }
    public function order(){
        return $this->hasMany('App\Order','orderID','id');
    }
}
