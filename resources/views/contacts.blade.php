@extends('layouts.app')

@section('head')

<link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.dataTables.min.css">
@endsection

@section('content')

<div class="container-fluid">
		<div class="row">
				<div class="col-md-12">
						<div class="panel panel-default">
								<div class="panel-body"> 
									<section>
										<nav class="navbar navbar-inverse" id="newNavBar">
											<div class="container-fluid">
												<div class="navbar-header">
													<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
														<span class="icon-bar"></span>
														<span class="icon-bar"></span>
														<span class="icon-bar"></span>                        
													</button>
													<a class="navbar-brand" href="#" data-toggle="modal" data-target="#myModal2">Letzter Eintrag</a>
													<a class="navbar-brand" href="{{url('communication/'.$praktikum->id)}}" target="_blank">Alles Lesen</a>
													<a><span class="badge pull-right">{{$communication_count}}</span></a>
												</div>
												<div class="collapse navbar-collapse" id="myNavbar">
													<ul class="nav navbar-nav navbar-right">
													<li><a href="#"></a></li>
														<li><a href="#"></a></li>
														<li><a href="#"></a></li>
													</ul>    
												</div>
											</div>
										</nav>
									</section>
									<section>
										{{-- Contact Table --}}
									<div class="container-fluid"> 
										<div class="row">
											<div class="col-lg-6">
												<div class="panel panel-default">
													<div class="panel-body"> 
													<h4><strong>{{ $praktikum->praktikumid }}</strong></h4>
															<!-- Button trigger modal Sprechpartner -->
													<button type="button" class="btn btn-miqr" data-toggle="modal" data-target="#addcontact">
															Neuer Ansprechpartner
													</button>
													<br>
													<br>
														<table class="table table-responsive col-md-6" id="contact_table">
															<thead>
															<tr>
																<th>Name</th>
																<th>Telefon</th>
																<th>Email</th>
																<th>Status</th> 
																<th></th>
																<th>History</th>
															</tr>
															</thead>
															<tbody>
																@foreach(@$contacts as $contact)
															<tr>
																<td>{{$contact->title . ' ' . $contact->name}}</td>
																<td>{{$contact->phone}}</td>
																<td><a href="mailto:{{$contact->email}}"> {{$contact->email}} </a></td>
																<td>{{$contact->status_id}}</td>
																<td>
																	<button   data-id="{{$contact->id}}" 
																		data-title="{{$contact->title}}"
																		data-name="{{$contact->name}}"
																		data-fname="{{$contact->fname}}"
																		data-email="{{$contact->email}}"
																		data-phone="{{$contact->phone}}"
																		data-fax="{{$contact->fax}}"
																		data-status="{{$contact->status}}"
																		data-note="{{$contact->note}}"
																		data-status_id="{{$contact->status_id}}"
																		data-toggle="modal" data-target="#edit"class="btn btn-miqr"><span class="glyphicon glyphicon-pencil"
																	></span></button>
																	<button  data-id="{{$contact->id}}" data-toggle="modal" data-target="#delete" class="btn btn-danger"><span class="glyphicon glyphicon-minus-sign" ></span></button>
																</td>
																<td>Test</td>
															</tr>
																@endforeach    
															</tbody>
														</table>      
														<!-- Modal add -->
														@include('modal')
														<!-- Modal  Edit-->
														<div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
															<div class="modal-dialog" role="document">
																<div class="modal-content">
																	<div class="modal-header">
																		<button type="button" class="close" data-1-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span-1></button>
																		<h4 class="modal-title" id="exampleModal-1Label">Bearbeiten</h4>
																	</div>
																	<form action="{{route('contacts.update','test')}}" method="POST">
																		{{method_field('PATCH')}}
																		{{ csrf_field() }}
																	<div class="modal-body">
																		<input type="hidden" name="praktikum_id" value="{{$praktikum->id}}">
																		<input type="hidden" name="id" id="id" value="">
																		@include('model')
																	</div>
																	<div class="modal-footer">
																		<button type="button" class="btn btn-secondary" data-dismiss="modal">Schließen</button>
																		<button type="submit" class="btn btn-miqr"><span class="glyphicon glyphicon-floppy-save" aria-hidden="true"></span> Einreichen</button>
																	</div>
																	</form>
																</div>
															</div>
														</div>
														{{-- Soft Delete --}}
														<div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
															<div class="modal-dialog" role="document">
																<div class="modal-content">
																	<div class="modal-header modal-header-danger">
																		<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
																		<h4 class="modal-title text-center" id="exampleModalLabel">Deaktivieren</h4>
																	</div>
																	<form action="{{route('contacts.destroy','test')}}" method="POST">
																		{{method_field('delete')}}
																		{{ csrf_field() }}
																	<div class="modal-body">
																		<p class="text-center">'Sind Sie sicher, dass Sie löschen möchten?'</p>
																			<input type="hidden" name="praktikum_id" value="{{$praktikum->id}}">
																			<input type="hidden" name="id" id="id" value="">
																	</div>
																	<div class="modal-footer">
																		<button type="button" class="btn btn-danger" data-dismiss="modal">Nein ! </button> 
																		<button type="submit" class="btn btn-miqr"><span class="gly-1on-trash" aria-hidden="true"></span>JA ! </button>
																	</div>
																	</form>
																</div>
															</div>
														</div>                 
													</div>
												</div>
											</div>
												{{--New History form  --}}
  											<div class="col-lg-6 equal">
													<div class="panel panel-default">
														<div class="panel-body">
															<h4><strong>Neuer Eintrag</strong></h4>
												
														<form action="{{ url('communication') }}" method="POST">
														{{ csrf_field() }}
														<div class="col-lg-6">
															<div class="form-row">
																<input type="hidden" name="praktikum_id" value="{{$praktikum->id}}">
																<div class="form-group col-md-12">
																	<div class="form-group">
																		<label for="date">Datum <span class="glyphicon glyphicon-asterisk" data-toggle="tooltip" data-placement="top" title="Pflichtfelder"></span></label>
																		<input name="date" class="form-control {{ $errors->has('date') ? ' has-error' : '' }}" type="text" placeholder="Wählen Sie ein Datum" id="flatpickr" required='required' value="">
																	</div>
																</div>
															</div>   
															<div class="form-row"> 
																<div class="form-group col-md-6">
																	<div class="form-group">
																		<label for="contact_type_id">Kontaktart <span class="glyphicon glyphicon-asterisk" data-toggle="tooltip" data-placement="top" title="Pflichtfelder"></span></label>
																		<select id="contact_type_id" multiple class="selectpicker form-control" multiple name="contact_type_id[]" required>
																			<option disabled="disabled" value=''>Wählen</option>
																				@foreach($contact_types as $key => $value)
																			<option value='{{$value->id}}'>{{$value->name}}</option>
																				@endforeach
																		</select>
																	</div>
																</div>                                               
																<div class="form-group col-md-6">
																	<div class="form-group">
																		<label for="contact_reason_id">Kontaktgrund <span class="glyphicon glyphicon-asterisk" data-toggle="tooltip" data-placement="top" title="Pflichtfelder"></span></label>
																		<select id="contact_reason_id" class="form-control"  name="contact_reason_id" required >
																			<option  selected="true" disabled="disabled" value="">Wählen</option>
																				@foreach($contact_reasons as $key => $value)
																			<option value='{{$value->id}}'>{{$value->name}}</option> 
																				@endforeach
																		</select> 
																	</div>
																</div>
															</div> 
															<div class="form-row">
																<div class="form-group col-md-6"> 
																	<div class="form-group">
																		<label for="contact_id">Ansprechpartner <span class="glyphicon glyphicon-asterisk" data-toggle="tooltip" data-placement="top" title="Pflichtfelder"></span></label>
																		<select id="contact_id" class="form-control" name="contact_id" required>
																			<option  selected="true" disabled="disabled" value="">Ansprechpartner</option>
																				@foreach($contacts as $key => $value)
																			<option value='{{$value->id}}'>{{$value->name}}</option>
																				@endforeach
																		</select>
																	</div>
																</div>
																<div class="form-group col-md-6">
																	<div class="form-group">
																		<label for="participant">Teilnehmer</label>
																		<input id="participant" type="text" class="form-control" name="participant" value="" autocomplete="off">                     
																	</div>
																</div>
															</div>
															<div class="form-row">
																<div class="form-group col-md-6">
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
																<div class="form-group col-md-6">
																	<div class="form-group">
																		<label for="profession">Neues Berufsfeld</label>
																		<button type="button" class="form-control btn btn-miqr" data-toggle="modal" data-target="#addprofession">
																				<span class="glyphicon glyphicon-plus"></span> Berufsfeld
																		</button>                
																	</div>                        
																</div>
															</div>
														</div>
														<div class="col-lg-6">
															<div class="form-row">
																<div class="form-group col-md-12">
																	<div class="form-group">
																		<label for="memo">Gesprächsnotiz <span class="glyphicon glyphicon-asterisk" data-toggle="tooltip" data-placement="top" title="Pflichtfelder"></span></label>
																		<textarea rows="15" id="memo" type="text" class="form-control" name="memo" value="" required></textarea>                     
																	</div>
																</div>
															</div>
														</div>   
														<div class="btn-toolbar pull-right mx-5">
															<a type="button" class="btn btn-miqr"href="javascript:window.history.back()">  
															<span class="glyphicon glyphicon-backward" aria-hidden="true"></span> Zurück</a>
															<button type="submit" class="btn btn-miqr"> <span class="glyphicon glyphicon-floppy-save" aria-hidden="true"></span> Einreichen</button>
														</div>
													</form> 
												</div>
												@include('addproffesion')
											</div>
										</div>
									</div>
								</div>
								{{-- history modal --}}
								<div class="modal right fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2">
									<div class="modal-dialog" role="document">
										<div class="modal-content">
											<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
													<h4 class="modal-title" id="myModalLabel2">Letzter Eintrag</h4>
											</div>
											<div class="modal-body">
												<div class="row">
													<div class="col-md-12">
														<div class="panel panel-default">
															<div class="panel-body">
																<div class="col-lg-12"> 
																	<div class="form-horizontal">
																		<div class="form-group">
																			<label for="date" class="col-sm-3 control-label">Datum:</label>
																				<div class="col-sm-9">
																					<input type="Text" class="form-control" value="{{ @$communication->date ? date('d-M-y', strtotime(@$communication->date)) : '' }} " readonly>
																				</div>
																				</div>
																				<div class="form-group">
																					<label for="date" class="col-sm-3 control-label">Kontaktgrund:</label>
																					<div class="col-sm-9">
																						<input type="Text" class="form-control" value="{{@$communication->contactreason->name }}" readonly>
																					</div>
																				</div>
																				<div class="form-group">
																					<label for="date" class="col-sm-3 control-label">Ansprechpartner:</label>
																					<div class="col-sm-9">
																						<input type="Text" class="form-control" value="{{@$communication->contact->name}}" readonly>
																					</div>
																				</div>
																				<div class="form-group">
																					<label for="date" class="col-sm-3 control-label">Teilnehmer:</label>
																					<div class="col-sm-9">
																						<input type="Text" class="form-control" value="{{@$communication->participant}}" readonly>
																					</div>
																				</div>
																	
																			</div>
																</div>
																	<div class="col-lg-12">
																					<div class="form-row">
																						<div class="form-group col-md-12">
																							<div class="form-group">
																								<label for="memo">Gesprächsnotiz </label>
																								<textarea rows="8" id="memo" type="text" class="form-control" name="memo" value="" readonly>{{@$communication->memo}}</textarea>                     
																							</div>
																						</div>
																					</div>
																				</div> 
											
																				<div class="btn-toolbar pull-right mb-5">
																						<a type="button" class="btn btn-miqr" href="{{url('communication/'.$praktikum->id)}}" target="_blank">  
																							<span class="glyphicon glyphicon-th-list" aria-hidden="true"></span> alles lesen
																						</a>
																					</div>  
																	</div>   
																</form>
														</div>
													</div>
												</div>
											</div>
										</div><!-- modal-content -->
										</div><!-- modal-dialog -->
										</div><!-- modal -->
											
											
											






																

</div>
<br> 

						</div>
				</div>
	 </div>
</div>
</div>	


{{-- <h4><strong>Letzter Eintrag</strong><span class="badge pull-right">Insgesamt {{$communication_count}}</span></h4>
<ul class="list-group">
	<li class="list-group-item"><strong>Datum: </strong> {{ @$communication->date ? date('d-M-y', strtotime(@$communication->date)) : '' }}</li>
	<li class="list-group-item"><strong>Teilnehmer: </strong> {{@$communication->participant}}</li>
	<li class="list-group-item"><strong>Berufsfeld: </strong> {{@$communication->profession->name}}</li>
	<li class="list-group-item"><strong>Ansprechpartner: </strong> {{@$communication->contact->name}}</li>
	<li class="list-group-item scroll"><strong>Gesprächsnotiz: </strong>{{@$communication->memo}}</li>
</ul>
<div class="btn-toolbar pull-right mb-5">
	<a type="button" class="btn btn-miqr" href="{{url('communication/'.$praktikum->id)}}" target="_blank">  
		<span class="glyphicon glyphicon-th-list" aria-hidden="true"></span> alles lesen
	</a>
</div> --}}



 
@endsection

@section('foot')

<script src="https://npmcdn.com/flatpickr/dist/flatpickr.min.js"></script>
<script src="https://npmcdn.com/flatpickr/dist/l10n/de.js"></script>
<script src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>

@include('modalscript')

<script>

 flatpickr.localize(flatpickr.l10ns.de);
 flatpickr("#flatpickr");

$('#flatpickr').on('focus', ({ currentTarget }) => $(currentTarget).blur());
$("#flatpickr").prop('readonly', false);

</script>

<script>

$.extend( $.fn.dataTable.defaults, {
    responsive: true
} );
 
$(document).ready(function() {
    $('#contact_table').DataTable();
} );
</script>



@endsection    
