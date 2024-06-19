<?php
$cart;
$total_price = 0.00;
$cart_count = 0;
if (isset($_COOKIE['cart'])) {
    $cart = json_decode($_COOKIE['cart']);
    foreach ($cart as $key => $value) {
        $cart_count++;
        $id = intval($value);
        $sql_query = "SELECT name, price FROM products WHERE id={$id}";
        $res = mysqli_query($conn, $sql_query);
        $r = mysqli_fetch_assoc($res);
        $price = floatval($r['price']);
        $total_price = $total_price + $price;
    }
}
?>
<link rel="stylesheet" href="style/nav.css">
<nav>
    <div id="nav-container">
        <h1><a href="index.php">logo</a></h1>
        <div id="nav-cart-container">
            <p class="cart-price"><?php echo $total_price; ?>$</p>
            <a href="cart.php"><img src="./assets/cart.svg" alt="cart"></a>
            <?php
            if ($cart_count > 0) { ?>
                <div class="cart-count">
                    <p><?php echo $cart_count; ?></p>
                </div>
            <?php } ?>
        </div>
    </div>
</nav>