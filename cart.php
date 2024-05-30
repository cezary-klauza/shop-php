<?php
include('database.php');
$products = [];
$cookies = json_decode($_COOKIE['cart']);
foreach ($cookies as $key => $value) {
    $sql = "SELECT name, description, price, image FROM products WHERE id={$value}";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
    $products[$key] = $row;
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shop</title>
    <link rel="stylesheet" href="./style/style.css">
    <script>
        function removeFromCart(key) {
            var href = window.location.href.replace('cart.php', '')
            window.location.replace(href + `removefromcart.php?key=${key}`);
        }
    </script>
</head>

<body>
    <?php include('nav.php'); ?>
    <div id="cart-container">
        <h2>Cart:</h2>
        <div id="cart-products-container">
            <?php
            if (count($products) === 0) {
                echo "<p>You don't have any clothes in cart.</p>";
            }
            foreach ($products as $key => $product) {
                echo "
                    <div class=\"cart-product\">
                        <img src=\"{$product['image']}\" alt=\"cloth\">
                        <div class=\"cart-product-text\">
                            <h4>{$product['name']}</h4>
                            <p>{$product['price']}</p>
                            <img onclick=\"removeFromCart({$key})\" src=\"./assets/trash.svg\" alt=\"trash icon\">
                        </div>
                    </div>
                    ";
            }
            ?>
        </div>
    </div>
</body>

</html>
<?php
mysqli_close($conn);
?>