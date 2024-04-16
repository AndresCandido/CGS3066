<?php
//this is just the database connection file 

DEFINE ('DB_USER', 'root');                         // Your Username goes here
DEFINE ('DB_PASSWORD', '');                     // Your password goes here
DEFINE ('DB_HOST', '127.0.0.1');             // database server goes here
DEFINE ('DB_NAME', 'table_3066');               // database name goes here

// Make the connection: (this function takes all 4 parameters)
$dbc = @mysqli_connect (DB_HOST, DB_USER, DB_PASSWORD, DB_NAME) OR die ('Could not connect to MYSQL: ' . mysqli_connect_error());

?>