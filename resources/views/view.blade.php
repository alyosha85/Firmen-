@extends('layouts.app')

@section('head')


@endsection

@section('content') 


<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">

<div id="accordion" role="tablist" aria-multiselectable="true">
        <div class="card">
            <h5 class="card-header" role="tab" id="headingOne">
                <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne" class="d-block">
                    <i class="fa fa-chevron-down pull-right"></i> {{$praktikum->praktikumid . ' Einzelheiten'}}
                </a>
            </h5>
    
            <div id="collapseOne" class="collapse show" role="tabpanel" aria-labelledby="headingOne">
                <div class="card-body">
                    <form>
                        <div class="container-fluid ">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label for="praktikumid" class="col-sm-4 col-form-label font-weight-bold">Names Des Unternehmens :</label>
                                        <div class="col-sm-8">
                                            <input type="text" readonly class="form-control-plaintext" id="staticEmail" value="{{$praktikum->praktikumid}}">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="Namenzusatz" class="col-sm-4 col-form-label font-weight-bold">Status:</label>
                                        <div class="col-sm-8">
                                            <input type="text" readonly class="form-control-plaintext" id="staticEmail"value="{{$praktikum->mystatus->name}}">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label for="staticEmail" class="col-sm-2 col-form-label font-weight-bold">Namenzusatz:</label>
                                        <div class="col-sm-10">
                                            <input type="text" readonly class="form-control-plaintext" id="staticEmail" value="{{$praktikum->firmatitle->name}}">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="inputPassword" class="col-sm-2 col-form-label font-weight-bold">Notizen:</label>
                                        <div class="col-sm-10">
                                            <textarea type="text" readonly class="form-control-plaintext" id="staticEmail" rows="5" cols="20">{{$praktikum->notes}}</textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>  
                </div>
            </div>
        </div>
        <div class="card">
            <h5 class="card-header" role="tab" id="headingTwo">
                <a class="collapsed d-block" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                    <i class="fa fa-chevron-down pull-right"></i> Address Detail
                </a>
            </h5>
            <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo">
                <div class="card-body">
                    <form>
                        <div class="container-fluid ">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label for="staticEmail" class="col-sm-2 col-form-label font-weight-bold">:</label>
                                        <div class="col-sm-10">
                                            <input type="text" readonly class="form-control-plaintext" id="staticEmail" value="">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="inputPassword" class="col-sm-2 col-form-label font-weight-bold">:</label>
                                        <div class="col-sm-10">
                                            <input type="text" readonly class="form-control-plaintext" id="staticEmail" value="">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label for="staticEmail" class="col-sm-2 col-form-label font-weight-bold">:</label>
                                        <div class="col-sm-10">
                                            <input type="text" readonly class="form-control-plaintext" id="staticEmail" value="">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="inputPassword" class="col-sm-2 col-form-label font-weight-bold">:</label>
                                        <div class="col-sm-10">
                                            <ol>
                                                {{-- @foreach($product->cities as $key => $item)
                                                    <li> {{ $item->name }}, &nbsp;</li>
                                                @endforeach --}}
                                        </ol>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>  
                </div>
            </div>
        </div>
        <div class="card">
            <h5 class="card-header" role="tab" id="headingThree">
                <a class="collapsed d-block" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                    <i class="fa fa-chevron-down pull-right"></i> Communication
                </a>
            </h5>
            <div id="collapseThree" class="collapse" role="tabpanel" aria-labelledby="headingThree">
                <div class="card-body">
                    <form>
                        <div class="container-fluid ">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label for="staticEmail" class="col-sm-2 col-form-label font-weight-bold">:</label>
                                        <div class="col-sm-10">
                                            <input type="text" readonly class="form-control-plaintext" id="staticEmail" value="">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="inputPassword" class="col-sm-2 col-form-label font-weight-bold">:</label>
                                        <div class="col-sm-10">
                                            <input type="text" readonly class="form-control-plaintext" id="staticEmail" value="">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label for="staticEmail" class="col-sm-2 col-form-label font-weight-bold">:</label>
                                        <div class="col-sm-10">
                                            <input type="text" readonly class="form-control-plaintext" id="staticEmail" value="">
                                        </div>
                                    </div>
                                   
                                    <div class="form-group row">
                                        <label for="staticEmail" class="col-sm-2 col-form-label font-weight-bold">:</label>
                                        <div class="col-sm-10">
                                            <input type="text" readonly class="form-control-plaintext" id="staticEmail" value="">
                                        </div>
                                    </div>
                                   
                                </div>
                            </div>
                        </div>
                    </form>  
                </div>
            </div>
        </div>
        <div class="card">
            <h5 class="card-header" role="tab" id="headingFour">
                <a class="collapsed d-block" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                    <i class="fa fa-chevron-down pull-right"></i> Notes
                </a>
            </h5>
            <div id="collapseFour" class="collapse" role="tabpanel" aria-labelledby="headingFour">
                <div class="card-body">
                       
                </div>
            </div>
        </div>
    </div>


</div>
</div>
</div>
</div>

@endsection

@section('foot')

@endsection




