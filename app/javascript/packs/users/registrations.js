$(document).ready(function() {
  $('.upload-avatar').change(function() {
    var $form = $(this).closest('form');
    var form_data = new FormData($form[0]);
    var url = $form.prop('action');

    $.ajax({
      url: url,
      type: 'PATCH',
      beforeSend: function(request) {
        request.setRequestHeader('X-CSRF-Token',
          $('meta[name="csrf-token"]').prop('content'));
      },
      dataType: 'JSON',
      data: form_data,
      processData: false,
      contentType: false,
      success: function(result) {
        $('#avatar, .avatar').prop('src', result.thumb.url);
      }
    });
  });

  $('.filter').click(function() {
    $(this).parent().find('.active').removeClass('active');
    $(this).addClass('active');
    $('.dropdown-item').css('transform', 'scale(0)');
  });

  $('.portfolio .filter').on('click', function() {
    $('.info-part, .blog-part, .fav-book-part, .history-part').css('transform', 'scale(0)').css('height', '0');
    $($(this).attr('data-trigger')).css('transform', 'scale(1)').css('height', 'auto');
  });

  $('#history-btn').on('click', function() {
    $('.dropdown-item').css('transform', 'scale(1)');
  });

  $('.dropdown-item').click(function() {
    $(this).parent().find('.active-child').removeClass('active-child');
    $('.borrow-part, .donate-part, .feedback-part').css({'transform': 'scale(0)',
      'height': '0'});
    var div = $(this).attr('data-trigger');
    $(div).css({'transform': 'scale(1)', 'height': 'auto'});
    $(this).addClass('active-child');
  });

  $('.not-approve').hover(function() {
    $(this).css({'background': '#f0ad4e',
      'box-shadow': '1px 2px 10px rgba(90, 91, 95, 0.52)', 'cursor': 'pointer'}).text('Cancel?');
  }, function() {
    $(this).css({'background': '#5bc0de', 'box-shadow': 'none'}).text('Waiting');
  });

  $('.not-approve').on('click', function() {
    $(this).css({'display': 'none'});
    $(this).nextAll().css({'display': 'inline-block', 'cursor': 'pointer'});
  });

  $('.cancel-back').on('click', function() {
    $(this).css({'display': 'none'});
    $(this).prev().css({'display': 'none'}).prev().css({'display': 'inline'});
  });

  $('.cancel-ok').on('click', function() {
    var request_id = $(this).parent().parent().find('#request-name').attr('data-id');
    var url = '/borrows/' + request_id;

    $.ajax({
      url: url,
      type: 'PATCH',
      beforeSend: function(request) {
        request.setRequestHeader('X-CSRF-Token',
          $('meta[name="csrf-token"]').prop('content'));
      },
      success: function(result) {
        $('#borrow-row-id-' + request_id).replaceWith(result);
        $('#borrow-row-id-' + request_id).css({
          'background':'#f0ad4e'});
        setTimeout(function() {
          $('#borrow-row-id-' + request_id).css({'transition':'2s',
            'background':'transparent'});
        }, 3000);
      }
    });
  });
});
