<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class PriceSearchRequest extends FormRequest
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
            'from'=>'min:0',
            'to'=>'gte:from',
            ];
    }
    public function messages()
    {
        return [
            // 'from.required'=>'Vui lòng nhập giá tối thiểu',
            'from.min'=>'Giá không được nhỏ hơn ',
            // 'to.required'=>'Vui lòng nhập giá tối đa',
            'to.gte'=>'Giá tối đa không nhỏ hơn giá tối thiểu',    
        ];
    }
}