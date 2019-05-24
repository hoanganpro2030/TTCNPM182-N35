<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Auth;
use App\User;
class AdminController extends Controller
{
    public function getIndex(){
    	if(!Auth::check() || Auth::User()->role!=1){
    		return redirect()->route('admin.index.getLogin');
    	}
    	$users = DB::table('users')->where('role',0)->get();
    	return view('admin.pages.user-list',compact('users'));
    }
    public function getLogin(){
    	return view('admin.login');
    }
    public function getAdminLogout(){
    	if(!Auth::check() || Auth::User()->role!=1){
    		return redirect()->route('admin.index.getLogin');
    	}
    	Auth::logout();
        return redirect()->route('admin.index.getLogin');
    }
    public function postAdminLogin(Request $request){
        $user = array('email' =>$request->email ,'password'=>$request->pass);
        if(Auth::attempt($user) &&Auth::User()->role==1){
            return redirect()->route('admin.index.getIndex');
        }
        else{
            return redirect()->back()->with(['error'=>'Tên đăng nhập hoặc mật khẩu không chính xác !']);
        }
    }
    public function getLock($id){
    	if(!Auth::check() || Auth::User()->role!=1){
    		return redirect()->route('admin.index.getLogin');
    	}
    	DB::table('users')->where('id',$id)->update(['status'=>0]);
    	DB::table('products')->where('sellerID',$id)->update(['status'=>0]);
    	return redirect()->route('admin.index.getIndex');
    }
}
