<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Controllers\Controller;

use Carbon\Carbon;
 

class PromotionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {
        //
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
        $date = Carbon::now();
        $date = $date->format('Y-m-d');
        $promotions = \App\Models\Promotion::select('id', 'title', 'zone_id')
        ->where('partner_id', '=', $id)
        ->where('date_start', '<=', $date)
        ->where('date_expire', '>=', $date)
        ->get(); 
        if (!$promotions->isEmpty()) {
            return response()->json(
            $promotions->toArray()
            ,200);
        }else{
            return response()->json([
            "msg"=>"error"
            ],403);
        }
    }
    public function dashboard($id)
    {
        $date = Carbon::now();
        $date = $date->format('Y-m-d');
        $promotions = \App\Models\Promotion::select('title')
        ->where('id', '=', $id)
        ->get(); 
        if (!$promotions->isEmpty()) {
            return response()->json(
            $promotions->toArray()
            ,200);
        }else{
            return response()->json([
            "msg"=>"error"
            ],403);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function dashboardssa($id)
    {
        $date = Carbon::now();
        $date = $date->format('Y-m-d');
        $promotion = \App\Models\Promotion::
        join("coupon", "coupon.promotion_id", "=", "promotion.id")
        ->select("coupon.verify")
        ->where("promotion.id", "=", $id)
        ->get(); 
        if ($promotion) {
            return response()->json([
            "msg"=>"success",
            "promotions"=>$promotion->toArray()
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
    public function update(Request $request, $id)
    {
        //
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
