<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Table_infrastructure extends CI_Model
{
    private $table="data_infrastructure";

    public function __construct()
    {
        parent::__construct();
    }

    public function page_total()
    {
        $this->db->order_by('data_infrastructure.date', 'DESC');
        $this->db->where('data_infrastructure.status',1);
        return $this->db->get($this->table)->num_rows();
    }

    public function page_data($limit,$start)
    {
        $this->db->order_by('data_infrastructure.date', 'DESC');
        $this->db->where('data_infrastructure.status',1);
        return $this->db->get($this->table,$limit, $start)->result();	
    }
    
	public function latest($row = null)
    {
        $this->db->order_by('data_infrastructure.date', 'DESC');
        $this->db->where('data_infrastructure.status',1);
		if($row != null){
			$this->db->limit($row);
		}
        return $this->db->get($this->table)->result();
    }

    public function detail($id)
    {
        $this->db->where('data_infrastructure.status',1);
        $this->db->where($id);
        return $this->db->get($this->table)->row();
    }

    public function update($id, $data)
    {
        $this->db->where($id);
        $this->db->update($this->table,$data);
    }
    
}
