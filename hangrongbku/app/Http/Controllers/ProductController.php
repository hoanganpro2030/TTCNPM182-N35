<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Auth;
use App\User;
use App\Products;
use App\UserCarts;
use App\Order;
use App\OrderDetail;
use App\Comments;
class ProductController extends Controller
{
    public function getIndex(){
    	if (!Auth::check()){
			return redirect()->route('signin.getSignin');
		}
		$products = DB::select('select * from products');
		$categories = DB::select('select * from categories');
    	return view('template.pages.index', compact('products', 'categories'));
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
		$products = DB::table('products')->where('name','like','%'.$req->key.'%')
					->orwhere('price',$req->key)
					->get();
		
		return view('template.pages.search', compact('products'));
	}
	
	public function getProduct($id){
    	if (!Auth::check()){
			return redirect()->route('signin.getSignin');
		}
		$product = DB::table('products')->where('id',$id)->first();
		$relatedPd = DB::table('products')->where('cateID',$product->cateID)->get();
		$seller = DB::table('users')->where('id',$product->sellerID)->first();
		$comments = DB::table('comments')->where('productID',$product->id)->get();
		return view('template.pages.product',compact('product','seller','relatedPd','comments'));
	}

	public function getCategories($id){
		if (!Auth::check()){
			return redirect()->route('signin.getSignin');
		}
		$products = DB::table('products')->where('cateID',$id)->get();
		$categories = DB::select('select * from categories');
		return view('template.pages.index',compact('products','categories'));
	}

	public function addToCart($pid,$uid){
    	if (!Auth::check()){
			return redirect()->route('signin.getSignin');
		}
		$product= DB::table('products')->where('id',$pid)->first();
		if ($product->quantity <=0){
			return redirect()->route('product',$pid)->withErrors(['error'=>'Sản phẩm này đã hết']);
		}
        $oldcart = DB::table('usercarts')->where('userID',$uid)->where('productID',$pid)->get();
        if (count($oldcart) != 0){
            DB::table('usercarts')->where('userID',$uid)->where('productID',$pid)->increment('quantity',1);
            DB::table('products')->where('id',$pid)->decrement('quantity',1);
            return redirect()->route('order.getCart');
        }
        $cart = new UserCarts();
        $cart->userID = $uid;
        $cart->productID = $pid;
        $cart->quantity = 1;
        $cart->status = 0;
        $cart->save();
        DB::table('products')->where('id',$pid)->decrement('quantity',1);
		// $carts = DB::table('usercarts')->where('userID',$uid)->get();
        // $seller = Products::find(1)->user;
        // $product = DB::table('usercarts')->where('userID',$uid)->get();
        return redirect()->route('order.getCart');
    }
    public function getCart(){
        if (!Auth::check()){
            return redirect()->route('signin.getSignin');
        }
        $uid = Auth::User()->id;
        $carts = DB::table('usercarts')->where('userID',$uid)->get();
        return view('template.pages.shopping-cart',compact('carts'));
    }
     public function removeCart($id){
        if (!Auth::check()){
            return redirect()->route('signin.getSignin');
        }
        $cart = DB::table('usercarts')->where('id',$id)->first();
        DB::table('products')->where('id',$cart->productID)->increment('quantity',$cart->quantity);
        DB::table('usercarts')->where('id',$id)->delete();
        return redirect()->route('order.getCart');
     }

	
    public function postComment(Request $req){
    	if (!Auth::check()){
			return redirect()->route('signin.getSignin');
		}
		$comment = new Comments();
		$comment->content = $req->comment;
		$comment->userID = Auth::User()->id;
		$comment->productID = $req->pid;
		$comment->save();
    	return redirect()->route('product',$req->pid);
	}
	
	public function createOrder(){
		if (!Auth::check()){
			return redirect()->route('signin.getSignin');
		}

		$carts = DB::table('usercarts')->where('userID',Auth::User()->id)->get();
		$order = new Order();
		
		$order->userID = Auth::User()->id;


		$total = 0;

		for($i = 0; $i < count($carts); $i++){
			$cart = $carts[$i];
			$product = DB::table('products')->where('id',$cart->productID)->first();
			$total += $product->price*$cart->quantity;
		}

		$order->total = $total;
		$order->save();

		$id_order = $order->id;

		for($i = 0; $i < count($carts); $i++){
			$cart = $carts[$i];
			$product = DB::table('products')->where('id',$cart->productID)->first();
			
			$order_detail = new OrderDetail();
			$order_detail->productID = $product->id;
			$order_detail->price = $product->price;
			$order_detail->quantity = $cart->quantity;
			$order_detail->oderID = $id_order;
			$order_detail->save();
		}

		return redirect()->route('user.getHistory');
	}
	
	public function updateProduct(Request $request){
        if (!Auth::check()){
			return redirect()->route('signin.getSignin');
		}
		$user = Auth::User();
		$product=DB::table('products')->where('sellerID',$user->id);
		$product->update(['name' => $request->name, 'price' => $request->price, 'description' => $request->description, 'cateID' => $request->cateID, 'quantity' => $request->quantity]);
		// $products->id = $request->id;
		// $products->name = $request->name;
        // $products->price = $request->price;
        // $products->description = $request->description;
		// $products->cateID = $request->cateID;
		// $products->quantity = $request->quantity;
        // $products->update();
        return redirect()->route('productuser')->with('message','Thông tin sản phẩm đã được cập nhật!');
	}
	public function showProductUser($id){
		$user = Auth::User();
        $products = DB::table('products')->where('sellerID',$user->id)->where('id',$id)->first();
		return view('template.pages.update_product',compact('products'));
	}

	public function removeProduct($id){
        if (!Auth::check()){
            return redirect()->route('signin.getSignin');
        }
        $products = DB::table('products')->where('id',$id)->delete();
        // DB::table('products')->where('id',$cart->productID)->increment('quantity',$cart->quantity);
        // DB::table('usercarts')->where('id',$id)->delete();
        return redirect()->route('productuser');
     }
}

