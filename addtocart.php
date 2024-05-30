<?php
if (empty($_GET['id'])) {
    header('Location: index.php');
} else {
    if (isset($_COOKIE['cart'])) {
        $ar = json_decode($_COOKIE['cart']);
        $ar[] = $_GET['id'];
        setcookie('cart', json_encode($ar), time() + 60 * 60 * 24 * 30, '/');
    } else {
        $ar = [];
        array_push($ar, $_GET['id']);
        setcookie('cart', json_encode($ar), time() + 60 * 60 * 24 * 30, '/');
    }
    header("Location: cloth.php?id={$_GET['id']}");
}
