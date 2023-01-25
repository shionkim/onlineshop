<?php
session_start();

// initializing variables
$username = "";
$email    = "";
$address  = "";
$errors = array(); 
$keyword = "";

// connect to the database
$db = mysqli_connect('localhost', 'root', '', 'shoppingcart');

// REGISTER USER
if (isset($_POST['reg_user'])) {
  // receive all input values from the form
  $username = mysqli_real_escape_string($db, $_POST['username']);
  $email = mysqli_real_escape_string($db, $_POST['email']);
  $address = mysqli_real_escape_string($db, $_POST['address']);
  $password_1 = mysqli_real_escape_string($db, $_POST['password_1']);
  $password_2 = mysqli_real_escape_string($db, $_POST['password_2']);

  // form validation: ensure that the form is correctly filled ...
  // by adding (array_push()) corresponding error unto $errors array
  if (empty($username)) { array_push($errors, "Benutzername ist erforderlich"); }
  if (empty($email)) { array_push($errors, "E-Mail ist erforderlich"); }
  if (empty($address)) { array_push($errors, "Adresse ist erforderlich"); }
  if (empty($password_1)) { array_push($errors, "Passwort ist erforderlich"); }
  if ($password_1 != $password_2) {
	array_push($errors, "Die beiden Passwörter stimmen nicht überein");
  }

  // first check the database to make sure 
  // a user does not already exist with the same username and/or email
  $user_check_query = "SELECT * FROM users WHERE username='$username' OR email='$email' LIMIT 1";
  $result = mysqli_query($db, $user_check_query);
  $user = mysqli_fetch_assoc($result);
  
  if ($user) { // if user exists
    if ($user['username'] === $username) {
      array_push($errors, "Benutzername existiert bereits");
    }

    if ($user['email'] === $email) {
      array_push($errors, "E-Mail existiert bereits");
    }
  }

  // Finally, register user if there are no errors in the form
  if (count($errors) == 0) {
  	$password = md5($password_1);//encrypt the password before saving in the database

  	$query = "INSERT INTO users (username, email, address, password) 
  			  VALUES('$username', '$email', '$address', '$password')";
  	mysqli_query($db, $query);
  	$_SESSION['username'] = $username;
  	$_SESSION['success'] = "You are now logged in";
  	header('location: index.php');
  }
}

// Quesions from USER

if (isset($_POST['faq_user'])) {
  // receive all input values from the form
  $email = mysqli_real_escape_string($db, $_POST['email']);
  $question = mysqli_real_escape_string($db, $_POST['question']);

  // form validation: ensure that the form is correctly filled ...
  // by adding (array_push()) corresponding error unto $errors array
  if (empty($email)) { array_push($errors, "E-Mail ist erforderlich"); }
  if (empty($question)) { array_push($errors, "Frage ist erforderlich"); }

  // Finally, register user if there are no errors in the form
  if (count($errors) == 0) {

  	$query = "INSERT INTO contact (email, question) 
  			  VALUES('$email', '$question')";
  	mysqli_query($db, $query);
  	header('location: index.php?page=questionsub');
  }
}


// LOGIN USER
if (isset($_POST['login_user'])) {
  $username = mysqli_real_escape_string($db, $_POST['username']);
  $password = mysqli_real_escape_string($db, $_POST['password']);
  
    if (empty($username)) {
        array_push($errors, "Benutzername ist erforderlich");
    }
    if (empty($password)) {
        array_push($errors, "Passwort ist erforderlich");
    }
  
    if (count($errors) == 0) {
        $password = md5($password);
        $query = "SELECT * FROM users WHERE username='$username' AND password='$password'";
        $results = mysqli_query($db, $query);
        if (mysqli_num_rows($results) == 1) {
          $_SESSION['username'] = $username;
          $_SESSION['success'] = "You are now logged in";
          header('location: index.php');
        }else {
            array_push($errors, "Falsche Kombination aus Benutzername und Kennwort");
        }
    }
  }

// Search

if(isset($_POST['search'])){

  $keyword=$_POST['search'];

  $sql="SELECT * FROM products WHERE product_keywords LIKE '%$keyword%'";
  $res=$db->query($sql);
}
  

// SAVE ITEMS

//Get the username on the page, this will be displayed on the nav bar.
$username_status = ($_SESSION['username']);
$product_id = (int)$_POST['product_id'];
$quantity = (int)$_POST['quantity'];
?>
