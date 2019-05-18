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
            'quantity'=>'required|integer|min:1',   
            'description'=>'required',                 
        ];
    }
    public function messages()
    {
        return [
            'name.alpha'=>'Tên sản phẩm không hợp lệ vui lòng nhập lại !!',
            'name.required'=>'Tên sản phẩm không được bỏ trống',
            'cateID.required' => 'Bạn chưa nhập loại sản phẩm',
            'cateID.integer'=>'Loại sản phẩm không hợp lệ vui lòng nhập lại !!',
            'price.required' => 'Bạn chưa nhập giá sản phẩm',
            'price.integer'=>'Giá sản phẩm không hợp lệ vui lòng nhập lại !!',
            'price.min'=>'Giá sản phẩm không nhỏ hơn 0',
            'quantity.required'=>'Bạn chưa nhập số lượng sản phẩm',
            'quantity.integer'=>'Số lượng sản phẩm không hợp lệ vui lòng nhập lại !!',
            'quantity.min'=>'Số lượng sản phẩm lớn hơn 0',
            'description.required'=>'Mô tả sản phẩm không được bỏ trống',
        ];
    }
}

