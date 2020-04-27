import 'propellerkit/components/datetimepicker/js/bootstrap-datetimepicker';
import 'owl.carousel/dist/owl.carousel.min';
import * as SimpleMDE from 'simplemde';
import 'select2/dist/js/select2.min';

$(document).ready(function() {
  $('#datepicker-start').datetimepicker({
    minDate: new Date()
  });

  $('#datepicker-end').datetimepicker({
    minDate: new Date(),
    useCurrent: false
  });

  $('#datepicker-start').on('dp.change', function(e) {
    $('#datepicker-end').data('DateTimePicker').minDate(e.date);
    $('#datepicker-end').data('DateTimePicker').maxDate(e.date.add(180, 'days'));
  });
  $('#datepicker-end').on('dp.change', function(e) {
    $('#datepicker-start').data('DateTimePicker').maxDate(e.date);
    $('#datepicker-start').data('DateTimePicker').minDate(
      e.date.subtract(180, 'days'));
  });

  $('.image-carousel').owlCarousel();

  $(document).on('click', '.book-image-others', function() {
    $(this).attr('id');
    var url = $(this).attr('src');
    $('.book-image').attr('src', url);
  });

  $(document).on('click', '.btn-send-req', function() {
    var start = $('#datepicker-start').val();
    var end = $('#datepicker-end').val();
    var id = $('.current-book-id').attr('id');

    $('#datepicker-start').val('');
    $('#datepicker-end').val('');

    if(start != '' && end != '') {
      $.ajax({
        beforeSend: function(xhr) {
          xhr.setRequestHeader('X-CSRF-Token',
            $('meta[name="csrf-token"]').attr('content'));
        },
        type: 'POST',
        url: '/borrows',
        data: {
          borrow: {
            time_start: start,
            time_end: end,
            book_id: id
          }
        },
        success: function(e) {
          $('.modal-send-req-result').append(e);
          $('#send-req-success-modal').modal('show');
        }
      });
    }
  });

  var editors = {};

  var editorOptions = {
    element: $('#comment-0')[0],
    status: false,
    toolbar: false,
    forceSync: true,
    spellChecker: false
  };

  editors['comment-0'] = new SimpleMDE(editorOptions);

  $('li.load-html').click(function(){
    var id = $(this).attr('data');
    $('#preview-' + id).html(editors['comment-' + id]
      .options.previewRender(editors['comment-' + id].value()));
  });

  $('.fa-reply').click(function() {
    var id = $(this).attr('data');

    if(editors['comment-' + id] === undefined){
      editorOptions.element = $('#comment-' + id)[0];
      editors['comment-' + id] = new SimpleMDE(editorOptions);
    }

    setTimeout(function() {
      $('.reply-' + id).removeClass('hidden');
    }, 200);
  });

  $('.btn-cancel').click(function (e) {
    e.preventDefault();
    var id = $(this).attr('data');
    $('.reply-' + id).addClass('hidden');
  });

  $('#relate-book-slide').owlCarousel({
    loop: false,
    lazyLoad: true,
    item: 7,
    responsive: {
      0 : {
        items: 2
      },
      421 : {
        items: 3
      },
      706 : {
        items: 4
      },
      876 : {
        items: 5
      },
      1366 : {
        items: 7
      }
    },
    rewind: false
  });

  $('.relate-book-cont .fa-angle-left').click(function() {
    $(this).parent().find('.owl-carousel').trigger('prev.owl.carousel');
  });

  $('.relate-book-cont .fa-angle-right').click(function() {
    $(this).parent().find('.owl-carousel').trigger('next.owl.carousel');
  });

  $('.suggest-book-select').select2({
    tags: true,
    theme: 'bootstrap'
  });
});

$(document).on('click', '.btn-suggest-book', function() {
  $('.suggest-book-modal').modal();
});

$(document).on('click', '.btn-send-suggest-book', function() {
  var re_id = $('#suggest_receiver').val();
  var con = $('.suggest-book-content').val();
  var book_id = $(this).attr('data-book-id');
  var link = '/books/' + book_id + '/suggest_books';
  $.ajax({
    beforeSend: function(xhr){
      xhr.setRequestHeader('X-CSRF-Token',
        $('meta[name="csrf-token"]').attr('content'));
    },
    type: 'POST',
    url: link,
    data: {
      suggest_book: {
        receiver_id: re_id,
        content: con
      }
    },
    success: function(e) {
      $('.modal-suggest-result').append(e);
      $('.suggest-book-modal').modal('hide');
      $('#suggest-book-success-modal').modal();
    }
  });
});