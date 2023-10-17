<?php
defined('BASEPATH') OR exit('No direct script access allowed');


$route['lang/(:any)']	= 'c_public/switchLang/$1';
$route['destroy']	= 'c_public/sess_destroy/';

// pages
$route['home'] = 'c_public';
$route['page/detail/(:any)'] = 'c_page/detail/$1';
$route['contact'] = 'c_page/contact';
$route['post/list/(:any)'] = 'c_post/list/$1';
$route['post/detail/(:any)/(:any)/(:any)'] = 'c_post/detail/$1/$2/$3';
$route['service'] = 'c_service/list';
$route['service/(:num)'] = 'c_service/list';
$route['service/detail/(:any)'] = 'c_service/detail/$1';

$route['default_controller'] = 'c_public';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;

