<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Installer extends CI_Controller {
	
	public function __construct(){
		parent::__construct();
		$this->load->helper(array('url'));
	}
	
	public function index(){
		$data = array(
			'head' => $this->load->view('main_templates/head',NULL,TRUE),
			'navbar' => $this->load->view('installer/navbar',NULL,TRUE),
			'content' => $this->load->view('installer/content',NULL,TRUE),
			'footer' => $this->load->view('installer/footer',NULL,TRUE)
		);
		$this->load->view('main_templates/html',$data);
	}
	
}
	