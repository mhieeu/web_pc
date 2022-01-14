    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Humberger Begin -->
    <div class="humberger__menu__overlay"></div>
    <div class="humberger__menu__wrapper">
        <div class="humberger__menu__logo">
            <a href="#"><img src="img/logo.png" alt=""></a>
        </div>
        <div class="humberger__menu__cart">
            <ul>
                <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
            </ul>
            <div class="header__cart__price">item: <span>$150.00</span></div>
        </div>
        <div class="humberger__menu__widget">
            <div class="header__top__right__auth">
                <a href="#"><i class="fa fa-user"></i> Login</a>
            </div>
        </div>
        <nav class="humberger__menu__nav mobile-menu">
            <ul>
                <li class="active"><a href="{{ route('index') }}">Home</a></li>
                <li><a href="./shop-grid.html">Shop</a></li>
                <li><a href="#">Pages</a>
                    <ul class="header__menu__dropdown">
                        <li><a href="./shop-details.html">Shop Details</a></li>
                        <li><a href="./shoping-cart.html">Shoping Cart</a></li>
                        <li><a href="./checkout.html">Check Out</a></li>
                        <li><a href="./blog-details.html">Blog Details</a></li>
                    </ul>
                </li>
                <li><a href="./blog.html">Blog</a></li>
                <li><a href="./contact.html">Contact</a></li>
            </ul>
        </nav>
        <div id="mobile-menu-wrap"></div>
        <div class="header__top__right__social">
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-linkedin"></i></a>
            <a href="#"><i class="fa fa-pinterest-p"></i></a>
        </div>
        <div class="humberger__menu__contact">
            <ul>
                <li><i class="fa fa-envelope"></i> hello@colorlib.com</li>
                <li>Free Shipping for all Order of $99</li>
            </ul>
        </div>
    </div>
    <!-- Humberger End -->
    <!-- Header Section Begin -->
    <header class="header">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="header__logo">
                        <a href="{{ route('index') }}"><img src="{{ asset('_customer/img/online-shopping.png') }}" style="margin-left:80px; width:100px; height:100px" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="header__menu">
                        <ul>
                            <li><a href="{{ route('index') }}">Trang chủ</a></li>
                            <li><a href="{{ route('customer.shop') }}">Của hàng</a></li>
                            <li><a href="{{ route('customer.checkout') }}">Thanh toán</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">
                    <div class="header__cart">
                        <ul>
                            <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                            <li><a href="{{ route('customer.cart') }}"><i class="fa fa-shopping-bag"></i> <span class="count-cart">{{ (Session::has('carts') ? count(Session::get('carts')) : 0) }}</span></a></li>
                            @if (Auth::check())
{{--                                <li>--}}
{{--                                    <a class="logout__customer" href="{{ route('customer.logout') }}" title="Đăng xuất" style="font-size: 18px;">--}}
{{--                                        Đăng xuất--}}
{{--                                    </a>--}}
{{--                                </li>--}}

                                <li>
                                    <div class="dropdown">
                                        <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuHeaderButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Xin chào @php echo Auth::user()->name @endphp
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuHeaderButton">
                                            <a class="dropdown-item btn-detail-customer" data-href="{{ route('customer.detail') }}"  data-toggle="modal" data-target="#edit"  data-id="{{Auth::id()}}">Thông tin</a>
                                            <a class="dropdown-item" data-href="{{ route('customer.change.password') }}"  data-toggle="modal" data-target="#changePwd"  data-id="{{Auth::id()}}">Đổi mật khẩu</a>
                                            <a class="dropdown-item" href="{{ route('customer.logout') }}">Đăng xuất</a>
                                        </div>
                                    </div>
                                </li>
                            @else
                                <li><a href="{{ route('customer.login') }}"><i class="fa fa-user"></i> Đăng nhập</a></li>
                            @endif
                        </ul>
                    </div>
                </div>
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    <!-- Header Section End -->

    <div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document" style="min-width: 50%;">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Thông tin cá nhân</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form action="{{ route('customer.update') }}" method="POST" id="form-change-info">
                    @csrf
                    <div class="modal-body">
                        <table class="table">
                            <tbody>
                            <tr>
                                <th scope="row">Họ và tên <span style="color: red;">*</span></th>
                                <td >
                                    <input class="form-control name-kh" name="name" type="text" placeholder="Không có dữ liệu" value="">
                                    <span style="color: red;" class="d-none validate-name">Không được bỏ trống</span>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">Địa chỉ email <span style="color: red;">*</span></th>
                                <td>
                                    <input class="form-control email-kh" type="email" placeholder="Không có dữ liệu" value="" readonly>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">Số điện thoại <span style="color: red;">*</span></th>
                                <td >
                                    <input class="form-control phone-kh" name="phone" onkeypress="return isNumberKey(event)"
                                           type="text" placeholder="Không có dữ liệu" value="" maxlength="10">
                                    <span style="color: red;" class="d-none validate-phone ">Không được bỏ trống</span>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">Địa chỉ <span style="color: red;">*</span></th>
                                <td >
                                    <textarea class="form-control address-kh" name="address" placeholder="Không có dữ liệu"></textarea>
                                    <span style="color: red;" class="d-none validate-address">Không được bỏ trống</span>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                        <button type="button" class="btn btn-primary btn-change-info">Lưu</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
{{--change pwd--}}
    <div class="modal fade" id="changePwd" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document" style="min-width: 50%;">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Thông tin cá nhân</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form action="{{ route('customer.change.password') }}" method="POST" id="form-change-pass">
                    @csrf
                    <div class="modal-body">
                        <table class="table">
                            <tbody>
                            <tr>
                                <th scope="row">Mật khẩu cũ <span style="color: red;">*</span></th>
                                <td >
                                    <input class="form-control " name="curr_pwd" type="password" placeholder="Mật khẩu cũ" value="">
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">Mật khẩu mới <span style="color: red;">*</span></th>
                                <td >
                                    <input class="form-control password" name="password" type="password"
                                           placeholder="Mật khẩu mới (ít nhất 6 kí tự)" value="">
                                    <span style="color: red;" class="d-none min-6">Mật khẩu ít nhất 6 kí tự</span>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">Xác nhận mật khẩu mới <span style="color: red;">*</span></th>
                                <td >
                                    <input class="form-control " name="password_confirm" type="password" placeholder="Xác nhận mật khẩu mới" value="">
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                        <button type="button" class="btn btn-primary btn-change-pass">Lưu</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
