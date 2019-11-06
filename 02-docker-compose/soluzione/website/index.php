<html>
    <head>
        <title>My Shop</title>
    </head>

    <body>
        <h1>Welcome to my shop</h1>
        <ul>
            <?php

            $json = file_get_contents('http://product-service/');
            $obj = json_decode($json);

            $products = $obj->products;

            foreach ($products as $product) {
                echo "<li>Product ID: ".$product[0]." Productname: ".$product[1]." Price: ".$product[2]."</li>";
            }

            ?>
        </ul>
    </body>
</html>
