<?php 
  session_start(); 

  if (isset($_GET['logout'])) {
  	session_destroy();
  	unset($_SESSION['username']);
  	header("location: index.php?page=login");
  }
?>

<?php
function pdo_connect_mysql() {
    // Update the details below with your MySQL details
    $DATABASE_HOST = 'localhost';
    $DATABASE_USER = 'root';
    $DATABASE_PASS = '';
    $DATABASE_NAME = 'shoppingcart';
   
    try {
    	return new PDO('mysql:host=' . $DATABASE_HOST . ';dbname=' . $DATABASE_NAME . ';charset=utf8', $DATABASE_USER, $DATABASE_PASS);
    } catch (PDOException $exception) {
    	// If there is an error with the connection, stop the script and display the error.
    	exit('Failed to connect to database!');
    }

    
}

// Template header, feel free to customize this
function template_header($title) {

    

    // Get the amount of items in the shopping cart, this will be displayed in the header.
    $num_items_in_cart = isset($_SESSION['cart']) ? count($_SESSION['cart']) : 0;

    //Get the username on the page, this will be displayed on the nav bar.
    $username_status = ($_SESSION['username']) ? : 

    session_start();
    
    if (isset($_SESSION['username'])) {
        echo <<<EOT
        <!DOCTYPE html>
        <html>
            <head>
                <meta charset="utf-8">
                <title>$title</title>
                <link href="style.css" rel="stylesheet" type="text/css">
                <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
            </head>
            <body>
                <header>
                    <div class="content-wrapper">
                        <a href="index.php"><img class="logo" src="imgs/logo.svg"></a>
                        <nav>
                            <a href="index.php?page=products">Produkte</a>
                            <a href="index.php?page=posts">Blog</a>
                            <a href="index.php?page=faqs">FAQ</a>
                            <a href="index.php?page=contact">Kontakt</a>
                        </nav>
                        <div class="link-icons">
                            <p>Hi, <strong>$username_status!</strong></p>
                            <a href="index.php?logout='1'">
                            <i class="fas fa-sign-out-alt"></i>
                            </a>
                            <a href="index.php?page=downloads">
                                <i class="far fa-file-archive"></i>
                            </a>
                            <a href="index.php?page=search">
                                <i class="fas fa-search"></i>
                            </a>
                            <a href="index.php?page=cart">
                                <i class="fas fa-shopping-cart"></i>
                                <span>$num_items_in_cart</span>
                            </a>
                        </div>
                    </div>
                </header>
                <main>
        EOT;
    } 
    
    else {
        echo <<<EOD
        <!DOCTYPE html>
        <html>
            <head>
                <meta charset="utf-8">
                <title>$title</title>
                <link href="style.css" rel="stylesheet" type="text/css">
                <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
            </head>
        <body>
            <header>
            <div class="content-wrapper">
                <a href="index.php"><img class="logo" src="imgs/logo.svg"></a>
                <nav>
                    <a href="index.php?page=products">Produkte</a>
                    <a href="index.php?page=posts">Blog</a>
                    <a href="index.php?page=faqs">FAQ</a>
                    <a href="index.php?page=contact">Kontakt</a>
                </nav>
                <div class="link-icons">
                    <a href="index.php?page=register">
                        <i class="fas fa-user-plus"></i>
                    </a>
                    <a href="index.php?page=login">
                        <i class="fas fa-sign-in-alt"></i>
                    </a>
                    <a href="index.php?page=downloads">
                        <i class="far fa-file-archive"></i>
                    </a>
                    <a href="index.php?page=search">
                        <i class="fas fa-search"></i>
                    </a>
                    <a href="index.php?page=cart">
                        <i class="fas fa-shopping-cart"></i>
                        <span>$num_items_in_cart</span>
                    </a>
                </div>
            </div> 
        </header>
        <main>
    EOD;
    }
    
}

// Template footer
function template_footer() {
$year = date('Y');
echo <<<EOT
        </main>
        <footer>
            <div class="content-wrapper">
                <p>&copy; $year Best Gears</p>
            </div>
        </footer>
        <script src="script.js"></script>
    </body>
</html>
EOT;
}
?>