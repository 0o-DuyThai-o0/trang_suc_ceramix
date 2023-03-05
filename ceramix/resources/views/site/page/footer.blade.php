    <!-- ----------------------footer---------------------- -->
    <div class="footer">
        <div class="container">
          <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
              <div class="vechungtoi">
                <?php home_field($all_field_home,66); ?>
              </div>
  
              <div class="motathongtin">
                <?php home_field($all_field_home,67); ?>
              </div>
  
              <div class="chinhsach">
                <a href="">
                  <?php home_field($all_field_home,68); ?>
                </a>
              </div>
  
              <div class="chinhsach">
                <a href="">
                  <?php home_field($all_field_home,69); ?>
                </a>
              </div>
            </div>
  
            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
              <div class="vechungtoi">
                <?php home_field($all_field_home,70); ?>
              </div>
  
              <div class="motathongtin">
                <?php home_field($all_field_home,71); ?>
              </div>
  
              <div class="chinhsach">
                <a href="">
                  <?php home_field($all_field_home,72); ?>
                </a>
              </div>
  
              <div class="chinhsach">
                <a href="">
                  <?php home_field($all_field_home,73); ?>
                </a>
              </div>
            </div>
  
            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
              <div class="vechungtoi">
                <b><?php home_field($all_field_home,74); ?></b>
              </div>
  
              <div class="bando">
                <?php home_field($all_field_home,77); ?>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- -------------------------------------------------- -->
  
      <!-- ----------------------footer2=-------------------- -->
      <div class="footer2">
        <div class="container">
          <?php home_field($all_field_home,75); ?> <?php home_field($all_field_home,76); ?>
        </div>
      </div>
      <!-- -------------------------------------------------- -->
  
      <!-- -----------------------gotop---------------------- -->
      <!------------------ Về đầu trang ----------------->
    <div id="goTop"><i class="fa-solid fa-angles-up"></i></div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script type="text/javascript"> $(function(){ $(window).scroll(function () { if ($(this).scrollTop() > 100) $('#goTop').fadeIn(); else $('#goTop').fadeOut(); }); $('#goTop').click(function () { $('body,html').animate({scrollTop: 0}, 'slow'); }); }); </script>
</body>
</html>

<script>
$(window).scroll(function() { 
    if ($(this).scrollTop()>100)
     {
       $('#menu').addClass( "fix_s" );   
     }
    else
     {
      $('#menu').removeClass( "fix_s" );
     }
 });
</script>
<script> 
$(function(){

    var url = window.location.pathname, 
        urlRegExp = new RegExp(url.replace(/\/$/,'') + "$"); // create regexp to match current url pathname and remove trailing slash if present as it could collide with the link in navigation in case trailing slash wasn't present there
        // now grab every link from the navigation
		//alert(url.length);
		if(url.length>1) {
        $('#menu a').each(function(){
            // and test its normalized href against the url pathname regexp
            if(urlRegExp.test(this.href.replace(/\/$/,''))){
                $(this).addClass('dang_truy_cap');
            } 
        });
		}

});
</script>
<style>
.fix_s{
	    position: fixed;
    top: 0;
    z-index: 10000;
}
</style>
      <!-- -------------------------------------------------- -->