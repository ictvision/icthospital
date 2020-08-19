<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Email_model extends CI_model {

    function __construct() {
        parent::__construct();
        $this->load->database();
    }

    function getEmailSettingsById($id) {
        $this->db->where('id', $id);
        $query = $this->db->get('email_settings');
        return $query->row();
    }
    
    function getEmailByUser($user){
        $this->db->order_by('id', 'desc');
        $this->db->where('user', $user);
        $query = $this->db->get('email');
        return $query->result();
    }
    
    function getEmailSettings() {
        $query = $this->db->get('email_settings');
        return $query->row();
    }

    function updateEmailSettings($data) {
        $this->db->update('email_settings', $data);
    }

    function addEmailSettings($data) {
        $this->db->insert('email_settings', $data);
    }
    
     function delete($id){
        $this->db->where('id', $id);
        $this->db->delete('email');
    }
    
    function insertEmail($data){
        $this->db->insert('email', $data);
    }
    
    function getEmail(){
        $this->db->order_by('id', 'desc');
        $query = $this->db->get('email');
        return $query->result();
    }
    
    

}
