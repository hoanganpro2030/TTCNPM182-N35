<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Auth;
class ProductController extends Controller
{
    public function getIndex(){
    	if (!Auth::check()){
			return redirect()->route('signin.getSignin');
		}
    	$products = DB::select('select * from products');
    	return view('template.pages.index',compact('products'));
	}
	public function showCheckout(){
		return view('template.pages.checkout');
	}
	public function showContact(){
		return view('template.pages.contact');
	}
	public function showAbout(){
		return view('template.pages.about');
	}
	public function showProduct(){
		return view('template.pages.product');
	}
	public function getSearch(Request $req){
		$product = DB::select('select * from products');
		$product->where('name','like','%'.$req->key.'%')
					->orwhere('price', $req->key)
					->get();
		return view('template.pages.search', compact('products'));
	}
	
}

