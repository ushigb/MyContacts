<?php

require_once "boot.php";

$db = new Database();
$conn = $db->getDB();

$request_method = $_SERVER['REQUEST_METHOD'];
switch ($request_method) {
    case 'POST':
        return login();
        break;
    case 'PUT':
        echo "put";
        break;
    case 'DELETE':
        echo logOut();
        break;
    case 'GET':
        echo getUser();
        break;
    default:
        die("No Contacts");
        break;
}

function login() {
    global $conn;
    $contact = json_decode(file_get_contents('php://input'));
    if (empty($contact->name) || empty($contact->pass)) {
        return http_response_code(400);
    }

    $sql = "SELECT `id`, `username` FROM users WHERE `username` = :username
            AND `password` = :password";

    $stmt = $conn->prepare($sql);
    $name = $contact->name;
    $password = $contact->pass;
    $stmt->bindParam(':username', $name);
    $stmt->bindParam(':password', $password);
    $stmt->execute();
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    if (empty($result)) {
        return http_response_code(400);
    }

    $_SESSION['user'] = $result;

    var_dump($_SESSION);
    die();

    return http_response_code(200);
}

function logOut() {
    unset($_SESSION['user']);
    http_response_code(200);
}

function getUser() {
    if (isset($_GET['user']) && !empty($_GET['user'])) {
        if (isset($_SESSION['user']) && $_SESSION['user']['username'] == $_GET['user']) {
            return json_encode($_SESSION['user']);
        }
    } else if (isset($_SESSION['user'])) {
        $encoded = json_encode($_SESSION['user']);
        print_r($encoded);
        die;
    }
    return json_encode([]);
}
