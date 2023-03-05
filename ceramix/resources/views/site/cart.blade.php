@include('site.head')

<div class="container">

    <form action="mycart/update" method="POST">

        <table class="table table-bordered text-center">
            <tr>
                <th class="product-sp">Sản phẩm</th>
                <th>Giá</th>
                <th>Số lượng</th>
                <th>Thành tiền</th>
            </tr>
            @foreach ($data as $item)
                
                <tr>
                    <td class="d-flex justify-content-start align-items-center">
                        <a href="mycart/del/{{ $item->id }}"><i class="fa-solid fa-xmark mr-4 cancel-order"></i></a>
                        <div class="img-order mr-4">
                            <img src="{{ $item->product->image_link }}" alt="" class="img-fluid">
                        </div>
                        <div class="product-name">{{ $item->product->name }}</div> 
                    </td>
                    <td><div class="mt-4">{{ number_format($item->product->price) }}<span class="vnd ml-2">đ</span></div></td>
                    <td>
                        <div class="d-flex justify-content-center mt-2">
                            <button class="sub" type="button">-</button>
                            <input type="hidden" name="product_{{$item->id}}" value="{{ $item->product_id }}">
                            <input class="number text-center" type="text" name="flower[{{$item->product_id}}]" value="{{ $item->qty }}">
                            <button class="add" type="button">+</button>
                        </div>
                    </td>
                    <td><div class="mt-4">{{ number_format($item->product->price * $item->qty) }}<span class="vnd ml-2">đ</span></div></td>
    
                    <td class="d-none">{{ $total += $item->product->price * $item->qty }}</td>
                </tr>
    
            @endforeach
    
        </table>

        <button type="submit" class="btn-order btn btn-success pt-2 mt-3">Cập nhật</button>

        <a href="/" class="btn-order btn btn-primary ml-3 pt-2 mt-3">Quay lại</a>

        <div class="btn float-right btn-total">Tổng tiền</div>

    </form>

    <div class="text-right mr-5 mb-5">
        <div class="total-price px-5 py-3">{{ number_format($total) }}<span class="vnd ml-2">đ</span></div>
    </div>
</div>



 {!! Form::open(array('class' => '','id' => 'dangkyf','method' => 'POST','action' => array('Site\SanphamController@post_cart_don_hang',$product->id ))) !!}
    <div class="pd-top-25">
      <div class="row">
        <div class="col-md-4">
          <div class="wd-100_dp-ib pd-bt-20">
            <div class="top-tieu-de">
              Thông tin khách hàng
            </div>
            <div class="user_info-item"><span class="txt2">Họ tên*</span>
                <input type="text" name="user_info[name]" id="buyer_name" value="" required="">
                <label class="error err" generated="true" for="user_info[name]" style="color:red"></label> 
                <input type="hidden" name="user_info[sanpham]" value="{{$product->name}}">
            </div>
            <div class="user_info-item"><span class="txt2">Email*</span>
                <input class="form-cs kt-bd-input-cart" type="email" name="user_info[email]" id="buyer_email" value="" required="">
                 <label class="error err" generated="true" for="email" style="color:red"></label> 
            </div>
            <div class="user_info-item">  <span class="txt2">Số điện thoại*</span>
                <input class="form-cs kt-bd-input-cart" type="number" name="user_info[tel]" id="buyer_mobile" value="" required="">
                 <label class="error err" generated="true" for="phone" style="color:red"></label>

            </div>
                  <div class="item-form d- user_info-item user_province">
                            <span class="txt2">Tỉnh/Thành phố</span>
                            <span class="custom-province " style="width: 70%;">
                      <select name="user_info[province]"  id="buyer_province" onchange="getDistrict(this.value)" required="" class="form-cs kt-bd-input-cart">
                          <option value="0">--Lựa chọn--</option>

                          <option value="hà nội ">Hà nội</option>

                          <option value="Thành phố HCM">TP HCM</option>

                          <option value="Hải Phòng">Hải Phòng</option>

                          <option value="Đà Nẵng">Đà Nẵng</option>

                          <option value="An Giang">An Giang</option>

                          <option value="Bà Rịa - Vũng Tàu">Bà Rịa-Vũng Tàu</option>

                          <option value="Bình Dương">Bình Dương</option>

                          <option value="Bình Phước">Bình Phước</option>

                          <option value="Bình Thuận">Bình Thuận</option>

                          <option value="Bình Định">Bình Định</option>

                          <option value="Bạc liêu">Bạc Liêu</option>

                          <option value="Bắc Giang">Bắc Giang</option>

                          <option value="Bắc kan">Bắc Kạn</option>

                          <option value="Bắc Ninh">Bắc Ninh</option>

                          <option value="Bến Tre">Bến Tre</option>

                          <option value="Cao Bằng">Cao Bằng</option>

                          <option value="Cà Mau">Cà Mau</option>

                          <option value="Cần Thơ">Cần Thơ</option>

                          <option value="Gia Lai">Gia Lai</option>

                          <option value="Hà Giang">Hà Giang</option>

                          <option value="Hà Nam">Hà Nam</option>

                          <option value="Hà Tĩnh">Hà Tĩnh</option>

                          <option value="Hòa Bình">Hòa Bình</option>

                          <option value="Hải Dương">Hải Dương</option>

                          <option value="Hậu Giang">Hậu Giang</option>

                          <option value="Hưng Yên">Hưng Yên</option>

                          <option value="Khánh Hòa">Khánh Hòa</option>

                          <option value="Kiên Giang">Kiên Giang</option>

                          <option value="Kon Tum">Kon Tum</option>

                          <option value="Lai Châu">Lai Châu</option>

                          <option value="Lào Cai">Lào Cai</option>

                          <option value="Lâm Đồng">Lâm Đồng</option>

                          <option value="Lạng Sơn">Lạng Sơn</option>

                          <option value="Long An">Long An</option>

                          <option value="Nam Định">Nam Định</option>

                          <option value="Nghệ An">Nghệ An</option>

                          <option value="Ninh Bình">Ninh Bình</option>

                          <option value="Ninh Thuận">Ninh Thuận</option>

                          <option value="Phú Thọ">Phú Thọ</option>

                          <option value="Phú Yên">Phú Yên</option>

                          <option value="Quảng Bình">Quảng Bình</option>

                          <option value="Quảng Nam">Quảng Nam</option>

                          <option value="Quảng Ngãi">Quảng Ngãi</option>

                          <option value="Quảng Ninh">Quảng Ninh</option>

                          <option value="Quảng Trị">Quảng Trị</option>

                          <option value="Sóc Trăng">Sóc Trăng</option>

                          <option value="Sơn La">Sơn La</option>

                          <option value="Tay Ninh">Tây Ninh</option>

                          <option value="Thanh Hoa">Thanh Hóa</option>

                          <option value="Thái Bình">Thái Bình</option>

                          <option value="Thái Nguyên">Thái Nguyên</option>

                          <option value="Thừa Thiên Huế">Thừa Thiên-Huế</option>

                          <option value="Tiền Giang">Tiền Giang</option>

                          <option value="Trà Vinh">Trà Vinh</option>

                          <option value="Tuyên Quang">Tuyên Quang</option>

                          <option value="Vĩnh Long">Vĩnh Long</option>

                          <option value="Vĩnh phúc">Vĩnh Phúc</option>

                          <option value="Yên Bái">Yên Bái</option>

                          <option value="Đắk Lắk">Đắk Lắk</option>

                          <option value="Đồng Nai">Đồng Nai</option>

                          <option value="Đồng tháp">Đồng Tháp</option>

                          <option value="Điện biên">Điện Biên</option>

                          <option value="Đăk Nông">Đăk Nông</option>
                      </select>
                    </span>
                        </div>
                     <div class="user_info-item"> <span class="txt2">Địa chỉ*</span>
                            <textarea id="buyer_address" name="user_info[address]" required=""></textarea>
                        </div>
                <div class="user_info-item"><span class="txt2" style="">Ghi chú</span>
                            <textarea name="user_info[note]" id="buyer_note" style="height:100px"></textarea>
                        </div>
                    </div>
                  </div>
                  <div class="col-md-4">
                    <div class="wd-100_dp-ib pd-bt-20">
                      <div class="top-tieu-de">
                        Hình thức thanh toán
                      </div>
                      <table class="tbl_pay" style="font-size: 13px;">
                            <tbody>
                            <tr>
                                <td valign="top"><input type="radio" name="pay_method" value="Thanh toán tiền mặt khi nhận hàng (tiền mặt / quẹt thẻ ATM, Visa, Master)" checked=""></td>
                                <td valign="top">
                                    <div><label for="pay_method_2">Thanh toán tiền mặt khi nhận hàng (tiền mặt / quẹt thẻ ATM, Visa, Master)</label></div>
                                    <div style="display:none;">Quý khách hàng có thể thanh toán bằng tiền mặt hoặc quẹt thẻ sau khi nhận được đầy đủ hàng hóa và đáp ứng chất lượng</div>
                                </td>
                            </tr>
                            <tr>
                                <td valign="top"><input type="radio" name="pay_method" value="Thanh toán qua Ngân Hàng (ATM nội địa, Visa, Master)"></td>
                                <td valign="top">
                                    <div><label for="pay_method_4">Thanh toán qua Ngân Hàng (ATM nội địa, Visa, Master)</label></div>
                                    <div style="display:none;"></div>
                                </td>
                            </tr>
                            <tr>
                                <td valign="top"><input type="radio" name="pay_method" value="Thanh toán qua Bảo Kim (ATM nội địa, Visa, Master)"></td>
                                <td valign="top">
                                    <div><label for="pay_method_5">Thanh toán qua Bảo Kim (ATM nội địa, Visa, Master)</label></div>
                                    <div style="display:none;">
                                        Công ty Cổ Phần Máy tính Hà Nội
                                        <br>Đại diện: Nguyễn văn Tiến 
                                        <br>Email tài khoản: dangdinhtrung@vititech.vn
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td valign="top"><input type="radio" name="pay_method" value="Trả góp qua Alepay (Ngân Hàng)"></td>
                                <td valign="top">
                                    <div><label for="pay_method_10">Trả góp qua Alepay (Ngân Hàng)</label></div>
                                    <div style="display:none;"></div>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                      </div>
                    </div>
                    <div class="col-md-4">
                        <div class="lh-17">
                        <table class="tong-so-tien-can-thanh-toan">
                            <tbody>
                            
                            <tr class="fs-16">
                                <td>
                                    <b>Thành tiền</b>
                                </td>
                                <td class="text-right ">
                                    <strong class="cl-red">Liên hệ</strong><br>
                                    <span class="fs-12">(Giá chưa bao gồm VAT)</span>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <br>
                        <div style="" class="new-cart-button">
                            <a class="button-1 button-100 bg-yellow" href="/san-pham">Chọn thêm sản phẩm</a>

                            {!! Form::submit('Đặt hàng',array('class' => 'button-1 button-100 bg-red')) !!}
                        </div>
                    </div>
        </div>
      </div>
    </div>
     {!! Form::close() !!} 
    
  </div>
<script type="text/javascript">
     $(document).ready(function() {
        $("#dangkyf").validate({
            rules: {
             user_info[name]: {
                required: true,
             },
             email: {
                required: true,
                email:true
             },

              phone: {
                    required: true,
                    number: true,
                    maxlength: 11,
                    minlength: 8
                },
               
               

            },
            messages: {
                 user_info[name]: {
                     required: "Vui lòng nhập tên",
                 },
                 email: {
                     required: "Vui lòng nhập Email",
                     email: "vui lòng nhập đúng định dạng email"
                 },
                 phone: {
                     required: "Vui lòng nhập số điện thoại",
                     number: "vui lòng nhập kiểu số",
                    minlength: "độ ngắn tối thiểu 8",
                      maxlength: "độ dài tối đa 10"
                },
               
              
            }
        });
    });
</script> 


@include('site.footer')


<script>

    const subs = document.querySelectorAll('.sub');
    const adds = document.querySelectorAll('.add');
    const numbers = document.querySelectorAll('.number')

    subs.forEach(function(sub, i) {
        const number = numbers[i]
        sub.onclick = function() {
            if(number.value > 0) {
                number.value--;
            }
        }
    })
    adds.forEach(function(add, i) {
        const number = numbers[i]
        add.onclick = function() {
            number.value++;
        }
    })

</script>
