@include('site.head')
<section class="bread-crumb">
  <div class="container">
<form role="search1" method="get" id="searchform1" action="/tim-san-pham/{search_product}">
							<input type='text' value='' name="search_product" id="s" placeholder="nhap tu khoa..."/>
							<button class="fa fa-search" type="submit" id="searchsubmit"></button>
						</form>
     <div class="key_search">
        Từ khóa tìm kiếm : <?php echo $_GET["search_product"]; ?>
		<?php
                  if(count($products)==0) {
                    echo "<h2 class='text-center'>Không có bài viết nào </h2>";
                  }
                  $products->setPath('/tim-san-pham/'.$title.'');
                  echo $products->render();
                  ?>

  </div>
</section>
<div id="box-main">
        <div class="container">
            
		<div class="row">
				<div class="row">Tìm thấy {{$count_product}} sản phẩm</div>
                    @foreach($products as $lvhd)
					<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 huhu">
						<div class="acl">
                            <div class="the_anh">
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
                            <div class="ttanh">
                                <div class="link_trang">
                                    <a href="{{$lvhd->product_alias}}">{{$lvhd->name}}</a>
                                </div>
        
                                <div class="time_trang">
                                    <div class="icon_lich">
                                        <i class="fa-solid fa-calendar-days"></i>
                                    </div>
        
                                    <div class="thong_tin_time">
                                        {{$lvhd->created_at}}
                                    </div>
                                </div>
                            </div>  
						</div>
					
                     @endforeach
					

               </div>  
        </div>
    </div>
@include('site.footer')
