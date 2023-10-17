<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Table_post extends CI_Model
{
    private $table="content_post";

    public function __construct()
    {
        parent::__construct();
    }

    public function category_page_total($category)
    {
        $this->db->select('
			content_post.*, 
			ref_post_category.title as category,
			ref_post_category.slug as category_slug
		');
        $this->db->join('ref_post_category', 'ref_post_category.id = content_post.post_category_id');
        $this->db->order_by('content_post.date', 'DESC');
        $this->db->where('ref_post_category.slug',$category);
        $this->db->where('content_post.status',1);
        return $this->db->get($this->table)->num_rows();
    }

    public function category_page_data($category,$limit,$start)
    {
        $this->db->select('
			content_post.*, 
			ref_post_category.title as category,
			ref_post_category.slug as category_slug
		');
        $this->db->join('ref_post_category', 'ref_post_category.id = content_post.post_category_id');
        $this->db->order_by('content_post.date', 'DESC');
        $this->db->where('ref_post_category.slug',$category);
        $this->db->where('content_post.status',1);
        return $this->db->get($this->table,$limit, $start)->result();	
    }

    public function category_latest($category,$row = null)
    {
        $this->db->select('
			content_post.*, 
			ref_post_category.title as category,
			ref_post_category.slug as category_slug
		');
        $this->db->join('ref_post_category', 'ref_post_category.id = content_post.post_category_id');
        $this->db->order_by('content_post.date', 'DESC');
        $this->db->where('ref_post_category.slug',$category);
        $this->db->where('content_post.status',1);
		if($row != null){
			$this->db->limit($row);
		}
        return $this->db->get($this->table)->result();
    }
    
	public function latest($row = null)
    {
        $this->db->select('
			content_post.*, 
			ref_post_category.title as category,
			ref_post_category.slug as category_slug
		');
        $this->db->join('ref_post_category', 'ref_post_category.id = content_post.post_category_id');
        $this->db->order_by('content_post.date', 'DESC');
        $this->db->where('content_post.status',1);
		if($row != null){
			$this->db->limit($row);
		}
        return $this->db->get($this->table)->result();
    }
    
	public function popular($row = null)
    {
        $this->db->select('
			content_post.*, 
			ref_post_category.title as category,
			ref_post_category.slug as category_slug
		');
        $this->db->join('ref_post_category', 'ref_post_category.id = content_post.post_category_id');
        $this->db->order_by('content_post.view', 'DESC');
        $this->db->where('content_post.status',1);
		if($row != null){
			$this->db->limit($row);
		}
        return $this->db->get($this->table)->result();
    }

    public function detail($id)
    {
        $this->db->select('
			content_post.*, 
			ref_post_category.title as category,
			ref_post_category.slug as category_slug
		');
        $this->db->join('ref_post_category', 'ref_post_category.id = content_post.post_category_id');
        $this->db->where($id);
        return $this->db->get($this->table)->row();
    }

    public function update($id, $data)
    {
        $this->db->where($id);
        $this->db->update($this->table,$data);
    }
    
}
