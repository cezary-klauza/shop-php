<?php
include('database.php');
$addtoquery = "";
if (isset($_GET['search'])) {
    $addtoquery = " WHERE name LIKE '%{$_GET['search']}%' OR description LIKE '%{$_GET['search']}%'";
}
$sql = "SELECT id, name, price, image FROM products {$addtoquery} ORDER BY RAND() LIMIT 9;";
$result = mysqli_query($conn, $sql);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shop</title>
    <link rel="stylesheet" href="./style/style.css">
    <script>
        function scrollToSection() {
            let section = document.getElementById('index-products');
            section.scrollIntoView({
                behavior: 'smooth'
            });
        }
    </script>
</head>

<body>
    <?php include('nav.php'); ?>
    <section class="photo-template-conteiner">
        <div class="photo-template-text-conteiner">
            <h1>Your cloth store!</h1>
            <p>Check our clothes now.</p>
            <button onclick="scrollToSection()">Check it</button>
        </div>
        <img src="./assets/shop-man.jpg" alt="man's clothes">
    </section>
    <section id="index-products">
        <h2>Our Products</h2>
        <form action="index.php" method="get">
            <div class="input-holder">
                <label for="search">
                    <img src="./assets/search.svg" alt="search">
                </label>
                <input type="text" name="search" id="search" placeholder="Search">
            </div>
        </form>
        <div id="products-conteiner">
            <?php
            foreach ($result as $row) {
                echo "
                <a href=\"cloth.php?id={$row["id"]}\">
                    <div class=\"product-conteiner\">
                        <div class=\"product-image-conteiner\">
                            <img src=\"./{$row['image']}\" alt=\"cloth {$row['name']}\">
                        </div>
                        <h4>{$row['name']}</h4>
                        <p>{$row['price']}$</p>
                    </div>
                </a>";
            }
            ?>
        </div>
    </section>
</body>

</html>
<?php
mysqli_close($conn);
?>