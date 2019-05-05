<?php
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
Route::get('hangrongbku/user/update_product',[
	'as' => 'update.product',
	'uses' => 'UserController@updateProduct'
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
Route::get('hangrongbku/order/remove/{id}',[
	'as'=> 'order.removeCart',
	'uses' => 'ProductController@removeCart'
]);

Route::post('hangrong/bku/product',[
	'as' => 'product.postComment',
	'uses' => 'ProductController@postComment'
]);

