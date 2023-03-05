<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model {

	protected $table = 'order';

    protected $fillable = ['product_id','quantity'];

    public $timestamps = true;

    public function product() {

        return $this->belongsTo('App\Product');
    }

    public function user() {

        return $this->belongsTo('App\User');
    }

}
