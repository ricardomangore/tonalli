<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Main extends MTL_Controller {
	
	
	function __construct(){
		parent::__construct();
	}
	
	function index(){
		echo "Hello";
	}
}