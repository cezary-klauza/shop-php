-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 30 Maj 2024, 17:40
-- Wersja serwera: 10.4.27-MariaDB
-- Wersja PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `shop`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `description` char(255) NOT NULL,
  `price` float NOT NULL,
  `category` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`category`)),
  `image` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `category`, `image`) VALUES
(1, 'Sports T-Shirt', 'This sports t-shirt is made from high-quality polyester, ensuring breathability and moisture-wicking properties. It features a lightweight design perfect for intense workouts. The fabric is also treated to resist odors and keep you feeling fresh.', 99.99, '[\"mens clothing\",\"summer season\",\"t-shirts\"]', 'assets/products/product-1.png'),
(2, 'Leather Jacket', 'Made from genuine leather, this stylish jacket offers durability and a classic look. The interior is lined with soft fabric for added comfort. Perfect for cooler days, it combines warmth with timeless fashion.', 499.99, '[\"mens clothing\",\"winter season\",\"jackets\"]', 'assets/products/product-2.png'),
(3, 'Hoodie', 'This comfortable hoodie is made from a soft cotton-polyester blend. It offers warmth and durability, perfect for cooler days. The hoodie features a kangaroo pocket and adjustable drawstrings for a customized fit.', 139.99, '[\"mens clothing\",\"autumn season\",\"hoodies\"]', 'assets/products/product-3.png'),
(4, 'Chinos', 'These stylish chinos are made from a cotton-spandex blend, offering comfort and flexibility. The fabric is breathable, making them ideal for all-day wear. They provide a polished look suitable for any occasion.', 139.99, '[\"mens clothing\",\"spring season\",\"pants\"]', 'assets/products/product-4.png'),
(5, 'Running Shoes', 'These running shoes are made from lightweight mesh, providing breathability and comfort. The soles are designed for excellent grip and shock absorption. Perfect for both casual wear and intense running sessions.', 129.99, '[\"mens clothing\",\"summer season\",\"shoes\"]', 'assets/products/product-5.png'),
(6, 'Wool Sweater', 'This wool sweater is made from 100% merino wool, offering superior warmth and softness. The fabric is breathable and moisture-wicking, making it ideal for cold weather. It features a classic design with ribbed cuffs and hem.', 159.99, '[\"mens clothing\",\"winter season\",\"sweaters\"]', 'assets/products/product-6.png'),
(7, 'Denim Jeans', 'These denim jeans are made from a cotton-spandex blend, offering a comfortable and flexible fit. The fabric is durable and perfect for everyday wear. They feature a classic five-pocket design and a modern slim fit.', 89.99, '[\"mens clothing\",\"autumn season\",\"pants\"]', 'assets/products/product-7.png'),
(8, 'Parka', 'This parka is made from water-resistant polyester and insulated with down for ultimate warmth. The fabric is durable and designed to withstand harsh weather conditions. It features a detachable hood and multiple pockets for practicality.', 299.99, '[\"mens clothing\",\"winter season\",\"jackets\"]', 'assets/products/product-8.png'),
(9, 'Linen Shirt', 'This linen shirt is made from 100% linen, providing a lightweight and breathable feel. The fabric is perfect for hot summer days, keeping you cool and comfortable. It features a classic collar and button-down front.', 79.99, '[\"mens clothing\",\"summer season\",\"shirts\"]', 'assets/products/product-9.png'),
(10, 'Track Pants', 'These track pants are made from a soft polyester blend, offering comfort and flexibility. The fabric is breathable and perfect for workouts or casual wear. They feature an elastic waistband and zippered pockets.', 59.99, '[\"mens clothing\",\"spring season\",\"pants\"]', 'assets/products/product-10.png'),
(11, 'Chelsea Boots', 'These Chelsea boots are made from genuine leather, offering a sleek and stylish look. The fabric is durable and perfect for both formal and casual occasions. They feature elastic side panels and a pull-tab for easy wear.', 199.99, '[\"mens clothing\",\"autumn season\",\"shoes\"]', 'assets/products/product-11.png'),
(12, 'Bomber Jacket', 'This bomber jacket is made from a durable nylon fabric, providing wind and water resistance. It features a comfortable fit with ribbed cuffs and hem. The jacket is perfect for a casual, stylish look.', 139.99, '[\"mens clothing\",\"spring season\",\"jackets\"]', 'assets/products/product-12.png'),
(13, 'Polo Shirt', 'This classic polo shirt is made from a breathable cotton piqué. The fabric is soft and durable, making it perfect for everyday wear. It features a ribbed collar and cuffs for a polished look.', 79.99, '[\"mens clothing\",\"summer season\",\"t-shirts\"]', 'assets/products/product-13.png'),
(14, 'Chukka Boots', 'These chukka boots are made from premium suede leather, offering a sophisticated look. The fabric is durable and perfect for both casual and semi-formal occasions. They feature a lace-up design and comfortable insole.', 149.99, '[\"mens clothing\",\"autumn season\",\"shoes\"]', 'assets/products/product-14.png'),
(15, 'Windbreaker', 'This lightweight windbreaker is made from water-resistant nylon. The fabric offers protection against wind and light rain. It features an adjustable hood and cuffs for added comfort.', 99.99, '[\"mens clothing\",\"spring season\",\"jackets\"]', 'assets/products/product-15.png'),
(16, 'Cargo Shorts', 'These cargo shorts are made from a durable cotton fabric, providing comfort and practicality. The fabric is breathable, perfect for summer wear. They feature multiple pockets for ample storage.', 49.99, '[\"mens clothing\",\"summer season\",\"pants\"]', 'assets/products/product-16.png'),
(17, 'Henley Shirt', 'This comfortable Henley shirt is made from a soft cotton blend. The fabric is breathable and perfect for layering. It features a classic design with a buttoned placket.', 69.99, '[\"mens clothing\",\"autumn season\",\"t-shirts\"]', 'assets/products/product-17.png'),
(18, 'Flip Flops', 'These flip flops are made from a durable rubber material, offering comfort and flexibility. The fabric is water-resistant, perfect for beach and poolside wear. They feature a cushioned footbed for added comfort.', 19.99, '[\"mens clothing\",\"womens clothing\",\"summer season\",\"shoes\"]', 'assets/products/product-18.png'),
(19, 'Peacoat', 'This classic peacoat is made from a wool-blend fabric, offering warmth and style. The material is thick and durable, perfect for winter wear. It features a double-breasted design with large buttons.', 349.99, '[\"mens clothing\",\"winter season\",\"jackets\"]', 'assets/products/product-19.png'),
(20, 'Joggers', 'These joggers are made from a soft cotton-polyester blend, offering comfort and flexibility. The fabric is breathable, perfect for workouts or lounging. They feature an elastic waistband and ankle cuffs.', 59.99, '[\"mens clothing\",\"spring season\",\"pants\"]', 'assets/products/product-20.png'),
(21, 'Trench Coat', 'This trench coat is made from a water-resistant cotton blend, offering a stylish and practical option for rainy days. The fabric is durable and lightweight. It features a belted waist and double-breasted design.', 299.99, '[\"womens clothing\",\"spring season\",\"jackets\"]', 'assets/products/product-21.png'),
(22, 'Board Shorts', 'These board shorts are made from quick-drying polyester, perfect for swimming and beach activities. The fabric is lightweight and comfortable. They feature a drawstring waistband and a side pocket.', 49.99, '[\"mens clothing\",\"summer season\",\"pants\"]', 'assets/products/product-22.png'),
(23, 'Plaid Shirt', 'This plaid shirt is made from soft flannel cotton, offering comfort and warmth. The fabric is perfect for layering during cooler seasons. It features a classic button-down design and a chest pocket.', 79.99, '[\"womens clothing\",\"autumn season\",\"shirts\"]', 'assets/products/product-23.png'),
(24, 'Dress Shoes', 'These dress shoes are made from genuine leather, offering a polished and professional look. The fabric is durable and perfect for formal occasions. They feature a cushioned insole and lace-up design.', 179.99, '[\"mens clothing\",\"autumn season\",\"shoes\"]', 'assets/products/product-24.png'),
(25, 'Baseball Cap', 'This baseball cap is made from a durable cotton blend, offering comfort and style. The fabric is breathable, perfect for outdoor activities. It features an adjustable strap for a customized fit.', 29.99, '[\"mens clothing\",\"summer season\",\"accessories\"]', 'assets/products/product-25.png'),
(26, 'Leather Belt', 'This leather belt is made from genuine leather, offering durability and a classic look. The fabric is perfect for both casual and formal wear. It features a metal buckle and multiple holes for an adjustable fit.', 49.99, '[\"mens clothing\",\"autumn season\",\"accessories\"]', 'assets/products/product-26.png'),
(27, 'Sweatshirt', 'This cozy sweatshirt is made from a soft cotton blend, offering comfort and warmth. The fabric is perfect for casual wear during cooler days. It features a crew neckline and ribbed cuffs.', 59.99, '[\"womens clothing\",\"spring season\",\"sweaters\"]', 'assets/products/product-27.png'),
(28, 'Rain Boots', 'These rain boots are made from waterproof rubber, providing excellent protection against wet conditions. The fabric is durable and perfect for outdoor activities. They feature a slip-resistant sole for added safety.', 79.99, '[\"mens clothing\",\"womens clothing\",\"spring season\",\"shoes\"]', 'assets/products/product-28.png'),
(29, 'Thermal Underwear', 'This thermal underwear set is made from a soft and warm polyester blend. The fabric is moisture-wicking and perfect for layering during cold weather. It includes a long-sleeve top and bottom.', 49.99, '[\"womens clothing\",\"winter season\",\"underwear\"]', 'assets/products/product-29.png'),
(30, 'Fleece Jacket', 'This fleece jacket is made from soft polyester fleece, offering warmth and comfort. The fabric is breathable and perfect for layering. It features a full-zip front and zippered pockets.', 89.99, '[\"womens clothing\",\"autumn season\",\"jackets\"]', 'assets/products/product-30.png'),
(31, 'V-Neck T-Shirt', 'This V-neck t-shirt is made from a soft cotton blend, offering comfort and breathability. The fabric is perfect for everyday wear. It features a classic V-neckline and a relaxed fit.', 29.99, '[\"mens clothing\",\"summer season\",\"t-shirts\"]', 'assets/products/product-31.png'),
(32, 'Corduroy Pants', 'These corduroy pants are made from a soft cotton blend, offering warmth and style. The fabric is durable and perfect for autumn wear. They feature a classic five-pocket design and a straight leg fit.', 79.99, '[\"womens clothing\",\"autumn season\",\"pants\"]', 'assets/products/product-32.png'),
(33, 'Blazer', 'This blazer is made from a high-quality wool blend, offering a sophisticated look. The fabric is perfect for formal occasions. It features a classic single-breasted design and a tailored fit.', 199.99, '[\"mens clothing\",\"autumn season\",\"jackets\"]', 'assets/products/product-33.png'),
(34, 'Graphic Tee', 'This graphic tee is made from a soft cotton fabric, offering comfort and style. The fabric is breathable and perfect for casual wear. It features a unique graphic design on the front.', 39.99, '[\"mens clothing\",\"womens clothing\",\"summer season\",\"t-shirts\"]', 'assets/products/product-34.png'),
(35, 'Hiking Boots', 'These hiking boots are made from durable leather and synthetic materials, offering protection and support. The fabric is water-resistant and perfect for outdoor adventures. They feature a rugged sole for excellent traction.', 159.99, '[\"mens clothing\",\"autumn season\",\"shoes\"]', 'assets/products/product-35.png'),
(36, 'Dress Shirt', 'This dress shirt is made from a high-quality cotton blend, offering a crisp and professional look. The fabric is breathable and perfect for formal occasions. It features a classic collar and button-down front.', 69.99, '[\"mens clothing\",\"summer season\",\"shirts\"]', 'assets/products/product-36.png'),
(37, 'Pullover Sweater', 'This pullover sweater is made from a soft wool blend, offering warmth and comfort. The fabric is perfect for cold weather. It features a classic crew neckline and ribbed cuffs.', 99.99, '[\"womens clothing\",\"winter season\",\"sweaters\"]', 'assets/products/product-37.png'),
(38, 'Slip-On Shoes', 'These slip-on shoes are made from a durable canvas fabric, offering comfort and style. The fabric is breathable and perfect for casual wear. They feature a cushioned footbed for added comfort.', 49.99, '[\"mens clothing\",\"summer season\",\"shoes\"]', 'assets/products/product-38.png'),
(39, 'Windproof Jacket', 'This windproof jacket is made from a durable nylon fabric, offering protection against wind and light rain. The fabric is lightweight and perfect for outdoor activities. It features an adjustable hood and multiple pockets.', 129.99, '[\"mens clothing\",\"spring season\",\"jackets\"]', 'assets/products/product-39.png'),
(40, 'Beanie', 'This beanie is made from a soft acrylic fabric, offering warmth and comfort. The fabric is stretchy and perfect for cold weather. It features a classic ribbed design and a fold-over cuff.', 19.99, '[\"mens clothing\",\"winter season\",\"accessories\"]', 'assets/products/product-40.png'),
(41, 'Jogging Shorts', 'These jogging shorts are made from a lightweight polyester blend, offering comfort and flexibility. The fabric is breathable and perfect for workouts. They feature an elastic waistband and a side pocket.', 29.99, '[\"mens clothing\",\"summer season\",\"pants\"]', 'assets/products/product-41.png'),
(42, 'Work Boots', 'These work boots are made from durable leather and synthetic materials, offering protection and support. The fabric is water-resistant and perfect for tough work environments. They feature a steel toe for added safety.', 189.99, '[\"mens clothing\",\"winter season\",\"shoes\"]', 'assets/products/product-42.png'),
(43, 'Down Vest', 'This down vest is made from water-resistant polyester and filled with down insulation for warmth. The fabric is lightweight and perfect for layering. It features a full-zip front and zippered pockets.', 129.99, '[\"womens clothing\",\"autumn season\",\"jackets\"]', 'assets/products/product-43.png'),
(44, 'Puffer Jacket', 'This puffer jacket is made from water-resistant polyester and insulated with down for ultimate warmth. The fabric is lightweight and perfect for cold weather. It features a hood and multiple pockets for practicality.', 199.99, '[\"womens clothing\",\"winter season\",\"jackets\"]', 'assets/products/product-44.png'),
(45, 'Tank Top', 'This tank top is made from a soft cotton blend, offering comfort and breathability. The fabric is perfect for summer wear. It features a classic scoop neckline and a relaxed fit.', 19.99, '[\"womens clothing\",\"summer season\",\"t-shirts\"]', 'assets/products/product-45.png'),
(46, 'Dress Pants', 'These dress pants are made from a high-quality wool blend, offering a professional and polished look. The fabric is breathable and perfect for formal occasions. They feature a flat front and a tailored fit.', 99.99, '[\"mens clothing\",\"autumn season\",\"pants\"]', 'assets/products/product-46.png'),
(47, 'Hiking Jacket', 'This hiking jacket is made from a durable and water-resistant fabric, offering protection against the elements. The material is breathable and perfect for outdoor adventures. It features multiple pockets and an adjustable hood.', 179.99, '[\"womens clothing\",\"autumn season\",\"jackets\"]', 'assets/products/product-47.png'),
(48, 'Thermal Socks', 'These thermal socks are made from a soft wool blend, offering warmth and comfort. The fabric is moisture-wicking and perfect for cold weather. They feature a reinforced heel and toe for durability.', 19.99, '[\"womens clothing\",\"winter season\",\"accessories\"]', 'assets/products/product-48.png'),
(49, 'Flannel Pajamas', 'These flannel pajamas are made from soft cotton flannel, offering warmth and comfort. The fabric is breathable and perfect for winter nights. The set includes a long-sleeve top and matching pants.', 49.99, '[\"womens clothing\",\"winter season\",\"sleepwear\"]', 'assets/products/product-49.png'),
(50, 'Khaki Pants', 'These khaki pants are made from a durable cotton blend, offering comfort and style. The fabric is breathable and perfect for everyday wear. They feature a classic fit and multiple pockets for practicality.', 59.99, '[\"mens clothing\",\"spring season\",\"pants\"]', 'assets/products/product-50.png');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
