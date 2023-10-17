<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Infrastructure extends CI_Controller {

    function __construct(){
        parent::__construct();

        $this->load->model('data/table_infrastructure');
        $this->load->model('data/table_request');

        $this->load->model('ref/table_settings');
        $this->load->model('ref/table_post_category');
		
        $this->load->model('content/table_page');
        $this->load->model('content/table_post');
        $this->load->model('content/table_announcement');
    }

	public function index()
	{
		$this->load->library('pagination');

		$config['base_url'] = site_url('infrastructure/index'); //site url
        $config['total_rows'] = $this->table_infrastructure->page_total();
        $config['per_page'] = 3;  //show record per halaman
        $config["uri_segment"] = 3;  // uri parameter
        $choice = $config["total_rows"] / $config["per_page"];
        $config["num_links"] = floor($choice);
		// $config["use_page_numbers"] = TRUE;
		
		// Membuat Style pagination untuk BootStrap v5
		$config['first_link']       = 'First';
		$config['last_link']        = 'Last';
		$config['next_link']        = 'Next';
		$config['prev_link']        = 'Prev';
		$config['full_tag_open']    = '<ul class="pagination_wrap mt-30">';
		$config['full_tag_close']   = '</ul>';
		$config['num_tag_open']     = '<li>';
		$config['num_tag_close']    = '</li>';
		$config['cur_tag_open']     = '<li><a class="active">';
		$config['cur_tag_close']    = '</a></li>';
		$config['next_tag_open']    = '<li>';
		$config['next_tagl_close']  = '</li>';
		$config['prev_tag_open']    = '<li>';
		$config['prev_tagl_close']  = '</li>';
		$config['first_tag_open']   = '<li>';
		$config['first_tagl_close'] = '</li>';
		$config['last_tag_open']    = '<li>';
		$config['last_tagl_close']  = '</li>';

		$this->pagination->initialize($config);
        $page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
 
        //panggil function get_mahasiswa_list yang ada pada mmodel mahasiswa_model. 
        $infrastructure = $this->table_infrastructure->page_data($config["per_page"], $page);           
		
        $pagination = $this->pagination->create_links();
		
        $post_latest 			= $this->table_post->latest(3);           
        $infrastructure_latest 	= $this->table_infrastructure->latest(3);           

		$title['parent'] 	= "Data Infrastruktur";
		$title['display'] 	= "Data Infrastruktur";
        $title['level'][0]  = "Data Infrastruktur";
        $title['href'][0]   = "";

		$settings 			= $this->table_settings->all();
		$postcat 			= $this->table_post_category->all();


		$this->load->view(
            'data/infrastructure_list', 
            compact(
				'title',
				'settings',
				'postcat',
				'infrastructure',
				'pagination',
				'post_latest',
				'infrastructure_latest'
            )
        );
	}

	public function detail($date,$slug_id)
	{
		$param['data_infrastructure.slug'] = $slug_id;
		$infrastructure 		= $this->table_infrastructure->detail($param);           
		
		$postcat 				= $this->table_post_category->all();
        $post_latest 			= $this->table_post->latest(3);           
        $infrastructure_latest 	= $this->table_infrastructure->latest(6);         

		$title['parent'] 	= "Data Infrastruktur";
		$title['display'] 	= $infrastructure->title;
        $title['level'][0]  = "Infrastruktur";
        $title['href'][0]   = "";
        $title['level'][1]  = "$infrastructure->title";
        $title['href'][1]   = "";

		$settings 			= $this->table_settings->all();

		$this->load->view(
            'data/infrastructure_detail', 
            compact(
				'title',
				'settings',
				'infrastructure',
				'postcat',
				'post_latest',
				'infrastructure_latest'
            )
        );
	}

	public function search($query)
	{

	}

}

/* End of file Controllername.php */
