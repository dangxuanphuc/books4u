import $ from 'jquery';
window.jQuery = $;
window.$ = $;
import 'jquery/dist/jquery.min';
import 'bootstrap/dist/js/bootstrap.min';
import '../stylesheets/admin/custom';
import 'propellerkit/dist/js/propeller.min.js';
import '@fortawesome/fontawesome-free/js/all'
require('@rails/ujs').start()
require('turbolinks').start()
require('@rails/activestorage').start()
require('channels')
require('packs/admin/user')
require('packs/admin/category')
