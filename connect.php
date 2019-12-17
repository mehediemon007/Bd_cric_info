<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname="bd_player_bio";

// Create connection
$conn = new mysqli($servername, $username, $password,$dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
//echo "Connected successfully"."<br/>";
?>
