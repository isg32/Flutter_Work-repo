<?php

$servername = "localhost";

$username = "id21172113_password";

$password = "@Password123";

$dbname = "id21172113_username";

$db_con = new mysqli($servername, $username, $password, $dbname);

if (!$db_con){

	die("Connection Failed: ". mysqli_connect_error());

} ?>