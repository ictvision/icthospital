<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Meeting_model extends CI_model {

    function __construct() {
        parent::__construct();
        $this->load->database();
    }

    function insertMeeting($data) {

        $this->db->insert('meetings', $data);
    }

    function getMeeting() {
        $this->db->order_by('id', 'desc');
        $query = $this->db->get('meetings');
        return $query->result();
    }
    function getMeetingid($meeting_id) {
        $this->db->order_by('id', 'desc');
        $this->db->where('meeting_id',$meeting_id);
        $query = $this->db->get('meetings');
        return $query->row();
    }

    

    


    
  
    function updateMeeting($id, $data) {
        $this->db->where('id', $id);
        $this->db->update('meetings', $data);
    }

    function delete($id) {
        $this->db->where('id', $id);
        $this->db->delete('meetings');
    }

   
}
