<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ProductController extends Controller
{
    public function getIndex(){
    	$products = DB::select('select * from products');
    	return view('template.pages.index',compact('products'));
    }
}
