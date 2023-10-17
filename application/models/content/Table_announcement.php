<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Table_announcement extends CI_Model
{
    private $table="content_announcement";

    public function __construct()
    {
        parent::__construct();
    }

    public function all()
    {
		$this->db->where('status',1);
        return $this->db->get($this->table)->row();
    }
    
}
