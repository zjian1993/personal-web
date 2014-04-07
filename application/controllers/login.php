<?php
class Login extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		//$this->load->model('login_model');
	}
	
	public function index()
	{
		$this->load->view('htmlheader');
		$this->load->view('login');
		$this->load->view('htmlfooter');
	}
	


}

?>