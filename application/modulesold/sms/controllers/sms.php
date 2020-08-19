<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Sms extends MX_Controller {

    function __construct() {
        parent::__construct();
        $this->load->library('Ion_auth');
        $this->load->library('session');
        $this->load->library('form_validation');
        $this->load->model('sms_model');
        $this->load->model('patient/patient_model');
        $language = $this->db->get('settings')->row()->language;
        $this->lang->load('system_syntax', $language);
        $this->load->model('donor/donor_model');
        $this->load->model('doctor/doctor_model');
        $this->load->model('ion_auth_model');
        if (!$this->ion_auth->logged_in()) {
            redirect('auth/login', 'refresh');
        }
    }

    public function index() {
        $data = array();
        $id = $this->ion_auth->get_user_id();
        $data['settings'] = $this->settings_model->getSettings();
        $data['sgateways'] = $this->sms_model->getSmsSettings();
        $this->load->view('home/dashboard'); // just the header file
        $this->load->view('sgateway', $data);
        $this->load->view('home/footer'); // just the footer file
    }

    public function sendView() {
        $data = array();
        $id   = $this->ion_auth->get_user_id();
        $data['groups']   = $this->donor_model->getBloodBank();
        $data['patients'] = $this->patient_model->getPatient();
        $data['sms']      = $this->sms_model->getSmsSettingsById($id);
        $data['teams']    = $this->doctor_model->getDoctor();
        $this->load->view('home/dashboard'); // just the header file
        $this->load->view('sendview', $data);
        $this->load->view('home/footer'); // just the footer file
    }

    public function settings() {
        //exit;
        $data = array();
        $id   = $this->input->get('id');
        $data['settings'] = $this->sms_model->getSmsSettingsById($id);
        $this->load->view('home/dashboard'); // just the header file
        $this->load->view('settings', $data);
        $this->load->view('home/footer'); // just the footer file
    }

    public function addNewSettings() {

        $id       = $this->input->post('id');
        $username = $this->input->post('username');
        $password = $this->input->post('password');
        $api_id   = $this->input->post('api_id');
        //echo "<pre>";print_r($_POST);exit;
        $this->load->library('form_validation');
        $this->form_validation->set_error_delimiters('<div class="error">', '</div>');
        // Validating Name Field
        $this->form_validation->set_rules('username', 'Username', 'trim|required|min_length[5]|max_length[100]|xss_clean');
        // Validating Password Field
        if (!empty($password)) {
            $this->form_validation->set_rules('password', 'Password', 'trim|required|min_length[5]|max_length[100]|xss_clean');
        }
        // Validating Email Field
        $this->form_validation->set_rules('api_id', 'Api Id', 'trim|required|min_length[5]|max_length[100]|xss_clean');

        if ($this->form_validation->run() == FALSE) {
            $data = array();
            $id   = $this->ion_auth->get_user_id();
            $data['sms'] = $this->sms_model->getSmsSettingsById($id);
            $this->load->view('home/dashboard'); // just the header file
            $this->load->view('settings', $data);
            $this->load->view('home/footer'); // just the footer file
        } else {
            $data = array();
            $data = array(
                'username' => $username,
                'password' => $password,
                'api_id'   => $api_id,
                'user'     => $this->ion_auth->get_user_id()
            );
            if (empty($this->sms_model->getSmsSettingsById($id)->username)) {
                $this->sms_model->addSmsSettings($data);
                $this->session->set_flashdata('feedback', 'Added');
            } else {
                $this->sms_model->updateSmsSettings($id,$data);
                $this->session->set_flashdata('feedback', 'Updated');
            }
            redirect('sms/settings');
        }
    }

    function sendSms($to, $message) {
        $sms_gateway = $this->settings_model->getSettings()->sms_gateway;
        if (!empty($sms_gateway)) {
            $smsSettings = $this->sms_model->getSmsSettingsByGatewayName($sms_gateway);
        } else {
            $this->session->set_flashdata('feedback', lang('gatewany_not_selected'));
            redirect('sms/sendView');
        }

        if ($smsSettings->name == 'Clickatell') {
            $username = $smsSettings->username;
            $password = $smsSettings->password;
            $api_id = $smsSettings->api_id;

            file_get_contents('https://platform.clickatell.com/messages/http/send?apiKey=' . $api_id . '==&to=' . $to . '&content=' . $message);           // file_get_contents('https://platform.clickatell.com/messages/http/send?apiKey='.$api_id.'==&to='.$to.'&content='.$message1);           // file_get_contents('https://api.clickatell.com/http/sendmsg?user=' . $username . '&password=' . $password . '&api_id=' . $api_id . '&to=' . $to . '&text=' . $message1);
        }

        if ($smsSettings->name == 'MSG91') {
            $authkey = $smsSettings->authkey;
            $sender  = $smsSettings->sender;
            file_get_contents('http://api.msg91.com/api/sendhttp.php?route=4&sender=TESTIN&mobiles=fdsfsdfsd&authkey=' . $authkey . '&message=' . $message . '&country=0');           // file_get_contents('https://platform.clickatell.com/messages/http/send?apiKey='.$api_id.'==&to='.$to.'&content='.$message1);           // file_get_contents('https://api.clickatell.com/http/sendmsg?user=' . $username . '&password=' . $password . '&api_id=' . $api_id . '&to=' . $to . '&text=' . $message1);
        }

        if ($smsSettings->name == 'ICTCORE') {
            $m_name   = time();
            $username = $smsSettings->username;
            $password = $smsSettings->password;
            $url      = $smsSettings->api_id;
            if (preg_match("~^0\d+$~", $to)) {
                $to = preg_replace('/0/', '92', $to, 1);
            }else {
                $to =$to;  
            }
                $data = array(
                    'first_name' =>'',
                    'last_name'  =>'',
                    'phone'      =>$to,
                    'email'      =>''
                );
             $ict      = $this;
             $contact_id  = $ict->ictcore($username,$password,$url,'contacts','POST',$data);
              //echo "<pre>";print_r($contact_id);exit;
                $data = array(
                        'name' => $m_name,
                        'data' => $message,
                        'type' => 'utf-8',
                        'description' =>'',
                );
        $text_id  =  $ict->ictcore($username,$password,$url,'messages/texts','POST',$data );
        $data     = array(
                        'name' =>$m_name,
                        'text_id' =>$text_id,
                    );
        $program_id  =  $ict->ictcore($username,$password,$url,'programs/sendsms','POST',$data );

        $data = array(
                        'title' => 'Attendance',
                        //$program_id,
                        'program_id'     =>$program_id,
                        'account_id'     => 1,
                        'contact_id'     => $contact_id,
                        'origin'         => 1,
                        'direction'      => 'outbound',
                    );
        $transmission_id   = $ict->ictcore($username,$password,$url,'transmissions','POST',$data );
        //echo "<pre>";print_r($transmission_id);
        //exit;
        $transmission_send = $ict->ictcore($username,$password,$url,'transmissions/'.$transmission_id.'/send','POST',$data=array() );
        if(!is_array($transmission_send) || !is_object($transmission_send)){
            $transmission_send = 'sended';
        }
            ///$this->ictcore($username,$password,$url,$to, $message);
        }
    }

    function ictcore($username,$password,$url,$method,$req, $arguments = array()){

        //echo $username;
        //echo $password;
        //echo $url;
        //exit;

        //echo "<pre>";print_r();

        
        /*if($method=="transmissions"){
            $data1 = $arguments;

            $title = $data1['title'];
            $program_id = $data1['program_id'];
            $contact_id = $data1['contact_id'];
            $origin = $data1['origin'];
            $direction = $data1['direction'];

            $data2 = array(
                        'title' => $title,
                        //$program_id,
                        'program_id' =>$program_id,
                        'account_id' =>$ictcore_integration->ictcore_account_id,
                        'contact_id' => $contact_id,
                        'origin'     =>$origin,
                        'direction'  => $direction,
                    );
            $arguments = array_replace($data1,$data2);

        }*/

        if($method=="campaigns"){

            $data1 = $arguments;
            $program_id = $data1['program_id'];
            $group_id = $data1['group_id'];
            $delay = $data1['delay'];
            $try_allowed = $data1['try_allowed'];

            $data2 = array(
                            'program_id' => $program_id,
                            'group_id' => $group_id,
                            'delay' => $delay,
                            'try_allowed' => $try_allowed,
                            'account_id' => $ictcore_integration->ictcore_account_id,
                            );

            $arguments = array_replace($data1,$data2);
        }

        $api_username = $username;    // <=== Username at ICTCore
        $api_password = $password;  // <=== Password at ICTCore
        $service_url  =  $url;  //'http://172.17.0.2/ictcore/api'; // <=== URL for ICTCore REST APIs
        $requestType  = $req; // This can be PUT or POST
        $api_url = $service_url.$method;


        $urlaray      = explode('/',$method);
        $curl         = curl_init($api_url);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($curl, CURLOPT_CUSTOMREQUEST,$requestType);
        curl_setopt($curl, CURLOPT_POST, true);
        $post_data = $arguments;
        foreach($arguments as $key => $value) {
            if(is_array($value)){
                $post_data[$key] = json_encode($value);
            } else {
                $post_data[$key] = $value;
            }
        }
        $postData = json_encode($post_data); // Only USE this when request JSON data
        if($requestType =="PUT"  && in_array("media", $urlaray)){
            $fil = file_get_contents($post_data[0]->name);
            curl_setopt($curl, CURLOPT_POSTFIELDS, $fil);
            curl_setopt($curl, CURLOPT_HTTPHEADER, array("X-HTTP-Method-Override: " . $requestType,'Content-Type: audio/x-wav'));
        }else{
            curl_setopt($curl, CURLOPT_POSTFIELDS, $postData);
            curl_setopt($curl, CURLOPT_HTTPHEADER, array("X-HTTP-Method-Override: " . $requestType,'Content-Type: application/json'));
        }
        curl_setopt($curl, CURLOPT_USERPWD,  $api_username.":".$api_password);
        $curl_response = curl_exec($curl);
        curl_close($curl);
        return json_decode($curl_response);  

    }

    function send() {
        $userId = $this->ion_auth->get_user_id();
        $is_v_v = $this->input->post('radio');

        if ($is_v_v == 'allpatient') {
            $patients = $this->patient_model->getpatient();
            foreach ($patients as $patient) {
                $to[] = $patient->phone;
            }
            $recipient = 'All Patient';
        }

        if ($is_v_v == 'alldoctor') {
            $doctors = $this->doctor_model->getDoctor();
            foreach ($doctors as $doctor) {
                $to[] = $doctor->phone;
            }
            $recipient = 'All Doctor';
        }

        if ($is_v_v == 'bloodgroupwise') {
            $blood_group = $this->input->post('bloodgroup');
            $donors = $this->donor_model->getDonor();
            foreach ($donors as $donor) {
                if ($donor->group == $blood_group) {
                    $to[] = $donor->phone;
                }
            }
            $recipient = 'All Blood Donors With Blood Group ' . $blood_group;
        }


        if ($is_v_v == 'single_patient') {
            $patient = $this->input->post('patient');

            $patient_detail = $this->patient_model->getPatientById($patient);
            $single_patient_phone = $patient_detail->phone;
            $recipient = 'Patient Id: ' . $patient_detail->id . '<br> Patient Name: ' . $patient_detail->name . '<br> Patient Phone: ' . $patient_detail->phone;
        }

        if (!empty($single_patient_phone)) {
            $to = $single_patient_phone;
        } else {
            if (!empty($to)) {
                $to = implode(',', $to);
            }
        }
        // $message = urlencode("Test Message");
        if (!empty($to)) {
            $message  = $this->input->post('message');
            $message1 = urlencode($message);
            $this->sendSms($to, $message);
            $data = array();
            $date = time();
            $data = array(
                'message' => $message,
                'date' => $date,
                'recipient' => $recipient,
                'user' => $this->ion_auth->get_user_id()
            );
            $this->sms_model->insertSms($data);
            $this->session->set_flashdata('feedback', 'Message Sent');
        } else {
            $this->session->set_flashdata('feedback', 'Not Sent');
        }
        redirect('sms/sendView');
    }

    function appointmentReminder() {
        $id = $this->input->post('id');
        $appointment_details = $this->appointment_model->getAppointmentById($id);
        $smsSettings = $this->sms_model->getSmsSettings();
        $username = $smsSettings->username;
        $password = $smsSettings->password;
        $api_id = $smsSettings->api_id;

        $patient_detail = $this->patient_model->getPatientById($appointment_details->patient);
        $doctor_detail = $this->doctor_model->getDoctorById($appointment_details->doctor);
        $recipient_p = 'Patient Id: ' . $patient_detail->id . '<br> Patient Name: ' . $patient_detail->name . '<br> Patient Phone: ' . $patient_detail->phone;
        $to = $patient_detail->phone;

        // $message = urlencode("Test Message");
        if (!empty($to)) {
            $message = 'Reminder: Appointment is scheduled for you With Doctor ' . $doctor_detail->name . ' Date: ' . date('d-m-Y', $appointment_details->date) . ' Time: ' . $appointment_details->s_time;
            $message1 = urlencode($message);
            $this->sendSms($to, $message);
            $data_p = array();
            $date = time();
            $data_p = array(
                'message' => $message,
                'date' => $date,
                'recipient' => $recipient_p,
                'user' => $this->ion_auth->get_user_id()
            );
            $this->sms_model->insertSms($data_p);
            $this->session->set_flashdata('feedback', 'Message Sent');
        }

        redirect('appointment/upcoming');
    }

    function sendSmsDuringAppointment($patient, $doctor, $date, $s_time, $e_time) {
        $smsSettings = $this->sms_model->getSmsSettings();
        $username = $smsSettings->username;
        $password = $smsSettings->password;
        $api_id = $smsSettings->api_id;

        $patient_detail = $this->patient_model->getPatientById($patient);
        $doctor_detail = $this->doctor_model->getDoctorById($doctor);

        $recipient_p = 'Patient Id: ' . $patient_detail->id . '<br> Patient Name: ' . $patient_detail->name . '<br> Patient Phone: ' . $patient_detail->phone;
        $recipient_d = 'Doctor Id: ' . $doctor_detail->id . '<br> Patient Name: ' . $doctor_detail->name . '<br> Doctor Phone: ' . $doctor_detail->phone;


        $to = $patient_detail->phone . ', ' . $doctor_detail->phone;

        // $message = urlencode("Test Message");
        if (!empty($patient)) {
            $to = $patient_detail->phone;
            $message = 'Appointment is scheduled for you With Doctor ' . $doctor_detail->name . ' Date: ' . date('d-m-Y', $date) . ' Time: ' . $s_time;
            $message1 = urlencode($message);
            $this->sendSms($to, $message);
            $data_p = array();
            $date = time();
            $data_p = array(
                'message' => $message,
                'date' => $date,
                'recipient' => $recipient_p,
                'user' => $this->ion_auth->get_user_id()
            );
            $this->sms_model->insertSms($data_p);
        }

        if (!empty($doctor)) {
            $to = $doctor_detail->phone;
            $message = 'Appointment is scheduled for you With Patient ' . $patient_detail->name . ' Date: ' . date('d-m-Y', $date) . ' Time: ' . $s_time;
            $message1 = urlencode($message);
            $this->sendSms($to, $message);
            $data_d = array();
            $date = time();
            $data_d = array(
                'message' => $message,
                'date' => $date,
                'recipient' => $recipient_d,
                'user' => $this->ion_auth->get_user_id()
            );
            $this->sms_model->insertSms($data_d);
        }
    }

    function labstatus($to,$message,$date){
        $this->sendSms($to, $message);
        //$recipient_d = 'Doctor Id: ' . $doctor_detail->id . '<br> Patient Name: ' . $doctor_detail->name . '<br> Doctor Phone: ' . $doctor_detail->phone;
        $data_d = array(
                'message' => $message,
                'date' => $date,
                'recipient' => '',
                'user' => $this->ion_auth->get_user_id()
            );
            $this->sms_model->insertSms($data_d);

    }

    function appointmentApproved() {
        $id = $this->input->post('id');
        $appointment_details = $this->appointment_model->getAppointmentById($id);
        $smsSettings = $this->sms_model->getSmsSettings();
        $username = $smsSettings->username;
        $password = $smsSettings->password;
        $api_id = $smsSettings->api_id;

        $patient_detail = $this->patient_model->getPatientById($appointment_details->patient);
        $doctor_detail = $this->doctor_model->getDoctorById($appointment_details->doctor);
        $recipient_p = 'Patient Id: ' . $patient_detail->id . '<br> Patient Name: ' . $patient_detail->name . '<br> Patient Phone: ' . $patient_detail->phone;
        $to = $patient_detail->phone;

        // $message = urlencode("Test Message");
        if (!empty($to)) {
            $message = 'Approval: Appointment is scheduled for you With Doctor ' . $doctor_detail->name . ' Date: ' . date('d-m-Y', $appointment_details->date) . ' Time: ' . $appointment_details->s_time;
            $message1 = urlencode($message);
            $this->sendSms($to, $message);
            $data_p = array();
            $date = time();
            $data_p = array(
                'message' => $message,
                'date' => $date,
                'recipient' => $recipient_p,
                'user' => $this->ion_auth->get_user_id()
            );
            $this->sms_model->insertSms($data_p);
        }
    }

    function sendSmsDuringPayment($patient, $amount, $date) {
        $smsSettings = $this->sms_model->getSmsSettings();
        $username = $smsSettings->username;
        $password = $smsSettings->password;
        $api_id = $smsSettings->api_id;

        $patient_detail = $this->patient_model->getPatientById($patient);

        $recipient_p = 'Patient Id: ' . $patient_detail->id . '<br> Patient Name: ' . $patient_detail->name . '<br> Patient Phone: ' . $patient_detail->phone;

        // $message = urlencode("Test Message");
        if (!empty($patient)) {
            $to = $patient_detail->phone;
            $message = 'Bill For Patient ' . $patient_detail->name . 'Amount: ' . $amount . ' Date: ' . date('d-m-Y', $date);
            $message1 = urlencode($message);
            $this->sendSms($to, $message);
            $data_p = array();
            $date = time();
            $data_p = array(
                'message' => $message,
                'date' => $date,
                'recipient' => $recipient_p,
                'user' => $this->ion_auth->get_user_id()
            );
            $this->sms_model->insertSms($data_p);
        }
    }

    function sendSmsDuringPatientRegistration($patient) {
        $smsSettings = $this->sms_model->getSmsSettings();
        $username = $smsSettings->username;
        $password = $smsSettings->password;
        $api_id = $smsSettings->api_id;

        $patient_detail = $this->patient_model->getPatientById($patient);

        $recipient_p = 'Patient Id: ' . $patient_detail->id . '<br> Patient Name: ' . $patient_detail->name . '<br> Patient Phone: ' . $patient_detail->phone;

        // $message = urlencode("Test Message");
        if (!empty($patient)) {
            $to = $patient_detail->phone;
            $message = 'Patient Registration' . $patient_detail->name . 'is successfully registerred';
            $message1 = urlencode($message);
            $this->sendSms($to, $message);
            $data_p = array();
            $date = time();
            $data_p = array(
                'message' => $message,
                'date' => $date,
                'recipient' => $recipient_p,
                'user' => $this->ion_auth->get_user_id()
            );
            $this->sms_model->insertSms($data_p);
        }
    }

    function sent() {
        if ($this->ion_auth->in_group(array('admin'))) {
            $data['sents'] = $this->sms_model->getSms();
        } else {
            $current_user_id = $this->ion_auth->user()->row()->id;
            $data['sents'] = $this->sms_model->getSmsByUser($current_user_id);
        }

        $this->load->view('home/dashboard');
        $this->load->view('sms', $data);
        $this->load->view('home/footer');
    }

    function delete() {
        $id = $this->input->get('id');
        $this->sms_model->delete($id);
        $this->session->set_flashdata('feedback', 'Deleted');
        redirect('sms/sent');
    }

}

/* End of file profile.php */
/* Location: ./application/modules/profile/controllers/profile.php */
