@include('admin.head')
<div id="wrapper" class="container admin-admin">
   <div class="row">
      <div id="sidebar-wrapper" class="col-md-3">
         @include('admin.sitebar')
      </div>
      <div id="page-content-wrapper" class="col-md-9 admin-content">
         <div class="row">
            <div class="">
               <div id="icon-edit" class="icon32 icon32-posts-post"><br></div>
               <h2 class="h2_bai_viet h2_bai_viet_product">Danh mục sản phẩm </h2>
            </div>
         </div>
         <div class="row">
            <div class="col-sm-3" style="padding-bottom:100px">
              {!! Form::open(array('action' => 'Admin\CatController@store')) !!}
               <div class="row add-user">
                  <h2 class="h2_bai_viet h2_bai_viet_product">Tạo Danh mục mới</h2>
                  <label for="tag-name"> Ảnh đại diện  </label>
                  <div class="col-md-12">
                   <div class="row" id="demo_create_cat">
                                 <?php
                                  $anh_json ="";
                                    for($i=0;$i<10;$i++){
                                     $s='image_create_cat'.$i;
                                     if(isset($_SESSION[$s])) {
                                       if($anh_json=='')
                                    {
                                        $anh_json='{"url":"'.$_SESSION[$s].'"}';
                                    }else {
                                        $anh_json=$anh_json.',{"url":"'.$_SESSION[$s].'"}';
                                    }
                                          ?>
                                 <div class="img_x">
                                    <img class="img_avatar" src="{{ $_SESSION[$s] }}">
                                     <input id="" name="add_images_create_cat" type="hidden" value='<?php if(isset($anh_json)){echo $anh_json;}?>'>
                                    <input class="btn btn-default xoa_anh_create_cat" type="button" value="x">
                                    <input id="so_thu_tu_<?php echo $i;?>" name="so_thu_tu" type="hidden" value="<?php echo $i; ?>">
                                   
                                 </div>
                                 <?php
                                    }
                                    }
                                    
                                    ?>
                                     <input id="json_string_z" name="add_images_create_cat" type="hidden" value=''>
                              </div>
                              <div id="add_images_create_cat" style="display:none;" name="add_images_create_cat">
                              </div>
                              <div class="row">       
                             
                                 <input type="text" name="Image_create_cat" class="btn btn-default" id="Image_create_cat" placeholder="Tìm ảnh" onclick="BrowseServer_create_cat();" readonly="readonly" >
                              </div>
                              <script>
                                 $(document).ready(function(){
                                 
                                 var son_type = $('#Image_create_cat').val(); //lấy gía trị ng dùng gõ son_type
                                 
                                    $("#page-content-wrapper").mousemove(function(){ //bắt sự kiện keyup khi người dùng gõ từ khóa tim kiếm
                                     // var query = $(this).val(); //lấy gía trị ng dùng gõ
                                      var query=$('#Image_create_cat').val();
                                 
                                      
                                     if(query != '') //kiểm tra khác rỗng thì thực hiện đoạn lệnh bên dưới
                                     {
                                       var id = $('.id_img').val();
                                      var query_t = $('#Image_create_cat').val();

                                      var _token = $('input[name="_token"]').val(); // token để mã hóa dữ liệu
                                 //alert (_token);
                                 
                                     document.getElementById("Image_create_cat").value = ""; 
                                 
                                 
                                      $.ajax({
                                       url:"/test-js-tt-cat", // đường dẫn khi gửi dữ liệu đi 'search' là tên route mình đặt bạn mở route lên xem là hiểu nó là cái j.
                                       method:"POST", // phương thức gửi dữ liệu.
                                       data:{query:query, _token:_token ,son_type:son_type,query_img:query_t},
                                       
                                       success:function(data){ //dữ liệu nhận về
                                       document.getElementById("demo_create_cat").innerHTML = data;         
                                             
                                      }
                                      });

                                      }
                                 
                                    });
                                    
                                 
                                 
                                   $('#page-content-wrapper').on('click', '.xoa_anh_create_cat', function() {
                                      var so_thu_tu=$(this).next().val();
                                      
                                     var query=$(this).next().val();
                                 
                                 
                                 
                                       if(so_thu_tu != '')
                                     {
                                      var _token = $('input[name="_token"]').val(); // token để mã hóa dữ liệu
                                 
                                 //alert(_token);
                                 
                                 
                                      $.ajax({
                                       url:"/xoa-anh-ajax-tt-cat", // đường dẫn khi gửi dữ liệu đi 'search' là tên route mình đặt bạn mở route lên xem là hiểu nó là cái j.
                                       method:"POST", // phương thức gửi dữ liệu.
                                       data:{query:query, _token:_token ,so_thu_tu:so_thu_tu},
                                 
                                       
                                       success:function(data){ //dữ liệu nhận về
                                        var dulieu = $("#json_string_z").val();
                                      
                                       document.getElementById("demo_create_cat").innerHTML = data;         
                                      }
                                      });
                                      
                                      
                                      }
                                 
                                 
                                 });
                                 
                                 
                                 
                                 
                                    
                                 });
                              </script>
                  </div>
               </div>
               <div class="row">
                  
                  <div class="row add-user">
                     <label for="tag-name">Tên Danh mục</label>
                     {!! Form::text('name','',array('class' => 'form-control')) !!}
                  </div>
                  <div class="row add-user">
                     <label for="tag-name">Chọn Danh mục cha</label>
                     <select class="form-control" name="parent_id">
                     <option value="">Không thuộc danh mục nào </option>
                     <?php
                        
                       showCategories($catsfull,0,'');
                        ?>
                     </select>
                  </div>
                  <div class="row add-user">
                     <div class="col-md-12" style="margin-bottom: 1em;">
                        <label for="">Thẻ Giới thiệu</label>
                     </div>
                     <div class="col-md-12">
                             <textarea id="excerpt_cat" name="excerpt_cat"> </textarea>
                        <script>CKEDITOR.replace('excerpt_cat');</script>
                     </div>
                  </div>   
                  <div class="row add-user">
                     <div class="col-md-12" style="margin-bottom: 1em;">
                        <label for="">Thẻ từ khóa </label>
                     </div>
                     <div class="col-md-12">
                             <textarea id="content_cat" name="content_cat"> </textarea>
                        <script>CKEDITOR.replace('content_cat');</script>
                     </div>
                  </div>
                  <div class="row add-user" style="    position: absolute;
                     bottom: 0;
                     z-index: 10000;">
                     {!! Form::submit('Tạo mới',array('class' => 'btn btn-default')) !!}
                  </div>
                
               </div>
               <div class="row add-user">
                  <label for="tag-name"> Ảnh Danh mục</label>
                  <div class="col-md-12">
                     <div class="row" id="demo_create_cat_danhmuc">
                                 <?php
                                  $anh_json ="";
                                    for($i=0;$i<10;$i++){
                                     $s='image_create_cat_danhmuc'.$i;
                                     if(isset($_SESSION[$s])) {
                                       if($anh_json=='')
                                    {
                                        $anh_json='{"url":"'.$_SESSION[$s].'"}';
                                    }else {
                                        $anh_json=$anh_json.',{"url":"'.$_SESSION[$s].'"}';
                                    }
                                          ?>
                                 <div class="img_x">
                                    <img class="img_avatar" src="{{ $_SESSION[$s] }}">
                                     <input id="" name="add_images_create_cat_danhmuc" type="hidden" value='<?php if(isset($anh_json)){echo $anh_json;}?>'>
                                    <input class="btn btn-default xoa_anh_create_cat_danhmuc" type="button" value="x">
                                    <input id="so_thu_tu_<?php echo $i;?>" name="so_thu_tu" type="hidden" value="<?php echo $i; ?>">
                                   
                                 </div>
                                 <?php
                                    }
                                    }
                                    
                                    ?>
                                     <input id="json_string_z" name="add_images_create_cat_danhmuc" type="hidden" value=''>
                              </div>
                              <div id="add_images_create_cat_danhmuc" style="display:none;" name="add_images_create_cat_danhmuc">
                              </div>
                              <div class="row">       
                             
                                 <input type="text" name="Image_create_cat_danhmuc" class="btn btn-default" id="Image_create_cat_danhmuc" placeholder="Tìm ảnh" onclick="BrowseServer_create_cat_danh_muc();" readonly="readonly" >
                              </div>
                              <script>
                                 $(document).ready(function(){
                                 
                                 var son_type = $('#Image_create_cat_danhmuc').val(); //lấy gía trị ng dùng gõ son_type
                                 
                                    $("#page-content-wrapper").mousemove(function(){ //bắt sự kiện keyup khi người dùng gõ từ khóa tim kiếm
                                     // var query = $(this).val(); //lấy gía trị ng dùng gõ
                                      var query=$('#Image_create_cat_danhmuc').val();
                                 
                                      
                                     if(query != '') //kiểm tra khác rỗng thì thực hiện đoạn lệnh bên dưới
                                     {
                                       var id = $('.id_img').val();
                                      var query_t = $('#Image_create_cat_danhmuc').val();

                                      var _token = $('input[name="_token"]').val(); // token để mã hóa dữ liệu
                                 //alert (_token);
                                 
                                     document.getElementById("Image_create_cat_danhmuc").value = ""; 
                                 
                                 
                                      $.ajax({
                                       url:"/test-js-tt-cat-danh-muc", // đường dẫn khi gửi dữ liệu đi 'search' là tên route mình đặt bạn mở route lên xem là hiểu nó là cái j.
                                       method:"POST", // phương thức gửi dữ liệu.
                                       data:{query:query, _token:_token ,son_type:son_type,query_img:query_t},
                                       
                                       success:function(data){ //dữ liệu nhận về
                                       document.getElementById("demo_create_cat_danhmuc").innerHTML = data;         
                                             
                                      }
                                      });

                                      }
                                 
                                    });
                                    
                                 
                                 
                                   $('#page-content-wrapper').on('click', '.xoa_anh_create_cat_danhmuc', function() {
                                      var so_thu_tu=$(this).next().val();
                                      
                                     var query=$(this).next().val();
                                 
                                 
                                 
                                       if(so_thu_tu != '')
                                     {
                                      var _token = $('input[name="_token"]').val(); // token để mã hóa dữ liệu
                                 
                                 //alert(_token);
                                 
                                 
                                      $.ajax({
                                       url:"/xoa-anh-ajax-tt-cat-danh-muc", // đường dẫn khi gửi dữ liệu đi 'search' là tên route mình đặt bạn mở route lên xem là hiểu nó là cái j.
                                       method:"POST", // phương thức gửi dữ liệu.
                                       data:{query:query, _token:_token ,so_thu_tu:so_thu_tu},
                                 
                                       
                                       success:function(data){ //dữ liệu nhận về
                                        var dulieu = $("#json_string_z").val();
                                      
                                       document.getElementById("demo_create_cat_danhmuc").innerHTML = data;         
                                      }
                                      });
                                      
                                      
                                      }
                                 
                                 
                                 });
                                 
                                 
                                 
                                 
                                    
                                 });
                              </script>
                  </div>
               </div>
                 {!! Form::close() !!}
            </div>
            <div class="col-sm-9">
               @if ($errors->has())
               <p style="color:red;">
                  @foreach ($errors->all() as $error)
                  {!! $error !!}<br />		
                  @endforeach
               </p>
               @endif
               @if ( !$cats->count() )
               No Cat in Website
               @else		  
               <div class="row xuat_ban_product">
                  <!--
                     <ul class="subsubsub">
                     <li class="all"><a href="{!!  asset('admin/cat/all-va-ban-nhap/1'); !!}" class="current">All <span class="count">({{ $cats1->count() }})</span></a> |</li>
                     <li class="publish"><a href="{!!  asset('admin/cat'); !!}">Xuất bản <span class="count">(111)</span></a> |</li>
                     <li class="draft"><a href="{!!  asset('admin/cat/all-va-ban-nhap/-1'); !!}">Bản nháp <span class="\&quot;count\&quot;">(2222)</span></a></li>
                     </ul>
                     -->
                  {!! Form::open(array('method' => 'POST','action' => array('Admin\CatController@s_search',Request::input('s_search')))) !!}
                  <p class="search-box">
                     <input type="search" id="post-search-input" name="s_search" 
                        value="<?php if(isset($s_search)) echo $s_search ; ?>">
                     <input type="submit" name="" id="search-submit" class="button" value="Tìm kiếm Danh mục">
                  </p>
                  {!! Form::close() !!}				
               </div>
               {!! Form::open(array('method' => 'POST','action' => array('Admin\CatController@xu_ly_form_cat'))) !!}
               <div class="tablenav top xu_ly_du_lieu_form">
                  <input type="hidden" name="action1" value="" />
                  <div class=" actions">
                     <select name="publish_unpublish">
                        <option value="-1" selected="selected">Chọn</option>
                        <option value="hoat_dong" class="hide-if-no-js">Hoạt động</option>
                        <option value="ban_nhap">Bản nháp</option>
                        <option value="xoa_vinh_vien">Xóa vĩnh viễn</option>
                     </select>
                     <input type="submit" name="submit_1" id="doaction" class="button action" value="Áp dụng">
                  </div>
                  <div class="all_category" style="margin-top: 2%">
                      Tổng cộng có {{ $all_cat_count}} Danh mục 
                  </div>
                  <div class="table-responsive" style="margin-top: 2%;">
                  <table class="table">
                     <thead>
                        <tr class="rip_tr">
                           <th style="width: 5%;">
                              <label>
                                 <input type="checkbox" id="checkAll"/>
                              </label> All
                           </th>
                           <th style="width: 23%;"> Tên danh mục</th>
                           <th style="width: 20%;">Alias</th>
                           <th style="width: 20%;">Ảnh đại diện</th>
                           <th>
                              Ảnh banner
                           </th>
                           <th> Ngày tạo </th>
                           <th> Ngày sửa </th>
                           <th> Tác giả </th>
                        </tr>
                     </thead>
                     <tbody>
                        <?php
                           if(!isset($s_search)) { 
                           	view_category_cat($cats2);
                           }
                           else { 
                           //	echo "kaka".count($cats1);
                           ?>
                        @foreach( $products as $cat1 )

                        <tr class="x-hover">
                     <td class="cat_child">
                              <label class="">
                                 <input type="checkbox" name="checkbox[<?php echo $cat1->id;?>]" value="<?php echo $cat1->id;?>" />    
                              </label> 
                     </td>
                     
                     <td>
                     <?php echo $cat1->name;?> <br>
                        <div class="action">
                                 <a href="/<?php echo $cat1->cat_alias ?>" target="_blank">  <button type="button" rel="tooltip" class="btn btn-info btn-round btn-just-icon btn-sm" data-original-title="" title="">
                                         <i class="fa fa-file-text" aria-hidden="true"></i>
                                     </button>
                                 </a>
                                 
                                 <a href="/admin/cat/<?php echo $cat1->id ?>/edit"><button type="button" rel="tooltip" class="btn btn-success btn-round btn-just-icon btn-sm" data-original-title="" title="">
                                         <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                                     </button>
                                 </a>
                             </div>
                     </td>
                     <td>
                         <?php echo $cat1->cat_alias; ?>
                     </td>
                     <td style="text-align: center;"> <?php
                     $img_xs=json_decode($cat1->category_avatar,1);
                     //var_dump ($img_xs);
                        if(isset($img_xs)==true) {
                           
                           foreach ($img_xs as $img_x) {
                           ?>
                           <img src="<?php echo $img_x->url;?>" />
                              <?php
                           // break;
                           }
                        }
                     ?>
                     </td>
                  
                     <td>
                        <?php  echo $cat1->created_at; ?>
                     </td>
                     <td>
                        <?php  echo $cat1->updated_at; ?>
                     </td>
                     <td>
                       <?php 
                         $admin_id_create = $cat1->admin_id;
                       
                         if(App\Admin::find($admin_id_create))
                                    echo App\Admin::find($admin_id_create)->name;
                        ?>
                     </td>                     
                     
                  </tr>
                        @endforeach
                        <?php
                           }
                           ?>		
                     </tbody>
                  </table>
                  
                  
                              
                   </div>
               </div>
               {!! Form::close() !!}		
               @endif
            </div>
         </div>
      </div>
   </div>
</div>
@include('admin.footer')
<script type="text/javascript">
   $("#checkAll").change(function () {
      $("input:checkbox").prop('checked', $(this).prop("checked"));
   });
</script>
<script type="text/javascript">
   $("#checkAll1").change(function () {
      $("input:checkbox").prop('checked', $(this).prop("checked"));
   });
</script>