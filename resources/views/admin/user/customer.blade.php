@extends('admin.layout.content')
@section('title')
    Danh sách khách hàng
@endsection
@section('content')
    <div class="page-wrapper">
        <div class="content container-fluid">
            <div class="page-header">
                <div class="d-flex" style="justify-content: space-between">
                    <div class=" mt-5">
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item active">Khách hàng</li>
                        </ul>
                    </div>
                </div>
            </div>
            @include('notification')
            <div class="row">
                <div class="top-nav-search" style="margin: 0 0 20px 15px;">
                    <form style="margin: 0" method="get" action="{{ route('user.customer') }}">
                        @csrf
                        <input type="text" class="form-control" name="email" placeholder="Tìm email khách hàng">
                        <button class="btn" type="submit"><i class="fas fa-search"></i></button>
                    </form>
                </div>
                <div class="col-md-12 d-flex">
                    <div class="card card-table flex-fill">
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-hover table-center">
                                    <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Tên</th>
                                        <th>Email</th>
                                        <th class="text-center">Ngày tạo</th>
                                        <th class="text-right">Thao tác</th>
                                    </tr>
                                    </thead>
                                    <tbody>

                                    @if($customers->count() > 0)
                                        @foreach($customers as $customer)
                                            <tr>
                                                <td class="text-nowrap">
                                                    {{$customer->id}}
                                                </td>
                                                <td class="text-nowrap">
                                                    {{$customer->name}}
                                                </td>
                                                <td>{{$customer->email}}</td>
                                                <td class="text-center">
                                                    {{$customer->created_at}}
                                                </td>
                                                <td class="text-right">
                                                    <button type="button" data-href="{{ route('customer.detail') }}" data-id="{{$customer->id}}"
                                                       class=" btn-border btn-custom  btn btn-warning btn-detail" data-toggle="modal" data-target="#exampleModal">Chi tiết</button>
                                                </td>
                                            </tr>
                                        @endforeach
                                    @else
                                        <tr>
                                            <td colspan="6">
                                                Không có dữ liệu
                                            </td>
                                        </tr>
                                    @endif
                                    </tbody>
                                </table>
                                <div style="float: right" class="mr-4 mt-2">
                                    {{ $customers->links() }}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document" style="min-width: 50%;">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Thông tin khách hàng</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <table class="table">
                        <thead>
                        <tr>
                            <th scope="col">Tên khách hàng</th>
                            <th scope="col" class="name-kh">Không có dữ liệu</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th scope="row">Địa chỉ email</th>
                            <td class="email-kh">Không có dữ liệu</td>
                        </tr>
                        <tr>
                            <th scope="row">Số điện thoại</th>
                            <td class="phone-kh">Không có dữ liệu</td>
                        </tr>
                        <tr>
                            <th scope="row">Địa chỉ</th>
                            <td class="address-kh">Không có dữ liệu</td>
                        </tr>
                        <tr>
                            <th scope="row">Ngày tạo</th>
                            <td class="create-at-kh">Không có dữ liệu</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                </div>
            </div>
        </div>
    </div>
@endsection
@push('js')
    <script>
        $('.btn-detail').click(function(){
            var url = $(this).data('href');
            var id = $(this).data('id');
             $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            $.ajax({
                url: url,
                method:'POST',
                data:{id:id},
                success:function(res){
                    if(res.status === 200){
                    console.log(res.data)
                        if(res.data.name != null){
                            $('.name-kh').text(res.data.name)
                        }
                        if(res.data.email != null){
                            $('.email-kh').text(res.data.email)
                        }
                        if(res.data.phone != null){
                            $('.phone-kh').text(res.data.phone)
                        }
                        if(res.data.address != null){
                            $('.address-kh').text(res.data.address)
                        }
                        if(res.data.created_at != null){
                            $('.create-at-kh').text(res.data.created_at)
                        }
                    }
                }
            })
        })
    </script>
@endpush
