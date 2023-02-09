<?php
class Admin
{
  private $db;

  public function __construct()
  {
    $this->db = new Database;
  }




  

  public function add($data)
  {

    $this->db->query('INSERT INTO produit (`title`, `quantite`, `price`,`img`,`id_c`) VALUES(:name, :quantite, :prix,:img,:id_c)');
    // Bind values
    $this->db->bind(':name', $data['name']);
    $this->db->bind(':quantite', $data['quantite']);
    $this->db->bind(':prix', $data['prix']);
    $this->db->bind(':id_c', $data['cat']);
    $this->db->bind(':img', $data['img']);

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
  public function getProduitAll()
  {
    $this->db->query('SELECT * FROM `produitv`');
    $results = $this->db->resultSet();
    return $results;
  }

  public function getProduit($id)
  {
    $this->db->query('SELECT * FROM `produitv` where id = '.$id);
    $results = $this->db->resultSet();
    return $results;
  }

  public function edit($data)
  {
    $this->db->query('UPDATE `produit` SET `title`=:title,`quantite`=:qtty,`price`=:price,`id_c`=:id_c WHERE id=:id');
    // Bind values
    $this->db->bind(':title', $data['name']);
    $this->db->bind(':qtty', $data['quantite']);
    $this->db->bind(':price', $data['prix']);
    $this->db->bind(':id_c', $data['cat']);
    $this->db->bind(':id', $data['id']);

    // Execute
    if ($this->db->execute()) {
      return true;
    } else {
      return false;
    }
  }
  public function delete($id)
  {
    $this->db->query('DELETE FROM `produit` WHERE id=:id');
    // Bind values
    $this->db->bind(':id', $id);
    // Execute
    if ($this->db->execute()) {
      return true;
    } else {
      return false;
    }
  }


  public function filterPrix($id)
  {
    if ($id) {
      $this->db->query('SELECT * FROM `produitv` ORDER BY price DESC');
    } else{
      $this->db->query('SELECT * FROM `produitv` ORDER BY price ASC');
    }
    
    $results = $this->db->resultSet();
    return $results;
  }
  public function filterDate($id)
  {
    if ($id) {
      $this->db->query('SELECT * FROM `produitv` ORDER BY date DESC');
    } else{
      $this->db->query('SELECT * FROM `produitv` ORDER BY price ASC');
    }
    
    $results = $this->db->resultSet();
    return $results;
  }
  public function search($title)
  {
    
     $this->db->query("SELECT * FROM `produitv` WHERE title LIKE '%$title%' or nom like '%$title%' ");
      $results = $this->db->resultSet();
      return $results;
  }
  public function search2($title)
  {
    
     $this->db->query("SELECT * FROM `produitv` WHERE price = $title");
      $results = $this->db->resultSet();
      return $results;
  }
  
  public function st1()
  {
    $this->db->query("SELECT count(p.id)  AS 'totalProd' FROM produit p ");
    $results = $this->db->resultSet();
    return $results;
  }
  public function st2()
  {
    $this->db->query("SELECT count(c.id)  AS 'totalCat' FROM category c");
    $results = $this->db->resultSet();
    return $results;
  }
  public function st3()
  {
    $this->db->query("SELECT max(p.price)  AS 'max' FROM produit p ");
    $results = $this->db->resultSet();
    return $results;
  }
  public function st4()
  {
    $this->db->query("SELECT avg(p.price)  AS 'avg' FROM produit p ");
    $results = $this->db->resultSet();
    return $results;
  }
  public function deleteCat($id)
  {
    $this->db->query('DELETE FROM `category` WHERE id=:id');
    // Bind values
    $this->db->bind(':id', $id);
    // Execute
    if ($this->db->execute()) {
      return true;
    } else {
      return false;
    }
  }
  

}
