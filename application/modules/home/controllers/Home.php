<?php
if (!defined('BASEPATH')) {
  exit('No direct script access allowed');
}

class Home extends MY_Controller {
    public function __construct() {
        parent::__construct();
    }

    public function index(){
        $this->load->library("pagination");
        $id = $this->session->userdata('user_id');
        $params['where'] = array('user_id' => $id , 'is_deleted' => 0 );
        $config['total_rows'] = $this->MY_Model->getRows('contacts' , $params , 'count');
        $data['total_count'] = $config['total_rows'];
        $config['use_page_numbers'] = TRUE;
        $config['suffix'] = '';

            $page_number = $this->uri->segment(3);
            $config['base_url'] = base_url() . 'home/index';
            if (empty($page_number))
            $page_number = 1;
            $offset = ($page_number - 1) * $this->pagination->per_page;
            $this->pagination->cur_page = $page_number;
            $config['attributes'] = array('class' => 'page-link');
            $this->pagination->initialize($config);
            $data['page_links'] = $this->pagination->create_links();
            $p2['where'] = array('user_id' => $id , 'is_deleted' => 0);
            $p2['limit'] = array($this->pagination->per_page ,$offset );
            $data['data']  = $this->MY_Model->getRows('contacts' , $p2);

        $current_entries = count($data['data']);
        $start_row_num = $offset+1;
        $end_row_num = $offset + $current_entries;

        $data['cur_stat'] = "Showing ".$start_row_num." - ".$end_row_num." of ".$data['total_count'].' entries';
        $this->load_page('contacts' , $data);
    }

    public function addcontact(){
        $this->load_page('addcontact');
    }

    public function newcontact(){
        $response = array();
        $this->form_validation->set_rules('name', 'Name', 'required');

        if ($this->form_validation->run() == FALSE) {
            $response = array('status' => 'failed' , 'errors' => $this->form_validation->error_array());
        }else{
            $post = $this->input->post();
            $items = array(
                'user_id' => $this->session->userdata('user_id'),
                'name' => $post['name'],
                'company' => $post['company'],
                'phone' => $post['phone'],
                'email' => $post['email'],
                'date_added' => date('Y-m-d h:i:s'),
                'is_deleted' => 0
            );
            $inserted = $this->MY_Model->insert('contacts' , $items);
            if ($inserted) {
                $response = array('status' => 'success');
            }else{
                $response = array('status' => 'invalid' , 'msg' => 'Something went wront, please try again.');
            }
        }
        echo json_encode($response);
    }

    public function savechanges(){
        $response = array();
        $this->form_validation->set_rules('name', 'Name', 'required');

        if ($this->form_validation->run() == FALSE) {
            $response = array('status' => 'failed' , 'errors' => $this->form_validation->error_array());
        }else{
            $post = $this->input->post();
            $items = array(
                'user_id' => $this->session->userdata('user_id'),
                'name' => $post['name'],
                'company' => $post['company'],
                'phone' => $post['phone'],
                'email' => $post['email'],
                'date_added' => date('Y-m-d h:i:s'),
                'is_deleted' => 0
            );

            $params = array('contact_id' => $post['contact_id']);
            $updated = $this->MY_Model->update('contacts' , $items , $params);
            if ($updated) {
                $response = array('status' => 'success');
            }else{
                $response = array('status' => 'invalid' , 'msg' => 'Something went wront, please try again.');
            }
        }
        echo json_encode($response);
    }

    public function viewcontact($id){
        $params['where'] = array('contact_id' => $id);
        $data['contact'] = $this->MY_Model->getRows('contacts' , $params , 'row');
        $this->load_page('editcontact' , $data);
    }

    public function deletecontact(){
        $post = $this->input->post();
        $response = array();
        $where = array('contact_id' => $post['contact_id']);
        $set = array('is_deleted' => 1);
        $delete = $this->MY_Model->update('contacts' ,$set , $where);
        if ($delete) {
            $response = array('status' => 'success');
        }else{
            $response = array('status' => 'error' , 'msg' => 'Something went wrong, please try again.');
        }

        json_encode($response);
    }

    public function searchcontact(){
        $this->load->library("pagination");
        $post = $this->input->post();
        $id = $this->session->userdata('user_id');
        $params['where'] = array('user_id' => $id , 'is_deleted' => 0 );
        $config['total_rows'] = $this->MY_Model->getRows('contacts' , $params , 'count');
        $data['total_count'] = $config['total_rows'];
        $config['use_page_numbers'] = TRUE;
        $config['suffix'] = '';

            $page_number = $this->uri->segment(3);
            $config['base_url'] = base_url() . 'home/index';
            if (empty($page_number))
            $page_number = 1;
            $offset = ($page_number - 1) * $this->pagination->per_page;
            $this->pagination->cur_page = $page_number;
            $config['attributes'] = array('class' => 'page-link');
            $this->pagination->initialize($config);
            $data['page_links'] = $this->pagination->create_links();
            $p2['where'] = array('user_id' => $id , 'is_deleted' => 0);
            $p2['where_in'] = array('user_id' => $id , 'is_deleted' => 0);
            $p2['limit'] = array($this->pagination->per_page ,$offset );
            $data['data']  = $this->MY_Model->getRows('contacts' , $p2);

        $current_entries = count($data['data']);
        $start_row_num = $offset+1;
        $end_row_num = $offset + $current_entries;

        $data['cur_stat'] = "Showing ".$start_row_num." - ".$end_row_num." of ".$data['total_count'].' entries';
    }

    public function logout(){
        $this->session->sess_destroy();
        redirect(base_url());
    }

}
