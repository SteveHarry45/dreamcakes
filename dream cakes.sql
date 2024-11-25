-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2023 at 08:05 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dreamcakes`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'dreamcakes36@gmail.com', 'dreamcakes@123');

-- --------------------------------------------------------

--
-- Table structure for table `cake`
--

CREATE TABLE `cake` (
  `id` int(11) NOT NULL,
  `cakename` varchar(200) NOT NULL,
  `price` int(20) NOT NULL,
  `cid` int(20) NOT NULL,
  `image` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cake`
--

INSERT INTO `cake` (`id`, `cakename`, `price`, `cid`, `image`) VALUES
(26, 'Choco redvelvet', 400, 4, 0x63686f636f2072656476656c7665742063616b652d736d616c6c2e6a7067),
(27, 'Bourbon cake', 400, 4, 0x626f7572626f6e206269637569742063616b652d736d616c6c2e6a7067),
(28, 'pineapple cake', 30, 2, 0x70726f647563742d312e6a7067),
(29, 'choco cake', 40, 2, 0x70726f647563742d322e6a7067),
(30, 'Strawberry cake', 50, 2, 0x70726f647563742d332e6a7067),
(31, 'rainbow cake', 20, 2, 0x70726f647563742d342e6a7067),
(32, 'creamy redvelvet', 400, 4, 0x637265616d792072656476656c7665742063616b652d736d616c6c2e6a7067),
(33, 'Lava redvelvet', 300, 4, 0x6c6176612072656476656c7665742063616b652d736d616c6c2e6a7067),
(34, 'Mug redvelvet', 50, 4, 0x6d75672072656476656c7665742063616b652d736d616c6c2e6a7067),
(35, 'Russberry redvelvet', 300, 4, 0x72757362626572792072656476656c7665742d736d616c6c2e6a7067),
(38, 'Oreo biscuit cake', 300, 4, 0x6f72656f20626973637569742063616b652d736d616c6c2e6a7067),
(39, 'choco biscuit cake', 200, 4, 0x43686f636f6c61746520426973637569742043616b652d736d616c6c2e6a7067),
(41, 'Coconut Donut', 40, 3, 0x436f636f6e75742d646f6e75742e6a7067),
(42, 'Cronut', 45, 3, 0x43726f6e75742e6a7067),
(43, 'Sugar Donut', 45, 3, 0x53756761722d646f6e75742e6a7067),
(44, 'Devils Food', 50, 3, 0x446576696c732d466f6f642d446f6e75742e77656270),
(45, 'Boston Cream Donut', 50, 3, 0x426f73746f6e2d637265616d2d646f6e75742e77656270),
(46, 'Gazled Donut', 40, 3, 0x476c617a65642d646f6e75742e77656270),
(47, 'sour cream donut', 40, 3, 0x536f75722d637265616d2d646f6e75742e6a7067),
(48, 'Fivestar pack', 200, 8, 0x313230373339382d325f312d636164627572792d352d737461722d63686f636f6c6174652d686f6d652d7061636b2d3230302d672d32302d756e6974732e77656270),
(49, 'MilkyBar pack', 100, 8, 0x4e6573746c655f4d696c6b795f4261725f345f426172735f3130305f4772616d732e706e67),
(50, 'Sneakers pack', 250, 8, 0x36353835623039632d303437342d346435642d613061622d3634643564396437366362632e6a706567);

-- --------------------------------------------------------

--
-- Table structure for table `cakecategory`
--

CREATE TABLE `cakecategory` (
  `cid` int(11) NOT NULL,
  `cname` varchar(500) NOT NULL,
  `image` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cakecategory`
--

INSERT INTO `cakecategory` (`cid`, `cname`, `image`) VALUES
(2, 'Cupcake', 0x70726f647563742d312e6a7067),
(3, 'Donuts', 0x7468756d622d312e6a7067),
(4, 'Cakes', 0x70726f647563742d6269672d332e6a7067),
(8, 'chocolates', 0x30352e706e67);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `SID` int(11) NOT NULL,
  `INVOICE_NO` int(11) NOT NULL,
  `INVOICE_DATE` date NOT NULL,
  `CNAME` varchar(50) NOT NULL,
  `CADDRESS` varchar(150) NOT NULL,
  `CCITY` varchar(50) NOT NULL,
  `GRAND_TOTAL` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_products`
--

CREATE TABLE `invoice_products` (
  `ID` int(11) NOT NULL,
  `SID` int(11) NOT NULL,
  `PNAME` varchar(100) NOT NULL,
  `PRICE` double(10,2) NOT NULL,
  `QTY` int(11) NOT NULL,
  `TOTAL` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `invoice_products`
--

INSERT INTO `invoice_products` (`ID`, `SID`, `PNAME`, `PRICE`, `QTY`, `TOTAL`) VALUES
(5, 4, 'red velvet', 400.00, 1, 400.00);

-- --------------------------------------------------------

--
-- Table structure for table `order_cake`
--

CREATE TABLE `order_cake` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `address` longtext NOT NULL,
  `zipcode` int(20) NOT NULL,
  `city` varchar(200) NOT NULL,
  `cakename` varchar(200) NOT NULL,
  `price` int(20) NOT NULL,
  `qty` int(20) NOT NULL,
  `type` varchar(200) NOT NULL,
  `kg` varchar(100) NOT NULL,
  `cprice` int(20) NOT NULL,
  `total` int(20) NOT NULL,
  `ordernote` longtext NOT NULL,
  `payment` varchar(200) NOT NULL,
  `onlinepayid` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `sid` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_cake`
--

INSERT INTO `order_cake` (`id`, `name`, `email`, `phone`, `address`, `zipcode`, `city`, `cakename`, `price`, `qty`, `type`, `kg`, `cprice`, `total`, `ordernote`, `payment`, `onlinepayid`, `status`, `sid`) VALUES
(38, 'gagan', 'gagan638@gmail.com', '987451254', 'mangalore', 575003, 'Mangalore ', 'Bourbon cake', 400, 1, 'egg', '2', 800, 800, '', 'paid', '', 'delivered', 5),
(39, 'gagan', 'gagan638@gmail.com', '987451254', 'mangalore', 575003, 'Mangalore ', 'Mug redvelvet', 50, 1, 'egg', '2', 100, 100, '', 'paid', '', 'delivered', 5),
(40, 'gagan', 'pawan@gmail.com', '987654322', 'mangalore', 575003, 'Mangalore ', 'pineapple cake', 30, 1, 'egg', '', 0, 30, '', 'pending', '', 'cancelled', 0),
(41, 'pawan', 'pawan@gmail.com', '987654322', 'opp katemaar house', 575003, 'Mangalore ', 'pineapple cake', 30, 1, 'egg', '', 0, 30, '', 'paid', '', 'delivered', 5);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `sname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `address` longtext NOT NULL,
  `jod` date NOT NULL,
  `image` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `sname`, `email`, `password`, `phone`, `address`, `jod`, `image`) VALUES
(5, 'shashank', 'shashank@gamil.com', 'shashank', '987451254', 'konaje', '2023-06-01', 0x6c6f676f2e706e672e6a7067);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `address` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `password`, `email`, `phone`, `address`) VALUES
(6, 'gagan', 'password', 'gaganshetty@gmail.com', '987654321', 'mangalore'),
(7, 'anirudh', 'password', 'ani@gmail.com', '9874512541', 'mangalore'),
(8, 'gagan@gmail.com', 'password', 'gagan638@gmail.com', '7204245125', 'mangalore'),
(9, 'pawan', 'password', 'pawan@gmail.com', '987654322', 'mangalore');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cake`
--
ALTER TABLE `cake`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cakecategory`
--
ALTER TABLE `cakecategory`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`SID`);

--
-- Indexes for table `invoice_products`
--
ALTER TABLE `invoice_products`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `order_cake`
--
ALTER TABLE `order_cake`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cake`
--
ALTER TABLE `cake`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `cakecategory`
--
ALTER TABLE `cakecategory`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `SID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `invoice_products`
--
ALTER TABLE `invoice_products`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_cake`
--
ALTER TABLE `order_cake`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
