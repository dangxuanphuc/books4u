import $ from 'jquery';
window.jQuery = $;
window.$ = $;
import 'bootstrap/dist/js/bootstrap.min';
import '../stylesheets/admin/custom';
import 'propellerkit/dist/js/propeller.min.js';
import 'chosen-jquery/lib/chosen.jquery'
require('@rails/ujs').start()
require('turbolinks').start()
require('@rails/activestorage').start()
require('channels')

$(document).ready(function() {
  $('.flash-push').fadeOut(5000);
});
