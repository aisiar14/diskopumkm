<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class C_post extends CI_Controller {

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

	public function list($category)
	{
		$this->load->library('pagination');

		$config['base_url'] = site_url('post/list/'.$category.'/index'); //site url
        $config['total_rows'] = $this->table_post->category_page_total($category);
        $config['per_page'] = 3;  //show record per halaman
        $config["uri_segment"] = 5;  // uri parameter
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
        $page = ($this->uri->segment(5)) ? $this->uri->segment(5) : 1;
		$offset = ($page == 1) ? 0 : ($page * $config['per_page']) - $config['per_page'];
 
        //panggil function get_mahasiswa_list yang ada pada mmodel mahasiswa_model. 
        $post = $this->table_post->category_page_data($category,$config["per_page"], $offset);           
		
        $pagination = $this->pagination->create_links();
		
		$param['slug']			= $category;
		$cat_detail 			= $this->table_post_category->get($param);
		$postcat 				= $this->table_post_category->all();
        $post_latest 			= $this->table_post->latest(3);
        $post_popular 			= $this->table_post->popular(3);     
        $post_popular 			= $this->table_post->popular(3);     
        $service_popular 		= $this->table_service->popular(6);           

		$title['parent'] 	= "Artikel";
		$title['display'] 	= $cat_detail->title;
        $title['level'][0]  = "Artikel";
        $title['href'][0]   = "";
        $title['level'][1]  = "$cat_detail->title";
        $title['href'][1]   = "";

		$settings 			= $this->table_settings->all();
		
		


		$this->load->view(
            'post/list', 
            compact(
				'title',
				'settings',
				'post',
				'pagination',
				'cat_detail',
				'postcat',
				'post_latest',
				'post_popular',
				'service_popular',
            )
        );
	}

	public function detail($category,$date,$slug_id)
	{
		$param['content_post.slug'] = $slug_id;
		$post 				= $this->table_post->detail($param);
		$this->add_view($post->id,$post->view);          
		
		$postcat 			= $this->table_post_category->all();
        $post_latest 		= $this->table_post->latest(3);
        $post_popular 		= $this->table_post->popular(3);      
        $service_popular 	= $this->table_service->popular(6);           

		$title['parent'] 	= "Artikel";
		$title['display'] 	= $post->title;
        $title['level'][0]  = "Artikel";
        $title['href'][0]   = "";
        $title['level'][1]  = "$post->category";
        $title['href'][1]   = "";
        $title['level'][2]  = "$post->title";
        $title['href'][2]   = "";

		$settings 			= $this->table_settings->all();

		$this->load->view(
            'post/detail', 
            compact(
				'title',
				'settings',
				'post',
				'postcat',
				'post_latest',
				'post_popular',
				'service_popular',
            )
        );
	}

	private function add_view($idpost,$view)
	{
		$id['id'] 		= $idpost;
		$param['view'] 	= $view + 1;

		$this->table_post->update($id,$param);
	}

	public function search($query)
	{

	}

}

/* End of file Controllername.php */
