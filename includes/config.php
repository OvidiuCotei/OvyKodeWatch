<?php
ob_start(); // turns on output buffering
session_start();
date_default_timezone_set("Europe/Bucharest");

try{
    $con = new PDO("mysql:dbname=OvyKodeWatch;host=localhost", "root", "");
    $con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);
}
catch(PDOException $e)
{
    echo "Connection failed: " . $e->getMessage();
}
?>