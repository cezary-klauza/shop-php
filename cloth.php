<?php
include('database.php');
if (empty($_GET['id'])) {
    header('Location: index.php');
}
$sql = "SELECT name, description, price, image FROM products WHERE id={$_GET['id']}";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shop</title>
    <link rel="stylesheet" href="./style/style.css">
    <script>
        var $_GET = {};
        if (document.location.toString().indexOf('?') !== -1) {
            var query = document.location
                .toString()
                // get the query string
                .replace(/^.*?\?/, '')
                // and remove any existing hash string (thanks, @vrijdenker)
                .replace(/#.*$/, '')
                .split('&');

            for (var i = 0, l = query.length; i < l; i++) {
                var aux = decodeURIComponent(query[i]).split('=');
                $_GET[aux[0]] = aux[1];
            }
        }

        function addToCart() {
            var href = window.location.href.replace(`cloth.php?id=${$_GET['id']}`, '')
            window.location.replace(href + `addtocart.php?id=${$_GET['id']}`);
        }
    </script>
</head>

<body>
    <?php include('nav.php'); ?>
    <div id="cloth-container">
        <img src="<?php echo $row['image'] ?>" alt="" srcset="">
        <div class="rightside-cloth">
            <h2><?php echo $row['name']; ?></h2>
            <p class="price"><?php echo $row['price']; ?>$</p>
            <input type="button" value="Add to cart" onclick="addToCart()">
            <p class="description"><?php echo $row['description'] ?></p>
        </div>
    </div>
</body>

</html>
<?php
mysqli_close($conn);
?>