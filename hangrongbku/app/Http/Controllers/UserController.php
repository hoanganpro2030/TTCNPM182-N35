<?php

namespace App\Http\Controllers;
use Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
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
        $user = Auth::User();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->phone = $request->phone;
        $user->address = $request->address;
        $user->sex = $request->sex;
        $user->dateOfBirth = $request->dateOfBirth;
        $user->save();
        return redirect()->route('user.inform')->with('message','Thông tin người dùng đã được cập nhật!');
      
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
        $orders =  DB::table('orders')->where('userID',$user->id)->get();

        return view('template.pages.history', compact('orders'));
    }
}
