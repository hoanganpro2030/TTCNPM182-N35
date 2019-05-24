<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Auth;
class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }
    public function getSignin(){
        return view('login.sign-in');
    }
    public function postSignin(Request $request){
        $user = array('email' =>$request->email ,'password'=>$request->pass);
        if(Auth::attempt($user)){
            return redirect()->route('index.getIndex');
        }
        else{
            return redirect()->back()->with(['error'=>'Tên đăng nhập hoặc mật khẩu không chính xác !']);
        }
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
    public function logout(){
        Auth::logout();
        return redirect()->route('signin.getSignin');
    }
    public function getAdminLogout(){
        Auth::logout();
        return redirect()->route('admin.index.getLogin');
    }
}
