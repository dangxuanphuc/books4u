import $ from 'jquery';
window.jQuery = $;
window.$ = $;
import 'jquery/dist/jquery.min';
import * as moment from 'moment';
import 'bootstrap/dist/js/bootstrap.min';
import '@fortawesome/fontawesome-free/js/all'
import '../stylesheets/users/custom';
import 'propellerkit/dist/js/propeller.min.js';
import 'propellerkit/components/datetimepicker/js/bootstrap-datetimepicker';
import 'owl.carousel/dist/owl.carousel.min';
require('@rails/ujs').start()
require('turbolinks').start()
require('@rails/activestorage').start()
require('channels')
require('packs/users/layouts/header')
require('packs/users/book')
require('packs/users/profile')
