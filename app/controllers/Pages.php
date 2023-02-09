<?php
class Pages extends Controller
{
  private $userModel;
  public function __construct()
  {
    $this->userModel = $this->model('User');
  }

  public function index()
  {
    if (isLoggedIn()) {
     
        redirect('admins/index');
      } 
      
    
    $data = [
      'title' => 'SharePosts',
      'description' => 'Simple social network built on the TraversyMVC PHP framework'
    ];

    $this->view('pages/index', $data);
  }

  public function about()
  {
    
      
      $this->view('pages/about');
    
  }
  public function contact()
  {
    
      
      $this->view('pages/contact');
    
  }

  public function about2()
  {
    var_dump($_POST);
    die;
    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
      // Process form
      // Init data
      $data = [
        'name' => trim($_POST['title']),
        'quantite' => trim($_POST['quantite']),
        'prix' => trim($_POST['prix']),
      ];
      $data2 =[
        'name' => trim($_POST['title2']),
        'quantite' => trim($_POST['quantite2']),
        'prix' => trim($_POST['prix2']),
        ];

        $req1=$this->userModel->about($data);
        $req2=$this->userModel->about($data2);
      // Register User
      if ( $req1==true && $req2 ==true ) {
        // flash('register_success', 'You are registered and can log in');
        echo 1;

      } else {
        die('Something went wrong');
      }
    }
  }
  public function cat()
  {
    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
      // Process form
      // Init data
      $data = [
        'name' => trim($_POST['title']),
      ];



      // Register User
      if ($this->userModel->cat($data)) {
        // flash('register_success', 'You are registered and can log in');
        echo 1;

      } else {
        die('Something went wrong');
      }
    } else {
      $this->view('pages/addCat');
    }
  }
  
}