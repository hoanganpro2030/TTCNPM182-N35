<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class RegisterRequest extends FormRequest
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
            'email'=>'required|email|unique:users,email',
            'pass' =>'min:6|max:20|required',
            're_pass' => 'required|same:pass',
            'phone'=>'required|numeric',
            'address'=>'required',
            'sex'=>'required',
            'dateOfBirth'=>'required',
            '_token'=>'required'
        ];
    }
    public function messages()
    {
        return [
            'name.required'=>'Tên không được bỏ trống',
            'email.required'=>'Email không được bỏ trống',
            'email.unique' => 'Email đã có người sử dụng',
            'phone.required'=>'Số điện thoại không được bỏ trống',
            'address.required'=>'Địa chỉ không được bỏ trống',
            'name.string'=>'Tên không hợp lệ vui lòng nhập lại !!',
            'email.email'=>'Emai không hợp lệ vui lòng nhập lại !!',
            'phone.numeric'=>'Số điện thoại không hợp lệ vui lòng nhập lại !!',
            'sex.required' => 'Giới tính không được bỏ trống',
            'dateOfBirth.required' => 'Bạn chưa nhập ngày sinh',
            '_token.required' => 'Đã có lỗi xảy ra vui lòng không F12',
            'pass.required' => 'Bạn chưa nhập mật khẩu',
            'pass.min' => 'Mật khẩu tối thiểu 6 kí tự',
            'pass.max' => 'Mật khẩu tối đa 20 kí tự',
            're_pass.required' => 'Bạn chưa xác nhập mật khẩu',
            're_pass.same' => 'Mật khẩu không khớp' 
        ];
    }
}
