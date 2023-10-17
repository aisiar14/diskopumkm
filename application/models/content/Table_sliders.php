<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Table_sliders extends CI_Model
{
    private $table="content_sliders";

    public function __construct()
    {
        parent::__construct();
    }

    public function all()
    {
		$this->db->order_by('number','ASC');
		$this->db->where('status',1);
        return $this->db->get($this->table)->result();
    }
    
}
