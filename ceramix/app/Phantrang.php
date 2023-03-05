<?php
namespace App;
use DB;
use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Eloquent\Model;

class Phantrang extends Model
{
   /**
    * Run the migrations.
    *
    * @return void
    */
   public static function getuserData()
   {
       $value=DB::table('product')->paginate(3);
	   return $value;
   }
		
   /**
    * Reverse the migrations.
    *
    * @return void
    */
   public function down()
   {
       Schema::dropIfExists('products');
   }
}