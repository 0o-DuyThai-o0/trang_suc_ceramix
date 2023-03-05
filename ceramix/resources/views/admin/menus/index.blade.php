<?php 

//use App;
?>
@include('admin.head')
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">
      <link rel="stylesheet" href="http://congtyducduong.com/menu-test/css/bootstrap-iconpicker.min.css">



      <script type="text/javascript" src="http://congtyducduong.com/menu-test/js/bootstrap.bundle.min.js"></script>
    
  
      <script type="text/javascript" src="http://congtyducduong.com/menu-test/js/jquery-menu-editor.min.js"></script>
      <script type="text/javascript" src="http://congtyducduong.com/menu-test/js/iconset/fontawesome5-3-1.min.js"></script>
      <script type="text/javascript" src="http://congtyducduong.com/menu-test/js/bootstrap-iconpicker.min.js"></script>
    
     <script>
         jQuery(document).ready(function () {
             /* =============== DEMO =============== */
             // menu items
             var arrayjson = [{"text":"Trang chủ","href":"/trang-chu","icon":"fas fa-home","target":"_top","title":"My Home"},{"text":"Giới thiệu","href":"gioi-thieu","icon":"fas fa-chart-bar","target":"_self","title":""},{"text":"Liên Hệ","href":"lien-he","icon":"fas fa-bell","target":"_self","title":""},{"text":"Hẹn khám","href":"/hen-kham","icon":"fas fa-crop","target":"_self","title":""}];
         
         //  var arrayjson = [];
         
         
             // icon picker options
             var iconPickerOptions = {searchText: "Buscar...", labelHeader: "{0}/{1}"};
             // sortable list options
             var sortableListOptions = {
                 placeholderCss: {'background-color': "#cccccc"}
             };
         
             var editor = new MenuEditor('myEditor', {listOptions: sortableListOptions, iconPicker: iconPickerOptions});
         
             editor.setForm($('#frmEdit'));
         
             editor.setUpdateButton($('#btnUpdate'));
         
             $('#btnReload').on('click', function () {
                 editor.setData(arrayjson);
             });
         //editor.setData(arrayjson);
         $("#out").text("không sao mà");
             $('#btnOutput').on('click', function () {
                 var str = editor.getString();
                 $("#out").text(str);
         
         alert(str);
             });
         
             $("#btnUpdate").click(function(){
                 editor.update();
             });
         
             $('#btnAdd').click(function(){
                 editor.add(); 
             });
         
         //     $('[data-toggle="tooltip"]').tooltip();
         //    $.getJSON( "https://api.github.com/repos/davicotico/jQuery-Menu-Editor", function( data ) {
             //    $('#btnStars').html(data.stargazers_count);
             //    $('#btnForks').html(data.forks_count);
         //    });
         });
      </script>

  <div id="wrapper" class="container admin-admin">
  <div class="row">
    <div id="sidebar-wrapper" class="col-md-3">
      @include('admin.sitebar')
    </div>
        @if ($errors->has())
        <p style="color:red;">
          @foreach ($errors->all() as $error)
            {!! $error !!}<br />    
          @endforeach
        </p>
        @endif
    <div id="page-content-wrapper" class="col-md-9 admin-content">
      <div class="row menus_select_1" style="">
        <h2 class="h2_bai_viet h2_bai_viet_product">Danh Sách Menu</h2>

  <table class="table">
    <thead>
      <tr>
        <th>ID</th>
        <th>Name</th>
      </tr>
    </thead>
    <tbody>
  @foreach( $menus as $menu1 )
  <tr>
     <td>{{  $menu1->id }}</td>
      <td><a class="show-2" href="{{ asset('admin/menus') }}/{{ $menu1->id }}/edit"> {{ $menu1->name }}  </a>
      <br/>
      <a href="{{ asset('admin/menus') }}/{{ $menu1->id }}/edit"> Edit</a>
      </td>
  </tr>
                  @endforeach
     
   

    </tbody>
  </table>

              

      </div>
        
     <!--  <div class="row edit_menu_son_kaka">
    <div class="container menu_editor_1">
    <h2 class="h2_bai_viet h2_bai_viet_product">Tên Menu: </h2>
         <div class="row">
                 <div class="col-md-6">
      <div class="noi_dung_1">
               <div class="card border-primary mb-3">
                  <div class="card-header bg-primary text-white">Edit item</div> 
                  <div class="card-body">
                     <form id="frmEdit" class="form-horizontal">
                        <div class="form-group">
                           <label for="text">Text</label>
                           <div class="input-group">
                              <input type="text" class="form-control item-menu" name="text" id="text" placeholder="Text">
                              <div class="input-group-append">
                                 <button type="button" id="myEditor_icon" class="btn btn-outline-secondary"></button>
                              </div>
                           </div>
                           <input type="hidden" name="icon" class="item-menu">
                        </div>
                        <div class="form-group">
                           <label for="href">URL</label>
                           <input type="text" class="form-control item-menu" id="href" name="href" placeholder="URL">
                        </div>
                        <div class="form-group">
                           <label for="target">Target</label>
                           <select name="target" id="target" class="form-control item-menu">
                              <option value="_self">Self</option>
                              <option value="_blank">Blank</option>
                              <option value="_top">Top</option>
                           </select>
                        </div>
                        <div class="form-group">
                           <label for="title">Tooltip</label>
                           <input type="text" name="title" class="form-control item-menu" id="title" placeholder="Tooltip">
                        </div>
                     </form>
                  </div>
                  <div class="card-footer">
                     <button type="button" id="btnUpdate" class="btn btn-primary" disabled><i class="fas fa-sync-alt"></i> Update</button>
                     <button type="button" id="btnAdd" class="btn btn-success"><i class="fas fa-plus"></i> Add</button>
                  </div>
               </div>
            </div> </div>
            <div class="col-md-6">
        <div class="noi_dung_1">
               <div class="card mb-3">
                  <div class="card-header">
                     <h5 class="float-left">Menu</h5>
                     <div class="float-right">
                        <button id="btnReload" type="button" class="btn btn-outline-secondary">
                        <i class="fa fa-play"></i> Load Data</button>
                     </div>
                  </div>
                  <div class="card-body">
                     <ul id="myEditor" class="sortableLists list-group">
                     </ul>
                  </div>
          
               </div>
               <p>Click the Output button to execute the function <code>getString();</code></p>
               <div class="card">
                  <div class="card-header">
                     JSON Output
                     <div class="float-right">
                        <button id="btnOutput" type="button" class="btn btn-success"><i class="fas fa-check-square"></i> Output</button>
                     </div>
                  </div>
                  <div class="card-body">
                     <div class="form-group"><textarea id="out" class="form-control" cols="50" rows="10"></textarea>
                     </div>
                  </div>
               </div>
             </div>
      </div>

         </div>
      </div>
      
      </div> -->

    </div>
  </div> 
  </div>
@include('admin.footer')


<style>
.menu_editor_1 {
  margin-top:20px;
}
.form-horizontal .form-group {
  margin-left:0 !important;
  margin-right:0 !important;
}
.menu_editor_1 .col-md-6 {  
  padding-left:10px; 
  padding-right:10px;
}
.noi_dung_1 {
  
}
.card {
    position: relative;
    display: -ms-flexbox;
    display: flex;
    -ms-flex-direction: column;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 1px solid rgba(0,0,0,.125);
    border-radius: .25rem;
  padding:10px;
}
</style>