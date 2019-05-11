<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ProductRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name'=>'required|string',
            'cateID'=>'required|integer',
            'price'=>'required|integer|min:0',            
            'quantity'=>'required|integer|min:0',   
            'description'=>'required',                 
        ];
    }
    public function messages()
    {
        return [
            'name.alpha'=>'Tên không hợp lệ vui lòng nhập lại !!',
            'name.required'=>'Tên không được bỏ trống',
            'cateID.required' => 'Bạn chưa nhập loại sản phẩm',
            'cateID.integer'=>'Loại hàng không hợp lệ vui lòng nhập lại !!',
            'price.required' => 'Bạn chưa nhập giá',
            'price.integer'=>'Giá không hợp lệ vui lòng nhập lại !!',
            'price.min'=>'Giá không nhỏ hơn 0',
            'quatity.required'=>'Bạn chưa nhập số lượng',
            'quantity.integer'=>'Số lượng không hợp lệ vui lòng nhập lại !!',
            'quantity.min'=>'Số lượng không nhỏ hơn 0',
            'description.required'=>'Địa chỉ không được bỏ trống',
            
        ];
    }
}
