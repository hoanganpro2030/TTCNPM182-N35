@extends('admin.master')
@section('content')
<div id="page-wrapper">
    <div class="graphs">
        <div class="content-box-wrapper">
            <div class="row">
                <h3 id="h3" class="col-sm-7">Thông tin người dùng</h3>

            </div>
            <p>{{$user->name}}</p>
            <p>{{$user->address}}</p>
            <p>{{$user->phone}}</p>
            <h3>Sản phẩm đang bán</h3>
            <div class="table-responsive">
                <table class="table">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>Tên sản phẩm</th>
                        <th>Giá</th>
                        <th>Loại sản phẩm</th>
                        <th>Số lượng</th>
                        <th>Số lượt đánh giá</th>
                        <th>Số sao trung bình</th>
                        <th>Ngày đăng</th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach ($products as $product)
                    <tr>
                        <th scope="row">{{$product->id}}</th>

                        <td>{{$product->name}}</td>
                        <td>{{$product->price}}</td>
                        <td>{{$product->cateID}}</td>
                        <td>{{$product->quantity}}</td>
                        <td>{{$product->numRate}}</td>
                        @if($product->numRate==0)
                        <td>0</td>
                        @else
                        <td>{{round($product->numStar/$product->numRate)}}</td>
                        @endif
                        <td>{{$product->lastTime}}</td>

                        
                    </tr>
                    @endforeach
                    </tbody>
                </table>
            </div><!-- /.table-responsive -->
        </div>
    </div>
</div>
@endsection
