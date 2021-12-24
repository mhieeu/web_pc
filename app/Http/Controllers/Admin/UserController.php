<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function customer(Request $request){
        $customers = User::orderBy('id', 'DESC')->whereIn('level', [3])->Email($request)->paginate();
        $customers->appends(['email' => $request->phone]);
        return view('admin.user.customer', compact('customers'));
    }

    public function customerDetail(Request $request){
        $customer = User::find($request->id);
        if($customer){
            return response()->json(['data' => $customer, 'status' => 200]);
        }
        return response()->json(['status' => 404]);
    }

    public function index(Request $request){
        $users = User::orderBy('id', 'DESC')->where('level', 2)->whereNotIn('id', [1])->Email($request)->paginate();
        $users->appends(['email' => $request->email]);

        return view('admin.user.index', compact('users'));
    }

    public function add(){
        return view('admin.user.add');
    }

    public function edit($id){
        $user = User::find($id);
        return view('admin.user.edit', compact('user'));
    }

    public function store(Request $request){
        $this->validate($request,
            [
                'email' => [
                    'required',
                    "unique:App\Models\User,email"
                ],
                'name' => ['required'],
                'password' => ['required', 'min:6'],
            ],
            [
                'name.required' => 'Chưa nhập tên!',
                'email.required' => 'Chưa nhập email!',
                'email.unique' => 'Email đã tồn tại!',
                'password.required' => 'Chưa nhập mật khẩu!',
                'password.min' => 'Mật khẩu ít nhất 6 kí tự!',
            ],
        );
        $hash = Hash::make($request->password);

        $array =  array (
            'email' => $request->email,
            'name' => $request->name,
            'password' => $hash
        );

        $query = User::create($array);
        if($query){
            return redirect()->route('user.index')->with('success', 'Thêm thành công!');
        }
        return redirect()->route('user.index')->with('error', 'Thêm thất bại!');

    }

    public function update(Request $request, $id){
        $this->validate($request,
            [
                'email' => [
                    'required',
                ],
                'name' => ['required'],
            ],
            [
                'name.required' => 'Chưa nhập tên!',
                'email.required' => 'Chưa nhập email!',
            ],
        );


        $user = User::find($id);
        if($user){
            //kiem tra slug
            $slugs = User::whereNotIn('id', [$id])->pluck('email')->all();
            if(in_array($request->slug, $slugs)){
                return redirect()->back()->withInput()->with('errorEmail', 'Email đã đã tồn tại');
            }

            $array =  array (
                'email' => $request->email,
                'name' => $request->name,
            );

            $query = $user->update($array);
            if($query){
                return redirect()->route('user.index')->with('success', 'Cập nhật thành công!');
            }
            return redirect()->route('user.index')->with('error', 'Cập nhật thất bại!');
        }
        return redirect()->route('user.index')->with('error', 'Không tìm thấy dữ liệu!');
    }

    public function destroy($id)
    {
        $user = User::find($id);
        if ($user->delete($id)) {
            return redirect()->route('user.index')->with('success', 'Xóa thành công!');
        }
        return redirect()->route('user.index')->with('error', 'Xóa thất bại!');
    }

    public function status(Request $request){
        $user = User::find($request->id)->update(['status' => $request->status]);
    }


}
