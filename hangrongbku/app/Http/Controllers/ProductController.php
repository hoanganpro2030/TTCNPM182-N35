<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Auth;
use App\Comments;
class ProductController extends Controller
{
    // public function getIndex(){
    // 	if (!Auth::check()){
	// 		return redirect()->route('signin.getSignin');
	// 	}
    // 	$products = DB::select('select * from products');
    // 	return view('template.pages.index',compact('products'));
	// }
	public function showCheckout(){
		return view('template.pages.checkout');
	}
	public function showContact(){
		return view('template.pages.contact');
	}
	public function showAbout(){
		return view('template.pages.about');
	}
	public function getProduct(){
		return view('template.pages.product');
	}
    public function getIndex(){
    	if (!Auth::check()){
			return redirect()->route('signin.getSignin');
		}
    	$products = DB::select('select * from products');
    	$categories = DB::select('select * from categories');
    	return view('template.pages.index',compact('products','categories'));
    }
    public function getCategories($id){
    	if (!Auth::check()){
			return redirect()->route('signin.getSignin');
		}
		$products = DB::table('products')->where('cateID',$id)->get();
		$categories = DB::select('select * from categories');
    	return view('template.pages.index',compact('products','categories'));
    }
    public function postComment(Request $req){
    	if (!Auth::check()){
			return redirect()->route('signin.getSignin');
		}
		$comment = new Comments();
		$comment->content = $req->comment;
		$comment->userID = Auth::User()->id;
		//$comment->productID = 
    	return redirect()->route('product');
    }
}

