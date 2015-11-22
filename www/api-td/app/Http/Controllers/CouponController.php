<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Controllers\Controller;
use Carbon\Carbon;

class CouponController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {
        $coupons = \App\Models\Coupon::count();
        return response()->json([
            "msg"=> "success",
            "num"=> $coupons
            ],200);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  Request  $request
     * @return Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id)
    {
        
    
    }

/**
 * Display the specified resource.
 *
 * @param  int  $id
 * @return Response
 */
////////////////////////////////////////////////
///                                          ///
///              cupones count               ///
///                                          ///
////////////////////////////////////////////////
public function vendidos($id)
{
    $coupons = \App\Models\Coupon::where('promotion_id', '=', $id)
    ->count();
    return response()->json([
        "msg"=> "success",
        "num"=> $coupons
        ],200);
}
public function exchange($id)
{
    $coupon = \App\Models\Coupon::where('promotion_id', '=', $id)
    ->whereNotNull('consume')
    ->count(); 
    if (!$coupon == 0) {
        return response()->json([
        "msg"=>"success",
        "num"=>$coupon
        ],200);
    }else{
        return response()->json([
        "msg"=>"error"
        ],403);
    }
}
public function noCanjeados($id)
    {
        $coupon = \App\Models\Coupon::where('promotion_id', '=', $id)
        ->whereNull('consume')
        ->count(); 
        if ($coupon) {
            return response()->json([
            "msg"=>"success",
            "num"=>$coupon
            ],200);
        }else{
            return response()->json([
            "msg"=>"error"
            ],403);
        }
    
    }
    ////////////////////////////////////////////////
    ///                                          ///
    ///         Fin de cupones count             ///
    ///                                          ///
    ////////////////////////////////////////////////
    ////////////////////////////////////////////////
    ///                                          ///
    ///              cupones status              ///
    ///                                          ///
    ////////////////////////////////////////////////
    public function vendidosAll($id)
    {
        $coupons = \App\Models\Coupon::where('promotion_id', '=', $id)
        ->get();
        return response()->json(
            $coupons->toArray()
            ,200);
    }
    public function canjeadosAll($id)
    {
        //aqui hay un problema cuando se hace el join de user ya que la tabla coupon
        //tiene una llamada "name" y la tabla user tambien tiene una con el nombre "name"
        //y se sobrescribe lo cual no me sirve a la hora de cargar el nombre de la persona a 
        // la cual se le esta regalando el cupon
        $coupons = \App\Models\Coupon::join("user", "coupon.user_id", "=", "user.id")
        ->select("coupon.name", "coupon.last", "coupon.verify", "user.lastname")
        ->where('coupon.promotion_id', '=', $id)
        ->whereNotNull('coupon.consume')
        ->get();
        return response()->json(
            $coupons->toArray()
            ,200);
    }
    
    ////////////////////////////////////////////////
    ///                                          ///
    ///              fin cupones status          ///
    ///                                          ///
    ////////////////////////////////////////////////
    public function sold($id)
    {
        $coupon = \App\Models\Coupon::where('promotion_id', '=', $id)
        ->select('name', 'last', 'verify')
        ->get(); 
        if ($coupon) {
            return response()->json([
            "msg"=>"success",
            "coupon"=>$coupon->toArray()
            ],200);
        }else{
            return response()->json([
            "msg"=>"error"
            ],403);
        }
    }
    

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  Request  $request
     * @param  int  $id
     * @return Response
     */
    public function update(Request $request, $id, $partner)
    {
        $date = Carbon::now();
        $date = $date->format('Y-m-d');
        $coupon = \App\Models\Coupon::
        join("promotion", "promotion.id", "=", "coupon.promotion_id")
        ->join('partner', 'partner.id', '=', 'promotion.partner_id')
        ->select("coupon.id")
        ->where('coupon.id', '=', $id)
        ->whereNull('coupon.consume')
        //se valida que el partner logueado es el mismo del cupon
        ->where('partner.id', '=', $partner)
        ->where('promotion.date_start', '<=', $date)
        ->where('promotion.date_expire', '>=', $date)
        ->find($id);
        if ($coupon) {
            $coupon->consume = $date;
            $coupon->save();
            return response()->json([
            "msg"=>"success",
            "coupon"=>$coupon
            ],200);
        }else{
            return response()->json([
            "msg"=>"campo vacio"
            ],403);
        }
        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function destroy($id)
    {
        //
    }
}
