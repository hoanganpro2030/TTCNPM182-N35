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
    
}
