-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2021 at 06:32 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ahnfashion`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `idAdmin` int(11) NOT NULL,
  `fname` varchar(45) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'adm'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idAdmin`, `fname`, `lname`, `email`, `password`, `image`, `type`) VALUES
(1, 'Daniel', 'Dan', 'admin@admin.admin', '21232f297a57a5a743894a0e4a801fc3', NULL, 'adm');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `idBrand` int(11) NOT NULL,
  `brandname` varchar(45) DEFAULT NULL,
  `discription` varchar(450) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`idBrand`, `brandname`, `discription`) VALUES
(1, ' Chocolate  cake', 'A hint of coconut takes this moist chocolate cake to a whole new level'),
(2, 'Lemon yoghurt cake ', 'The use of yoghurt in this recipe makes for a fluffier baked cake'),
(3, ' Black forest cake', ' Black forest cake'),
(4, 'Cinnamon tea cake', 'Cinnamon tea cake'),
(5, 'Marble cake', 'Marble cake'),
(6, ' White chocolate and raspberry', ' White chocolate and raspberry'),
(7, 'White chocolate cheesecake wit', 'White chocolate cheesecake wit');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `idCustomer` int(11) NOT NULL,
  `fname` varchar(45) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `contact` varchar(50) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'cus'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`idCustomer`, `fname`, `lname`, `email`, `password`, `contact`, `address`, `type`) VALUES
(8, 'Denies', 'Denies', 'user@user.com', '827ccb0eea8a706c4c34a16891f84e7b', '12345', '66', 'cus');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `imgid` int(11) NOT NULL,
  `path` varchar(950) DEFAULT NULL,
  `Product_idProduct` int(11) NOT NULL,
  `Product_Brand_idBrand` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`imgid`, `path`, `Product_idProduct`, `Product_Brand_idBrand`) VALUES
(1, 'm1 - Copy (2).jpg', 1, 4),
(2, 'm1 - Copy (3).jpg', 1, 4),
(3, 'm1 - Copy.jpg', 1, 4),
(4, 'm1.jpg', 1, 4),
(5, 'm2 - Copy (2).jpg', 2, 3),
(6, 'm2 - Copy (3).jpg', 2, 3),
(7, 'm2 - Copy.jpg', 2, 3),
(8, 'm2.jpg', 2, 3),
(9, 'm3 - Copy (2).jpg', 3, 4),
(10, 'm3 - Copy (3).jpg', 3, 4),
(11, 'm3 - Copy.jpg', 3, 4),
(12, 'm3.jpg', 3, 4),
(13, 'm4 - Copy (2).jpg', 4, 7),
(14, 'm4 - Copy (3).jpg', 4, 7),
(15, 'm4 - Copy.jpg', 4, 7),
(16, 'm4.jpg', 4, 7),
(17, 'm5 - Copy (2).jpg', 5, 5),
(18, 'm5 - Copy (3).jpg', 5, 5),
(19, 'm5 - Copy.jpg', 5, 5),
(20, 'm5.jpg', 5, 5),
(21, 'm6.jpg', 6, 7),
(22, 'm6.jpg', 6, 7),
(23, 'm6.jpg', 6, 7),
(24, 'm6.jpg', 6, 7),
(28, 'w2.jpg', 7, 2),
(29, 'w2.jpg', 8, 6),
(30, 'w2.jpg', 8, 6),
(31, 'w2.jpg', 8, 6),
(32, 'w2.jpg', 8, 6),
(33, 'w3.jpg', 9, 1),
(34, 'w3.jpg', 9, 1),
(35, 'w3.jpg', 9, 1),
(36, 'w3.jpg', 9, 1),
(37, 'w4.jpg', 10, 2),
(38, 'w4.jpg', 10, 2),
(39, 'w4.jpg', 10, 2),
(40, 'w4.jpg', 10, 2),
(41, 'w5.jpg', 11, 3),
(42, 'w5.jpg', 11, 3),
(43, 'w5.jpg', 11, 3),
(44, 'w5.jpg', 11, 3),
(45, 'w6.jpg', 12, 5),
(46, 'w6.jpg', 12, 5),
(47, 'w6.jpg', 12, 5),
(48, 'w6.jpg', 12, 5),
(49, 'k1.jpg', 13, 1),
(50, 'k1.jpg', 13, 1),
(51, 'k1.jpg', 13, 1),
(52, 'k1.jpg', 13, 1),
(53, 'k2.jpg', 14, 3),
(54, 'k2.jpg', 14, 3),
(55, 'k2.jpg', 14, 3),
(56, 'k2.jpg', 14, 3),
(57, 'k3.jpg', 15, 1),
(58, 'k3.jpg', 15, 1),
(59, 'k3.jpg', 15, 1),
(60, 'k3.jpg', 15, 1),
(61, 'k4.jpg', 16, 5),
(62, 'k4.jpg', 16, 5),
(63, 'k4.jpg', 16, 5),
(64, 'k4.jpg', 16, 5),
(65, 'k5.jpg', 17, 2),
(66, 'k5.jpg', 17, 2),
(67, 'k5.jpg', 17, 2),
(68, 'k5.jpg', 17, 2),
(69, 'k6.jpg', 18, 1),
(70, 'k6.jpg', 18, 1),
(71, 'k6.jpg', 18, 1),
(72, 'k6.jpg', 18, 1);

-- --------------------------------------------------------

--
-- Table structure for table `massage`
--

CREATE TABLE `massage` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `msg` varchar(1000) NOT NULL,
  `date` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `massage`
--

INSERT INTO `massage` (`id`, `name`, `email`, `msg`, `date`, `status`) VALUES
(12, 'Denies', 'user@user.com', 'Hallo', '2021-04-14 09:49:57', 0);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE `orderdetail` (
  `orderid` varchar(100) NOT NULL,
  `deladdress` varchar(500) NOT NULL,
  `deladdress2` varchar(250) NOT NULL,
  `town` varchar(100) NOT NULL,
  `zip` int(25) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `payment` varchar(20) NOT NULL,
  `cid` int(11) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'In Progress',
  `odate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderdetail`
--

INSERT INTO `orderdetail` (`orderid`, `deladdress`, `deladdress2`, `town`, `zip`, `contact`, `payment`, `cid`, `status`, `odate`) VALUES
('OD4444TX06554920210414', '66', '55', 'muranga', 10200, '12345', 'Bank Transfer', 8, 'In Progress', '2021-04-14 04:55:49');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `idProduct` int(11) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `color` varchar(45) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `size` varchar(45) DEFAULT NULL,
  `Brand_idBrand` int(11) NOT NULL,
  `ava` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`idProduct`, `title`, `category`, `color`, `description`, `price`, `size`, `Brand_idBrand`, `ava`) VALUES
(1, 'Mens Two Tone Casual Shirt ', 'Cakes', 'Blue', '<p>Premium Quality Mens Shirt For Casual Use</p>\r\n\r\n<ul>\r\n	<li><strong><small>90% Pure Cotton</small></strong></li>\r\n	<li><strong><small>High Quality</small></strong></li>\r\n	<li><strong><small>Long Lasting</small></strong></li>\r\n	<li><strong><small>Imported</small></strong></li>\r\n</ul>', '1985.00', '', 4, 0),
(2, 'Cakes Casual Check Casual Shirt', 'Cakes', 'White', '<p>High Quality Casual Shirt</p>\r\n\r\n<ul>\r\n	<li>Premium Look</li>\r\n	<li>100% Cotton</li>\r\n	<li>Long Lasting</li>\r\n</ul>', '2100.00', '', 3, 0),
(3, 'Mens Polo Cotton T Shirt', 'Cakes', 'Brown', '<p>Polo Genuine T Shirts</p>\r\n\r\n<ul>\r\n	<li>100% Pure Cotton</li>\r\n	<li>Light Weight</li>\r\n	<li>Long Lasting</li>\r\n</ul>', '1700.00', '', 4, 0),
(4, 'Cakes Party Shirt ', 'Cakes', 'Blue', '<p>Emeral Premium Quality Shirts</p>\r\n\r\n<ul>\r\n	<li>Party Wear</li>\r\n	<li>Light Weight</li>\r\n</ul>', '2800.00', '', 7, 0),
(5, 'Cakes Casual and Smart Casual Cofee Shirt', 'Cakes', 'Brown', '<p>Lacoste Genuine Shirt</p>\r\n\r\n<ul>\r\n	<li>Pure Cotton</li>\r\n	<li>Long Lasting</li>\r\n</ul>', '2100.00', '', 5, 0),
(6, 'Emerald Basic Casual Shirt', 'Cakes', 'Pink', '<p>Emerald Basic Shirt</p>\r\n\r\n<ul>\r\n	<li>Good Qualityrrrrr</li>\r\n</ul>', '1000.00', '', 7, 1),
(7, 'Designer Party Frock', 'Ladies', 'Black', '<p>Designer Quality Party Frock</p>\r\n\r\n<ul>\r\n	<li>Suitable For Night Functions</li>\r\n	<li>Light Weight</li>\r\n</ul>', '3400.00', '', 2, 0),
(8, 'Premium Pink Top', 'Ladies', 'Pink', '<p>Premium Quality Top</p>\r\n\r\n<ul>\r\n	<li>Office Wear</li>\r\n</ul>', '1800.00', '', 6, 1),
(9, 'Ladies Winter Top', 'Ladies', 'Pink', '<p>Ladies High Quality Sweater</p>\r\n\r\n<ul>\r\n	<li>Winter Wear</li>\r\n</ul>', '2300.00', '', 1, 1),
(10, 'Ladies Workout Gym Bottom', 'Ladies', 'Purple', '<p>Genuine Puma Sport Wear</p>\r\n\r\n<ul>\r\n	<li>Hight Quality</li>\r\n	<li>International Standard</li>\r\n	<li>Free Size</li>\r\n</ul>', '2990.00', '', 2, 1),
(11, 'Ladies Printed Top', 'Ladies', 'Blue', '<p>Ladies Office Wear</p>\r\n\r\n<ul>\r\n	<li>Premium Quality</li>\r\n	<li>Light Weight</li>\r\n</ul>', '1550.00', '', 3, 1),
(12, 'Ladies Printed Casual Frock', 'Ladies', 'Red', '<p>Ladies Printed Frock</p>\r\n\r\n<ul>\r\n	<li>High Qality</li>\r\n	<li>Premium Look</li>\r\n	<li>Long Lasting</li>\r\n</ul>', '2200.00', '', 5, 1),
(13, 'Little Baby Boy Tuxedo Suit', 'Gift Packs', 'Black', '<p>Baby Boy Tuxedo</p>\r\n\r\n<ul>\r\n	<li>Premium Look</li>\r\n	<li>High Quality Materials</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>', '6600.00', '', 1, 1),
(14, 'Baby Girl Princess Frock', 'Gift Packs', 'Red', '<p>Party Frock For Baby Girls</p>\r\n\r\n<ul>\r\n	<li>Light Weight</li>\r\n</ul>', '1560.00', '', 3, 1),
(15, 'Gift Packs Boy Italian Tuxedo', 'Gift Packs', 'Grey', '<p>Genuine Italian Product</p>\r\n\r\n<ul>\r\n	<li>High Quality</li>\r\n	<li>Premium Material</li>\r\n</ul>', '2980.00', '', 1, 1),
(16, 'Gift Packs Princess Gown', 'Gift Packs', 'White', '<p>Gift Packs Gown</p>\r\n\r\n<ul>\r\n	<li>High Quality</li>\r\n	<li>Imported Product</li>\r\n</ul>', '1800.00', '', 5, 1),
(17, 'Little Boy Casual Kit Blue', 'Gift Packs', 'Blue', '<p>Little Boy Casul Kit</p>\r\n\r\n<ul>\r\n	<li>High Quality</li>\r\n</ul>', '3250.00', '', 2, 1),
(18, 'Baby Boy Denim Jacket', 'Gift Packs', 'Blue', '<p>Baby Boy Denim Jacket</p>\r\n\r\n<ul>\r\n	<li>High Quality Denim Material</li>\r\n	<li>Long Lasting</li>\r\n</ul>', '1250.00', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `cartid` int(11) NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `productid` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `size` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shoppingcart`
--

INSERT INTO `shoppingcart` (`cartid`, `orderid`, `productid`, `qty`, `amount`, `size`) VALUES
(29, 'OD4444TX06554920210414', 6, 1, '1000', 'md');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idAdmin`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`idBrand`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`idCustomer`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`imgid`,`Product_idProduct`,`Product_Brand_idBrand`),
  ADD KEY `fk_Image_Product1_idx` (`Product_idProduct`,`Product_Brand_idBrand`);

--
-- Indexes for table `massage`
--
ALTER TABLE `massage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`idProduct`,`Brand_idBrand`),
  ADD KEY `fk_Product_Brand_idx` (`Brand_idBrand`);

--
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`cartid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `idAdmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `idBrand` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `idCustomer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `imgid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `massage`
--
ALTER TABLE `massage`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `idProduct` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  MODIFY `cartid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `fk_Image_Product1` FOREIGN KEY (`Product_idProduct`,`Product_Brand_idBrand`) REFERENCES `product` (`idProduct`, `Brand_idBrand`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_Product_Brand` FOREIGN KEY (`Brand_idBrand`) REFERENCES `brand` (`idBrand`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
