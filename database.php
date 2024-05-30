<?php
$db_host = "localhost";
$db_name = "shop";
$db_user = "root";
$db_pass = "";
$conn;

try {
    $conn = mysqli_connect($db_host, $db_user, $db_pass, $db_name);
} catch (mysqli_sql_exception) {
    die("Error connecting to database");
}
