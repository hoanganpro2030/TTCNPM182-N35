<?php
namespace App;
use Illuminate\Database\Eloquent\Model;
class UserCarts extends Model
{
    protected $table = 'usercarts';
    protected $fillable = ['id','userID','productID'];
    public function user(){
        return $this->belongsTo('App\User','userID','id');
    }
    public function product(){
        return $this->belongsTo('App\Products','productID','id');
    }
}
