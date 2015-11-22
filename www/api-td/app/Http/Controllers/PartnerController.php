<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;



class PartnerController extends Controller
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
    public function create(Request $request)
    {
        $username = $request->username;
        $password = $request->password;
        $login = \App\Models\Partner::
        //validad si el usuario ingresado existe
        where('name', '=', $username)->get();
        $login->toArray();
        if (!$login->isEmpty()) {
            //check password
            if ($login[0]['password'] === $password) {
                return response()->json([
                "msg"=>"Success",
                "login"=>$login[0]['id']
                ],200);
            }else{
                return response()->json([
                "msg"=>"Usuario o contraseña invalidos"
                ],401);
            }
        }else{
            return response()->json([
            "msg"=>"Usuario o contraseña invalidos"
            ],401);
        }
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  Request  $request
     * @return Response
     */
    public function store(Request $request)
    {
        
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id)
    {
        $partner = \App\Models\Partner::select('name')
        ->where('id', '=', $id)
        ->get(); 
        if (!$partner->isEmpty()) {
            return response()->json(
            $partner->toArray()
            ,200);
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
