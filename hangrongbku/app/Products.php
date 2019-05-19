<?php
namespace App;
use Illuminate\Database\Eloquent\Model;

class Products extends Model
{
    
    protected $table = 'products';
    protected $fillable = ['id','name','sellerID','price','description','cateID','status','lastTime','numStar','numRate','image'];
    public function user(){
        return $this->belongsTo('App\User','sellerID','id');
    }
}