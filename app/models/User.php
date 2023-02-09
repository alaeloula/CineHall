<?php
class User
{
  private $db;

  public function __construct()
  {
    $this->db = new Database;
  }

  // Regsiter user
  public function register($data,$token)
  {
    $this->db->query('INSERT INTO `user`(`token`, `nom`, `email`) VALUES(:token,:name, :email)');
    // Bind values
    $this->db->bind(':name', $data['name']);
    $this->db->bind(':email', $data['email']);
    $this->db->bind(':token', $token);

    // Execute
    if ($this->db->execute()) {
      return $token;
    } else {
      return false;
    }
  }

  // Login User
  public function login($token)
  {
    $this->db->query('SELECT * FROM user WHERE token = :token');
    $this->db->bind(':token', $token);

    $row = $this->db->single();

   
    if ($row) {
      return $row;
    } else {
      return false;
    }
  }

  // Find user by email
  public function findUserByEmail($email)
  {
    $this->db->query('SELECT * FROM user WHERE email = :email');
    // Bind value
    $this->db->bind(':email', $email);

    $row = $this->db->single();

    // Check row
    if ($this->db->rowCount() > 0) {
      return true;
    } else {
      return false;
    }
  }

  public function about($data)
  {

    $this->db->query('INSERT INTO produit (`title`, `quantite`, `price`,`id_c`) VALUES(:name, :quantite, :prix,:id_c)');
    // Bind values
    $this->db->bind(':name', $data['name']);
    $this->db->bind(':quantite', $data['quantite']);
    $this->db->bind(':prix', $data['prix']);
    $this->db->bind(':id_c', $data['cat']);

    // Execute
    if ($this->db->execute()) {
      return true;
    } else {
      return false;
    }
  }
  public function cat($data)
  {

    $this->db->query('INSERT INTO category (`nom`) VALUES(:name)');
    // Bind values
    $this->db->bind(':name', $data['name']);

    // Execute
    if ($this->db->execute()) {
      return true;
    } else {
      return false;
    }
  }

  public function getCat()
  {
    $this->db->query('SELECT * FROM `category`');
    $results = $this->db->resultSet();
    return $results;
  }
}
