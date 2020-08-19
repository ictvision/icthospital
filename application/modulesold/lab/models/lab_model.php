<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Lab_model extends CI_model {

    function __construct() {
        parent::__construct();
        $this->load->database();
    }

    function insertLabtemp($data) {

        $this->db->insert('test_items', $data);
    }
     function gettemBylabId($id) {
        $this->db->where('lab_id', $id);
        $query = $this->db->get('test_items');
        return $query->result();
    }
    function deleteLabitem($id) {
        $this->db->where('lab_id', $id);
        $this->db->delete('test_items');
    }
    function insertLab($data) {
        $this->db->insert('lab', $data);
    }
    function insertLabreport($data) {
        $this->db->insert('lab_reports', $data);
    }
    function getLabreport($id) {
         //$this->db->order_by('id', 'desc');
        $this->db->where('report_id', $id);
        $query = $this->db->get('lab_reports');
        return $query->result();
    }

    function deleteLabreport($id) {
        $this->db->where('report_id', $id);
        $this->db->delete('lab_reports');
    }

    function getLab() {
        $this->db->order_by('id', 'desc');
        $query = $this->db->get('lab');
        return $query->result();
    }

    function getLabBySearch($search) {
        $this->db->order_by('id', 'desc');
        $this->db->like('id', $search);
        $this->db->or_like('patient_name', $search);
        $this->db->or_like('patient_phone', $search);
        $this->db->or_like('patient_address', $search);
        $this->db->or_like('doctor_name', $search);
        $this->db->or_like('date_string', $search);
        $query = $this->db->get('lab');
        return $query->result();
    }

    function getLabByLimit($limit, $start) {
        $this->db->order_by('id', 'desc');
        $this->db->limit($limit, $start);
        $query = $this->db->get('lab');
        return $query->result();
    }

    function getLabByLimitBySearch($limit, $start, $search) {
        $this->db->order_by('id', 'desc');
        $this->db->like('id', $search);
        $this->db->or_like('patient_name', $search);
        $this->db->or_like('patient_phone', $search);
        $this->db->or_like('patient_address', $search);
        $this->db->or_like('doctor_name', $search);
        $this->db->or_like('date_string', $search);
        $this->db->limit($limit, $start);
        $query = $this->db->get('lab');
        return $query->result();
    }

    function getLabById($id) {
        $this->db->where('id', $id);
        $query = $this->db->get('lab');
        return $query->row();
    }

    function getLabByPatientId($id) {
        $this->db->order_by('id', 'desc');
        $this->db->where('patient', $id);
        $query = $this->db->get('lab');
        return $query->result();
    }

    function getLabByPatientIdByDate($id, $date_from, $date_to) {
        $this->db->order_by('id', 'desc');
        $this->db->where('patient', $id);
        $this->db->where('date >=', $date_from);
        $this->db->where('date <=', $date_to);
        $query = $this->db->get('lab');
        return $query->result();
    }

    function getLabByUserId($id) {
        $this->db->order_by('id', 'desc');
        $this->db->where('user', $id);
        $query = $this->db->get('lab');
        return $query->result();
    }

    function getOtLabByPatientId($id) {
        $this->db->order_by('id', 'desc');
        $this->db->where('patient', $id);
        $query = $this->db->get('ot_lab');
        return $query->result();
    }

    function getLabByPatientIdByStatus($id) {
        $this->db->where('patient', $id);
        $this->db->where('status', 'unpaid');
        $query = $this->db->get('lab');
        return $query->result();
    }

  
    function updateLab($id, $data) {
        $this->db->where('id', $id);
        $this->db->update('lab', $data);
    }

    function updatestatus($id,$status){
        $data = array('status'=>$status);
        $this->db->where('id', $id);
        $this->db->update('lab', $data);
    }

    function insertLabCategory($data) {

        $this->db->insert('lab_category', $data);
    }

    function getLabCategory() {
        $query = $this->db->get('lab_category');
        return $query->result();
    }

    function getLabCategoryById($id) {
        $this->db->where('id', $id);
        $query = $this->db->get('lab_category');
        return $query->row();
    }


    function updateLabCategory($id, $data) {
        $this->db->where('id', $id);
        $this->db->update('lab_category', $data);
    }

    function deleteLab($id) {
        $this->db->where('id', $id);
        $this->db->delete('lab');
    }

    function deleteLabCategory($id) {
        $this->db->where('id', $id);
        $this->db->delete('lab_category');
    }

    function getLabByDoctor($doctor) {
        $this->db->select('*');
        $this->db->from('lab');
        $this->db->where('doctor', $doctor);
        $query = $this->db->get();
        return $query->result();
    }

    function getLabByDate($date_from, $date_to) {
        $this->db->select('*');
        $this->db->from('lab');
        $this->db->where('date >=', $date_from);
        $this->db->where('date <=', $date_to);
        $query = $this->db->get();
        return $query->result();
    }

    function getLabByDoctorDate($doctor, $date_from, $date_to) {
        $this->db->select('*');
        $this->db->from('lab');
        $this->db->where('doctor', $doctor);
        $this->db->where('date >=', $date_from);
        $this->db->where('date <=', $date_to);
        $query = $this->db->get();
        return $query->result();
    }

 
    function getLabByUserIdByDate($user, $date_from, $date_to) {
        $this->db->order_by('id', 'desc');
        $this->db->select('*');
        $this->db->from('lab');
        $this->db->where('user', $user);
        $this->db->where('date >=', $date_from);
        $this->db->where('date <=', $date_to);
        $query = $this->db->get();
        return $query->result();
    }
    
     function insertTemplate($data) {
        $this->db->insert('template', $data);
    }

    function getTemplate() {
        $this->db->order_by('id', 'desc');
        $query = $this->db->get('template');
        return $query->result();
    }
    
      function updateTemplate($id, $data) {
        $this->db->where('id', $id);
        $this->db->update('template', $data);
    }
    
    function getTemplateById($id) {
        $this->db->where('id', $id);
        $query = $this->db->get('template');
        return $query->row();
    }
    
     function deletetemplate($id) {
        $this->db->where('id', $id);
        $this->db->delete('template');
    } 
    function insertCategory($data) {
        $this->db->insert('lab_categories', $data);
    }

    function getCategory() {
        $this->db->order_by('id', 'desc');
        $query = $this->db->get('lab_categories');
        return $query->result();
    }
    
      function updateCategory($id, $data) {
        $this->db->where('id', $id);
        $this->db->update('lab_categories', $data);
    }
    
    function getCategoryById($id) {
        $this->db->where('id', $id);
        $query = $this->db->get('lab_categories');
        return $query->row();
    }
    
     function deleteCategory($id) {
        $this->db->where('id', $id);
        $this->db->delete('lab_categories');
    }

}
