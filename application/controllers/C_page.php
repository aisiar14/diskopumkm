<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class C_page extends CI_Controller {

    function __construct(){
        parent::__construct();

        $this->load->model('ref/table_settings');
        $this->load->model('ref/table_post_category');

        $this->load->model('content/table_page');
        $this->load->model('content/table_post');
        $this->load->model('content/table_sliders');
        $this->load->model('content/table_announcement');
        $this->load->model('content/table_service');
    }

	public function detail($slug_id)
	{
		$param['slug'] 			= $slug_id;
		$page 					= $this->table_page->get($param);           
		$this->add_view($page->id,$page->view);          
			
		$postcat 			= $this->table_post_category->all();
        $post_latest 		= $this->table_post->latest(3); 
        $post_popular 		= $this->table_post->popular(3);      
        $service_popular 	= $this->table_service->popular(6);          

		$title['parent'] 	= $page->slug;
		$title['display'] 	= $page->title;
		
		$title['parent'] 	= $page->slug;
		$title['display'] 	= $page->title;
        $title['level'][0]  = $page->parent;
        $title['href'][0]   = "";
        $title['level'][1]  = "$page->title";
        $title['href'][1]   = "";

		$settings 			= $this->table_settings->all();

		$this->load->view(
            'page/detail', 
            compact(
				'title',
				'settings',
				'page',
				'postcat',
				'post_latest',
				'post_popular',
				'service_popular',
            )
        );
	}

	private function add_view($idpage,$view)
	{
		$id['id'] 		= $idpage;
		$param['view'] 	= $view + 1;

		$this->table_page->update($id,$param);
	}

	public function contact()
	{
		$title['parent'] 	= "Kontak";
		$title['display'] 	= "Kontak";
        $title['level'][0]  = "Kontak";
        $title['href'][0]   = "/contact";

		$settings 			= $this->table_settings->all();

		$this->load->view(
            'page/contact', 
            compact(
				'title',
				'settings'
            )
        );

	}

}

/* End of file Controllername.php */
