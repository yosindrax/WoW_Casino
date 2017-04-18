<?php
/**
 * Created by IntelliJ IDEA.
 * User: Mathias
 * Date: 09-01-2017
 * Time: 19:08
 */

include("dbConnection.php");
session_start();

//CREATE ACCOUNT
// prepare and bind
$stmt = $conn->prepare("INSERT INTO accounts (username, pass, email) VALUES (?,?,?)");
$stmt->bind_param("sss", $username, $password, $email);

$username = $_POST['username'] ;
$password = $_POST['pass'];
$email = $_POST['email'];

//SQL-injection Security
$username = stripcslashes($username);
$password = stripcslashes($password);

$username = mysqli_real_escape_string($conn, $username);
$password = mysqli_real_escape_string($conn, $password);

if($stmt->execute() > 0 && $username !== "" && $password !== "") {
    echo "Account succesfully created! ";
} else {
    echo "Error on creating account! ";
}

$stmt->close();
$conn->close();