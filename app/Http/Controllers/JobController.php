<?php

namespace Firmen\Http\Controllers;

use Illuminate\Http\Request;
use Firmen\Praktikum;
use Validator;
use Config;
use DB;
use Firmen\Job;
use Firmen\Bdepartment;





class JobController extends Controller
{
	
	/**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }
	
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $job=Job::all();
        $bdepartment = Bdepartment::all();
        return view('options',['job'=>$job,'bdepartment'=>$bdepartment]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
      
    }

 

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        Validator::make($request->all(), [
            'name'  => 'string|max:255|unique:jobs',                        
        ],['error'])->validate();
        
        $job = new Job();
		$job->name = $request->name ;
        $job->save();
		
		return redirect('options')->with('message','Erfolgreich hinzugefügt');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {   
        return 'hit';
        $bdepartment = Bdepartment::find($id);
        $job = new Job();
        $job->name = $request->name ;
        $job->bdepartment_id->request->id;
        $job->save();
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        $job = job::find($request->id);		
		$job->delete();
		
		return redirect('options')->with('message','Erfolgreich gelöscht');
		
		
    }
}
