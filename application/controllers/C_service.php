<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class C_service extends CI_Controller {

    function __construct(){
        parent::__construct();

        $this->load->model('ref/table_settings');
        $this->load->model('ref/table_post_category');
		
        $this->load->model('content/table_page');
        $this->load->model('content/table_post');
        $this->load->model('content/table_service');
        $this->load->model('content/table_sliders');
        $this->load->model('content/table_announcement');
    }

	public function list()
	{
		$this->load->library('pagination');

		$config['base_url'] = site_url('service'); //site url
        $config['total_rows'] = $this->table_service->page_total();
        $config['per_page'] = 3;  //show record per halaman
        $config["uri_segment"] = 2;  // uri parameter
        $config["num_links"] = 4;
		$config["use_page_numbers"] = TRUE;
		
		// Membuat Style pagination untuk BootStrap v5
		$config['first_link']       = 'First';
		$config['last_link']        = 'Last';
		$config['next_link']        = 'Next';
		$config['prev_link']        = 'Prev';
		$config['full_tag_open']    = '<div class="pagging text-center"><nav><ul class="pagination justify-content-center">';
		$config['full_tag_close']   = '</ul></nav></div>';
		$config['num_tag_open']     = '<li class="page-item"><span class="page-link">';
		$config['num_tag_close']    = '</span></li>';
		$config['cur_tag_open']     = '<li class="page-item active"><span class="page-link">';
		$config['cur_tag_close']    = '<span class="sr-only">(current)</span></span></li>';
		$config['next_tag_open']    = '<li class="page-item"><span class="page-link">';
		$config['next_tagl_close']  = '<span aria-hidden="true">&raquo;</span></span></li>';
		$config['prev_tag_open']    = '<li class="page-item"><span class="page-link">';
		$config['prev_tagl_close']  = '</span>Next</li>';
		$config['first_tag_open']   = '<li class="page-item"><span class="page-link">';
		$config['first_tagl_close'] = '</span></li>';
		$config['last_tag_open']    = '<li class="page-item"><span class="page-link">';
		$config['last_tagl_close']  = '</span></li>';

		$this->pagination->initialize($config);
        $page = ($this->uri->segment(2)) ? $this->uri->segment(2) : 1;
		$offset = ($page == 1) ? 0 : ($page * $config['per_page']) - $config['per_page'];
 
        $service = $this->table_service->page_data($config["per_page"], $offset);           
		
        $pagination = $this->pagination->create_links();
		
		$postcat 			= $this->table_post_category->all();
        $post_latest 		= $this->table_post->latest(3);        
        $post_popular 		= $this->table_post->popular(3);      
        $service_popular 	= $this->table_service->popular(6);    

		$title['parent'] 	= "Layanan";
		$title['display'] 	= "Layanan";
        $title['level'][0]  = "Layanan";
        $title['href'][0]   = "";

		$settings 			= $this->table_settings->all();
		
		


		$this->load->view(
            'service/list', 
            compact(
				'title',
				'settings',
				'service',
				'pagination',
				'postcat',
				'post_latest',
				'post_popular',
				'service_popular',
            )
        );
	}

	public function detail($slug_id)
	{
		$param['slug'] 		= $slug_id;
		$service 			= $this->table_service->detail($param);           
		$this->add_view($service->id,$service->view);          
		
		$postcat 			= $this->table_post_category->all();
        $post_latest 		= $this->table_post->latest(3);        
        $post_popular 		= $this->table_post->popular(3);      
        $service_popular 	= $this->table_service->popular(6);         

		$title['parent'] 	= "Layanan";
		$title['display'] 	= $service->title;
        $title['level'][0]  = "Layanan";
        $title['href'][0]   = "";
        $title['level'][1]  = "$service->title";
        $title['href'][1]   = "";

		$settings 			= $this->table_settings->all();

		$this->load->view(
            'service/detail', 
            compact(
				'title',
				'settings',
				'service',
				'postcat',
				'post_latest',
				'post_popular',
				'service_popular',
            )
        );
	}

	private function add_view($idservice,$view)
	{
		$id['id'] 		= $idservice;
		$param['view'] 	= $view + 1;

		$this->table_service->update($id,$param);
	}

}

/* End of file Controllername.php */
