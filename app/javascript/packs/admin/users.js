$(document).on('click', '.save-user', function() {
  var userId = $(this).data('id');
  var idEmailTextField = '#text-field-mail-' + userId;
  var idNameTextField = '#text-field-name-' + userId;
  var idRoleTextField = '#role-user-id-' + userId;
  var newEmail = $(idEmailTextField).val();
  var newName = $(idNameTextField).val();
  var newRole = $(idRoleTextField).val();
  var url = '/admin/users/' + userId;

  $.ajax({
    type: 'PATCH',
    url: url,
    data: {
      user: {
        id: userId,
        email: newEmail,
        name: newName,
        role: newRole
      }
    },
    success: function() {
      location.reload();
    }
  });
});


$(document).on('click', '.delete-user', function() {
  var userId = $(this).data('id');
  var url = '/admin/users/' + userId;

  $.ajax({
    type:'DELETE',
    url: url,
    data: {
      user: {
        id: userId,
      }
    },
    success: function() {
      location.reload();
    }
  });
});

$(document).on('click', '.create-user', function() {
  var idEmailTextField = '#text-field-mail-';
  var idNameTextField = '#text-field-name-';
  var idRoleTextField = '#role-user-id-';
  var newEmail = $(idEmailTextField).val();
  var newName = $(idNameTextField).val();
  var newRole = $(idRoleTextField).val();
  var url = '/admin/users';

  $.ajax({
    type:'POST',
    url: url,
    data: {
      user: {
        email: newEmail,
        name: newName,
        role: newRole
      }
    },
    success: function() {
      $('#users-list-view').load(document.URL + ' #users-list');
      $('#number-users-view').load(document.URL + ' #number-users');
    }
  });
});
