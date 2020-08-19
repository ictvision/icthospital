<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

if ( ! function_exists('check_expiry'))
{
    function check_expiry($id)
    {
    	$ci = & get_instance();
        $ci->load->database(); 

        $patient_id = $ci->db->get_where('patient', array('id' => $id ))->row()->patient_id;
	    $sql        = "select * from membership where status='Active' and  patient_id=".$patient_id; 
	    $query      = $ci->db->query($sql);
	    $row        = $query->row();
	    $cdate      =  date("Y-m-d H:i:s");
	    
	    if(!empty($row)){            
		    if($row->expiry<=$cdate){
		    	$sql   = "update  membership set status='DeActive' where  patient_id=".$patient_id; 
		    	$query = $ci->db->query($sql);
		    }
		}
	   /* $sql   = "select * from membership where status='Active' and  patient_id=".$patient_id; 
	    $query = $ci->db->query($sql);
	    $row   = $query->row();*/

	    $ci->db->select('membership.*, membership_settings.membership_name, membership_settings.membership_price, membership_settings.discount, membership_settings.expiry as expry');
        $ci->db->where('membership.patient_id', $patient_id);
        $ci->db->where('membership.status', 'Active');
        $ci->db->join('membership_settings', 'membership_settings.id = membership.membership_type', 'inner');
        $query = $ci->db->get('membership');
        return $query->row();
    }   
}