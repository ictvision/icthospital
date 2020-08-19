<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function required() {
    $CI = & get_instance();


    $CI->load->library('Ion_auth');
    $CI->load->library('session');
    $CI->load->library('form_validation');
    $CI->load->library('upload');

    $CI->load->config('paypal');

    $language = $CI->db->get('settings')->row()->language;
    $CI->lang->load('system_syntax', $language);

    $CI->load->model('settings/settings_model');
    $CI->load->model('ion_auth_model');


}
