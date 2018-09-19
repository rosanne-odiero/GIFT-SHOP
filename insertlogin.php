<?php
$mysqli = new mysqli("localhost", "root", "toor", "giftit");
if($mysqli === false){
    die("ERROR: Could not connect. " . $mysqli->connect_error);
}


$User_Name = $mysqli->real_escape_string($_REQUEST['email']);

$Password = $mysqli->real_escape_string($_REQUEST['password']);

$query = "SELECT * FROM register WHERE email = '$User_Name' and password ='$Password';";
$result=$mysqli->query($query)or die($mysqli->error());

  $row=mysqli_fetch_array($result);
 if($row['email']==$User_Name && $row['password']==$Password){
 	header("Location: mainpage.php");
 	echo "Login Successful! Welcome ".$row['fullname'];
 } else{
 	header("Location: LoginForm.html");
 	echo "Failed to login";
 }
// Close connection
$mysqli->close();

?>