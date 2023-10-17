<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Table_request extends CI_Model
{
    private $table="data_request";

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

    public function result($id)
    {
        $this->db->where($id);
        return $this->db->get($this->table)->result();
    }

    public function add($data)
    {
        $this->db->insert($this->table,$data);
    }

    public function update($id, $data)
    {
        $this->db->where($id);
        $this->db->update($this->table,$data);
    }
    
}
