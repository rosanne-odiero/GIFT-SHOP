<?php
//main connection 
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$mysqli = new mysqli("localhost", "root", "toor", "Giftit");
 
// Check connection
if($mysqli === false){
    die("ERROR: Could not connect. " . $mysqli->connect_error);
}
 
// Print host information
// echo "Connect Successfully. Host info: " . $mysqli->host_info;
 
// Close connection
$mysqli->close();

 define('BASEURL', '/GIFT-SHOP/');
 define('CART_COOKIE', 'SBwi72UCklwiqzz2');
 define('CART_COOKIE_EXPIRE', time()+(86400*30));
 session_start();
 $cart_id='';
 if(isset($_COOKIE[CART_COOKIE])){
 	$cart_id=real_escape_string($_COOKIE[CART_COOKIE]);
 }
?>

