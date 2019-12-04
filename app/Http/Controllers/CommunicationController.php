<?php

namespace Firmen\Http\Controllers;

use Illuminate\Http\Request;
use Validator;

use Firmen\Communication;
use Firmen\ContactReason;
use Firmen\ContactType;
use Auth;
use Firmen\Praktikum;
use Firmen\Contact;
use Firmen\CommunicationContactType;

class CommunicationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
     
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        // $contact_types = ContactType::all();
        // $contact_reasons = ContactReason::all();
        // return back();
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
            'date'  => 'required',

        ])->validate();
     
        $communication = new Communication;
        $communication->date = $request->date;
        $communication->contact_reason_id = $request->contact_reason_id;
        $communication->profession_id = $request->profession_id;
        $communication->participant = $request->participant;
        $communication->memo = $request->memo;
        $communication->created_by = Auth::user()->id;
        $communication->praktikum_id = $request->praktikum_id;
        $communication->contact_id = $request->contact_id;
        $communication->save();


        		
        foreach($request->contact_type_id as $item) {
            $bridge = new CommunicationContactType();
            $bridge->communication_id = $communication->id;
            $bridge->contact_type_id = $item;
            $bridge->save();
        }
        return back()->with('message','Erfolgreich hinzufügt');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        
        $praktikum = Praktikum::find($id);
        $communications = Communication::where('praktikum_id',$id)->first();
        $communication = Communication::where('praktikum_id',$id)->orderby('date','desc')->get();

        return view('communication',compact('praktikum','communications','communication'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
