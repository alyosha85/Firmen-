@extends('layouts.app')

@section('head')
    <style>
body {
  font: 90%/1.45em "Helvetica Neue", HelveticaNeue, Verdana, Arial, Helvetica, sans-serif;
  margin: 0;
  padding: 0;
  color: #333;
  background-color: #fff;
}
.tab-content {
        width: 80% !important;
    }

        /* .btn-primary,
        .btn-primary:hover,
        .btn-primary:active,
        .btn-primary:visited,
        .btn-primary:focus,
        .btn-primary-border {
    background-color: #661421;
    border-color: #661421;
} */
    </style>

@endsection

@section('content')
    <div class="container" style="width: 100%">
        <div class="row  ">

            <div class="col-md-12 main-bar">
                <div id="main" class="panel panel-default">
                    <div class="panel-body">
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
                                    <a class="navbar-brand" href="{{ url('/praktikum/create') }}">Neue Firma</a>
                                  </div>
                                  <div class="collapse navbar-collapse" id="myNavbar">
                                    {{-- <ul class="nav navbar-nav">
                                    <li><a href="{{url('/options')}}">Tätigkeit Hinzufugen</a></li>
                                    </ul> --}}
                                    <ul class="nav navbar-nav navbar-right">
                                    <li><a href="?type=city">{{ $standort->name }}</a></li>
                                      <li><a href="?type=state">{{ $bundesland->name }}</a></li>
                                      <li><a href="?type=all">Bundesweit</a></li>
                                    </ul>    
                                  </div>
                                </div>
                              </nav>
                       
                        <div class="tab-content">
                            <div id="menu1" class="tab-pane fade in active ">
                                <table id="example" class="display" style="width:100%">
                                    <thead>
                                    <tr>
                                        <th>Firma</th>
                                        <th>Branche</th>
                                        <th>Beruf</th>   
                                        <th>Status</th>
										<th>Tel</th>
                                        <th>Email</th>
                                        <th>Bundesland</th>
                                        <th>Standort</th>
                                        <th>Anschrift</th>
                                        <th>Bearbeiten</th>
                                      
                                    </tr>
                                    <tr>
                                            <th></th>
                                            <th>Branche</th>
                                            <th>Beruf</th>   
                                            <th>Status</th>
                                            <th></th>
                                            <th></th>
                                            <th></th>
                                            <th></th>
                                            <th></th>
                                            <th></th>
                                          
                                        </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($praktikum as $item)
                                    <tr>
                                        <td><a title=''  href="{{url('contacts/'.$item->id)}}" ><strong>{{@$item->praktikumid}}</strong></a></td>
                                        <td>{{ @$item->bdepartment->name }}</td> 
                                        <td> 
                                            @foreach ($item->job as $jobid)
                                                {{$jobid->name}}, &nbsp;
                                            @endforeach
                                        </td>
                                        <td class="text-center">{{ @$item->mystatus->name }}</td>
                                        <td>{{ @$item->phone}}</td>
                                        <td><a href="mailto:{{@$item->email}}"> {{ @$item->email}}</a></td>
                                        <td>{{ @$item->state->name}}</td>
                                        <td>
                                            @foreach ($item->city as $cityid)
                                                {{$cityid->name}}, &nbsp;
                                            @endforeach
                                        </td>
                                        <td>{{@$item->address}}</td>
                                        <td class="text-center">
                                            <a title='Ansicht' class="btn btn-miqr btn-sm" href="{{url('praktikum/'.$item->id)}}" >
                                                <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                            <a title='zum Bearbeiten anklicken' class="btn btn-miqr btn-sm" href="{{url('praktikum/'.$item->id.'/edit')}}" >
                                                <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a>
                                            <button title='Löschen' id="delete" type="button" onClick="praktikum_delete()" class="btn btn-danger btn-sm">
                                                <span class="glyphicon glyphicon-trash" aria-hidden="true"></span></button>
                                        </td>  
                                    </tr>
                                    @endforeach
                                    </tbody>

                                </table>
                            </div>
                        </div>
					</div>
                </div>
			</div>
        </div>
    </div>

@endsection

@section('foot')


<script>



//  show loading
function my_submit(){
    $(".se-pre-con").fadeIn();			
}
    $('.pagination li').on('click', function () {
    $(".se-pre-con").fadeIn();
});

//datatable   
$(document).ready(function() {
var table = $('#example').DataTable({
    orderCellsTop: true,
    dom: 'Bfrtip',
    columnDefs : [
   { targets : [3],
     render : function(data, type, row) {
        return '<span class="dadge badge--'+data+'">'+data+'</span>'
     }     
   }
],
    buttons: [
                {
                // print in landscape script
                extend: "print", text:'Drucken',
                customize: function(win)
                    {
                        var last = null;
                        var current = null;
                        var bod = [];

                        var css = '@page { size: landscape; }',
                            head = win.document.head || win.document.getElementsByTagName('head')[0],
                            style = win.document.createElement('style');

                        style.type = 'text/css';
                        style.media = 'print';

                        if (style.styleSheet)
                        {
                            style.styleSheet.cssText = css;
                        }
                        else
                        {
                            style.appendChild(win.document.createTextNode(css));
                        }

                        head.appendChild(style);
                    }
            
                },

                //select col visibility
                {
                    extend: 'colvis',text:'Spalten Anzeigen'  
                }
            ],
//end buttons ......................................................end buttons

//drag and drop columns
colReorder: true,

// 'Aktiv Status green color'   
//  "createdRow": function ( row, data, index ) {
// if ( data[3]== 'Aktiv') {
//     $('td', row).eq(3).addClass('dadge badge--Aktiv');
//     }
// else if ( data[3]== 'Inaktiv') {
//     $('td', row).eq(3).addClass('dadge badge--Inaktiv');
//     }
// else if ( data[3]== 'Interessent') {
//     $('td', row).eq(3).addClass('dadge badge--Interessent');
//     }
// else if ( data[3]== 'Gesperrt') {
//     $('td', row).eq(3).addClass('dadge badge--Gesperrt');
// } 
// }, 
 //German language 
 "language": {
            "url": "https://cdn.datatables.net/plug-ins/9dcbecd42ad/i18n/German.json"
            }, 	
//drop down select
initComplete: function () {
        this.api().columns([1,2,3]).every( function () {
            var column = this;
            var select = $('<select><option value=""></option></select>')
                .appendTo( $("#example thead tr:eq(1) th").eq(column.index()).empty() )
                .on( 'change', function () {
                    var val = $.fn.dataTable.util.escapeRegex(
                        $(this).val()
                    );

                    column
                        .search( val ? '^'+val+'$' : '', true, false )
                        .draw();
                } );

            column.data().unique().sort().each( function ( d, j ) {
                select.append( '<option value="'+d+'">'+d+'</option>' );
            } );
        } );
    } //initComplete function  



    });
});



 </script>    

        
@endsection
