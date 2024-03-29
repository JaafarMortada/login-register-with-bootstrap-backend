<?php

include('connection.php');
$username = $_POST['username'];
$password = $_POST['password'];

$query = $mysqli->prepare('select id,username,password,first_name,last_name from user where username=?');
$query->bind_param('s', $username);
$query->execute();

$query->store_result();
$query->bind_result($id, $username, $hashed_password, $first_name, $last_name);
$query->fetch();

$num_rows = $query->num_rows();
if ($num_rows == 0) {
    $response['status'] = "user not found";
} else {
    if (password_verify($password, $hashed_password)) {
        $response['status'] = 'logged in';
        $response['id'] = $id;
        $response['username'] = $username;
        $response['password'] = $hashed_password;
        $response['first_name'] = $first_name;
        $response['last_name'] = $last_name;
    } else {
        $response['status'] = "wrong password";
    }
}
echo json_encode($response);
