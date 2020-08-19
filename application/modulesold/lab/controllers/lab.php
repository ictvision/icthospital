<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Lab extends MX_Controller {

    function __construct() {
        parent::__construct();
        $this->load->library('Ion_auth');
        $this->load->library('session');
        $this->load->library('form_validation');
        $this->load->library('upload');
        $this->load->model('lab_model');
        $this->load->model('finance/finance_model');
        $this->load->model('doctor/doctor_model');

        $language = $this->db->get('settings')->row()->language;

        $this->lang->load('system_syntax', $language);
        $this->load->model('patient/patient_model');
        $this->load->model('accountant/accountant_model');
        $this->load->model('receptionist/receptionist_model');
        $this->load->model('settings/settings_model');
        $this->load->model('doctor/doctor_model');
        $this->load->module('sms');
        $this->load->model('sms/sms_model');
        $this->load->helper('mem_helper');
        if (!$this->ion_auth->logged_in()) {

            redirect('auth/login', 'refresh');
        }
        if (!$this->ion_auth->in_group(array('admin', 'Accountant', 'Receptionist', 'Nurse', 'Laboratorist', 'Doctor', 'Patient'))) {
            redirect('home/permission');
        }
    }

    public function index() {

        if (!$this->ion_auth->logged_in()) {
            redirect('auth/login', 'refresh');
        }

        if ($this->ion_auth->in_group(array('Receptionist'))) {
            redirect('lab/lab1');
        }

        $id     = $this->input->get('id');
        $status = $this->input->get('status');

        $data['settings'] = $this->settings_model->getSettings();
        $data['labs']     = $this->lab_model->getLab();
        //echo "<pre>";print_r($data['labs']);exit;
        if (!empty($id)) {
            $data['lab_single'] = $this->lab_model->getLabById($id);
        }
        $lab            = $this->lab_model->getLabById($id);
        //echo "<pre>";print_r($lab );
         $temp_date = array();
        if (!empty($id)) {
            $cat_ids = explode(',',$lab->category_name);
            $this->db->select('*');
            $this->db->from('template');
            $this->db->where_in('procedure_id',$cat_ids);
               // $this->db->order_by('date','DESC');
            $query = $this->db->get();
            $query_result = $query->result();
            //echo "<pre>";print_r($query_result);
               // $token =  $query->row();
           // echo "<pre>";print_r($query_result);
            foreach($query_result as $temp){

                $this->db->select('*');
                $this->db->from('test_items');
                $this->db->where('lab_id',$temp->id);
                // $this->db->order_by('date','DESC');
                $query             = $this->db->get();
                $query_item_result = $query->result();
               
                foreach($query_item_result as $items ){

                   $temp_date[$temp->name][]  = $items;
                }
            }
        }
        $data['temp_date'] = $temp_date;
        $data['report_date'] = $this->lab_model->getLabreport($id);

        /*foreach($data['report_date'] as $key=>$var){
       
            //echo "<pre>";print_r($data['report_date'][$key+1]->test_cat);
           //echo $var->test_cat;
           // echo "uii".$data['report_date'][$key+1]."989";
          //array_unique($rte['test_cat']);
            if($var->test_cat!=$data['report_date'][$key+1]->test_cat){
                     echo "<br>".$var->test_cat."<br>";
            }
           // $new = $rte['test_cat'];
            //$new = $rte['test_cat'];
        }*/
        //echo "<pre>ff";print_r( $data['report_date']);

        //exit;
        if (!empty($id) && !empty($status)) {

                //echo "update status".$status;
            
            $patient_id     = $this->patient_model->getPatientById($lab->patient);//$this->db->get_where('patient', array('id' =>  $lab->patient))->row()->id;
                //echo "<pre>";print_r($patient_id);exit;
            $data['status'] = $this->lab_model->updatestatus($id,$status);
                // $patient_user_id = $this->db->get_where('patient', array('email' => $p_email))->row()->id;
            $message        = "testing";
            $date = date('Y-m-d H:i:s');
            if($status==''){
                $message = 'blood simple taken please waite while report is ready';
            }
            if($status=='ready'){
                $message = 'your report ready please pick your report';
            }
            if($status=='delivered'){
                $message = 'your report delivered';
            }
            $snd = $this->sms->labstatus($patient_id->phone , $message , $date);
                //echo "<pre>";print_r($snd);exit;
            $this->session->set_flashdata('feedback', 'Status Updated');
             redirect('lab');
        }

        $data['templates']  = $this->lab_model->getTemplate();
        $data['settings']   = $this->settings_model->getSettings();
        $data['categories'] = $this->lab_model->getLabCategory();
        $data['patients']   = $this->patient_model->getPatient();
        $data['doctors']    = $this->doctor_model->getDoctor();
       //echo "<pre>";print_r($data);exit;
        $this->load->view('home/dashboard'); // just the header file
        $this->load->view('lab', $data);
        $this->load->view('home/footer'); // just the header file
    }

    public function lab() {
        if (!$this->ion_auth->logged_in()) {
            redirect('auth/login', 'refresh');
        }
       
        $id                 = $this->input->get('id');
        $data['templates']  = $this->lab_model->getTemplate();
        $data['settings']   = $this->settings_model->getSettings();
        $data['categories'] = $this->lab_model->getLabCategory();
        $data['patients']   = $this->patient_model->getPatient();
        $data['doctors']    = $this->doctor_model->getDoctor();
        $data['settings']   = $this->settings_model->getSettings();
        $data['labs']       = $this->lab_model->getLab();

        if (!empty($id)) {
            $this->load->view('home/dashboard'); // just the header file
            $this->load->view('add_lab_view', $data);
            $this->load->view('home/footer'); // just the header file
        } else {
            $this->load->view('home/dashboard'); // just the header file
            $this->load->view('lab', $data);
            $this->load->view('home/footer'); // just the header file
        }
    }

    public function lab1() {

        if (!$this->ion_auth->logged_in()) {
            redirect('auth/login', 'refresh');
        }

        $id               = $this->input->get('id');
        $data['settings'] = $this->settings_model->getSettings();
        $data['labs']     = $this->lab_model->getLab();

        if (!empty($id)) {
            $data['lab_single'] = $this->lab_model->getLabById($id);
        }

        $data['templates']  = $this->lab_model->getTemplate();
        $data['settings']   = $this->settings_model->getSettings();
        $data['categories'] = $this->lab_model->getLabCategory();
        $data['patients']   = $this->patient_model->getPatient();
        $data['doctors']    = $this->doctor_model->getDoctor();

        $this->load->view('home/dashboard'); // just the header file
        $this->load->view('lab_1', $data);
        $this->load->view('home/footer'); // just the header file
    }

    public function addLabView() {
        $data = array();
        $id   = $this->input->get('id');

        if (!empty($id)) {
            $data['lab']         = $this->lab_model->getLabById($id);
        }
        $data['templates']       = $this->lab_model->getTemplate();
            // $data['settings']   = $this->settings_model->getSettings();
        $data['categories_lab']  = $this->lab_model->getLabCategory();

           //echo "<pre>";print_r( $data['categories_lab']);exit;
          //$data['patients']   = $this->patient_model->getPatient();
          // $data['doctors']    = $this->doctor_model->getDoctor();

        $data['discount_type'] = $this->finance_model->getDiscountType();
        $data['settings']      = $this->settings_model->getSettings();
        $data['categories']    = $this->finance_model->getPaymentCategory();
        

        $data['patients']      = $this->patient_model->getPatient();
        $data['doctors']       = $this->doctor_model->getDoctor();

        $this->load->view('home/dashboard'); // just the header file
        $this->load->view('add_lab_view', $data);
        $this->load->view('home/footer'); // just the header file
    }

    public function addLab(){

        $cats  = $this->input->post('cat');
        $name = $this->input->post('name');
        $m_val = $this->input->post('male_value');
        $f_val = $this->input->post('female_value');
        $unit = $this->input->post('unit');
        $lresult = $this->input->post('result');

        

        //exit;
        $id                = $this->input->post('id');
       // exit;
        $item_selected     = array();
        $quantity          = array();
        $category_selected = array();
        // $amount_by_category = $this->input->post('category_amount');
        $category_selected = $this->input->post('category_name');
        //echo "<pre>";print_r($category_selected);//exit;
        $item_selected     = $this->input->post('category_id');
        $quantity          = $this->input->post('quantity');
        $remarks           = $this->input->post('remarks');

        if (empty($item_selected)) {
            $this->session->set_flashdata('feedback', 'Select a Item');
            redirect('lab/addLabView');
        } else {
            $item_quantity_array = array();
            $item_quantity_array = array_combine($item_selected, $quantity);
        }



        $cat_and_price = array();

         //echo "<pre>";print_r($item_quantity_array);exit;
        if ( !empty($item_quantity_array)) {
            foreach ($item_quantity_array as $key => $value) {

                $current_item         = $this->finance_model->getPaymentCategoryById($key);
                $category_price       = $current_item->c_price;
                $category_type        = $current_item->type;
                $qty                  = $value;
                $cat_and_price[]      = $key . '*' . $category_price . '*' . $category_type . '*' . $qty;
                $procedure_id[]       = $key;
                $amount_by_category[] = $category_price * $qty;

            }
             $category_name = implode(',', $cat_and_price);
            $category_ids = implode(',', $item_selected);

            //exit;
        } else {
            $this->session->set_flashdata('feedback', 'Atend The Required Fields');
            //echo "heloo";
            redirect('finance/addPaymentView');
        }
        
        $sql = "SELECT * FROM template WHERE procedure_id IN(".implode(',', $procedure_id).")";
         
        $get_temp_id = $this->db->query($sql);
        //echo "<pre>";print_r($get_temp_id->result());
        $patient     = $this->input->post('patient');

        $p_name  = $this->input->post('p_name');
        $p_email = $this->input->post('p_email');
        if (empty($p_email)) {
            $p_email = $p_name . '-' . rand(1, 1000) . '-' . $p_name . '-' . rand(1, 1000) . '@example.com';
        }
        if (!empty($p_name)) {
            $password = $p_name . '-' . rand(1, 100000000);
        }
        $p_phone  = $this->input->post('phone');
        $p_age    = $this->input->post('age');
        $p_gender = $this->input->post('p_gender');
        $add_date = date('m/d/y');


        $patient_id = rand(10000, 1000000);



        $d_name  = $this->input->post('d_name');
        $d_email = $this->input->post('d_email');
        if (empty($d_email)) {
            $d_email = $d_name . '-' . rand(1, 1000) . '-' . $d_name . '-' . rand(1, 1000) . '@example.com';
        }
        if (!empty($d_name)) {
            $password = $d_name . '-' . rand(1, 100000000);
        }
        $d_phone = $this->input->post('d_phone');

        $doctor  = $this->input->post('doctor');
        $date    = time();
        $date_string = date('d-m-y', $date);
        $discount = $this->input->post('discount');
        $amount_received = $this->input->post('amount_received');
        $deposit_type = $this->input->post('deposit_type');
        $user = $this->ion_auth->get_user_id();

        $this->load->library('form_validation');
        $this->form_validation->set_error_delimiters('<div class="error">', '</div>');

        // Validating Category Field
        // $this->form_validation->set_rules('category_amount[]', 'Category', 'min_length[1]|max_length[100]');
        // Validating Price Field
        if($patient=="add_new"){
                    $this->form_validation->set_rules('cnic', 'Cnic', 'trim|required|min_length[1]|max_length[100]|xss_clean');
                    $this->form_validation->set_rules('phone', 'Phone', 'trim|required|min_length[1]|max_length[100]|xss_clean');
                    $this->form_validation->set_rules('age', 'Age', 'trim|required|min_length[1]|max_length[100]|xss_clean');

        }
        $this->form_validation->set_rules('patient', 'Patient', 'trim|required|min_length[1]|max_length[100]|xss_clean');
            // Validating Price Field
        $this->form_validation->set_rules('discount', 'Discount', 'trim|min_length[1]|max_length[100]|xss_clean');

        if ($this->form_validation->run() == FALSE) {
            //redirect('finance/addPaymentView');
            redirect('lab/addLabView');
             $data = array();
        $id   = $this->input->get('id');

        if (!empty($id)) {
            $data['lab'] = $this->lab_model->getLabById($id);
        }

        $data['templates']      = $this->lab_model->getTemplate();
       // $data['settings']     = $this->settings_model->getSettings();
        $data['categories_lab'] = $this->lab_model->getLabCategory();
        //$data['patients']     = $this->patient_model->getPatient();
       // $data['doctors']      = $this->doctor_model->getDoctor();

        $data['discount_type']  = $this->finance_model->getDiscountType();
        $data['settings']       = $this->settings_model->getSettings();
        $data['categories']     = $this->finance_model->getPaymentCategory();
        $data['patients']       = $this->patient_model->getPatient();
        $data['doctors']        = $this->doctor_model->getDoctor();

        $this->load->view('home/dashboard'); // just the header file
        $this->load->view('add_lab_view', $data);
        $this->load->view('home/footer'); // just the header file
        } else {
            if (!empty($p_name)) {

                $data_p = array(
                    'patient_id'  => $patient_id,
                    'name'        => $p_name,
                    'email'       => $p_email,
                    'phone'       => $p_phone,
                    'sex'         => $p_gender,
                    'age'         => $p_age,
                    'add_date'    => $add_date,
                    'cnic'        => $this->input->post('cnic'),
                    'father_name' => $this->input->post('gardian'),
                    'how_added'   => 'from_pos'
                );
                $username = $this->input->post('p_name');
                // Adding New Patient
                if ($this->ion_auth->email_check($p_email)) {
                    $this->session->set_flashdata('feedback', 'This Email Address Is Already Registered');
                    redirect('lab/addLabView');
                } else {
                    $dfg = 5;
                    $this->ion_auth->register($username, $password, $p_email, $dfg);
                    $ion_user_id = $this->db->get_where('users', array('email' => $p_email))->row()->id;
                    $this->patient_model->insertPatient($data_p);
                    $patient_user_id = $this->db->get_where('patient', array('email' => $p_email))->row()->id;
                    $id_info = array('ion_user_id' => $ion_user_id);
                    $this->patient_model->updatePatient($patient_user_id, $id_info);
                   
                }
            //    }
            }

            if (!empty($d_name)) {

                $data_d = array(
                    'name'  => $d_name,
                    'email' => $d_email,
                    'phone' => $d_phone,
                );
                $username = $this->input->post('d_name');
                // Adding New Patient
                if ($this->ion_auth->email_check($d_email)) {
                    $this->session->set_flashdata('feedback', 'This Email Address Is Already Registered');
                } else {
                    $dfgg = 4;
                    $this->ion_auth->register($username, $password, $d_email, $dfgg);
                    $ion_user_id = $this->db->get_where('users', array('email' => $d_email))->row()->id;
                    $this->doctor_model->insertDoctor($data_d);
                    $doctor_user_id = $this->db->get_where('doctor', array('email' => $d_email))->row()->id;
                    $id_info = array('ion_user_id' => $ion_user_id);
                    $this->doctor_model->updateDoctor($doctor_user_id, $id_info);
                }
            }
 //echo "adee;";exit;

            if ($patient == 'add_new') {
                $patient = $patient_user_id;
            }

            if ($doctor == 'add_new') {
                $doctor = $doctor_user_id;
            }


            $amount        = array_sum($amount_by_category);
            $sub_total     = $amount;
            $discount_type = $this->finance_model->getDiscountType();

            if (!empty($doctor)) {
                $all_cat_name = explode(',', $category_name);
                //echo "<pre>";print_r($all_cat_name);exit;
                foreach ($all_cat_name as $indiviual_cat_nam) {
                    $indiviual_cat_nam1 = explode('*', $indiviual_cat_nam);
                    $qty = $indiviual_cat_nam1[3];
                    $d_commission = $this->finance_model->getPaymentCategoryById($indiviual_cat_nam1[0])->d_commission;
                    $h_commission = 100 - $d_commission;
                    $hospital_amount_per_unit = $indiviual_cat_nam1[1] * $h_commission / 100;
                    $hospital_amount_by_category[] = $hospital_amount_per_unit * $qty;
                }
                $hospital_amount = array_sum($hospital_amount_by_category);
                if ($discount_type == 'flat') {
                    $flat_discount = $discount;
                    $gross_total = $sub_total - $flat_discount;
                    $doctor_amount = $amount - $hospital_amount - $flat_discount;
                } else {
                    $flat_discount = $sub_total * ($discount / 100);
                    $gross_total = $sub_total - $flat_discount;
                    $doctor_amount = $amount - $hospital_amount - $flat_discount;
                }
            } else {
                //echo "<pre>hgh";print_r($category_name);exit;
                $doctor_amount       = '0';
                if ($discount_type  == 'flat') {
                    $flat_discount   = $discount;
                    $gross_total     = $sub_total - $flat_discount;
                    $hospital_amount = $gross_total;
                } else {
                    $flat_discount   = $amount * ($discount / 100);
                    $gross_total     = $sub_total - $flat_discount;
                    $hospital_amount = $gross_total;
                }
            }
            $data = array();

            if (!empty($patient)) {
                $patient_details = $this->patient_model->getPatientById($patient);
                $patient_name    = $patient_details->name;
                $patient_phone   = $patient_details->phone;
                $patient_address = $patient_details->address;
            } else {
                $patient_name    = 0;
                $patient_phone   = 0;
                $patient_address = 0;
            }

            if (!empty($doctor)) {
                $doctor_details = $this->doctor_model->getDoctorById($doctor);
                $doctor_name    = $doctor_details->name;
            } else {
                $doctor_name    = 0;
            }

            if (empty($id)) {
                $data = array(
                    'category_name'   => $category_name,
                    'patient'         => $patient,
                    'date'            => $date,
                    'amount'          => $sub_total,
                    'doctor'          => $doctor,
                    'discount'        => $discount,
                    'flat_discount'   => $flat_discount,
                    'gross_total'     => $gross_total,
                    'status'          => 'unpaid',
                    'hospital_amount' => $hospital_amount,
                    'doctor_amount'   => $doctor_amount,
                    'user'            => $user,
                    'patient_name'    => $patient_name,
                    'patient_phone'   => $patient_phone,
                    'patient_address' => $patient_address,
                    'doctor_name'     => $doctor_name,
                    'date_string'     => $date_string,
                    'remarks'         => $remarks
                );


                $this->finance_model->insertPayment($data);
                $inserted_id = $this->db->insert_id();

                if ($deposit_type == 'Card') {
                    $gateway = $this->settings_model->getSettings()->payment_gateway;
                    if ($gateway == 'PayPal') {

                        $card_type   = $this->input->post('card_type');
                        $card_number = $this->input->post('card_number');
                        $expire_date = $this->input->post('expire_date');
                        $cvv         = $this->input->post('cvv');

                        $all_details = array(

                            'patient'          => $patient,
                            'date'             => $date,
                            'amount'           => $sub_total,
                            'doctor'           => $doctor,
                            'discount'         => $discount,
                            'flat_discount'    => $flat_discount,
                            'gross_total'      => $gross_total,
                            'status'           => 'unpaid',
                            'hospital_amount'  => $hospital_amount,
                            'doctor_amount'    => $doctor_amount,
                            'patient_name'     => $patient_name,
                            'patient_phone'    => $patient_phone,
                            'patient_address'  => $patient_address,
                            'doctor_name'      => $doctor_name,
                            'date_string'      => $date_string,
                            'remarks'          => $remarks,
                            'deposited_amount' => $amount_received,
                            'payment_id'       => $inserted_id,
                            'card_type'        => $card_type,
                            'card_number'      => $card_number,
                            'expire_date'      => $expire_date,
                            'cvv'              => $cvv,
                            'from'             => 'pos',
                            'user'             => $user
                        );
                        //    $data_payments['all_details'] = $all_details;
                        //    $this->load->view('home/dashboard'); // just the header file
                        //    $this->load->view('paypal/confirmation', $data_payments);
                        //    $this->load->view('home/footer'); // just the header file
                        $this->paypal->Do_direct_payment($all_details);
                    } elseif ($gateway == 'Pay U Money') {
                        redirect("payu/check1?deposited_amount=" . "$amount_received" . '&payment_id=' . $inserted_id);
                    } else {
                        $this->session->set_flashdata('feedback', 'Payment failed. No Gateway Selected');
                        redirect("finance/invoice?id=" . "$inserted_id");
                    }
                } else {
                    $data1 = array(
                        'date'               => $date,
                        'patient'            => $patient,
                        'deposited_amount'   => $amount_received,
                        'payment_id'         => $inserted_id,
                        'amount_received_id' => $inserted_id . '.' . 'gp',
                        'deposit_type'       => $deposit_type,
                        'user'               => $user
                    );
                    $this->finance_model->insertDeposit($data1);

                    $data_payment = array('amount_received' => $amount_received, 'deposit_type' => $deposit_type);
                    $this->finance_model->updatePayment($inserted_id, $data_payment);

                    $this->session->set_flashdata('feedback', 'Added');
                    //exit;
                   // redirect("finance/invoice?id=" . "$inserted_id");
                }
            } else {
                $deposit_edit_amount = $this->input->post('deposit_edit_amount');
                $deposit_edit_id = $this->input->post('deposit_edit_id');
                if (!empty($deposit_edit_amount)) {
                    $deposited_edit = array_combine($deposit_edit_id, $deposit_edit_amount);
                    foreach ($deposited_edit as $key_deposit => $value_deposit) {
                        $data_deposit = array(
                            'deposited_amount' => $value_deposit
                        );
                        $this->finance_model->updateDeposit($key_deposit, $data_deposit);
                    }
                }


                $a_r_i = $id . '.' . 'gp';
                $deposit_id = $this->db->get_where('patient_deposit', array('amount_received_id' => $a_r_i))->row();

                $data = array(
                    'category_name'   => $category_name,
                    'patient'         => $patient,
                    'doctor'          => $doctor,
                    'amount'          => $sub_total,
                    'discount'        => $discount,
                    'flat_discount'   => $flat_discount,
                    'gross_total'     => $gross_total,
                    'amount_received' => $amount_received,
                    'hospital_amount' => $hospital_amount,
                    'doctor_amount'   => $doctor_amount,
                    'user'            => $user,
                    'patient_name'    => $patient_details->name,
                    'patient_phone'   => $patient_details->phone,
                    'patient_address' => $patient_details->address,
                    'doctor_name'     => $doctor_details->name,
                    'remarks'         => $remarks
                );

                if (!empty($deposit_id->id)) {
                    $data1 = array(
                        'date'             => $date,
                        'patient'          => $patient,
                        'payment_id'       => $id,
                        'deposited_amount' => $amount_received,
                        'user'             => $user
                    );
                    $this->finance_model->updateDeposit($deposit_id->id, $data1);
                } else {
                    $data1 = array(
                        'date'               => $date,
                        'patient'            => $patient,
                        'payment_id'         => $id,
                        'deposited_amount'   => $amount_received,
                        'amount_received_id' => $id . '.' . 'gp',
                        'user'               => $user
                    );
                    $this->finance_model->insertDeposit($data1);
                }
                    $this->finance_model->updatePayment($id, $data);
                /*$this->session->set_flashdata('feedback', 'Updated');
                redirect("finance/invoice?id=" . "$id");*/
            }
             $date_string = date('d-m-y', $date);
             $add_date    = date('d-m-y');
             $date        = $this->input->post('date');
             $report      = $this->input->post('report_date');
             
             $date        = $this->input->post('date');
                if (!empty($date)) {
                    $date = strtotime($date);
                } else {
                    $date = time();
                }

                if (!empty($report)) {
                    $report  = strtotime($report);
                } else {
                    $report  = time();
                }
                $date_string = date('d-m-y', $date);

             /*if (!empty($patient)) {
                $patient_details = $this->patient_model->getPatientById($patient);
                $patient_name    = $patient_details->name;
                $patient_phone   = $patient_details->phone;
                $patient_address = $patient_details->address;
            } else {
                $patient_name = 0;
                $patient_phone = 0;
                $patient_address = 0;
            }*/
            if(!empty($get_temp_id->result())){
                foreach($get_temp_id->result() as $temp){
                   $rep_tem[] = $temp->template;
                }
                $temp_emp = implode('',$rep_tem);

                        $this->db->select('*');
                        $this->db->from('lab');
                        $this->db->where('date_string',$date_string);
                        $this->db->order_by('date','DESC');
                        $query = $this->db->get();
                       

                 if (empty($id)) {

                        $token  =  $query->num_rows() +1;
                       
                        //exit;

                        $data = array(
                            'category_name'    => $category_ids,
                            //'report'         => $temp_emp,
                            'patient'          => $patient,
                            'date'             => $date,
                            'doctor'           => $doctor,
                            'user'             => $user,
                            'patient_name'     => $patient_name,
                            'patient_phone'    => $patient_phone,
                            'patient_address'  => $patient_address,
                            'doctor_name'      => $doctor_name,
                            'date_string'      => $date_string,
                            'report_date'      => $report ,
                            'invoice_id'       => $inserted_id ,
                            'token_no'         => $token ,
                        );


                        $this->lab_model->insertLab($data);
                     $lab_id = $this->db->insert_id();
//exit;

                        foreach($cats as $cat){
                            $j = 0;
                            foreach($lresult as $res){
                               $j++;
                                if(!empty($name[$j][$cat]) ){
                                    echo 'name= '.'===='.$cat.'====='.$name[$j][$cat]."<br>";
                                    echo 'm_val= '.$m_val[$j][$cat]."<br>";
                                    echo 'f_val= '.$f_val[$j][$cat]."<br>";
                                    echo 'unit= '.$unit[$j][$cat]."<br>";
                                    echo 'lresult= '.$lresult[$j][$cat]."<br>";
                                    $lab_report_date = array(
                                                                'report_id'=>$lab_id,
                                                                'name'=>$name[$j][$cat],
                                                                'm_val'=>$m_val[$j][$cat],
                                                                'f_val'=>$f_val[$j][$cat],
                                                                'result'=>$lresult[$j][$cat],
                                                                'test_cat'=>$cat,
                                                                
                                                            );
                                    $this->lab_model->insertLabreport($lab_report_date);
                                    $lab_id = $this->db->insert_id();
                                }
                            }
                        }

                        $this->session->set_flashdata('feedback', 'Added878');
                        //redirect($redirect);
                        redirect("finance/invoice?id=" . "$inserted_id&date=".$date."&report_date=".$report."&token=".$token."&lab=yes&lab_id=".$lab_id);
                    } else {
                        //$token =  $query->num_rows();
                        $lab_id = $this->input->post('lab_id');
                        $this->db->select('*');
                        $this->db->from('lab');
                        $this->db->where('id',$lab_id);
                       // $this->db->order_by('date','DESC');
                        $query = $this->db->get();
                        $token =  $query->row();
                        $data  = array(
                            'category_name' =>  $category_ids,
                            //'report'          => $temp_emp,
                            'patient'         => $patient,
                            'doctor'          => $doctor,
                            'user'            => $user,
                            'patient_name'    => $patient_details->name,
                            'patient_phone'   => $patient_details->phone,
                            'patient_address' => $patient_details->address,
                            'doctor_name'     => $doctor_details->name,
                            'report_date'     => $report ,
                            //'invoice_id'       => $inserted_id 
                        );
                        $this->lab_model->updateLab($id, $data);
                        $this->session->set_flashdata('feedback', 'Updated');
                        //redirect($redirect);
                        redirect("finance/invoice?id=".$token->invoice_id."&date=".$date."&report_date=".$report."&token=".$token->token_no."&lab=yes&lab_id=".$lab_id);
                    }
            }
        }
    }


     function editlabreport(){

        //echo "<pre>";print_r($_POST);//exit;

        $cats    = $this->input->post('cat');
       // echo "<pre>";print_r($cats );exit;
        $name    = $this->input->post('name');
        $m_val   = $this->input->post('male_value');
        $f_val   = $this->input->post('female_value');
        $unit    = $this->input->post('unit');
        $lresult = $this->input->post('result');

        $patient = $this->input->post('patient');
        $sample_picker = $this->input->post('picker_name');
        $sample_no = $this->input->post('sample_no');

        //exit;
        $id                = $this->input->post('id');
         $lab_id = $this->input->post('lab_id');
       // exit;
        $item_selected     = array();
        $quantity          = array();
        $category_selected = array();
        // $amount_by_category = $this->input->post('category_amount');
        $category_selected = $this->input->post('category_name');
        //echo "<pre>";print_r($category_selected);//exit;
        $item_selected     = $this->input->post('category_id');
        $quantity          = $this->input->post('quantity');
        $remarks           = $this->input->post('remarks');
        $user              = $this->ion_auth->get_user_id();
        $doctor            = $this->input->post('doctor');
        if (!empty($patient)) {
                $patient_details = $this->patient_model->getPatientById($patient);
                $patient_name    = $patient_details->name;
                $patient_phone   = $patient_details->phone;
                $patient_address = $patient_details->address;
            } else {
                $patient_name    = 0;
                $patient_phone   = 0;
                $patient_address = 0;
            }

            if (!empty($doctor)) {
                $doctor_details = $this->doctor_model->getDoctorById($doctor);
                $doctor_name    = $doctor_details->name;
            } else {
                $doctor_name    = 0;
            }
        if (empty($item_selected)) {
            $this->session->set_flashdata('feedback', 'Select a Item');
            redirect('lab/addLabView');
        } else {
            $item_quantity_array = array();
            $item_quantity_array = array_combine($item_selected, $quantity);
        }

        foreach($cats as $cat){
            $j = 1;
           // echo '==saw=='.$cat."qw21===sas==";
            foreach($lresult as $res){
              // echo "<pre>";print_r($res);
                if(!empty($name[$j][$cat]) ){
                    echo 'name= '.'===='.$cat.'====='.$name[$j][$cat]."<br>";
                    echo 'm_val= '.$m_val[$j][$cat]."<br>";
                    echo 'f_val= '.$f_val[$j][$cat]."<br>";
                    echo 'unit= '.$unit[$j][$cat]."<br>";
                    echo 'lresult= '.$lresult[$j][$cat]."<br>";
                    $lab_report_date = array(
                                                'report_id'=>$id,
                                                'name'=>$name[$j][$cat],
                                                'm_val'=>$m_val[$j][$cat],
                                                'f_val'=>$f_val[$j][$cat],
                                                'units'=>$unit[$j][$cat],
                                                'result'=>$lresult[$j][$cat],
                                                'test_cat'=>$cat,
                                                
                                            );
                    $j++;
                    $this->lab_model->insertLabreport($lab_report_date);
                    $lab_id = $this->db->insert_id();
                }
            }
        }
        //echo "<pre>".$j;print_r( $lab_report_date);
//exit;
        $data  = array(
                            //'category_name' =>  $category_ids,
                            //'report'          => $temp_emp,
                            'patient'         => $patient,
                            'doctor'          => $doctor,
                            'user'            => $user,
                            'patient_name'    => $patient_details->name,
                            'patient_phone'   => $patient_details->phone,
                            'patient_address' => $patient_details->address,
                            'doctor_name'     => $doctor_details->name,
                            'picker_name'     => $sample_picker,
                            'sample_no'       => $sample_no,
                            //'report_date'     => $report ,
                            //'invoice_id'       => $inserted_id 
                        );
                        $this->lab_model->updateLab($id, $data);
                        $this->session->set_flashdata('feedback', 'Updated');
                        redirect('lab/lab?id='.$id);
    }

    /*public function addLab() {
        echo "<pre>";print_r($_POST);exit; 

        $id          = $this->input->post('id');
        $report      = $this->input->post('report');
        $patient     = $this->input->post('patient');
        $redirect    = $this->input->post('redirect');
        $p_name      = $this->input->post('p_name');
        $p_email     = $this->input->post('p_email');

        if (empty($p_email)) {
            $p_email = $p_name . '-' . rand(1, 1000) . '-' . $p_name . '-' . rand(1, 1000) . '@example.com';
        }
        if (!empty($p_name)) {
            $password = $p_name . '-' . rand(1, 100000000);
        }
        $p_phone  = $this->input->post('p_phone');
        $p_age    = $this->input->post('p_age');
        $p_gender = $this->input->post('p_gender');
        $add_date = date('m/d/y');


        $patient_id = rand(10000, 1000000);



        $d_name  = $this->input->post('d_name');
        $d_email = $this->input->post('d_email');
        if (empty($d_email)) {
            $d_email = $d_name . '-' . rand(1, 1000) . '-' . $d_name . '-' . rand(1, 1000) . '@example.com';
        }
        if (!empty($d_name)) {
            $password = $d_name . '-' . rand(1, 100000000);
        }
        $d_phone = $this->input->post('d_phone');

        $doctor  = $this->input->post('doctor');
        $date    = $this->input->post('date');
        if (!empty($date)) {
            $date = strtotime($date);
        } else {
            $date = time();
        }
        $date_string = date('d-m-y', $date);
        $discount = $this->input->post('discount');
        $amount_received = $this->input->post('amount_received');
        $user = $this->ion_auth->get_user_id();

        $this->load->library('form_validation');
        $this->form_validation->set_error_delimiters('<div class="error">', '</div>');
            // Validating Category Field
            // $this->form_validation->set_rules('category_amount[]', 'Category', 'min_length[1]|max_length[100]');
            // Validating Price Field
        $this->form_validation->set_rules('patient', 'Patient', 'trim|min_length[1]|max_length[100]|xss_clean');
            // Validating Price Field
        $this->form_validation->set_rules('discount', 'Discount', 'trim|min_length[1]|max_length[100]|xss_clean');

        if ($this->form_validation->run() == FALSE) {
            redirect('lab/addLabView');
        } else {
            if (!empty($p_name)) {

                $data_p = array(
                    'patient_id' => $patient_id,
                    'name' => $p_name,
                    'email' => $p_email,
                    'phone' => $p_phone,
                    'sex' => $p_gender,
                    'age' => $p_age,
                    'add_date' => $add_date,
                    'how_added' => 'from_pos'
                );
                $username = $this->input->post('p_name');
// Adding New Patient
                if ($this->ion_auth->email_check($p_email)) {
                    $this->session->set_flashdata('feedback', 'This Email Address Is Already Registered');
                } else {
                    $dfg = 5;
                    $this->ion_auth->register($username, $password, $p_email, $dfg);
                    $ion_user_id = $this->db->get_where('users', array('email' => $p_email))->row()->id;
                    $this->patient_model->insertPatient($data_p);
                    $patient_user_id = $this->db->get_where('patient', array('email' => $p_email))->row()->id;
                    $id_info = array('ion_user_id' => $ion_user_id);
                    $this->patient_model->updatePatient($patient_user_id, $id_info);
                }
//    }
            }

            if (!empty($d_name)) {

                $data_d = array(
                    'name' => $d_name,
                    'email' => $d_email,
                    'phone' => $d_phone,
                );
                $username = $this->input->post('d_name');
// Adding New Patient
                if ($this->ion_auth->email_check($d_email)) {
                    $this->session->set_flashdata('feedback', 'This Email Address Is Already Registered');
                } else {
                    $dfgg = 4;
                    $this->ion_auth->register($username, $password, $d_email, $dfgg);
                    $ion_user_id = $this->db->get_where('users', array('email' => $d_email))->row()->id;
                    $this->doctor_model->insertDoctor($data_d);
                    $doctor_user_id = $this->db->get_where('doctor', array('email' => $d_email))->row()->id;
                    $id_info = array('ion_user_id' => $ion_user_id);
                    $this->doctor_model->updateDoctor($doctor_user_id, $id_info);
                }
            }


            if ($patient == 'add_new') {
                $patient = $patient_user_id;
            }

            if ($doctor == 'add_new') {
                $doctor = $doctor_user_id;
            }

            if (!empty($patient)) {
                $patient_details = $this->patient_model->getPatientById($patient);
                $patient_name    = $patient_details->name;
                $patient_phone   = $patient_details->phone;
                $patient_address = $patient_details->address;
            } else {
                $patient_name = 0;
                $patient_phone = 0;
                $patient_address = 0;
            }

            if (!empty($doctor)) {
                $doctor_details = $this->doctor_model->getDoctorById($doctor);
                $doctor_name = $doctor_details->name;
            } else {
                $doctor_name = 0;
            }

            $data = array();

            if (empty($id)) {
                $data = array(
                    // 'category_name' => $category_name,
                    'report' => $report,
                    'patient' => $patient,
                    'date' => $date,
                    'doctor' => $doctor,
                    'user' => $user,
                    'patient_name' => $patient_name,
                    'patient_phone' => $patient_phone,
                    'patient_address' => $patient_address,
                    'doctor_name' => $doctor_name,
                    'date_string' => $date_string
                );


                $this->lab_model->insertLab($data);
                $inserted_id = $this->db->insert_id();

                $this->session->set_flashdata('feedback', 'Added');
                redirect($redirect);
            } else {
                $data = array(
                    //   'category_name' => $category_name,
                    'report'          => $report,
                    'patient'         => $patient,
                    'doctor'          => $doctor,
                    'user'            => $user,
                    'patient_name'    => $patient_details->name,
                    'patient_phone'   => $patient_details->phone,
                    'patient_address' => $patient_details->address,
                    'doctor_name'     => $doctor_details->name,
                );
                $this->lab_model->updateLab($id, $data);
                $this->session->set_flashdata('feedback', 'Updated');
                redirect($redirect);
            }
        }
    }*/

    function editLab() {
        if ($this->ion_auth->in_group(array('admin', 'Doctor', 'Laboratorist', 'Nurse', 'Patient'))) {
            $data = array();
            $data['settings'] = $this->settings_model->getSettings();
            $data['categories'] = $this->lab_model->getLabCategory();
            $data['patients'] = $this->patient_model->getPatient();
            $data['doctors'] = $this->doctor_model->getDoctor();
            $id = $this->input->get('id');
            $data['lab'] = $this->lab_model->getLabById($id);
            $this->load->view('home/dashboard'); // just the header file
            $this->load->view('add_lab_view', $data);
            $this->load->view('home/footer'); // just the footer file
        }
    }

    function delete() {
        $id = $this->input->get('id');
        $this->lab_model->deleteLab($id);
        $this->session->set_flashdata('feedback', 'Deleted');
        redirect('lab/lab');
    }

    public function template() {
        if (!$this->ion_auth->logged_in()) {
            redirect('auth/login', 'refresh');
        }
        $data['settings'] = $this->settings_model->getSettings();
        $data['templates'] = $this->lab_model->getTemplate();

        $this->load->view('home/dashboard'); // just the header file
        $this->load->view('template', $data);
        $this->load->view('home/footer'); // just the header file
    }

    public function addTemplateView() {

        $data = array();
        $id   = $this->input->get('id');

        if (!empty($id)) {
            $data['template']  = $this->lab_model->getTemplateById($id);

            $cat_name   = $data['template']->name;
            $data['category'] = $this->finance_model->getPaymentCategoryByName($cat_name);
             $data['items']    = $this->lab_model->gettemBylabId($id);
        }
        $data['categories_lab']  = $this->lab_model->getLabCategory();
        $data['settings'] = $this->settings_model->getSettings();
        $this->load->view('home/dashboard'); // just the header file
        $this->load->view('add_template', $data);
        $this->load->view('home/footer'); // just the header file
    }



    public function category() {
        if (!$this->ion_auth->logged_in()) {
            redirect('auth/login', 'refresh');
        }
        $data['settings'] = $this->settings_model->getSettings();
        $data['templates'] = $this->lab_model->getCategory();

        $this->load->view('home/dashboard'); // just the header file
        $this->load->view('category', $data);
        $this->load->view('home/footer'); // just the header file
    }

    public function addCategoryView() {

        $data = array();
        $id   = $this->input->get('id');

        if (!empty($id)) {
            $data['template']  = $this->lab_model->getTemplateById($id);

            $cat_name   = $data['template']->name;
            $data['category'] = $this->finance_model->getPaymentCategoryByName($cat_name);

        }

        $data['settings'] = $this->settings_model->getSettings();
        $this->load->view('home/dashboard'); // just the header file
        $this->load->view('add_category', $data);
        $this->load->view('home/footer'); // just the header file
    }

    function getTemplateByIdByJason() {
        $id = $this->input->get('id');
        $data['template'] = $this->lab_model->getTemplateById($id);
        echo json_encode($data);
    }

    public function addTemplate() {

        //echo "<pre>";print_r($_POST);exit;
        $id          = $this->input->post('id');
        $cat_id      = $this->input->post('cat_id');
        $name        = $this->input->post('name');
        $template    = $this->input->post('template');
        $user        = $this->ion_auth->get_user_id();
        $type        = $this->input->post('type');
        $description = '';
        $c_price     = $this->input->post('c_price');


        $this->load->library('form_validation');
        $this->form_validation->set_error_delimiters('<div class="error">', '</div>');
        $this->form_validation->set_rules('report', 'Report', 'trim|min_length[1]|max_length[10000]|xss_clean');
        // Validating Price Field
        $this->form_validation->set_rules('user', 'User', 'trim|min_length[1]|max_length[100]|xss_clean');
        $this->form_validation->set_rules('c_price', 'Category price', 'trim|min_length[1]|max_length[100]|xss_clean');
        $this->form_validation->set_rules('lab_cat', 'Lab Category', 'required|trim|min_length[1]|max_length[100]|xss_clean');

        if ($this->form_validation->run() == FALSE) {
            redirect('lab/addTemplate');
        } else {
            $data     = array();
             $lname   = $this->input->post('input_array_name');
             $male    = $this->input->post('input_array_male');
             $female  = $this->input->post('input_array_female');
             $unit    = $this->input->post('input_array_unit');
             $lab_cat    = $this->input->post('lab_cat');
             $i       = 0;
            if (empty($id)) {
                $data = array(
                    'name'           => $name,
                    'template'       => $template,
                    'user'           => $user,
                    'lab_cat_id'     => $lab_cat,
                );

                
                $this->lab_model->insertTemplate($data);
                $inserted_id = $this->db->insert_id();
                    $data1   = array(
                        'category'     => $name,
                        'description'  => '',
                        'type'         => $type,
                        'c_price'      => $c_price,
                        'd_commission' => 0
                    );
                $this->finance_model->insertPaymentCategory($data1);
                $p_id = $this->db->insert_id();
                $this->lab_model->updateTemplate($inserted_id, array('procedure_id'=>$p_id));
               
                foreach($lname as $lab_name){

                    $lab_item = array(
                        'lab_id'      => $inserted_id ,
                        'name'        => $lab_name ,
                        'male_value'  => $male[$i] ,
                        'female_value'=> $female[$i] ,
                        'unit'        => $unit[$i] ,
                        );



                    $this->lab_model->insertLabtemp($lab_item);
                    $i++;
                }

                
                $this->session->set_flashdata('feedback', 'Added');
                redirect("lab/addTemplateView?id=" . "$inserted_id");
            } else {
                $data = array(
                    'name'     => $name,
                    'template' => $template,
                    'user'     => $user,
                    'lab_cat_id'     => $lab_cat,
                );
                $this->lab_model->updateTemplate($id, $data);
                $data1 = array(
                        'category'     => $name,
                        'description'  => '',
                        'type'         => $type,
                        'c_price'      => $c_price,
                        'd_commission' => 0
                     );
                if(empty($cat_id)){

                     $this->finance_model->insertPaymentCategory($data1);
                     $p_id = $this->db->insert_id();
                     $this->lab_model->updateTemplate($id, array('procedure_id'=>$p_id));
                
                }else{

                     $this->finance_model->updatePaymentCategory($cat_id , $data1);
                }
                $this->lab_model->deleteLabitem($id);
                foreach($lname as $lab_name){

                    $lab_item = array(
                        'lab_id'      => $id ,
                        'name'        => $lab_name ,
                        'male_value'  => $male[$i] ,
                        'female_value'=> $female[$i] ,
                        'unit'        => $unit[$i] ,
                    );



                    $this->lab_model->insertLabtemp($lab_item);
                    $i++;
                }
                $this->session->set_flashdata('feedback', 'Updated');
                redirect("lab/addTemplateView?id=" . "$id");
            }

            if (empty($id)) {
               
                //$this->session->set_flashdata('feedback', 'Added');
            } else {
                
                //$this->session->set_flashdata('feedback', 'Updated');
            }
        }
    }

    function editTemplate() {
        if ($this->ion_auth->in_group(array('admin', 'Doctor', 'Laboratorist', 'Nurse', 'Patient'))) {
            $data = array();
            $data['settings'] = $this->settings_model->getSettings();
            $id = $this->input->get('id');
            $data['template'] = $this->lab_model->getTemplateById($id);
            $data['items']    = $this->lab_model->gettemBylabId($id);
             $data['categories_lab']  = $this->lab_model->getLabCategory();
            //echo "<pre>";print_r($data['items']);exit;

            $cat_name         = $data['template']->name;
            $data['category'] = $this->finance_model->getPaymentCategoryByName($cat_name);

            $this->load->view('home/dashboard'); // just the header file
            $this->load->view('add_template', $data);
            $this->load->view('home/footer'); // just the footer file
        }
    }

    function deleteTemplate() {
        $id = $this->input->get('id');
       // $data['template']  = $this->lab_model->getTemplateById($id);
        // $cat_name         = $data['template']->name;
        $this->lab_model->deleteTemplate($id);
        

           
       // $data['category'] = $this->finance_model->getPaymentCategoryByName($cat_name);
        $this->session->set_flashdata('feedback', 'Deleted');
        redirect('lab/template');
    }

    public function labCategory() {
        if (!$this->ion_auth->logged_in()) {
            redirect('auth/login', 'refresh');
        }
        $data['categories'] = $this->lab_model->getLabCategory();
        $data['settings'] = $this->settings_model->getSettings();
        $this->load->view('home/dashboard'); // just the header file
        $this->load->view('lab_category', $data);
        $this->load->view('home/footer'); // just the header file
    }

    public function addLabCategoryView() {
        $this->load->view('home/dashboard'); // just the header file
        $this->load->view('add_lab_category');
        $this->load->view('home/footer'); // just the header file
    }

    public function addLabCategory() {

        $id          = $this->input->post('id');
        $category    = $this->input->post('category');
        $description = $this->input->post('description');
        $reference   = $this->input->post('reference_value');
        $this->load->library('form_validation');
        $this->form_validation->set_error_delimiters('<div class="error">', '</div>');
        // Validating Category Name Field
        $this->form_validation->set_rules('category', 'Category', 'trim|required|min_length[1]|max_length[100]|xss_clean');
        // Validating Description Field
        $this->form_validation->set_rules('description', 'Description', 'trim|required|min_length[1]|max_length[100]|xss_clean');
        // Validating Description Field
         $this->form_validation->set_rules('reference_value', 'Reference Value', 'trim|min_length[1]|max_length[1000]|xss_clean');
        // Validating Description Field
        $this->form_validation->set_rules('type', 'Type', 'trim|min_length[1]|max_length[100]|xss_clean');

        if ($this->form_validation->run() == FALSE) {
            if (!empty($id)) {
                $this->session->set_flashdata('feedback', 'Validation Error !');
                redirect('lab/editLabCategory?id=' . $id);
            } else {
                $data = array();
                $data['setval'] = 'setval';
                $this->load->view('home/dashboard'); // just the header file
                $this->load->view('add_lab_category', $data);
                $this->load->view('home/footer'); // just the header file
            }
        } else {
            $data = array();
            $data = array('category' => $category,
                'description' => $description,
                'reference_value' => $reference,
            );
            if (empty($id)) {
                $this->lab_model->insertLabCategory($data);
                $this->session->set_flashdata('feedback', 'Added');
            } else {
                $this->lab_model->updateLabCategory($id, $data);
                $this->session->set_flashdata('feedback', 'Updated');
            }
            redirect('lab/labCategory');
        }
    }

    function editLabCategory() {
        $data = array();
        $id   = $this->input->get('id');
        $data['category'] = $this->lab_model->getLabCategoryById($id);
        $this->load->view('home/dashboard'); // just the header file
        $this->load->view('add_lab_category', $data);
        $this->load->view('home/footer'); // just the footer file
    }

    function deleteLabCategory() {
        $id = $this->input->get('id');
        $this->lab_model->deleteLabCategory($id);
        redirect('lab/labCategory');
    }

    function invoice() {

        //exit;
        $data = array();
        $id   = $this->input->get('id');
        $data['settings'] = $this->settings_model->getSettings();
        $data['lab']      = $this->lab_model->getLabById($id);



           // $id     = $this->input->get('id');
        $status = $this->input->get('status');

        $data['settings'] = $this->settings_model->getSettings();
        $data['labs']     = $this->lab_model->getLab();
        //echo "<pre>";print_r($data['labs']);exit;
        if (!empty($id)) {
            $data['lab_single'] = $this->lab_model->getLabById($id);
        }
        $lab        = $this->lab_model->getLabById($id);
        //echo "<pre>";print_r($lab );
         $temp_date = array();
        if (!empty($id)) {
            $cat_ids = explode(',',$lab->category_name);
            $this->db->select('*');
            $this->db->from('template');
            $this->db->where_in('procedure_id',$cat_ids);
               // $this->db->order_by('date','DESC');
            $query = $this->db->get();
            $query_result = $query->result();
            //echo "<pre>";print_r($query_result);
               // $token =  $query->row();
           // echo "<pre>";print_r($query_result);
            foreach($query_result as $temp){

                $this->db->select('*');
                $this->db->from('test_items');
                $this->db->where('lab_id',$temp->id);
                // $this->db->order_by('date','DESC');
                $query             = $this->db->get();
                $query_item_result = $query->result();
               
                foreach($query_item_result as $items ){

                   $temp_date[$temp->name][]  = $items;
                }
            }
        }
        $data['temp_date']   = $temp_date;
        $data['report_date'] = $this->lab_model->getLabreport($id);

        //echo "<pre>";print_r($data['report_date']);exit;


        $this->load->view('home/dashboard'); // just the header file
        $this->load->view('invoice', $data);
        $this->load->view('home/footer'); // just the footer fi
    }

    function patientLabHistory() {
        if (!$this->ion_auth->logged_in()) {
            redirect('auth/login', 'refresh');
        }
        $patient = $this->input->get('patient');
        if (empty($patient)) {
            $patient = $this->input->post('patient');
        }

        $date_from = strtotime($this->input->post('date_from'));
        $date_to   = strtotime($this->input->post('date_to'));
        if (!empty($date_to)) {
            $date_to = $date_to + 86399;
        }

        $data['date_from'] = $date_from;
        $data['date_to']   = $date_to;

        if (!empty($date_from)) {
            $data['labs']     = $this->lab_model->getLabByPatientIdByDate($patient, $date_from, $date_to);
            $data['deposits'] = $this->lab_model->getDepositByPatientIdByDate($patient, $date_from, $date_to);
        } else {
            $data['labs']          = $this->lab_model->getLabByPatientId($patient);
            $data['pharmacy_labs'] = $this->pharmacy_model->getLabByPatientId($patient);
            $data['ot_labs']       = $this->lab_model->getOtLabByPatientId($patient);
            $data['deposits']      = $this->lab_model->getDepositByPatientId($patient);
        }



        $data['patient']  = $this->patient_model->getPatientByid($patient);
        $data['settings'] = $this->settings_model->getSettings();



        $this->load->view('home/dashboard'); // just the header file
        $this->load->view('patient_deposit', $data);
        $this->load->view('home/footer'); // just the header file
    }

    function financialReport() {
        $date_from = strtotime($this->input->post('date_from'));
        $date_to   = strtotime($this->input->post('date_to'));
        if (!empty($date_to)) {
            $date_to = $date_to + 86399;
        }
        $data = array();
        $data['lab_categories']     = $this->lab_model->getLabCategory();
        $data['expense_categories'] = $this->lab_model->getExpenseCategory();


// if(empty($date_from)&&empty($date_to)) {
//    $data['labs']=$this->lab_model->get_lab();
//     $data['ot_labs']=$this->lab_model->get_ot_lab();
//     $data['expenses']=$this->lab_model->get_expense();
// }
// else{

        $data['labs']     = $this->lab_model->getLabByDate($date_from, $date_to);
        $data['ot_labs']  = $this->lab_model->getOtLabByDate($date_from, $date_to);
        $data['deposits'] = $this->lab_model->getDepositsByDate($date_from, $date_to);
        $data['expenses'] = $this->lab_model->getExpenseByDate($date_from, $date_to);
// } 
        $data['from']     = $this->input->post('date_from');
        $data['to']       = $this->input->post('date_to');
        $data['settings'] = $this->settings_model->getSettings();
        $this->load->view('home/dashboard'); // just the header file
        $this->load->view('financial_report', $data);
        $this->load->view('home/footer'); // just the footer fi
    }
    function patientcheck(){
        $id =  $this->input->get('id');
        $membership = check_expiry($id);
        if(empty($membership)){
            $discount = '';
        }else{
            $discount = $membership->discount;
        }
        echo  $discount;
    }
    function getLab() {
        
        $requestData = $_REQUEST;
        $start       = $requestData['start'];
        $limit       = $requestData['length'];
        $search      = $this->input->post('search')['value'];

        if ($limit == -1) {
            if (!empty($search)) {
                $data['labs'] = $this->lab_model->getLabBysearch($search);
            } else {
                $data['labs'] = $this->lab_model->getLab();
            }
        } else {
            if (!empty($search)) {
                $data['labs'] = $this->lab_model->getLabByLimitBySearch($limit, $start, $search);
            } else {
                $data['labs'] = $this->lab_model->getLabByLimit($limit, $start);
            }
        }
        //  $data['labs'] = $this->lab_model->getLab();

        foreach ($data['labs'] as $lab) {
            $date = date('d-m-y', $lab->date);
            if ($this->ion_auth->in_group(array('admin', 'Laboratorist', 'Doctor'))) {
                $options1 = ' <a class="btn btn-info btn-xs editbutton" title="' . lang('edit') . '" href="lab?id=' . $lab->id . '"><i class="fa fa-edit"> </i> ' . lang('') . '</a>';
            } else {
                $options1 = '';
            }

            $options2 = '<a class="btn btn-xs invoicebutton" title="' . lang('lab') . '" style="color: #fff;" href="lab/invoice?id=' . $lab->id . '"><i class="fa fa-file-text"></i> ' . lang('') . '</a>';
            $options4 = '<a class="btn btn-xs invoicebutton" title="' . 'Invoice' . '" style="color: #fff;" href="finance/invoice?id=' . $lab->invoice_id . '&date='.$lab->date.'&report_date='.$lab->report_date.'&token='.$lab->token_no.'&lab_id='.$lab->id.'"><i class="fa fa-file-text"></i> ' . lang('invoice') . '</a>';

            if ($this->ion_auth->in_group(array('admin', 'Doctor', 'Laboratorist'))) {
                $options3 = '<a class="btn btn-info btn-xs delete_button" title="' . lang('delete') . '" href="lab/delete?id=' . $lab->id . '" onclick="return confirm(\'Are you sure you want to delete this item?\');"><i class="fa fa-trash-o"></i>' . lang('') . '</a>';
            } else {
                $options3 = '';
            }

            $doctor_info = $this->doctor_model->getDoctorById($lab->doctor);
            if (!empty($doctor_info)) {
                $doctor = $doctor_info->name;
            } else {
                if (!empty($lab->doctor_name)) {
                    $doctor = $lab->doctor_name;
                } else {
                    $doctor = ' ';
                }
            }


            $patient_info = $this->patient_model->getPatientById($lab->patient);
            if (!empty($patient_info)) {
                $patient_details = $patient_info->name . '</br>' . $patient_info->address . '</br>' . $patient_info->phone . '</br>';
            } else {
                $patient_details = ' ';
            }
            if(empty($lab->status)){
                $st = 'in-process';
            }else{
                $st = $lab->status;
            }

            $status = '<ul class="nav navbar-nav">
                        
                        <li class="dropdown">
                          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">'.$st.' <span class="caret"></span></a>
                          <ul class="dropdown-menu">
                            <li class="active"><a  href="lab?id=' . $lab->id .'&status=in-process"  onclick="return confirm(Are you sure?)">In-process</a></li>
                            <li ><a onclick="return confirm('."Are you sure you want to update status?".');" href="lab?id=' . $lab->id .'&status=ready">Report Ready</a></li>
                            <li><a  onclick="return confirm('."Are you sure you want to update status?".');" href="lab?id=' . $lab->id .'&status=delivered">Delivered</a></li>
                           
                          </ul>
                        </li>
                      </ul>';
           /* $status =' <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          Dropdown
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                          <a class="dropdown-item" href="#">In-process</a>
                          <a class="dropdown-item" href="#">Report Ready</a>
                          <a class="dropdown-item" href="#">Delivered</a>
                          <div class="dropdown-divider"></div>
                          <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                      </li>';*/
           // $status = ' <a class="btn btn-info btn-xs editbutton" title="' . "status" . '" href="lab?id=' . $lab->id . '&status"> ' .$st . '</a>';
            $info[] = array(
                $lab->id,
                $patient_details,
                $status,
                $date,
                $options1 . ' ' . $options2 . ' ' . $options4.' '.$options3,
                    // $options2 . ' ' . $options3
            );
        }


        if (!empty($data['labs'])) {
            $output = array(
                "draw" => intval($requestData['draw']),
                "recordsTotal" => $this->db->get('lab')->num_rows(),
                "recordsFiltered" => $this->db->get('lab')->num_rows(),
                "data" => $info
            );
        } else {
            $output = array(
                // "draw" => 1,
                "recordsTotal" => 0,
                "recordsFiltered" => 0,
                "data" => []
            );
        }




        echo json_encode($output);
    }

    public function lab_invoice()
    {

    }

}

/* End of file lab.php */
/* Location: ./application/modules/lab/controllers/lab.php */