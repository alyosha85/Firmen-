@extends('layouts.app')

@section('head')

@endsection

@section('content')
   <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-body"> 
                        <form method="POST" action="{{ @$praktikum->praktikumid ? url('/praktikum/'.$praktikum->id) : url('/praktikum') }}">
                                {{ csrf_field() }}
                                @if(@$praktikum->praktikumid)
								{{ method_field('PUT') }}
                                @endif
                                @if(@$praktikum->praktikumid)
                                    <h2> {{$praktikum->praktikumid . ' Details'}}</h2>
                                        <input class="form-control lead pull-right" type="text" placeholder="Datum angelegt:  {{ date('d-M-y', strtotime(@$praktikum->updated_at)) }} von {{$praktikum->user->name}}" readonly>   
                                @else <h2> Neue Firma</h2>
                                @endif
                                
                                {{-- input begin here 1--}}
                                <div class="form-row">
                                    <div class="form-group col-md-10">
                                        <div class="form-group{{ $errors->has('praktikumid') ? ' has-error' : '' }}">
                                            <label for="praktikumid">Name des Unternehmens<span class="glyphicon glyphicon-asterisk" data-toggle="tooltip" data-placement="top" title="Pflichtfelder"></span></label>
                                            <input id="praktikumid" type="text" class="form-control" name="praktikumid" value="{{ old('praktikumid') ? old('praktikumid')  :  @$praktikum->praktikumid }}" autocomplete="off" required autofocus >
                                            @if ($errors->has('praktikumid'))
                                                <span class="help-block">
                                                <strong>{{ $errors->first('praktikumid') }}</strong>
                                            </span>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="form-group col-md-2">
                                        <div class="form-group">
                                        <label for="firma_title_id">Namenszusatz <span class="glyphicon glyphicon-asterisk" data-toggle="tooltip" data-placement="top" title="Pflichtfelder"></span></label>
                                        <select id="firma_title_id" class="form-control"  name="firma_title_id" required>
                                            <option  selected="true" disabled="disabled" value="">Wählen</option>
                                            @foreach($firma_titles as $key => $value)
                                            <option  @if(old('firma_title_id') == $value->id) {{'selected'}} @elseif(@$praktikum->firma_title_id == $value->id) {{'selected'}} @endif value='{{$value->id}}'>{{$value->name}}</option>
                                            @endforeach
                                        </select>
                                        </div>
                                    </div>
                                </div>    
                                
                                {{-- input begin here 2--}}
                                <div class="form-row">
                                    <div class="form-group col-md-4">
                                        <div class="form-group">
                                        <label for="bdepartment_id">Branche <span class="glyphicon glyphicon-asterisk" data-toggle="tooltip" data-placement="top" title="Pflichtfelder"></span></label>
                                        <select id="bdepartment_id" class="form-control"  name="bdepartment_id" required>
                                            <option  selected="true" disabled="disabled" value=''>Wählen</option>
                                            @foreach($bdepartments as $key => $value)
                                            <option  @if(old('bdepartment_id') == $value->id) {{'selected'}} @elseif(@$praktikum->bdepartment_id == $value->id) {{'selected'}} @endif value='{{$value->id}}'>{{$value->name}}</option>
                                            @endforeach
                                        </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-4">
                                        <div class="form-group">
                                            <label for="job_id">Tätigkeitsfeld <span class="glyphicon glyphicon-asterisk" data-toggle="tooltip" data-placement="top" title="Pflichtfelder"></span></label>
                                            <select id="job_id" multiple class="selectpicker form-control" multiple name="job_id[]" required>
                                                    <option disabled="disabled" value=''>Wählen</option>
                                                    @foreach($jobs as $key => $value)
                                                    <option @if(isset($praktikum))    
                                                    @foreach ($praktikum->job as $jobobject) 
                                                     @if ($jobobject->id == $value->id) {{'selected'}}  @endif
                                                    @endforeach
                                                    @endif
                                                    value='{{$value->id}}'>{{$value->name}}</option>
                                                    @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <div class="form-group">
                                            <label for="profession_id">Berufsfeld(er) <span class="glyphicon glyphicon-asterisk" data-toggle="tooltip" data-placement="top" title="Pflichtfelder"></span></label>
                                            <select id="profession_id" class="form-control"  name="profession_id" required>
                                                <option  selected="true" disabled="disabled" value=''>Wählen</option>
                                                @foreach($profession as $key => $value)
                                                <option  @if(old('profession_id') == $value->id) {{'selected'}} @elseif(@$praktikum->profession_id == $value->id) {{'selected'}} @endif value='{{$value->id}}'>{{$value->name}}</option>
                                                @endforeach
                                            </select>              
                                        </div>
                                    </div>
                                    <div class="form-group col-md-1">
                                        <div class="form-group">
                                            <label for="">Neue</label>
                                            <button type="button" class=" form-control btn btn-miqr" data-toggle="modal" data-target="#addprofession">
                                                   <span class="glyphicon glyphicon-plus"></span>
                                            </button>                
                                        </div>
                                    </div>
                                </div>	

                                {{-- input begin here 3--}}
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <div class="form-group">
                                            <label for="state_id">Bundesland <span class="glyphicon glyphicon-asterisk" data-toggle="tooltip" data-placement="top" title="Pflichtfelder"></span></label>
                                            <select id="state_id" class="form-control"  name="state_id" required >
                                                <option  selected="true" disabled="disabled" value=''>Wählen</option>
                                                @foreach($states as $key => $value)
                                                <option  @if(old('state_id') == $value->id) {{'selected'}} @elseif(@$praktikum->state_id == $value->id) {{'selected'}} @endif value='{{$value->id}}'>{{$value->name}}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>                                        
                                    <div class="form-group col-md-6">
                                        <label for="city_id">Standort <span class="glyphicon glyphicon-asterisk" data-toggle="tooltip" data-placement="top" title="Pflichtfelder"></span></label>
                                        <div class="form-group">
                                            <select multiple class="selectpicker form-control" multiple name="city_id[]" required>
                                                    <option disabled="disabled" value=''></option>
                                                    @foreach($cities as $key => $value)
                                                    <option @if(isset($praktikum))    
                                                    @foreach ($praktikum->city as $cityobject) 
                                                     @if ($cityobject->id == $value->id) {{'selected'}}  @endif
                                                    @endforeach
                                                    @endif
                                                    value='{{$value->id}}'>{{$value->name}}</option>
                                                    @endforeach
                                            </select>
                                        </div>
                                    </div>	
                                </div>

                                {{-- input begin here 4--}}
                                    <div class="form-row">
                                        <div class="form-group col-md-4">
                                            <div class="form-group">
                                                <label for="address">Straße</label>
                                                <input id="address" type="text" class="form-control" name="address" value="{{ old('address') ? old('address')  :  @$praktikum->address }}">                 
                                            </div>
                                        </div>    
                                        <div class="form-group col-md-4">
                                            <div class="form-group">
                                                <label for="address2">Ort</label>
                                                <input id="address2" type="text" class="form-control" name="address2" value="{{ old('address2') ? old('address2')  :  @$praktikum->address2 }}" >                
                                            </div>
                                        </div>      
                                        <div class="form-group col-md-4">
                                            <div class="form-group">
                                                <label for="zipcode">Postleitzahl</label>
                                                <input id="zipcode" type="text" maxlenght="5" class="form-control" name="zipcode" value="{{ old('zipcode') ? old('zipcode')  :  @$praktikum->zipcode }}" >                 
                                            </div>
                                        </div>    	
                                    </div> 

                                {{-- input begin here 5--}}
                                    <div class="form-row">
                                        <div class="form-group col-md-3"> 
                                            <div class="form-group">  
                                                <label for="phone">Telefon</label>
                                                <input id="phone" type="text" class="form-control" name="phone" value="{{ old('phone') ? old('phone')  :  @$praktikum->phone }}" >  
                                            </div>
                                        </div>
                                        <div class="form-group col-md-3">
                                            <div class="form-group">
                                                <label for="fax">Fax</label>
                                                <input id="fax" type="text" class="form-control" name="fax" value="{{ old('fax') ? old('fax')  :  @$praktikum->fax }}" >                     
                                            </div>
                                        </div>
                                        <div class="form-group col-md-3">
                                            <div class="form-group">
                                                <label for="email">Email </label>
                                                <input id="email" type="text" class="form-control" name="email" value="{{ old('email') ? old('email')  :  @$praktikum->email }}" >                     
                                            </div>
                                        </div>
                                        <div class="form-group col-md-3">
                                            <div class="form-group">
                                                <label for="website">Website</label>
                                                <input id="website" type="text" class="form-control" name="website" value="{{ old('website') ? old('website')  :  @$praktikum->website }}" > 
                                            </div>
                                        </div>
                                    </div>

                                {{-- input begin here 6 last --}}
                                <div class="form-row">
                                    <div class="form-group col-md-4">
                                        <div class="form-group">
                                            <label for="status_id">Status <span class="glyphicon glyphicon-asterisk" data-toggle="tooltip" data-placement="top" title="Pflichtfelder"></span>
                                            <span class="glyphicon glyphicon-question-sign" style="color:red" data-toggle="modal" data-placement="top" title="Status"></span> 
                                            <span class="glyphicon glyphicon-info-sign" style="color:blue" data-toggle="modal" data-placement="top" title="Pflichtfelder"></span> 
                                            </label>
                                            <select id="status_id" class="form-control"  name="status_id" required >
                                                <option  selected="true" disabled="disabled" value=''>Wählen</option>
                                                @foreach($statuses as $key => $value)
                                                <option  @if(old('status_id') == $value->id) {{'selected'}} @elseif(@$praktikum->status_id == $value->id) {{'selected'}} @endif value='{{$value->id}}'>{{$value->name}}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>

                                    <div class="form-group col-md-8">
                                        <div class="form-group">
                                            <label for="notes">Notizen</label>
                                                <textarea rows="4" id="notes" type="text" class="form-control" name="notes" value="">{{ old('notes') ? old('notes')  :  @$praktikum->notes }}</textarea> 
                                        </div>                                              
                                    </div>
                                </div>

                                {{-- buttons --}}
                                <div class="container-fluid col-lg-12">
                                    <div class="btn-toolbar pull-right">
                                        <a type="button" class="btn btn-miqr" href="{{ url('login') }}">  
                                            <span class="glyphicon glyphicon-backward" aria-hidden="true"></span> Zurück
                                        </a>
                                        <button type="submit" class="btn btn-miqr">
                                            <span class="glyphicon glyphicon-floppy-save" aria-hidden="true"></span> Speichern
                                        </button>
                                        @if(@$praktikum->praktikumid)<button id="delete" type="button" onClick="praktikum_delete()" class="btn btn-miqr">
                                            <span class="glyphicon glyphicon-remove" aria-hidden="true"></span> Löschen
                                        </button>@endif
                                    </div>
                                    @if(@$praktikum->praktikumid)
                                        <div class=" btn-toolbar pull-left">
                                            <button type="button" class="btn btn-miqr" data-toggle="modal" data-target="#addcontact">
                                                <span class="glyphicon glyphicon-user" aria-hidden="true">
                                                Neue Sprechpartner
                                            </button>
                                        </div>
                                    @endif


                                </div>

                    </form>     
                                
                                @if(@$praktikum->praktikumid)
                                <form id="praktikumdelete" action="{{ url('/praktikum/'.$praktikum->id) }}" method="POST"  style="display:none" >
                                            {{ csrf_field() }}
                                            {{ method_field('Delete') }}								
                                </form>
                                @endif

                                    
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <br><br>
            @include('modal')
            @include('addproffesion')
        @endsection

@section('foot')

        

	<script>
    
		function praktikum_delete(){ 
			var praktikum = confirm('Sind Sie sicher, dass Sie löschen möchten?');			
			if(praktikum){			
                $( "#praktikumdelete" ).submit();
			}			
		}		
	</script>
@endsection
