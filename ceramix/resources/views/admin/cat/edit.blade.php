
@include('admin.head')
	<div id="wrapper"  class="container admin-admin">
	<div class="row">
		<div id="sidebar-wrapper" class="col-md-3">
			@include('admin.sitebar')
		</div>
		<div id="page-content-wrapper" class="col-md-9 admin-content">
			<div class="row">
				{!! Form::open(array('method' => 'PATCH','action' => array('Admin\CatController@update',$id ))) !!}
       
			<h2 class="h2_bai_viet h2_bai_viet_product">Chỉnh sửa Danh mục Sản phẩm</h2>
					<div class="row">
						<div class="col-md-1">
							 <label for=""> Category Avatar </label>
						</div>
						<div class="col-md-11">
							<div id="edit_cat_avatar">
						
				
					 <?php 

                                       $anh_children =  json_decode($cat->category_avatar);
			                           if($anh_children == true){

									               	$i=0;
									              
									               
			                             foreach ($anh_children as $value3) {
											 
											 
                											 $s='image_edit_category_avatar_cat'.$i; 
                											 $_SESSION[$s]=$value3->url;
                										 	 $i++;
                										 
			                      

					                 ?>

					                          <div class="img_x">
					                          	
					                             <img class="img_avatar" src="<?php echo $_SESSION[$s]; ?>">
					                            <input class="btn btn-default xoa_anh_edit_cat_avatar" type="button" value="x">
					                             <input id="so_thu_tu_<?php echo $i;?>" name="so_thu_tu" type="hidden" value="<?php echo $i; ?>">
					                      

					                          </div>
					                          
					                         <?php } ?>
                                  			 <?php } ?>

                                    <input id="json_string_h2" type="hidden" name="image_cat_edit_avatar" type="" value='<?php
                                    $anh_children = json_decode($cat->category_avatar);
                                    
                                  
			                                       $anh_json ="";
			                           if($anh_children == true){

										$i=0;
			                             foreach ($anh_children as $value3) {
											 
											 
											 $s1='image_create_edit_product'.$i;  
											 
			                             if($anh_json=='')
			                              {
			                              $_SESSION[$s1]=$value3->url;
			                                $anh_json='{"url":"'.$_SESSION[$s1].'"}';
			                              }else {
											  $_SESSION[$s1]=$value3->url;
			                                $anh_json=$anh_json.',{"url":"'.$_SESSION[$s1].'"}';
											
			                              }
										  $i++;
										  
			                            }
			                        }
									//	   echo $s1;
			                            
			               
			                    echo $anh_json;


			                             ?>'>

			                             <?php 
			                                 
			                                         
			                              ?>

					</div>
					<div id="img_edit_cat_avatar" style="display:none;" name="img_edit_cat_avatar">
                              </div>
                              <div class="row">       
                             
                                 <input type="text" name="Image_edit_cat" class="btn btn-default" id="Image_edit_cat" placeholder="Tìm ảnh" onclick="BrowseServer_edit_cat_avt()" readonly="readonly" >
                              </div>
                              <script>
                                 $(document).ready(function(){
                                 
                                 var son_type = $('#Image_edit_cat').val(); //lấy gía trị ng dùng gõ son_type
                                 
                                    $("#page-content-wrapper").mousemove(function(){ //bắt sự kiện keyup khi người dùng gõ từ khóa tim kiếm
                                     // var query = $(this).val(); //lấy gía trị ng dùng gõ
                                      var query=$('#Image_edit_cat').val();
                                 
                                      
                                     if(query != '') //kiểm tra khác rỗng thì thực hiện đoạn lệnh bên dưới
                                     {
                                       var id = $('.id_img').val();
                                      var query_t = $('#Image_edit_cat').val();

                                      var _token = $('input[name="_token"]').val(); // token để mã hóa dữ liệu
                                 //alert (_token);
                                 
                                     document.getElementById("Image_edit_cat").value = ""; 
                                 
                                 
                                      $.ajax({
                                       url:"/test-js-tt-edit-cat-avt", // đường dẫn khi gửi dữ liệu đi 'search' là tên route mình đặt bạn mở route lên xem là hiểu nó là cái j.
                                       method:"POST", // phương thức gửi dữ liệu.
                                       data:{query:query, _token:_token ,son_type:son_type,query_img:query_t},
                                       
                                       success:function(data){ //dữ liệu nhận về
                                       document.getElementById("edit_cat_avatar").innerHTML = data;         
                                             
                                      }
                                      });

                                      }
                                 
                                    });
                                    
                                 
                                 
                                   $('#page-content-wrapper').on('click', '.xoa_anh_edit_cat_avatar', function() {
                                      var so_thu_tu=$(this).next().val();
                                      
                                     var query=$(this).next().val();
                                 
                                 
                                 
                                       if(so_thu_tu != '')
                                     {
                                      var _token = $('input[name="_token"]').val(); // token để mã hóa dữ liệu
                                 
                                 //alert(_token);
                                 
                                 
                                      $.ajax({
                                       url:"/xoa-anh-ajax-tt-edit-cat-avt", // đường dẫn khi gửi dữ liệu đi 'search' là tên route mình đặt bạn mở route lên xem là hiểu nó là cái j.
                                       method:"POST", // phương thức gửi dữ liệu.
                                       data:{
                                       	query:query,
                                       	 _token:_token ,
                                       	 so_thu_tu:so_thu_tu
                                       	
                                       	},
                                 
                                       
                                       success:function(data){ //dữ liệu nhận về
                                        var dulieu = $("#json_string_z").val();
                                        console.log(dulieu);
                                        // console.log(data);
                                       document.getElementById("edit_cat_avatar").innerHTML = data;         
                                      }
                                      });
                                      
                                      
                                      }
                                 
                                 
                                 });
                                 
                                 
                                 
                                 
                                    
                                 });
                              </script>
						</div>
					   
						
					</div>
					<div class="row">
						<div class="col-md-1">
							<label for="">
								 Banner Category
							</label>
						</div>
						<div class="col-md-11">
							<div id="edit_cat_bannner">
						
				
					 <?php 

                                       $anh_children =  json_decode($cat->banner_category);
			                           if($anh_children == true){

									               	$i=0;
									              
									               
			                             foreach ($anh_children as $value3) {
											 
											 
                											 $s='image_edit_category_banner_cat'.$i; 
                											 $_SESSION[$s]=$value3->url;
                										 	 $i++;
                										 
			                      

					                 ?>

					                          <div class="img_x">
					                          	
					                             <img class="img_avatar" src="<?php echo $_SESSION[$s]; ?>">
					                            <input class="btn btn-default xoa_anh_edit_cat_banner" type="button" value="x">
					                             <input id="so_thu_tu_<?php echo $i;?>" name="so_thu_tu" type="hidden" value="<?php echo $i; ?>">
					                      

					                          </div>
					                          
					                         <?php } ?>
                                  			 <?php } ?>

                                    <input id="json_string_h2" type="hidden" name="image_cat_edit_banner" type="" value='<?php
                                    $anh_children = json_decode($cat->banner_category);
                                    
                                  
			                                       $anh_json ="";
			                           if($anh_children == true){

										$i=0;
			                             foreach ($anh_children as $value3) {
											 
											 
											 $s1='image_edit_category_banner_cat'.$i;  
											 
			                             if($anh_json=='')
			                              {
			                              $_SESSION[$s1]=$value3->url;
			                                $anh_json='{"url":"'.$_SESSION[$s1].'"}';
			                              }else {
											  $_SESSION[$s1]=$value3->url;
			                                $anh_json=$anh_json.',{"url":"'.$_SESSION[$s1].'"}';
											
			                              }
										  $i++;
										  
			                            }
			                        }
									//	   echo $s1;
			                            
			               
			                    echo $anh_json;


			                             ?>'>

			                             <?php 
			                                 
			                                         
			                              ?>

					</div>
					<div id="img_edit_cat_banner" style="display:none;" name="img_edit_cat_banner">
                              </div>
                              <div class="row">       
                             
                                 <input type="text" name="Image_edit_cat_banner" class="btn btn-default" id="Image_edit_cat_banner" placeholder="Tìm ảnh" onclick="BrowseServer_edit_cat_bannner()" readonly="readonly" >
                              </div>
                              <script>
                                 $(document).ready(function(){
                                 
                                 var son_type = $('#Image_edit_cat_banner').val(); //lấy gía trị ng dùng gõ son_type
                                 
                                    $("#page-content-wrapper").mousemove(function(){ //bắt sự kiện keyup khi người dùng gõ từ khóa tim kiếm
                                     // var query = $(this).val(); //lấy gía trị ng dùng gõ
                                      var query=$('#Image_edit_cat_banner').val();
                                 
                                      
                                     if(query != '') //kiểm tra khác rỗng thì thực hiện đoạn lệnh bên dưới
                                     {
                                       var id = $('.id_img').val();
                                      var query_t = $('#Image_edit_cat_banner').val();

                                      var _token = $('input[name="_token"]').val(); // token để mã hóa dữ liệu
                                 //alert (_token);
                                 
                                     document.getElementById("Image_edit_cat_banner").value = ""; 
                                 
                                 
                                      $.ajax({
                                       url:"/test-js-tt-edit-cat-banner", // đường dẫn khi gửi dữ liệu đi 'search' là tên route mình đặt bạn mở route lên xem là hiểu nó là cái j.
                                       method:"POST", // phương thức gửi dữ liệu.
                                       data:{query:query, _token:_token ,son_type:son_type,query_img:query_t},
                                       
                                       success:function(data){ //dữ liệu nhận về
                                       document.getElementById("edit_cat_bannner").innerHTML = data;         
                                             
                                      }
                                      });

                                      }
                                 
                                    });
                                    
                                 
                                 
                                   $('#page-content-wrapper').on('click', '.xoa_anh_edit_cat_banner', function() {
                                      var so_thu_tu=$(this).next().val();
                                      
                                     var query=$(this).next().val();
                                 
                                 
                                 
                                       if(so_thu_tu != '')
                                     {
                                      var _token = $('input[name="_token"]').val(); // token để mã hóa dữ liệu
                                 
                                 //alert(_token);
                                 
                                 
                                      $.ajax({
                                       url:"/xoa-anh-ajax-tt-edit-cat-banner", // đường dẫn khi gửi dữ liệu đi 'search' là tên route mình đặt bạn mở route lên xem là hiểu nó là cái j.
                                       method:"POST", // phương thức gửi dữ liệu.
                                       data:{
                                       	query:query,
                                       	 _token:_token ,
                                       	 so_thu_tu:so_thu_tu
                                       	
                                       	},
                                 
                                       
                                       success:function(data){ //dữ liệu nhận về
                                        var dulieu = $("#json_string_z").val();
                                        console.log(dulieu);
                                        // console.log(data);
                                       document.getElementById("edit_cat_bannner").innerHTML = data;         
                                      }
                                      });
                                      
                                      
                                      }
                                 
                                 
                                 });
                                 
                                 
                                 
                                 
                                    
                                 });
                              </script>
						</div>
					</div>
					
					<div class="col-md-11">
							
								<div class="row add-user">
								<label for="tag-name">Tên Danh mục</label>


										{!! Form::text('name',$cat->name,array('class' => 'form-control')) !!}
								</div>

								<div class="row add-user">
								<label for="tag-name">Thẻ giới thiệu </label>

									<div class="">
									        <textarea id="excerpt_cat" name="excerpt_cat"> {{$cat->excerpt_cat}} </textarea>
										<script>CKEDITOR.replace('excerpt_cat');</script>
									
									</div>
								</div>
								<div class="row add-user">
								<label for="tag-name">Thẻ từ khóa</label>

									<div class="">
									
									        <textarea id="content_cat" name="content_cat"> {{$cat->content_cat}} </textarea>
										<script>CKEDITOR.replace('content_cat');</script>
									
									</div>
								</div>
								<div class="row add-user">
								<label for="tag-name">Alias</label>
										{!! Form::text('cat_alias',$cat->cat_alias, array('class' => 'form-control')) !!}
								</div>

								<div class="row add-user">
								
								<label for="tag-name">Chọn Danh mục cha</label>
									<select class="form-control" name="parent_id">
										 <option value="">Không thuộc danh mục nào </option>
										<?php
											 showCategories($cats,0,'');
										?>
										<!--
											@foreach( $cats as $cat_chi_tiet )
												@if ($cat_chi_tiet->id==$cat->parent_id)
										         <option value="{{ $cat_chi_tiet->id }}" selected>  
														{{ $cat_chi_tiet->name }} 
										         </option>	
										        @elseif ($cat_chi_tiet->id==$id) 
												
												@else

										         <option value="{{ $cat_chi_tiet->id }}">  
														{{  $cat_chi_tiet->name }} 
										         </option>					
												@endif


											@endforeach
											-->
									    </select>


								
								</div>				
								<div class="row add-user">
										{!! Form::submit('Cập nhật',array('class' => 'btn btn-default')) !!}
								</div>
								
							
						
					</div>

			</div>
		</div>
	</div> 
		{!! Form::close() !!}

	</div>
@include('admin.footer')