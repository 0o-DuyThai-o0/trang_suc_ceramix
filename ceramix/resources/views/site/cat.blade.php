@include('site.head')

<!-- ------------------------phan_trang------------------------------- -->
    <div class="phantrang">
        <div class="text-center">
			<a href="/" style="color: #999999;">trang chủ</a> -> <a href="./{{$cat->cat_alias}}"><?php echo $cat->name ?></a> 
        </div>
    </div>
    <!-- -------------------------------------------------------------- -->

    <!-- ------------------------phan_chia------------------------------- -->
    <div class="phan_chia">
      <div class="container">
        <div class="row">
          <div class="col-xs-12 col-sm-12 col-md-4 col-lg-3">
            <!-- -------------thể loại------------------- -->
              <!-- thể loại -->
              <div class="the_loai">
                <div class="name_chinh">
                  <h4>THỂ LOẠI</h4>
                </div>

                <div class="name_tl_dm">
                  <a href="./{{$cat->cat_alias}}">SẢN PHẨM MỚI</a>
                </div>
                
                <div class="name_tl_dm">
                  <a href="./{{$cat->cat_alias}}">TRANG SỨC KIM CƯƠNG</a>
                </div>
                
                <div class="name_tl_dm">
                  <a href="./{{$cat->cat_alias}}">TRANG SỨC BẠC</a>
                </div>
                
                <div class="name_tl_dm">
                  <a href="./{{$cat->cat_alias}}">TRAG SỨC VÀNG</a>
                </div>
                
                <div class="name_tl_dm">
                  <a href="./{{$cat->cat_alias}}">SẢN PHẨM NỔI BẬT</a>
                </div>
                
                <div class="name_tl_dm">
                  <a href="./{{$cat->cat_alias}}">SẢN PHẨM KHUYẾN MÃI</a>
                </div>
                
                <div class="name_tl_dm">
                  <a href="/">TRANG CHỦ</a>
                </div>  
              </div>

              <!-- bộ lọc -->
              <div class="the_loai">
                <div class="name_chinh">
                  <h3>BỘ LỌC</h3>
                </div>

                <div class="bl_con">
                  <div class="name_bl_con">
                    MÀU SẮC
                  </div>
                </div>
                
                <div class="bl_con">
                  <div class="name_bl_con">
                    KÍCH THƯỚC
                  </div>
                </div>
                
                <div class="bl_con">
                  <div class="name_bl_con">
                    GIÁ TIỀN
                  </div>
                </div>
              </div>
              
              <!-- Sản phẩm mới -->
              <div class="the_loai">
                <div class="name_chinh">
                  <h3>SẢN PHẨM</h3>
                </div>

                <div class="san_pham_moi_dcb">  
                    <div class="row">
					
					@foreach($bat_ca_shbet3 as $lvhd)
						@foreach($list_articles_cat3 as $list_bv)
							<?php if($list_bv->product_alias ==$lvhd->product_alias){ ?>
							  <div class="col-xs-12 col-sm-4 col-md-6 col-lg-6" style="margin-top:10px;">
								<div class="img_sp">
									<a href="{{$lvhd->product_alias}}">
													<?php          
														   $img_xs = json_decode($list_bv->image_list);
														   if($img_xs == null){
														   ?>
														 <img src="https://bizweb.dktcdn.net/100/057/112/themes/74363/assets/no-image.jpg?1556185055601" alt="" width="100%">
														 <?php }else{
														   if(isset($img_xs)==true) {
																 foreach ($img_xs as $img_x) {
																 
														   ?>
														 <a href="{{$list_bv->product_alias}}" title="{{$list_bv->name}}"><img src="./<?php echo $img_x->url;?>" alt="{{$list_bv->name}}" class="sondulux" style="width:100%;"></a>
														 <?php } ?>
														 <?php } ?>
														 <?php } ?>
									</a>
								</div>
							  </div>

							  <div class="col-xs-12 col-sm-8 col-md-6 col-lg-6" style="margin-top:10px;">
								<div class="tt_img_sp">
								  <div class="name_tt_img_sp">
									<b><a href="{{$lvhd->product_alias}}" title="{{$lvhd->name}}" style="color: rgb(104, 104, 104);">
																																																																																																																																																																																																																																			
													{{$lvhd->name}}
											
											</a></b>
								  </div>
			  
								  <div class="gia_tt_img_sp">
									{{$lvhd->the_gioi_thieu}}
								  </div>
								</div>
							  </div>
							<?php } ?>
						@endforeach
					@endforeach	
					
					<div class="container">
						<div class="row">
							<div class="tablenav top xu_ly_du_lieu_form" style="display:flex; justify-content: center; padding:10px;">
								<b><?php 	
									echo $bat_ca_shbet->render();
								?></b>
							</div>
						</div>
					</div>
                    </div> 
                </div> 
              </div>

              <!-- ảnh trang trí -->
              <div class="anh_trang_tri_cuoi">
                <img src="./public/img/anh_duoi_sanphammoi.jpg" alt="" width="100%">
              </div>
            <!-- ---------------------------------------- -->
          </div>

          <div class="col-xs-12 col-sm-12 col-md-8 col-lg-9">
            <div class="o_loc_sap_xep">
              <div class="cac_loai_loc_sap_xep">
                <div class="cac_loai_kieu_sap_xep">
                  <div class="name_input_clksx">
                    <label for="pet-select" class="sxb"><b>SẮP XẾP BỞI</b></label>

                    <select name="pets" class="pet-select">
                        <option value="">--Please choose an option--</option>
                        <option value="hamster">Theo thứ tự,A-Z</option>
                        <option value="parrot">Theo thứ tự,Z-A</option>
                    </select>
                  </div>
                </div>

                <div class="mau_icon_sap_xep">
                  <div class="icon_sx">
                    <i class="fa-brands fa-windows"></i>
                  </div>

                  <div class="icon_sx">
                    <i class="fa-solid fa-list"></i>
                  </div>
                </div>
              </div>
            </div>
		
            <div class="in_ra_san_pham">
              <div class="container">
                <div class="row">
				
					@foreach($bat_ca_shbet3 as $lvhd)
						@foreach($list_articles_cat3 as $list_bv)
							<?php if($list_bv->product_alias ==$lvhd->product_alias){ ?>
							  <div class="col-xs-6 col-sm-6 col-md-4 col-lg-4">
								<div class="sp_loc_ra">
								  <div class="anh_sp_loc_ra">
									<a href="{{$lvhd->product_alias}}" title="{{$lvhd->name}}">
									  <div class="the_anh_slider">
										<a href="{{$lvhd->product_alias}}">
													<?php          
														   $img_xs = json_decode($list_bv->image_list);
														   if($img_xs == null){
														   ?>
														 <img src="https://bizweb.dktcdn.net/100/057/112/themes/74363/assets/no-image.jpg?1556185055601" alt="" >
														 <?php }else{
														   if(isset($img_xs)==true) {
																 foreach ($img_xs as $img_x) {
																 
														   ?>
														 <a href="{{$list_bv->product_alias}}" title="{{$list_bv->name}}"><img src="./<?php echo $img_x->url;?>" alt="{{$list_bv->name}}" class="sondulux" style="width:100%;min-height:250px !important;"></a>
														 <?php } ?>
														 <?php } ?>
														 <?php } ?>
												 </a>

										<a href="{{$lvhd->product_alias}}" class="the_mau_chua">

										</a>
									  </div>
									  
																																																																																					
									  <div class="tt_trang_suc">
										<div class="ten_ts">
											<a href="{{$lvhd->product_alias}}" title="{{$lvhd->name}}" style="color: rgb(104, 104, 104);">
																																																																																																																																																																																																																																			
													{{$lvhd->name}}
											
											</a>
										</div>

										<div class="gia_tien">
										  {{$lvhd->the_gioi_thieu}}
										</div>

										<div class="them_vao_gio_hang">
										  <a href="{{$lvhd->product_alias}}">
											<div class="dau_cong">
											  +
											</div>

											<div class="name_tvgh">
											  THÊM VÀO GIỎ
											</div>
										  </a>
										</div>
									  </div>
									</a>
								  </div>
								</div>
							  </div>
							 <?php } ?>
						@endforeach
					@endforeach	
					<div class="container">
						<div class="row">
							<div class="tablenav top xu_ly_du_lieu_form" style="display:flex; justify-content: center; padding:10px;">
								<b><?php 	
									echo $bat_ca_shbet3->render();
								?></b>
							</div>
						</div>
					</div>
                </div>
              </div>
            </div>	
			
          </div>
        </div>
      </div>
    </div>
    <!-- -------------------------------------------------------------- -->

@include('site.footer')