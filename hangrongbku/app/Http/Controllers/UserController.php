<?php

namespace App\Http\Controllers;
use Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Requests\UserRequest;
use App\Products;
use App\Http\Requests\ProductRequest;


class UserController extends Controller
{
    public function showUserInform(){
        if (!Auth::check()){
			return redirect()->route('signin.getSignin');
		}
        $user = Auth::User();
		return view('template.pages.user_inform',compact('user'));
    }
    public function getProductUser(){
        $user = Auth::User();
        $products = DB::table('products')->where('sellerID',$user->id)->get();
        return view('template.pages.productuser',compact('products'));
    }
    public function editUser(Request $request){
        if (!Auth::check()){
			return redirect()->route('signin.getSignin');
		}
        request()->validate([
            'image' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);
        $user = Auth::User();
        if(!$request->image){
            $imageName = $user->avatar;
        }
        else{
            $imageName = time().'.'.request()->image->getClientOriginalExtension();
            request()->image->move(public_path('assets/dest/products'), $imageName);
        }
        


        

        $user->name = $request->name;
        $user->email = $request->email;
        $user->avatar = $imageName;
        $user->phone = $request->phone;
        $user->address = $request->address;
        $user->sex = $request->sex;
        $user->dateOfBirth = $request->dateOfBirth;

        $user->save();
        return redirect()->route('user.inform')->with('message','Thông tin người dùng đã được cập nhật!');
      
    }

    public function uploadProduct(){
        if (!Auth::check()){
			return redirect()->route('signin.getSignin');
		}
        $user = Auth::User();
        return view('template.pages.upload_product');
    }

    public function uploadProductSave(ProductRequest $request){
        if (!Auth::check()){
            return redirect()->route('signin.getSignin');
        }
    
        request()->validate([
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        $imageName = time().'.'.request()->image->getClientOriginalExtension();
        request()->image->move(public_path('assets/dest/products'), $imageName);

        $uid = Auth::User()->id;
        
        $product = new Products();
        $product->name = $request->name;
        $product->sellerID = $uid;
        $product->price = $request->price;
        $product->description = $request->description;
        $product->cateID = $request->cateID;
        $product->status = 1;
        $product->quantity = $request->quantity;
        $product->numRate = 0;
        $product->image = $imageName;

        $product->save();
        return redirect()->route('productuser')->with('message','Thông tin sản phẩm đã được cập nhật!');

    }



    public function updateProduct(Request $request){
        if (!Auth::check()){
			return redirect()->route('signin.getSignin');
		}
        $user = Auth::User();
        $user->name = $request->name;
        $user->price = $request->price;
        $user->description = $request->description;
        $user->address = $request->address;
        $user->sex = $request->sex;
        $user->dateOfBirth = $request->dateOfBirth;
        $user->save();
        return redirect()->route('user.inform')->with('message','Thông tin sản phẩm đã được cập nhật!');
    }
    public function getHistory(){
        if (!Auth::check()){
			return redirect()->route('signin.getSignin');
        }
        $user = Auth::User();
        $orders =  DB::table('orders')->where('userID',$user->id)->orderBy('date', 'desc')->get();

        return view('template.pages.history', compact('orders'));
    }

    public function getSellHistory(){
        if (!Auth::check()){
			return redirect()->route('signin.getSignin');
        }
        $user = Auth::User();
        $orders =  DB::table('orders')->where('userID',$user->id)->get();

        return view('template.pages.history', compact('orders'));
    }

}
