<?php namespace App\Http\Controllers\Site;

use App\Order;

use App\Product;

use App\dat_mua;

use Validator;

use App\Http\Requests;

use App\Http\Controllers\Controller;

use App;

use View;

use \Illuminate\Support\Facades\DB;

use Illuminate\Http\Request;

class OrderController extends Controller {

	public function index()
	{
		$data = Order::all();

		$total = 0;

		return view('site.order')
		->with('data', $data)
		->with('total', $total);
	}

	public function add(Request $request)
	{
		$validator = Validator::make($request->all(), [
            'product_id' => 'required',
			'qty' => 'required',
        ]);
        if ($validator->fails()) {

            return 'Có lỗi xảy ra !!!';
        } else {

			$data = Order::all();
			
			$product = [];	
	
			foreach($data as $item) {
	
				$product[$item['product_id']] = $item['qty'];
			}
	
			$std = new Order;
			$std->qty = $request->input('qty');
			$std->product_id = $request->input('product_id');
	
			if(array_key_exists($std->product_id, $product)) {
	
				$std->qty = $product[$std->product_id] + $request->input('qty');
	
				$update = Order::where('product_id', $std->product_id )->first();
	
				$update->qty = $std->qty;
	
				$update->save();
	
			} else {
	
				$std->save();
			}
	
			return redirect('mycart');
		}

	}

	public function update(Request $request)
	{
		$params = $request->all();
		
		// foreach($params['flower'] as $val) {

		// 	$data[$val] = $params['qty_' . $val];

		// }
		
		foreach($params['flower'] as $key => $value) {

			$item = Order::where('product_id', $key)->first();

			if($value != 0) {

				$item->qty = $value;

				$item->save();

			} else {

				$item->delete();
			}
		}

		return redirect('mycart');
	}

	public function delete($id)
	{
		$item = Order::find($id);

		$item->delete();

		return redirect('mycart');
	}
	
	public function storekh(Request $request )
	{
		
				dat_mua::create([	
					'ho_ten' => $request->ho_ten,
					'so_dt' => $request->so_dt,
					'noi_dung' => $request->noi_dung,
					'email' => $request->email,
					'tong_tien' => $request->tong_tien,
					'ghi_chu' => $request->ghi_chu,
				]);

				return redirect()->back();
	}	

	public function khachhang_tt()
	{
		$comment = db::table('dat_mua');
		return view('site.order')->with('comment', $comment);
	}

	public function xoatt($id_cm)
    {
      $comment = dat_mua::where('id',$id);
      $comment->delete();
          return redirect()->back();
	  }

}
