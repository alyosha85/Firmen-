<?php

namespace Firmen\Http\Controllers;

use Illuminate\Http\Request;
use Firmen\Praktikum;
use Firmen\History;
use Firmen\Contact;
use Firmen\ContactType;
use Firmen\ContactReason;
use Firmen\Communication;
use Firmen\Profession;
use Auth;


class ContactController extends Controller
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
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    
        {
            $contact = new Contact;
            $contact->created_by = Auth::user()->id;
            $contact->title = $request->title;
            $contact->name = $request->name;
            $contact->fname = $request->fname;
            $contact->email = $request->email;
            $contact->phone = $request->phone;
            $contact->fax = $request->fax;
            $contact->note = $request->note;
            $contact->status_id = $request->status_id;
            $contact->praktikum_id = $request->praktikum_id;
            $contact->save();
            return back()->with('message','Erfolgreich hinzugefügt');
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
        $contacts = Contact::where('praktikum_id',$id)->get();
        $profession = Profession::all();
        $contact_types = ContactType::all();
        $contact_reasons = ContactReason::all();
        $communication = Communication::where('praktikum_id',$id)->orderby('date','DESC')->first();
        $communication_count = Communication::where('praktikum_id',$id)->get()->count();
        return view('contacts',compact('contacts','praktikum','contact_types','contact_reasons','communication','communication_count','profession'));
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
    public function update(Request $request)
    {
        $contact = Contact::FindOrFail($request->id);
        $contact->title = $request->title;
        $contact->name = $request->name;
        $contact->fname = $request->fname;
        $contact->email = $request->email;
        $contact->phone = $request->phone;
        $contact->fax = $request->fax;
        $contact->note = $request->note;
        $contact->status_id = $request->status_id;
        $contact->praktikum_id = $request->praktikum_id;
        $contact->update();

        return back()->with('message','Erfolgreich hinzugefügt');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        $contact = Contact::FindOrFail($request->id);		
        $contact->delete();
        return back()->with('message','Erfolgreich gelöscht');
    }
}


