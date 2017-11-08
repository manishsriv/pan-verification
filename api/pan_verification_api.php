<?php

//Make the connection in seperate file for multiple APIs.
$servername = "localhost";  // Hostname of MySql Server;
$username = "root"; //Username of MySql Server;
$password = "root";	//Password of MySql Server;
$dbname = "pan_details"; //Database name;

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$pan_number = $_REQUEST['pan_num']; // Get the PAN number sent by Ajax request;
$user_name = $_REQUEST['user_name']; //Get the name sent by Ajax request;

$sql = "SELECT id FROM pan_data WHERE pan_number = '".$pan_number."' AND pan_name = '".$user_name."'";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
    echo 1;
} else {
    echo 0;
}
mysqli_close($conn);
exit;