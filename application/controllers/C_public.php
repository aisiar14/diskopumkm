<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class C_public extends CI_Controller {

    function __construct(){
        parent::__construct();

        $this->load->model('ref/table_settings');
        $this->load->model('content/table_page');
        $this->load->model('content/table_post');
        $this->load->model('content/table_sliders');
        $this->load->model('content/table_announcement');
        $this->load->model('content/table_service');
    }

    public function index()
    {
		$title['parent'] 	= "Beranda";
		$title['display'] 	= "Beranda";

		$settings 			= $this->table_settings->all();
		$sliders 			= $this->table_sliders->all();
        $post_latest 		= $this->table_post->latest(6);        
        $service_popular 	= $this->table_service->popular(6);           
		$announcement		= $this->table_announcement->all();

        $this->load->view(
            'public/index', 
            compact(
				'title',
				'settings',
				'sliders',
				'post_latest',
				'service_popular',
				'announcement',
				// 'team',
				// 'language',
				// 'featured'
            )
        );
	}

	public function search($query)
	{

	}

}

/* End of file Controllername.php */
