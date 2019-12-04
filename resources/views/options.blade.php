{{-- @extends('layouts.app')

@section('head')
<style>

    </style>

@endsection

@section('content')
<div class="container">
    <div class="row  ">
        @if( session('message'))
        <div class="alert alert-success">
        {{ session('message') }}
        </div>
        @endif
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <h2>Neu Tätigkeit</h2>
                    <form class="form-horizontal" method="POST" action="{{ url('job/'.$bdepartment.'/edit') }}">
                     {{ csrf_field() }}
                    <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
                        <label for="name" class="col-md-3 control-label"> Branche <span class="glyphicon glyphicon-asterisk"></span></label>
                        <div class="col-md-5">
                            <select id="bdepartment" class="form-control"  name="id" required  >
                            <option  selected="true" disabled="disabled" value="">Wählen</option>
                            @foreach($bdepartment as $key => $value)
                            <option  @if(old('id') == $value->id) {{'selected'}} @endif value='{{$value->id}}'>{{$value->name}}</option>
                            @endforeach
                            </select>
                        </div>
                    </div>            
                    <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
                        <label for="name" class="col-md-3 control-label">Neu Tätigkeit</label>
                        <div class="col-md-5">
                            <input id="jobs" style="display:none" type="text" class="form-control" name="name" value="{{ old('name')}}" required autofocus autocomplete="off">                                
                            @if ($errors->has('name'))
                            <span class="help-block">
                            <strong>{{ $errors->first('name') }}</strong>
                            </span>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <button type="submit" class="btn btn-miqr">
                                Neu Tätigkeit
                            </button>
                        </div> 
                    </div>
                    </form>
        <div class="pull-right">  
            <a type="button" class="btn btn-miqr" href="javascript:window.history.back()">  
                <span class="glyphicon glyphicon-backward" aria-hidden="true"></span> Zurück
            </a></div>
        </div>
        </div>
        </div>
    </div>
</div>
@endsection

@section('foot')

<script>
 
    $("#bdepartment").change(function(){
    $("#jobs").show()
    });

    
</script>

@endsection --}}
