-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2022 at 12:24 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `table_3066`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `ItemID` int(11) NOT NULL,
  `Type` varchar(20) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Description` varchar(500) DEFAULT NULL,
  `Price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`ItemID`, `Type`, `Name`, `Description`, `Price`) VALUES
(1, 'Entree', 'Ravioli Carbonara', 'Cheese ravioli baked in a creamy sauce with bacon, topped with a blend of Italian cheeses.', 16.99),
(2, 'Entree', 'Eggplant Parmigiana', 'Hand-breaded eggplant, lightly fried and topped with marinara and melted mozzarella. Served with a side of spaghetti.', 16.79),
(3, 'Entree', 'Shrimp Alfredo', 'Creamy alfredo sauce made from scratch with ingredients like parmesan, cream, garlic and butter, tossed with fettuccine and sautéed shrimp.', 20.29),
(4, 'Entree', 'Fettuccine Alfredo', 'Our signature alfredo sauce made fresh in-house every morning with ingredients like parmesan, cream, garlic and butter, served over fettuccine.', 15.99),
(5, 'Entree', 'Herb-Grilled Salmon', 'Filet grilled to perfection and topped with garlic herb butter. Served with parmesan garlic broccoli.\r\n', 20.79),
(6, 'Entree', '6 oz. Sirloin', 'Grilled 6 oz sirloin topped with garlic herb butter. Served with a side of fettuccine alfredo.\r\n', 18.99),
(7, 'Entree', 'Jamaican Black Pepper Chicken', 'Sauteed Chicken with a Very Spicy Jamaican Black Pepper Sauce. Served with Rice, Black Beans, Plantains and Marinated Pineapple.', 20.79),
(8, 'Entree', 'Carne Asada Steak', 'Steak Medallions Covered with Sauteed Peppers, Onions and Cilantro. Served with Creamy Ranchero Sauce, Fresh Corn and White Rice.', 24.79),
(9, 'Entree', 'Hibachi Steak', 'Hanger Steak with Shiitake Mushrooms, Onions, Bean Sprouts, Wasabi Mashed Potatoes and Vegetables.', 24.79),
(10, 'Entree', 'Smokehouse B.B.Q. Burger', 'Smoked Bacon and Melted Cheddar with Crispy Onion Strings and B.B.Q. Ranch Sauce.', 16.99),
(11, 'Appetizer', 'Calamari', 'Tender calamari, lightly breaded and fried. Served with marinara sauce and spicy ranch.', 11.49),
(12, 'Appetizer', 'Meatballs Parmigiana', 'Five hearty meatballs baked in homemade marinara, topped with melted Italian cheeses and toasted breadcrumbs.', 10.79),
(13, 'Appetizer', 'Spinach-Artichoke Dip', 'A blend of spinach, artichokes and cheeses served warm with flatbread crisps.', 10.29),
(14, 'Appetizer', 'Toasted Ravioli', 'Lightly fried ravioli filled with seasoned beef. Served with marinara sauce.\r\n', 9.29),
(15, 'Appetizer', 'Tex Mex Eggrolls', 'Spicy Chicken, Corn, Black Beans, Peppers, Onions and Melted Cheese. Served with Avocado Cream and Salsa.', 5.79),
(16, 'Appetizer', 'Avocado Eggrolls', 'Avocado, Sun-Dried Tomato, Red Onion and Cilantro Fried in a Crisp Wrapper. Served with a Tamarind-Cashew Dipping Sauce.', 7.29),
(17, 'Appetizer', 'Spicy Tuna', 'Ahi Tuna on Crispy Sushi Rice with Ginger and Green Onion.\r\n\r\n', 5.79),
(18, 'Dessert', 'Classic Basque Cheesecake', 'Super Creamy Cheesecake with a Delicious and Uniquely “Burnt” Top, Covered with Fresh Berries.', 8.99),
(19, 'Dessert', 'Pineapple Upside-Down Cheesecake', 'Pineapple Cheesecake Between Two Layers of Moist Buttery Pineapple Upside-Down Cake.', 8.99),
(20, 'Dessert', 'Dulce De Leche Caramel Cheesecake', 'Caramel Cheesecake Topped with Caramel Mousse and Almond Brickle on a Vanilla Crust.', 8.99),
(21, 'Dessert', 'Mango Key Lime Cheesecake', 'Topped with Mango Mousse on a Vanilla Coconut Macaroon Crust.', 8.99),
(22, 'Dessert', 'Lemon Raspberry Cream Cheesecake', 'Raspberry-Vanilla Cake, Creamy Lemon Cheesecake, Raspberry Lady Fingers and Lemon Mousse.', 8.99),
(23, 'Dessert', 'Black Tie Mousse Cake', 'Rich layers of chocolate cake, dark chocolate cheesecake and creamy custard mousse.', 8.99),
(24, 'Dessert', 'Warm Italian Doughnuts', 'Fried doughnuts tossed in vanilla sugar. Served with raspberry or chocolate sauce.\r\n', 7.49),
(25, 'Beverage', 'Raspberry Lemonade', 'Lemonade mixed with raspberry extract.', 4.09),
(26, 'Beverage', 'Classic Lemonade', 'Just cold lemonade.', 3.39),
(27, 'Beverage', 'Tropical Smoothie', 'Mango, Passion Fruit, Pineapple and Coconut All Blended with Ice. ', 5.79),
(28, 'Beverage', 'Strawberry Fruit Smoothie', 'Strawberries, Orange and Pineapple Juices, Coconut and Banana All Blended with Ice. ', 5.79),
(29, 'Beverage', 'Peach Smoothie', 'Crushed Peaches and Juice All Blended with Ice and Swirled with Raspberry. ', 5.79),
(30, 'Beverage', 'Frozen Iced Mango', 'Mango, Tropical Juices and a Hint of Coconut Blended with Ice and Swirled with Raspberry Puree. ', 5.79),
(31, 'Beverage', 'Fountain drinks', 'Choose from Coke, Diet Coke, Coke Zero Sugar, Sprite, and Dr Pepper.', 3.49),
(32, 'Beverage', 'Lavazza Espresso', 'Italy"s favorite coffee!\r\n', 3.69),
(33, 'Wine', 'Moscato Primo Amore', NULL, 18),
(34, 'Wine', 'Sweet Red Roscato Rosso Dolce', NULL, 18),
(35, 'Wine', 'Red Blend Porta Vita', NULL, 18),
(36, 'Wine', 'Moscato Castello del Poggio', NULL, 29),
(37, 'Wine', 'Riesling Chateau Ste. Michelle', NULL, 27.5),
(38, 'Beverage', 'Iced Tea', 'Ice-cold tea.', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`ItemID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `ItemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
