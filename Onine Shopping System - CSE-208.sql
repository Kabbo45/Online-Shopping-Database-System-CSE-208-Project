-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2021 at 07:39 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_cse208`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `Address_ID` varchar(20) NOT NULL,
  `Apartment_Number` varchar(20) DEFAULT NULL,
  `Street` varchar(20) DEFAULT NULL,
  `Apartment_Name` varchar(20) DEFAULT NULL,
  `Customer_ID` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `Billing_ID` varchar(20) NOT NULL,
  `Billing_Date` varchar(20) DEFAULT NULL,
  `Amount_Paid` varchar(20) DEFAULT NULL,
  `Voucher_ID` varchar(20) DEFAULT NULL,
  `Payment_ID` varchar(20) DEFAULT NULL,
  `Order_ID` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_ID` varchar(20) NOT NULL,
  `First_Name` varchar(20) DEFAULT NULL,
  `Last_Name` varchar(20) DEFAULT NULL,
  `Phone_Number` varchar(20) DEFAULT NULL,
  `Email_Address` varchar(20) DEFAULT NULL,
  `Customer_Type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer category`
--

CREATE TABLE `customer category` (
  `Customer_Category` varchar(20) DEFAULT NULL,
  `Customer_ID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Designation` varchar(20) DEFAULT NULL,
  `Department` varchar(20) DEFAULT NULL,
  `Join_Date` varchar(20) DEFAULT NULL,
  `ssn` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `Employee_ID` varchar(20) NOT NULL,
  `Employee_Name` varchar(20) DEFAULT NULL,
  `SSN` varchar(20) DEFAULT NULL,
  `Designation` varchar(20) DEFAULT NULL,
  `Employee_Type` varchar(20) DEFAULT NULL,
  `Salary` varchar(20) DEFAULT NULL,
  `Payment_ID` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order product`
--

CREATE TABLE `order product` (
  `Quantity` varchar(20) DEFAULT NULL,
  `Product_ID` varchar(20) NOT NULL,
  `Order_ID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Order_ID` varchar(20) NOT NULL,
  `Order_Date` varchar(20) DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `Shippent_Duration` varchar(20) DEFAULT NULL,
  `Payment_ID` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Payment_ID` varchar(20) NOT NULL,
  `Payment_Mode` varchar(20) DEFAULT NULL,
  `Card_Type` varchar(20) DEFAULT NULL,
  `Card_Number` varchar(20) DEFAULT NULL,
  `CVV` varchar(20) DEFAULT NULL,
  `Name_On_Card` varchar(20) DEFAULT NULL,
  `Customer_ID` varchar(20) DEFAULT NULL,
  `Visit_Number` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `First_Name` varchar(20) DEFAULT NULL,
  `Last_Name` varchar(20) DEFAULT NULL,
  `Email_Address` varchar(20) DEFAULT NULL,
  `Phone_Number` varchar(20) DEFAULT NULL,
  `ssn` varchar(20) NOT NULL,
  `Date_Of_Birth` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Product_ID` varchar(20) NOT NULL,
  `Product_Name` varchar(20) DEFAULT NULL,
  `Available_Number` varchar(20) DEFAULT NULL,
  `Group_ID` varchar(20) DEFAULT NULL,
  `Supplier_ID` varchar(20) DEFAULT NULL,
  `Review_ID` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product details`
--

CREATE TABLE `product details` (
  `Product_ID` varchar(20) NOT NULL,
  `Weight` varchar(20) DEFAULT NULL,
  `Width` varchar(20) DEFAULT NULL,
  `Height` varchar(20) DEFAULT NULL,
  `Colour` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product group`
--

CREATE TABLE `product group` (
  `Group_ID` varchar(20) NOT NULL,
  `Group_Name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `Quality_Rating` varchar(20) DEFAULT NULL,
  `Defect%` varchar(20) DEFAULT NULL,
  `Review_ID` varchar(20) NOT NULL,
  `Review_Date` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `Supplier_ID` varchar(20) NOT NULL,
  `Supplier_Name` varchar(20) DEFAULT NULL,
  `Supply_Quantity` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `voucher`
--

CREATE TABLE `voucher` (
  `Voucher_ID` varchar(20) NOT NULL,
  `Discount%` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `zip code`
--

CREATE TABLE `zip code` (
  `State` varchar(20) DEFAULT NULL,
  `Zipcode_ID` varchar(20) NOT NULL,
  `City` varchar(20) DEFAULT NULL,
  `Address_ID` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`Address_ID`),
  ADD KEY `Index5` (`Customer_ID`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`Billing_ID`),
  ADD KEY `Index4` (`Voucher_ID`),
  ADD KEY `Index9` (`Payment_ID`),
  ADD KEY `Index16` (`Order_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_ID`);

--
-- Indexes for table `customer category`
--
ALTER TABLE `customer category`
  ADD PRIMARY KEY (`Customer_ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`ssn`),
  ADD KEY `Index30` (`ssn`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`Employee_ID`),
  ADD KEY `Index8` (`Payment_ID`);

--
-- Indexes for table `order product`
--
ALTER TABLE `order product`
  ADD PRIMARY KEY (`Product_ID`,`Order_ID`),
  ADD KEY `Index12` (`Product_ID`),
  ADD KEY `Index13` (`Order_ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Order_ID`),
  ADD KEY `Index15` (`Payment_ID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Payment_ID`),
  ADD KEY `Index11` (`Customer_ID`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`ssn`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Product_ID`),
  ADD KEY `Index1` (`Group_ID`),
  ADD KEY `Index2` (`Supplier_ID`),
  ADD KEY `Index3` (`Review_ID`);

--
-- Indexes for table `product details`
--
ALTER TABLE `product details`
  ADD PRIMARY KEY (`Product_ID`);

--
-- Indexes for table `product group`
--
ALTER TABLE `product group`
  ADD PRIMARY KEY (`Group_ID`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`Review_ID`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`Supplier_ID`);

--
-- Indexes for table `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`Voucher_ID`);

--
-- Indexes for table `zip code`
--
ALTER TABLE `zip code`
  ADD PRIMARY KEY (`Zipcode_ID`),
  ADD KEY `Index6` (`Address_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `will have` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`);

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `Generates` FOREIGN KEY (`Payment_ID`) REFERENCES `payment` (`Payment_ID`),
  ADD CONSTRAINT `is billed` FOREIGN KEY (`Order_ID`) REFERENCES `orders` (`Order_ID`),
  ADD CONSTRAINT `is included` FOREIGN KEY (`Voucher_ID`) REFERENCES `voucher` (`Voucher_ID`);

--
-- Constraints for table `customer category`
--
ALTER TABLE `customer category`
  ADD CONSTRAINT `belong` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `monitors` FOREIGN KEY (`Payment_ID`) REFERENCES `payment` (`Payment_ID`);

--
-- Constraints for table `order product`
--
ALTER TABLE `order product`
  ADD CONSTRAINT `contains` FOREIGN KEY (`Order_ID`) REFERENCES `orders` (`Order_ID`),
  ADD CONSTRAINT `product order relation` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`Product_ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `Orders` FOREIGN KEY (`Payment_ID`) REFERENCES `payment` (`Payment_ID`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `makes` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `are given` FOREIGN KEY (`Review_ID`) REFERENCES `reviews` (`Review_ID`),
  ADD CONSTRAINT `belongs to` FOREIGN KEY (`Group_ID`) REFERENCES `product group` (`Group_ID`),
  ADD CONSTRAINT `supplies` FOREIGN KEY (`Supplier_ID`) REFERENCES `supplier` (`Supplier_ID`);

--
-- Constraints for table `product details`
--
ALTER TABLE `product details`
  ADD CONSTRAINT `has details` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`Product_ID`);

--
-- Constraints for table `zip code`
--
ALTER TABLE `zip code`
  ADD CONSTRAINT `will zip` FOREIGN KEY (`Address_ID`) REFERENCES `address` (`Address_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
