<?php

namespace App\Http\Controllers\Auth;

use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Http\Request;
use App\Http\Requests\RegisterRequest;
use Mail;
use Illuminate\Support\Facades\Input;
class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
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
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */

    protected function create(array $data)
    {
        return User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'password' => Hash::make($data['password']),
        ]);
    }

    public function getSignUp(){
        return view('login.sign-up');
    }  

    public function postSignUp(RegisterRequest $request){
        $user = new User();
        $confirmation_code = time().uniqid(true);
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = Hash::make($request->pass);
        $user->phone = $request->phone;
        $user->address = $request->address;
        $user->avatar = "256-512.png";
        $user->sex = $request->sex;
        $user->status = 1;
        $user->confirmation_code=$confirmation_code;
        $user->dateOfBirth = $request->dateOfBirth;
        $user->remember_token = $request->_token;
        $user->save();
        Mail::send('email-verify', ['confirmation_code'=>$confirmation_code], function($message) {
            $message->to(Input::get('email'), Input::get('name'))
                ->subject('Verify your email address');
        });
        return redirect()->route('signin.getSignin')->with(['signup'=>'Đăng kí tài khoản thành công ! 
            Bạn cần tiếp tục xác nhận Email để hoàn tất quá trình đăng kí.']);
    }
    public function verify($code)
    {
        $user = User::where('confirmation_code', $code);

        if ($user->count() > 0) {
            $user->update([
                'confirm' => 1,
                'confirmation_code' => null
            ]);
            $notification_status = 'Bạn đã xác nhận thành công';
        } else {
            $notification_status ='Mã xác nhận không chính xác';
        }

        return redirect(route('signin.getSignin'))->with('message', $notification_status);
    }
}
