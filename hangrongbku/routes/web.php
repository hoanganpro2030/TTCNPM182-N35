<?php
use Symfony\Component\Routing\Annotation\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::get('/hangrongbku',[
	'as'=>'index.getIndex',
	'uses'=>'ProductController@getIndex'
]);
Route::get('/hangrongbku/products/{id}',[
	'as' => 'products.getProduct',
	'uses' => 'ProductController@getProduct'
]);
Route::get('/hangrongbku/user',function(){
	return view('template.pages.user_inform');
});
Route::get('/sign-out',[
	'as' => 'signout.logout',
	'uses' => 'Auth\LoginController@logout'
]);
Route::get('/hangrongbku/checkout',[
	'as' => 'checkout',
	'uses' => 'ProductController@showCheckout'
]);
Route::get('/hangrongbku/about',[
	'as' => 'about',
	'uses' => 'ProductController@showAbout'
]);
Route::get('/hangrongbku/contact',[
	'as' => 'contact',
	'uses' => 'ProductController@showContact'
]);
Route::get('/hangrongbku/product/{id}',[
	'as' => 'product',
	'uses' => 'ProductController@getProduct'
]);

Route::get('/sign-up',[
	'as' => 'signup.getSignUp',
	'uses' => 'Auth\RegisterController@getSignUp'
]);
Route::post('/sign-up',[
	'as' => 'signup.postSignUp',
	'uses' => 'Auth\RegisterController@postSignUp'
]);
Route::get('/sign-in',[
	'as'=> 'signin.getSignin',
	'uses' => 'Auth\LoginController@getSignin'
]);
Route::post('/sign-in',[
	'as' => 'signin.postSignin',
	'uses' => 'Auth\LoginController@postSignin'
]);

Route::get('hanagrongbku/categories/{id}',[
	'as'=>'categories.getCategories',
	'uses' => 'ProductController@getCategories'
]);
