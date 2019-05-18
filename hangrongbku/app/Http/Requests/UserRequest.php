<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UserRequest extends FormRequest
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
            'email'=>'required|email',
            'name'=>'required|regex:/[a-zA-Z- ]+/',
            'dateOfBirth'=>'required',
            'sex'=>'required',            
            'phone'=>'required|numeric',
            'address'=>'required',
        ];
    }
    public function messages()
    {
        return [
            'email.required'=>'Email không được bỏ trống',
            'email.email'=>'Emai không hợp lệ vui lòng nhập lại !!',
            // 'email.unique' => 'Email đã có người sử dụng',
            'name.regex'=>'Tên người dùng không hợp lệ vui lòng nhập lại !!',
            'name.required'=>'Tên người dùng không được bỏ trống',
            'dateOfBirth.required' => 'Bạn chưa nhập ngày sinh',
            'sex.required' => 'Giới tính không được bỏ trống',
            'phone.required'=>'Số điện thoại không được bỏ trống',
            'phone.numeric'=>'Số điện thoại không hợp lệ vui lòng nhập lại !!',
            'address.required'=>'Địa chỉ không được bỏ trống',
            
        ];
    }
}
