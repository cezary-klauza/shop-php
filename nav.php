<?php
$cart = json_decode($_COOKIE['cart']);
$total_price = 0.00;
foreach ($cart as $key => $value) {
    $id = intval($value);
    $sql_query = "SELECT name, price FROM products WHERE id={$id}";
    $res = mysqli_query($conn, $sql_query);
    $r = mysqli_fetch_assoc($res);
    $price = floatval($r['price']);
    $total_price = $total_price + $price;
}
?>
<link rel="stylesheet" href="style/nav.css">
<nav>
    <div id="nav-conteiner">
        <h1><a href="index.php">logo</a></h1>
        <div id="cart-conteiner">
            <p><?php echo $total_price; ?>$</p>
            <a href="cart.php"><img src="./assets/cart.svg" alt="cart"></a>
        </div>
    </div>
</nav>