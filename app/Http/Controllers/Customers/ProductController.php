<?php

namespace App\Http\Controllers\Customers;

use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\Category;
use App\Models\Comments;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function detail($slug){
        $product = Product::withTrashed()->where('slug', $slug)->first();
        if(!$product){
            return redirect()->route('index');
        }
        $id = $product->id;
        $idCategory = $product->category_id;
        $relatedProduct = Product::where(['category_id' => $idCategory])->get();
        // $relatedProduct = Product::where(['status' => 1], ['category_id' => $idCategory])->get();
        $detailsProduct = Product::withTrashed()->find($id);
        $comments = $product->comments;
        $data = [
            'detailsProduct' => $detailsProduct,
            'relatedProduct' => $relatedProduct,
            'comments' => $comments
        ];
        return view('customers.product.product_detail', $data);
    }

    public function comment(Request $request){
        $this->validate($request,
            [
                'comment' => 'required'
            ],
            [
                'comment.required' => 'Vui lòng nhập bình luận'
            ]
        );
        $commented = Comments::create($request->all());
        if($commented){
            return redirect()->back();
        }
    }
}
