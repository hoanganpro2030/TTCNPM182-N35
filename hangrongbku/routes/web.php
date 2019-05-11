<?php
use Carbon\Traits\Rounding;

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
Route::get('/hangrongbku/user',[
	'as' => 'user.inform',
	'uses' => 'UserController@showUserInform'
]);
Route::post('/hangrongbku/user',[
	'as' => 'editUser',
	'uses' => 'UserController@editUser'
]);
Route::get('/hangrongbku/user/uploadproduct',[
	'as' => 'uploadProduct',
	'uses' => 'UserController@uploadProduct'
]);

Route::post('/hangrongbku/user/uploadproduct',[
	'as' => 'uploadProductSave',
	'uses' => 'UserController@uploadProductSave'
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
Route::get('hangrongbku/user/productuser',[
	'as' => 'productuser',
	'uses' => 'UserController@getProductUser'
]);
Route::post('/sign-in',[
	'as' => 'signin.postSignin',
	'uses' => 'Auth\LoginController@postSignin'
]);

Route::post('hangrongbku/search',[
	'as' => 'search',
	'uses' => 'ProductController@getSearch'
]);


Route::get('hangrongbku/categories/{id}',[
	'as'=>'categories.getCategories',
	'uses' => 'ProductController@getCategories'
]);

Route::get('hangrongbku/order',[
	'as'=> 'order.getCart',
	'uses' => 'ProductController@getCart'
]);
Route::get('hangrongbku/order/{pid}/user/{uid}',[
	'as'=> 'order.addToCart',
	'uses' => 'ProductController@addToCart'
]);
Route::post('hangrongbku/order/',[
	'as'=> 'order.postAddToCart',
	'uses' => 'ProductController@postAddToCart'
]);

Route::get('hangrongbku/order/remove/{id}',[
	'as'=> 'order.removeCart',
	'uses' => 'ProductController@removeCart'
]);

Route::post('hangrongbku/product',[
	'as' => 'product.postComment',
	'uses' => 'ProductController@postComment'
]);

Route::get('hangrongbku/order/create/',[
	'as'=> 'order.createOrder',
	'uses' => 'ProductController@createOrder'
]);

Route::get('hangrongbku/user/history/', [
	'as'=> 'user.getHistory',
	'uses' => 'UserController@getHistory'
]);

Route::get('hangrongbku/user/sellhistory/', [
	'as'=> 'user.getSellHistory',
	'uses' => 'UserController@getSellHistory'
]);

Route::post('hangrongbku/user/productuser/update',[
	'as' => 'products.update',
	'uses' => 'ProductController@updateProduct'
]);
Route::get('hangrongbku/user/productuser/update/{id}',[
	'as' => 'products.show',
	'uses' => 'ProductController@showProductUser'
]);

Route::get('hangrongbku/user/productuser/remove/{id}',[
	'as'=> 'products.remove',
	'uses' => 'ProductController@removeProduct'
]);