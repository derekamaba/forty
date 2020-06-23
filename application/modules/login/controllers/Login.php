<?php
if (!defined('BASEPATH')) {
  exit('No direct script access allowed');
}

class Login extends MY_Controller {
    public function __construct() {
    parent::__construct();
    }

    public function index(){
        $this->load_page('login');
    }

    public function registration(){
        $this->load_page('register');
    }

    public function success(){
        $this->load_page('success');
    }

    public function authentication(){
        $response = array();
        $this->form_validation->set_rules('email', 'Email', 'required');
        $this->form_validation->set_rules('password', 'Password', 'required');

        if ($this->form_validation->run() == FALSE) {
            $response = array('status' => 'failed' , 'errors' =>$this->form_validation->error_array() );
        }else{
            $post = $this->input->post();
            $params = array('where' => array('email_address' => $post['email']));
            $getdata = $this->MY_Model->getRows('user' , $params , 'row');
            if ($getdata) {
                if (password_verify($post['password'], $getdata->password )) {
                    $response = array('status' => 'valid' , 'msg' => 'loggedin');
                    $this->session->set_userdata((array)$getdata);
                    $this->session->set_userdata('isloggedin' , true);
                }else{
                    $response = array('status' => 'notvalid' , 'msg' => 'invalid data');
                }
            }else{
                $response = array('status' => 'nodata');
            }
        }
        echo json_encode($response);
    }

    public function new_user() {
        $response = array();
        $this->form_validation->set_rules('name', 'Name', 'required');
        $this->form_validation->set_rules('email', 'Email Address', 'required|is_unique[user.email_address]' , array('is_unique' => 'This %s already exists.' ));
        $this->form_validation->set_rules('password', 'password', 'required|min_length[6]');
        $this->form_validation->set_rules('confirm_password', 'Confirm Password', 'required|matches[password]');

        if ($this->form_validation->run() == FALSE) {
            $response = array('status' => 'failed' , 'errors' =>$this->form_validation->error_array() );
        }else{
            $post = $this->input->post();
            $items = array(
                'name' => $post['name'],
                'email_address' => $post['email'],
                'password' => password_hash($post['password'] , PASSWORD_BCRYPT),
                'date_added' => date('Y-m-d h:i:s'),
            );
            $insert = $this->MY_Model->insert('user' , $items);
            if ($insert) {
                $this->session->set_userdata((array)$items);
                $this->session->set_userdata('user_id' , $insert);
                $this->session->set_userdata('isloggedin' , true);

                $response = array('status' => 'success');
            }
        }
        echo json_encode($response);
    }

}
