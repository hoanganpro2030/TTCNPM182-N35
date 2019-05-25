@extends('admin.master')
@section('content')
<div id="page-wrapper">
    <div class="graphs">
        <div class="content-box-wrapper">
            <div class="row">
                <h3 id="h3" class="col-sm-7">Danh sách người dùng</h3>
                <form class="col-sm-5">
                    <input class="sb-search-input" placeholder="Enter your search term..." type="search" id="search">
                    <input class="sb-search-submit" type="submit" value="">
                    <span class="sb-icon-search"> </span>
                </form>
            </div>
            <div class="table-responsive">
                <table class="table">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>Họ tên</th>
                        <th>Ngày sinh</th>
                        <th>Địa chỉ</th>
                        <th>Giới tính</th>
                        <th>SĐT</th>
                        <th>Email</th>
                        <th>Khóa</th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach ($users as $user)
                    <tr>
                        <th scope="row">{{$user->id}}</th>

                        <td><a href="{{route('admin.index.getDetail',$user->id)}}">{{$user->name}}</a></td>
                        <td>{{$user->dateOfBirth}}</td>
                        <td>{{$user->address}}</td>
                        <td>{{$user->sex}}</td>
                        <td>{{$user->phone}}</td>
                        <td>{{$user->email}}</td>

                        <td>
                                <a href="{{route('admin.index.getLock',$user->id)}}" onclick="return confirm('Bạn có chắc muốn thực hiện thao tác này ?')">
                                    @if ($user->status == 1)
                                        <i class="fa fa-unlock"></i></a>
                                    @else
                                        <i class="fa fa-lock" style="color: red"></i></a>
                                    @endif
                                <!-- <a><i class="fa fa-times"></i></a> -->
                        </td>
                    </tr>
                    @endforeach
                    </tbody>
                </table>
            </div><!-- /.table-responsive -->
        </div>
    </div>
</div>
@endsection
