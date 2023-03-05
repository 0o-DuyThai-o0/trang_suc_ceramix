@include('site.head')
<section class="bread-crumb" style="margin:20px 0">
  <div class="container">
  	
			{!! Form::open(array('method' => 'POST','action' => array('Site\SanphamController@form__input_search',Request::input('form__input_search')))) !!}
									<input type="text" required class="header__input" name="form__input_search" placeholder="Bạn cần tìm gì?"
									value="<?php if(isset($form__input_search)) echo $form__input_search ; ?>">
									<button class="header__input-icon">
										<i class="fa-solid fa-magnifying-glass header__input-icon-link"></i>
									</button>
								{!! Form::close() !!}
     <div class="key_search">
        Từ khóa tìm kiếm : <?php echo $form__input_search; ?>
			 <?php
                 if(count($products)==0) {
                   echo "<h2 class='text-center'>Không có bài viết nào </h2>";
                 }
                 $products->setPath('/tim-san-pham/{$search_site}');
                 echo $products->render();
            ?> 

  </div>
</section>
<div id="box-main" style="margin:30px 0">
        <div class="container">
            <div style="margin-bottom	:30px;">Tìm thấy {{$count_product}} sản phẩm</div>
			<div class="row">
				
                    @foreach($products as $lvhd)
						<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 huhu">
							<div class="acl" style="margin:20px 0">
								<div class="the_anh">
									<a href="{{url($lvhd->product_alias)}">
									   <?php          
											   $img_xs = json_decode($lvhd->image_list);
											   if($img_xs == null){
											   ?>
											<img src="https://bizweb.dktcdn.net/100/057/112/themes/74363/assets/no-image.jpg?1556185055601" alt="">
											<?php }else{
											   if(isset($img_xs)==true) {
													 foreach ($img_xs as $img_x) {
													 
											   ?>
												<a href="{{url($lvhd->product_alias)}}" title="{{$lvhd->name}}">
												<img src="<?php echo $img_x->url;?>" alt="{{$lvhd->name}}" class="" style="max-width:100%">
											</a>
											<?php } ?>
											<?php } ?>
											<?php } ?>
									</a>
								</div>
							</div>
						</div>
						<div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 huhu">
                            <div class="ttanh" style="margin:80px 0">
                                <div class="link_trang">
                                    <b><a href="{{url($lvhd->product_alias)}}">{{$lvhd->name}}</a></b>
                                </div>
        
                                <div class="time_trang" style="display:flex; margin-top:10px">
                                    <div class="icon_lich">
                                        <i class="fa-solid fa-calendar-days"></i>
                                    </div>
        
                                    <div class="thong_tin_time" style="margin-left:5px;margin-top:-3px;">
                                        {{$lvhd->created_at}}
                                    </div>
                                </div>
                            </div>  
						</div>
                     @endforeach
					 <?php 
						$products->setPath('product');
						echo $products->render(); 
					?>
               </div>
			   		   
        </div>
    </div>
@include('site.footer')
