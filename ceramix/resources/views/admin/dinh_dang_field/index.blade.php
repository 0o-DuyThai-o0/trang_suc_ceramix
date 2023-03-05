
@include('admin.head')
<div id="wrapper"  class="container admin-admin">
    <div class="row">
        <div id="sidebar-wrapper" class="col-md-3">
            @include('admin.sitebar')
        </div>
        <div id="page-content-wrapper" class="col-md-9 admin-content">

            <div class="row">
                <h2>Toàn bộ định dạng Field </h2>
            </div>
            <div class="row">
                <table class="table table-bordered edit-son" style="width: 50%;margin: 0 auto;">
                    <thead>
                    <tr>
                       
                        <th>Tên định dạng</th>
                        <th>Mô tả </th>
                        <th>admin </th>
                        <th> Action</th>
                    </tr>
                    </thead>
                    <tbody>
                       
                       @foreach($size as $hm)
                      
                     <tr>
                        
                          <td style="text-transform: uppercase;"><?= $hm->ten_dinh_dang;?></td>
                          <td style="text-transform: uppercase;"><?= $hm->mo_ta;?></td>
                          <td style="text-transform: uppercase;"><?= $hm->admin_id;?></td>
                         <td>
                             <div class="action-home">
                                 <a href="/admin/dinh_dang_field/<?php echo $hm->id ?>/edit"><button type="button" rel="tooltip" class="btn btn-success btn-round btn-just-icon btn-sm" data-original-title="" title="">
                                         <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                                     </button>
                                 </a>
                                  <form class="delete" action="{{ route('DeteleSize' , $hm->id)}}" method="POST" style="display: inline-block;">
                                    <input name="_method" type="hidden" value="DELETE">
                                    <div class="no-border ">
                                        <button type="submit" class="btn btn-danger btn-round btn-just-icon btn-sm" id="b4"><i class="fa fa-window-close-o" aria-hidden="true"></i></button>
                                    </div>
                                 </form>
                                 <script>
                                        $(".delete").on("submit", function(){
                                            return confirm("Bạn có muốn xóa không ?");
                                        });
                                 </script>
                             </div>

                         </td>
                     </tr>
                      @endforeach
                    </tbody>
                </table>
            </div>

        </div>
    </div>

</div>
@include('admin.footer')