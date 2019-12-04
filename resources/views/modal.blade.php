<!-- Modal add -->
<div class="modal fade" id="addcontact" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          <h4 class="modal-title" id="exampleModalLabel">Neuer Anschprechpartner</h4>
        </div>
        <form action="{{route('contacts.store')}}" method="POST">
                {{ csrf_field() }}
                <input type="hidden" name="praktikum_id" value="{{@$praktikum->id}}">
                <div class="modal-body">
                    @include('model')
                </div>
        <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Schließen</button>
                <button type="submit" class="btn btn-miqr">
                  <span class="glyphicon glyphicon-floppy-save" aria-hidden="true"></span> Einreichen
                  </button>
              </div>
          </form>
      </div>
    </div>
  </div>

  