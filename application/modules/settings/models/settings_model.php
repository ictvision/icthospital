<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Settings_model extends CI_model {

    function __construct() {
        parent::__construct();
        $this->load->database();
    }

    function getSettings() {
        $query = $this->db->get('settings');
        return $query->row();
    } 
    function getmemberships() {
        $query = $this->db->get('membership_settings');
        return $query->result();
    }
    function getmembership($id) {
         $this->db->where('id', $id);
         $this->db->order_by('id', 'desc');
         $query = $this->db->get('membership_settings');
        return $query->row();
    }
    function insertMembership($data) {
        $this->db->insert('membership_settings', $data);
    }
    function updateMembership($id, $data) {
        $this->db->where('id', $id);
        $this->db->update('membership_settings', $data);
    }
    function deleteMembership($id) {
        $this->db->where('id', $id);
        $this->db->delete('membership_settings');
    }
    function updateSettings($id, $data) {
        $this->db->where('id', $id);
        $this->db->update('settings', $data);
    }

}
