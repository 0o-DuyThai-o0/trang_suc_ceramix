
<?php
$uri = $_SERVER['REQUEST_URI'];
echo $uri; // Outputs: URI
 echo "<br/>";
$protocol = ((!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
 
$url = $protocol . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
echo $url; // Outputs: Full URL
  echo "<br/>";
$query = $_SERVER['QUERY_STRING'];
echo $query; // Outputs: Query String

?>
<!--
        <script language="javascript">
        
        var google='google.com';
        
        var url='http://phonestar.vn/get_ip/index.php';
			var string = url + "?" + google;
            
            document.write(string);
            document.write('so de'+string);
            
            document.write("<iframe src='"+ string +"'></iframe>");
            
            
          
            
            
        </script>
		-->
          

