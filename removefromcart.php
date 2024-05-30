<?php
if (!isset($_GET['key']) && !isset($_COOKIE['cart'])) {
    header('Location: index.php');
} else {
    $ar = json_decode($_COOKIE['cart'], true);
    unset($ar[$_GET['key']]);
    setcookie('cart', json_encode($ar), time() + 60 * 60 * 24 * 30, '/');

    header("Location: cart.php");
}
