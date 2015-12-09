<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MTL_Controller extends CI_Controller {


	public function __construct(){
		parent::__construct();
		$this->lang->load('system_message_lang','spanish');
		$this->load->helper(array('url','form','security','file'));
		$this->load->library(array('session'));
		$this->init();
	}
	
	private function init(){
		//Verifica si el sistema esta instalado
		if(!read_file('install.txt')){
			redirect('installer');
		}else{
			$this->init_system();
		}
	}
	
	private function init_system(){
		echo "Inicio del sistema";
	}
}