<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Table_post_category extends CI_Model
{
    private $table="ref_post_category";

    public function __construct()
    {
        parent::__construct();
    }

    public function all()
    {
        return $this->db->get($this->table)->result();
    }

    public function get($id)
    {
		$this->db->where($id);
        return $this->db->get($this->table)->row();
    }
    
}
