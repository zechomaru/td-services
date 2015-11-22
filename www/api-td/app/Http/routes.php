<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', function () {
    return view('welcome');
});
//login
Route::post('api/partner', 'PartnerController@create');
//show user
Route::get('api/partner/{id}', 'PartnerController@show');
//sucursales filtrado por partner
Route::get('api/zones/{id}', 'ZoneController@show');
//promociones filtrado por partner y fecha de activas hasta la fecha de expiracion
Route::get('api/promotions/{id}', 'PromotionController@show');
//promocion retorna cupones(vendidos, canjeados, no canjeados)
Route::get('api/promotions/dashboard/{id}', 'PromotionController@dashboard');
//cupones vendidos count
Route::get('api/coupons/vendidos/count/{id}', "CouponController@vendidos");
//cupones canjeados count
Route::get('api/coupons/exchange/count/{id}', "CouponController@exchange");
//cupones no canjeados count
Route::get('api/coupons/nocanjeados/count/{id}', "CouponController@noCanjeados");
//cupones vendidos all
Route::get('api/coupons/vendidos/{id}', "CouponController@vendidosAll");
//cupones canjeados all
Route::get('api/coupons/canjeados/{id}', "CouponController@canjeadosAll");
//escanear cupon y validar
//Route::get('coupons/qr/{id}', 'CouponController@show'); 
Route::patch('api/coupons/qr/{id}/{partner}', "CouponController@update");

