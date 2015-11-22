<?php

namespace App\Http\Controllers;

//use DB;

use Illuminate\Http\Request;

use App\Http\Controllers\Controller;

class ZoneController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {
        
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
        $zones = \App\Models\Zone::select('id', "name","town_id")
        ->where("id", "=", $id)
        ->orderBy('zone.name', 'desc')
        ->get(); 
        if (!$zones->isEmpty()) {
            return response()->json(
            $zones->toArray(),200
            );
        }else{
            return response()->json([
            "msg"=>"error"
            ],403);
        }

        /*$coupon = \App\Models\Coupon::Find($id);
        */
    
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
