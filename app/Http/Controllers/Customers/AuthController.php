<?php

namespace App\Http\Controllers\Customers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Hash;

class AuthController extends Controller
{
    public function login(){
        return view('customers.auth.login');
    }
    public function customerUpdate(Request $request){

        $this->validate($request,
            [
                'name' => 'required',
                'address' => 'required',
                'phone' => 'required|digits_between:10,10',
            ],
            [
                '*.required' => 'Trường không thể bỏ trống',
            ]
        );

        if(Auth::check()){

            $array = [
                'name' => $request->name,
                'address' => $request->address,
                'phone' => $request->phone
            ];
            User::find(Auth::id())->update($array);
            return back()->with('success', 'Cập nhật thành công');

        }
        return back()->with('error', 'Lỗi, vui lòng thử lại!');
    }
    public function postLogin(Request $request){
        $this->validate($request,
        [
            'user_name' => 'required',
            'password' => 'required|between:6,32',
        ],
        [
            'user_name.required' => 'Trường không thể bỏ trống',
            'password.required' => 'Trường không thể bỏ trống',
            'password.between' => 'Mật khẩu tối thiểu :min kí tự và tối đa :max',
        ]
        );

        /**------------------------------------------
        *  Kiểm tra tài khoản có bị khóa hay không
        ------------------------------------------ */
        $user = User::where('email', $request->user_name)->first();
//        if($user){
//            if($user->status == 0){
//                return back()->with([
//                    'error' => 'Tài khoản đã bị khóa',
//                ]);
//            }
//        }
        /**---------------------
        *  Kiểm tra đăng nhập
        --------------------- */
        if (Auth::attempt(['email' => $request->user_name, 'password' => $request->password])) {
            return redirect()->route('index');
        }
        return back()->with([
            'error' => 'Tài khoản hoặc mật khẩu không chính xác',
        ]);
    }

    public function signin(){
        return view('customers.auth.signup');
    }

    public function postSignin(Request $request){
        $this->validate($request,
        [
            'name' => 'required',
            'email' => 'required',
            'address' => 'required',
            'phone' => 'required',
            'password' => 'required|between:6,32',
            'confirm_password' => 'same:password|between:6,32',
        ],
        [
            '*.required' => 'Trường không thể bỏ trống',
            'password.between' => 'Mật khẩu tối thiểu :min kí tự và tối đa :max',
            'confirm_password.same' => 'Mật khẩu không khớp',
        ]
        );
        /**------------------------------------------
        *  Kiểm tra tài khoản có bị trùng hay không
        ------------------------------------------ */
        $users = User::get();
        foreach($users as $u){
            if($u->email == $request->email){
                return redirect()->route('customer.signin')->with('error', 'Tài khoản đã tồn tại');
            }
        };
        /**--------------------------
        *  Không trùng thì đăng ký
        ---------------------------*/

        $password = Hash::make($request->password); // mã hóa mật khẩu
        $request->merge(['level' => 3, 'password' => $password]); // lv3 là khách hàng
        $created = User::create($request->except('confirm_password'));
        if($created){
            return redirect()->route('customer.login')->with([
                'success' => 'Đăng ký thành công',
            ]);
        }

        return back()->with([
            'error' => 'Email đã được đăng ký',
        ]);
    }

    public function logout(Request $request){
        Auth::logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        return redirect()->route('index');
    }

    public function customerChangePassWord(Request $request){

        $this->validate($request,
            [
                'curr_pwd' => 'required',
                'password' =>  [
                    'required',
                    "min:6"
                ],
                'password_confirm' => 'required|same:password',
            ]
        );

        if (Hash::check($request->curr_pwd, Auth::user()->password))
        {
            $arr = array(
                'password' => Hash::make($request->password)
            );
            $update = User::find(Auth::id())->update($arr);
            if($update){
                return back()->with('success', 'Đổi mật khẩu thành công!');
            }
            return back()->with('error', 'Lỗi, vui lòng thử lại!');
        }
        return back()->with('error', 'Sai mật khẩu!');
    }
}
