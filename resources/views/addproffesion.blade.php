<div class="modal fade" id="addprofession" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Neue Berufsfeld(er)</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <form action="{{route('profession.store')}}" method="POST">
            {{ csrf_field() }}
            <div class="modal-body">
                <label for="name">Berufsfeld(er)</label>
                <input id="name" type="text" class="form-control" name="name" autocomplete="off">
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


 