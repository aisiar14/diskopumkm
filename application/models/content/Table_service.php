<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Table_service extends CI_Model
{
    private $table="content_service";

    public function __construct()
    {
        parent::__construct();
    }

    public function page_total()
    {
        $this->db->where('content_service.status',1);
        return $this->db->get($this->table)->num_rows();
    }

    public function page_data($limit,$start)
    {
        $this->db->where('content_service.status',1);
        return $this->db->get($this->table,$limit, $start)->result();	
    }
    
	public function latest($row = null)
    {
		$this->db->order_by('edited','DESC');
        $this->db->where('content_service.status',1);
		if($row != null){
			$this->db->limit($row);
		}
        return $this->db->get($this->table)->result();
    }
    
	public function popular($row = null)
    {
		$this->db->order_by('view','DESC');
        $this->db->where('content_service.status',1);
		if($row != null){
			$this->db->limit($row);
		}
        return $this->db->get($this->table)->result();
    }

    public function detail($id)
    {
        $this->db->where('content_service.status',1);
        $this->db->where($id);
        return $this->db->get($this->table)->row();
    }

    public function update($id, $data)
    {
        $this->db->where($id);
        $this->db->update($this->table,$data);
    }
    
}
