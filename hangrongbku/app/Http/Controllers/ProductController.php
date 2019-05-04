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
			$categories = DB::select('select * from categories');
			$products = DB::select('select * from products');
			return view('template.pages.index',compact('products','categories'));
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
	public function getProduct($id){
    	if (!Auth::check()){
			return redirect()->route('signin.getSignin');
		}
		$product = DB::table('products')->where('id',$id)->first();
		$relatedPd = DB::table('products')->where('cateID',$product->cateID)->get();
		$seller = DB::table('users')->where('id',$product->sellerID)->first();
		return view('template.pages.product',compact('product','seller','relatedPd'));
		}
		public function getCategories($id){
    	if (!Auth::check()){
			return redirect()->route('signin.getSignin');
		}
		$products = DB::table('products')->where('cateID',$id)->get();
		$categories = DB::select('select * from categories');
    	return view('template.pages.index',compact('products','categories'));
    }
}

