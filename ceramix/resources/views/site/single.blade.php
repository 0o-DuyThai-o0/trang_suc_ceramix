@include('site.head')
<!-- ------------------------phan_trang------------------------------- -->
    <div class="phantrang">
        <div class="text-center">
			<a href="/" style="color: #999999;">trang chủ</a> -> <a href="./{{$cat->cat_alias}}" style="color: #999999;"><?php echo $cat->name ?></a> -> <a href="./{{$product->product_alias}}"><?php echo $product->name ?></a>
        </div>
    </div>
    <!-- -------------------------------------------------------------- -->

    <!-- --------------------Đặt hàng Sản Phẩm------------------------- -->
    <div class="dat_hang_san_pham">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
					@foreach($bat_ca_shbet3 as $lvhd)
						<?php if($lvhd->product_alias==$product->product_alias) { ?>
									<div class="anh_san_pham_xtt">
										<a href="{{$lvhd->product_alias}}">
										   <?php          
												   $img_xs = json_decode($lvhd->image_list);
												   if($img_xs == null){
												   ?>
												<img src="https://bizweb.dktcdn.net/100/057/112/themes/74363/assets/no-image.jpg?1556185055601" alt="">
												<?php }else{
												   if(isset($img_xs)==true) {
														 foreach ($img_xs as $img_x) {
														 
												   ?>
												<a href="{{$lvhd->product_alias}}" title="{{$lvhd->name}}">
													<img src="./<?php echo $img_x->url;?>" alt="{{$lvhd->name}}" class="">
												</a>
												<?php } ?>
												<?php } ?>
												<?php } ?>
										</a>
									</div>
						<?php } ?>
					@endforeach					
                </div>

                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6" style="margin: 30px 0;">
                    <div class="ten_sp_dhsp">
                        <h4><?php echo $product->name; ?></h4>
                    </div>

                    <div class="trang_tri_phan_nen">
                        <?php home_field($all_field_home,7); ?>
                    </div>

                    <div class="thong_tin_san_pham">
                        <?php echo $product->content; ?>
                    </div>

                    <div class="gia_tien_sp">
						{{$product->the_gioi_thieu}}
                    </div>

                    <div class="chon_so_luong_mua_hang">
                        
						
						<form action="mycart/add" method="POST" class="d-flex pt-4 pb-2">
                            
                            <div class="d-flex">
                                <button class="sub" type="button" style="padding:0 5px;">-</button>
                                <input class="number text-center" type="text" value="1" name="qty">
                                <input type="hidden" name="product_id" value="{{$product->id}}">
                                <button class="add" type="button" style="padding:0 5px;">+</button>
                            </div>
                            <button type="submit" class="them_vao_gh add-product ml-5 px-4 text-white border-0">Thêm vào giỏ hàng</button>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
	
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

    <!-- -------------------------------------------------------------- -->
@include('site.footer')
