<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\DB;
use Auth;
use App\User;
use App\Products;
use App\UserCarts;
use App\Order;
use App\OrderDetail;
use App\Comments;
use App\Notifications;
use App\Http\Requests\ProductRequest;
class NotificationCotroller extends Controller
{
    public function getNotification($id){
    	DB::table('notifications')->where('id',$id)->update(['isNew'=>0]);
    	$n_note = DB::table('notifications')->where('id',$id)->first();
    	$n_order = DB::table('orders')->where('id',$n_note->orderID)->first();
    	$n_order_details = DB::table('order_detail')->where('oderID',$n_order->id)->get();
    	$n_customer = DB::table('users')->where('id',$n_note->customerID)->first();
    	return view('template.pages.customer_order_notification',compact('n_note','n_order','n_order_details','n_customer'));
    }
    public function getAllNotifications(){
    	$notes = DB::table('notifications')->where('userID',Auth::User()->id)->orderBy('created_at','desc')->get();
    	return view('template.pages.sell_history',compact('notes'));
    }
    public function getComfirm($id){
    	DB::table('notifications')->where('id',$id)->update(['isDone'=>1]);
    	return redirect()->route('notification.getNotification',$id)->with('message','Xác nhận gửi hàng thành công');
    }
    public function getRemoveNote($id){

    	$note = DB::table('notifications')->where('id',$id)->first();
    	if ($note->isDone==1){
    		DB::table('notifications')->where('id',$id)->delete();
    		return redirect()->route('sellhistory.getAllNotifications')->with('message','Xóa thành công !');
    	}
    	else{
    		return redirect()->route('sellhistory.getAllNotifications')->withErrors(['error'=>'Vẫn chưa gửi hàng không thể xóa']);
    	}

    }
}
