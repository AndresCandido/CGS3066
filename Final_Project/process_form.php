<?php
//this is just the menu table update file 
//It lets users add menu items to the mysql table through the webpage

include 'db_connect.php';

$Type = $_POST["Type"];
$Name = $_POST["Name"];
$Description = $_POST["Description"];
$Price = filter_input(INPUT_POST, "Price", FILTER_VALIDATE_FLOAT);

if ( ($Name == '') OR ($Price == 0)){
    die("Item must have a name AND price must be greater than 0");
}

if ( (strlen($Name) > 50) OR (strlen($Description) == 500)){
    die("Item name must be less than 50 characters AND Description must be less than 500 characters");
}

var_dump($Type, $Name, $Description, $Price);


$sql = "INSERT INTO menu (Type, Name, Description, Price) VALUE (?, ?, ?, ?)";

$stmt = mysqli_stmt_init($dbc);

if ( ! mysqli_stmt_prepare($stmt, $sql)){
    die(mysqli_error($conn));
}

mysqli_stmt_bind_param($stmt, "sssi", $Type, $Name, $Description, $Price);

mysqli_stmt_execute($stmt);

echo "Item Added."

?>