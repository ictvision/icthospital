<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Patient_model extends CI_model {

    function __construct() {
        parent::__construct();
        $this->load->database();
    }

    function insertPatient($data) {
        $this->db->insert('patient', $data);
    }
    function insertPatientMembership($data) {
        $this->db->insert('membership', $data);
    }
    function getMembershipdetails($id) {
        $this->db->select('membership.*, membership_settings.membership_name, membership_settings.membership_price, membership_settings.discount, membership_settings.expiry as expry');
        $this->db->where('patient_id', $id);
        $this->db->join('membership_settings', 'membership_settings.id = membership.membership_type', 'inner');
        $query = $this->db->get('membership');
        return $query->result();
    
    }

     function getmettings($id){

        $this->db->select('*');
        $this->db->from('meetings');
        $this->db->join('appointment', 'appointment.id = meetings.appointment_id');
        $this->db->where('patient',$id);
         $this->db->order_by('meetings.id', 'desc');
        $query = $this->db->get();
        return $query->result();
    } 
    function getmettingid($id){

        $this->db->select('*');
        $this->db->from('meetings');
        //$this->db->join('appointment', 'appointment.id = meetings.appointment_id');
        $this->db->where('meeting_id',$id);
        $query = $this->db->get();
        return $query->row();
    }

  

    function getPatient() {
        $this->db->order_by('id', 'desc');
         $this->db->where('type', 'outdoor');
        $query = $this->db->get('patient');
        return $query->result();
    }
function getallPatient() {
        $this->db->order_by('id', 'desc');
         //$this->db->where('type', 'outdoor');
        $query = $this->db->get('patient');
        return $query->result();
    }
    function getindoorPatient() {
        $this->db->order_by('id', 'desc');
         $this->db->where('type', 'indoor');
        $query = $this->db->get('patient');
        return $query->result();
    }

    function getPatientBySearch($search) {
        $this->db->order_by('id', 'desc');
        $this->db->where('type', 'outdoor');
        $this->db->like('id', $search);
        $this->db->or_like('name', $search);
        $query = $this->db->get('patient');
        return $query->result();
    }

    function getPatientByLimit($limit, $start) {
        $this->db->order_by('id', 'desc');
         $this->db->where('type', 'outdoor');
        $this->db->limit($limit, $start);
        $query = $this->db->get('patient');
        return $query->result();
    }

    function getPatientByLimitBySearch($limit, $start, $search) {
         $this->db->where('type', 'outdoor');
        $this->db->like('id', $search);

        $this->db->order_by('id', 'desc');

        $this->db->or_like('name', $search);
        $this->db->or_like('phone', $search);
        $this->db->or_like('address', $search);

        $this->db->limit($limit, $start);
        $query = $this->db->get('patient');
        return $query->result();
    }



     function getPatientIndor() {
        $this->db->order_by('id', 'desc');
         $this->db->where('type', 'indoor');
        $query = $this->db->get('patient');
        return $query->result();
    }

    function getPatientIndorBysearch($search) {
        $this->db->order_by('id', 'desc');
        $this->db->where('type', 'indoor');
        $this->db->like('id', $search);
        $this->db->or_like('name', $search);
        $query = $this->db->get('patient');
        return $query->result();
    }

    function getPatientIndorByLimit($limit, $start) {
        $this->db->order_by('id', 'desc');
         $this->db->where('type', 'indoor');
        $this->db->limit($limit, $start);
        $query = $this->db->get('patient');
        return $query->result();
    }

    function getPatientIndorByLimitBySearch($limit, $start, $search) {
         $this->db->where('type', 'indoor');
        $this->db->like('id', $search);

        $this->db->order_by('id', 'desc');

        $this->db->or_like('name', $search);
        $this->db->or_like('phone', $search);
        $this->db->or_like('address', $search);

        $this->db->limit($limit, $start);
        $query = $this->db->get('patient');
        return $query->result();
    }

    function getPatientById($id) {
        $this->db->where('id', $id);
        $query = $this->db->get('patient');
        return $query->row();
    }

    function getPatientByIonUserId($id) {
        $this->db->where('ion_user_id', $id);
        $query = $this->db->get('patient');
        return $query->row();
    }

    function getPatientByEmail($email) {
        $this->db->where('email', $email);
        $query = $this->db->get('patient');
        return $query->row();
    }

    function updatePatient($id, $data) {
        $this->db->where('id', $id);
        $this->db->update('patient', $data);
    }

    function delete($id) {
        $this->db->where('id', $id);
        $this->db->delete('patient');
    }

    function insertMedicalHistory($data) {
        $this->db->insert('medical_history', $data);
    }

    function getMedicalHistoryByPatientId($id) {
        $this->db->where('patient_id', $id);
        $query = $this->db->get('medical_history');
        return $query->result();
    }

    function getMedicalHistory() {
        $this->db->order_by('id', 'desc');
        $query = $this->db->get('medical_history');
        return $query->result();
    }

    function getMedicalHistoryBySearch($search) {
        $this->db->order_by('id', 'desc');
        $this->db->like('id', $search);
        $this->db->or_like('patient_name', $search);
        $query = $this->db->get('medical_history');
        return $query->result();
    }

    function getMedicalHistoryByLimit($limit, $start) {
        $this->db->order_by('id', 'desc');
        $this->db->limit($limit, $start);
        $query = $this->db->get('medical_history');
        return $query->result();
    }

    function getMedicalHistoryByLimitBySearch($limit, $start, $search) {

        $this->db->like('id', $search);

        $this->db->order_by('id', 'desc');

        $this->db->or_like('patient_name', $search);
        $this->db->or_like('patient_phone', $search);
        $this->db->or_like('patient_address', $search);

        $this->db->or_like('description', $search);

        $this->db->limit($limit, $start);
        $query = $this->db->get('medical_history');
        return $query->result();
    }

    function getMedicalHistoryById($id) {
        $this->db->where('id', $id);
        $query = $this->db->get('medical_history');
        return $query->row();
    }

    function updateMedicalHistory($id, $data) {
        $this->db->where('id', $id);
        $this->db->update('medical_history', $data);
    }

    function insertDiagnosticReport($data) {
        $this->db->insert('diagnostic_report', $data);
    }

    function updateDiagnosticReport($id, $data) {
        $this->db->where('id', $id);
        $this->db->update('diagnostic_report', $data);
    }

    function getDiagnosticReport() {
        $this->db->order_by('id', 'desc');
        $query = $this->db->get('diagnostic_report');
        return $query->result();
    }

    function getDiagnosticReportById($id) {
        $this->db->where('id', $id);
        $query = $this->db->get('diagnostic_report');
        return $query->row();
    }

    function getDiagnosticReportByInvoiceId($id) {
        $this->db->where('invoice', $id);
        $query = $this->db->get('diagnostic_report');
        return $query->row();
    }

    function getDiagnosticReportByPatientId($id) {
        $this->db->where('patient', $id);
        $query = $this->db->get('diagnostic_report');
        return $query->result();
    }

    function insertPatientMaterial($data) {
        $this->db->insert('patient_material', $data);
    }

    function getPatientMaterial() {
        $this->db->order_by('id', 'desc');
        $query = $this->db->get('patient_material');
        return $query->result();
    }
    
    
      function getDocumentBySearch($search) {
        $this->db->order_by('id', 'desc');
        $this->db->like('id', $search);
        $this->db->or_like('patient_name', $search);
        $query = $this->db->get('patient_material');
        return $query->result();
    }

    function getDocumentByLimit($limit, $start) {
        $this->db->order_by('id', 'desc');
        $this->db->limit($limit, $start);
        $query = $this->db->get('patient_material');
        return $query->result();
    }

    function getDocumentByLimitBySearch($limit, $start, $search) {

        $this->db->like('id', $search);

        $this->db->order_by('id', 'desc');
        
        $this->db->or_like('date_string', $search);

        $this->db->or_like('patient_name', $search);
        $this->db->or_like('patient_phone', $search);
        $this->db->or_like('patient_address', $search);

        $this->db->or_like('title', $search);

        $this->db->limit($limit, $start);
        $query = $this->db->get('patient_material');
        return $query->result();
    }

    function getPatientMaterialById($id) {
        $this->db->where('id', $id);
        $query = $this->db->get('patient_material');
        return $query->row();
    }

    function getPatientMaterialByPatientId($id) {
        $this->db->where('patient', $id);
        $query = $this->db->get('patient_material');
        return $query->result();
    }

    function deletePatientMaterial($id) {
        $this->db->where('id', $id);
        $this->db->delete('patient_material');
    }

    function deleteMedicalHistory($id) {
        $this->db->where('id', $id);
        $this->db->delete('medical_history');
    }

    function updateIonUser($username, $email, $password, $ion_user_id) {
        $uptade_ion_user = array(
            'username' => $username,
            'email' => $email,
            'password' => $password
        );
        $this->db->where('id', $ion_user_id);
        $this->db->update('users', $uptade_ion_user);
    }

    function getDueBalanceByPatientId($patient) {
        $query = $this->db->get_where('payment', array('patient' => $patient))->result();
        $deposits = $this->db->get_where('patient_deposit', array('patient' => $patient))->result();
        $balance = array();
        $deposit_balance = array();
        foreach ($query as $gross) {
            $balance[] = $gross->gross_total;
        }
        $balance = array_sum($balance);


        foreach ($deposits as $deposit) {
            $deposit_balance[] = $deposit->deposited_amount;
        }
        $deposit_balance = array_sum($deposit_balance);



        $bill_balance = $balance;

        return $due_balance = $bill_balance - $deposit_balance;
    }

}
