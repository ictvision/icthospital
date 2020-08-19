<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Sms_model extends CI_model {

    function __construct() {
        parent::__construct();
        $this->load->database();
    }

    function getSmsSettingsById($id) {
        $this->db->where('id', $id);
        $query = $this->db->get('sms_settings');
        return $query->row();
    }

    function getSmsByUser($user) {
        $this->db->order_by('id', 'desc');
        $this->db->where('user', $user);
        $query = $this->db->get('sms');
        return $query->result();
    }

    function getSmsSettings() {
        $query = $this->db->get('sms_settings');
        return $query->result();
    }

    function getSmsSettingsByGatewayName($name) {

        $this->db->where('name', $name);
        $query  = $this->db->get('sms_settings');
        return    $query->row();
    }

    function updateSmsSettings($id,$data) {
        $this->db->where('id', $id);
        $this->db->update('sms_settings', $data);
    }

    function addSmsSettings($data) {
        $this->db->insert('sms_settings', $data);
    }

    function delete($id) {

        $this->db->where('id', $id);
        $this->db->delete('sms');
    }

    function insertSms($data) {
        $this->db->insert('sms', $data);
    }

    function getSms() {
        $this->db->order_by('id', 'desc');
        $query = $this->db->get('sms');
        return $query->result();
    }

}
