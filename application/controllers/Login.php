<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends MTL_Controller {


	public function __construct(){
		parent::__construct();
	}
	
	public function index(){
		echo "Login";
	}
	
	public function signin(){
		echo "Sign In";
	}
		
}
	