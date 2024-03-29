<?php

include('connection.php');

$username = $_POST['username'];
$password = $_POST['password'];
$first_name = $_POST['first_name'];
$last_name = $_POST['last_name'];

$check_username = $mysqli->prepare('select username from user where username=?');
$check_username->bind_param('s', $username);
$check_username->execute();
$check_username->store_result();
$username_exists = $check_username->num_rows();

if ($username_exists == 0) {
    $hashed_password = password_hash($password, PASSWORD_BCRYPT);
    $query = $mysqli->prepare('insert into user(username,password,first_name,last_name) values(?,?,?,?)');
    $query->bind_param('ssss', $username, $hashed_password, $first_name, $last_name);
    $query->execute();

    $response['status'] = "success";
    $response['message'] = "signed up successfully";
    $response['username'] = $username;
    $response['first_name'] = $first_name;
    $response['last_name'] = $last_name;
} else {
    $response['status'] = "failed";
    $response['message'] = "username taken";
}

echo json_encode($response);
