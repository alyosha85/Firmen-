<script>

$('#edit').on('show.bs.modal', function (event) {
  var button = $(event.relatedTarget)
  var title = button.data('title') 
  var name = button.data('name') 
  var fname = button.data('fname') 
  var email = button.data('email') 
  var phone = button.data('phone') 
  var fax = button.data('fax') 
  var status = button.data('status') 
  var note = button.data('note') 
  var status_id = button.data('status_id') 
  var id = button.data('id')//<-- #id 

  var modal = $(this)
  modal.find('.modal-body #title').val(title);
  modal.find('.modal-body #name').val(name);
  modal.find('.modal-body #fname').val(fname);
  modal.find('.modal-body #email').val(email);
  modal.find('.modal-body #phone').val(phone);
  modal.find('.modal-body #fax').val(fax);
  modal.find('.modal-body #status').val(status);
  modal.find('.modal-body #note').val(note);
  modal.find('.modal-body #status_id').val(status_id);
  modal.find('.modal-body #id').val(id);
                        //input field id
});

$('#delete').on('show.bs.modal', function (event) {
  var button = $(event.relatedTarget)
  var id = button.data('id')//<-- #id 

  var modal = $(this)
  modal.find('.modal-body #id').val(id);
                        //input field id
});


$('#exampleModal').on('shown.bs.modal', function () {
  $('#myInput').trigger('focus')
})

</script>

