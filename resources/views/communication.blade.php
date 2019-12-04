@extends('layouts.app')

@section('head')


@endsection

@section('content')
  
@if( session('message'))
    <div class="alert alert-success">
        {{ session('message') }}
    </div>
@endif

<nav class="navbar navbar-inverse" id="newNavBar">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>                        
            </button>
            <a class="navbar-brand" href="javascript:window.close()">Schließen</a>
          </div>
          <div class="collapse navbar-collapse" id="myNavbar">

  
          </div>
        </div>
      </nav>




<div class="container-fluid">
    <div class="row">
        @foreach($communication as $item)
        <div class="col-lg-3 col-md-6" >
            <div class="panel panel-default">
                <div class="panel-body"> 
                <h4><strong>Datum:</strong>{{ date('d-M-y', strtotime(@$item->updated_at)) }} <small>von {{$item->user->name}}  </small>
                </h4>
                    <ul class="list-group">
                        <li class="list-group-item"><strong>Teilnehmer: </strong> {{@$item->participant}}</li>
                        <li class="list-group-item"><strong>Berufsfeld:</strong> {{@$item->profession->name}} </li>
                        <li class="list-group-item"><strong>Art es Kontakts:</strong>
                        @foreach ($item->contacttype as $type)
                        {{$type->name}}, &nbsp;
                        @endforeach 
                        </li> 
                        <li class="list-group-item"><strong>Kontaktgrund:</strong> {{$item->contactreason->name}} </li>
                        <li class="list-group-item"><strong>Anschprechpartner: </strong> {{@$item->contact->name}}</li>
                        <li class="list-group-item scroll"><strong>Gesprächsnotiz: </strong>{{@$item->memo}}</li>
                    </ul>
                </div>
            </div>
        </div>
        @endforeach
    </div>
</div>


                                        
   

@endsection

@section('foot')





        
@endsection
