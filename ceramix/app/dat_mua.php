<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class dat_mua extends Model 
{

    protected $table = 'dat_mua';
    protected $fillable = [
        'id',
        'ho_ten',
        'so_dt',
		'noi_dung',
		'email',
		'tong_tien',
		'ghi_chu',
    ] ;
}	