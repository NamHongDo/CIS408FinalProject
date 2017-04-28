-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2017 at 10:26 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thecoppermoon`
--

-- --------------------------------------------------------

--
-- Table structure for table `americano`
--

CREATE TABLE `americano` (
  `Akey` varchar(4) NOT NULL,
  `Description` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `americano`
--

INSERT INTO `americano` (`Akey`, `Description`) VALUES
('61', ' Love is in the air'),
('62', ' Classic choice'),
('63', ' Never fail to impress'),
('64', ' Wild and untammed'),
('65', ' What you seek in a mocha is here'),
('66', ' Perfect blend between passion and love'),
('67', ' Soothing to the very last sip'),
('68', ' Overflowing with passion ');

-- --------------------------------------------------------

--
-- Table structure for table `icecream`
--

CREATE TABLE `icecream` (
  `Ikey` varchar(4) NOT NULL,
  `Description` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `icecream`
--

INSERT INTO `icecream` (`Ikey`, `Description`) VALUES
('151', 'The taste you will never forget'),
('152', 'The taste you will hate to forget');

-- --------------------------------------------------------

--
-- Table structure for table `latte`
--

CREATE TABLE `latte` (
  `Lkey` varchar(4) NOT NULL,
  `Description` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `latte`
--

INSERT INTO `latte` (`Lkey`, `Description`) VALUES
('0', ' Latte with delicious Dark Chocolate and cream'),
('1', ' Showered in unique tase of Cinamon and love'),
('2', ' Classic choice of Latte'),
('3', ' Perfect drinks for cold day'),
('4', ' Want to impress your colleague with style? This is your pick'),
('5', ' Simple but balanced'),
('6', ' Our signature drink'),
('7', ' Submerge yourself in the nature'),
('8', ' a good way to become an Italian');

-- --------------------------------------------------------

--
-- Table structure for table `masterdrinks`
--

CREATE TABLE `masterdrinks` (
  `DName` varchar(35) NOT NULL,
  `DCategory` varchar(15) NOT NULL,
  `DType` varchar(10) NOT NULL,
  `DKey` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `masterdrinks`
--

INSERT INTO `masterdrinks` (`DName`, `DCategory`, `DType`, `DKey`) VALUES
('Dark Chocolate', 'coffee', 'staple', 0),
('Cinamon Dolce', 'coffee', 'staple', 1),
('Vanilla', 'coffee', 'staple', 2),
('Pumpkin', 'coffee ', 'staple', 3),
('White Chocolate', 'Cofee', 'staple', 4),
('Hazelnut', 'coffee', 'staple', 5),
('Copper Moon', 'coffee', 'staple', 6),
('Blackberry', 'coffee', 'seasonal', 7),
('Latte Machiato', 'coffee', 'seasonal', 8),
('Salted Caramel', 'coffee', ' taple', 31),
('Hazelnut', 'coffee', 'staple', 32),
('Dark Chocolate', 'coffee', 'staple', 33),
('Caffe', ' coffee', 'staple', 34),
('Iced Skinny', 'coffee', 'staple', 35),
('White Chocolate', 'coffee', 'staple', 36),
('Salted Caramel', 'coffee', 'staple', 37),
('White Chocolate', ' coffee', 'staple', 38),
('Dillon', ' coffee', 'staple', 39),
('German Dark Chocolate', 'coffee', 'seasonal', 40),
('Salted Caramel', 'coffee', 'staple', 61),
('Hazelnut', 'coffee', 'staple', 62),
('Old Fashion', ' coffee', 'staple', 63),
('Banana Peanut', 'coffee', 'staple', 64),
('Copper Moon', 'coffee', 'staple', 65),
('Mint', 'coffee', 'staple', 66),
('Brown Sugar', 'coffee', 'staple', 67),
('Trump', 'coffee', 'seasonal', 68),
('Strawberry', 'smoothie', 'staple', 91),
('Kiwi', 'smoothie', 'staple', 92),
('Blueberry', 'smoothie', 'staple', 93),
('Mango', 'smoothie', 'staple', 94),
('Pineapple', 'smoothie', 'staple', 95),
('Banana', 'smoothie', 'staple', 96),
('Blackberry', 'tea', 'staple', 121),
('Sweet and Sour', 'tea', 'staple', 122),
('Chai', 'tea', 'staple', 123),
('Black', 'tea', 'staple', 124),
('Green', 'tea', 'staple', 125),
('Vanilla', 'icecream', 'staple', 151),
('Dark Chocolate', 'icecream', 'staple', 152);

-- --------------------------------------------------------

--
-- Table structure for table `mocha`
--

CREATE TABLE `mocha` (
  `Mkey` varchar(4) NOT NULL,
  `Description` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mocha`
--

INSERT INTO `mocha` (`Mkey`, `Description`) VALUES
('31', ' Love is in the air'),
('32', ' Classic choice'),
('33', ' Never fail to impress'),
('34', ' Wild and untammed'),
('35', ' What you seek in a mocha is here'),
('36', ' Perfect blend between passion and love'),
('37', ' Soothing to the very last sip'),
('38', ' Overflowing with passion '),
('39', ' Straight from the future'),
('40', ' One Two Three and you will never forget it');

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `PKey` varchar(4) NOT NULL,
  `PSmall` double(4,2) NOT NULL,
  `Pmedium` double(4,2) NOT NULL,
  `PLarge` double(4,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`PKey`, `PSmall`, `Pmedium`, `PLarge`) VALUES
('0', 3.50, 3.75, 4.00),
('1', 3.25, 3.50, 3.75),
('2', 3.25, 3.50, 75.00),
('3', 3.50, 3.75, 4.00),
('4', 3.50, 3.75, 4.00),
('5', 3.75, 4.00, 4.25),
('6', 3.25, 3.50, 3.75),
('7', 3.75, 4.00, 4.25),
('8', 3.25, 3.50, 3.75),
('31', 3.25, 3.50, 3.75),
('32', 3.25, 3.50, 75.00),
('33', 3.50, 3.75, 4.00),
('34', 3.50, 3.75, 4.00),
('35', 3.25, 3.50, 3.75),
('36', 3.25, 3.50, 3.75),
('37', 3.50, 3.75, 4.00),
('38', 3.50, 3.75, 4.00),
('39', 3.50, 3.75, 4.00),
('40', 3.50, 3.75, 4.00),
('61', 2.25, 2.50, 2.75),
('62', 2.25, 2.50, 2.75),
('63', 2.25, 2.50, 2.75),
('64', 2.00, 2.25, 2.50),
('65', 2.00, 2.25, 2.50),
('66', 2.25, 2.50, 2.75),
('67', 2.25, 2.50, 2.75),
('68', 2.25, 2.50, 2.75),
('91', 3.00, 3.50, 3.95),
('92', 3.00, 3.50, 3.95),
('93', 3.00, 3.50, 3.95),
('94', 3.00, 3.50, 3.95),
('95', 3.00, 3.50, 3.95),
('96', 3.00, 3.50, 3.95),
('121', 2.25, 2.50, 3.00),
('122', 2.25, 2.50, 3.00),
('123', 2.25, 2.50, 3.00),
('124', 2.25, 2.50, 3.00),
('125', 2.25, 2.50, 3.00),
('151', 2.50, 3.25, 3.75),
('152', 2.50, 3.25, 3.75);

-- --------------------------------------------------------

--
-- Table structure for table `smoothie`
--

CREATE TABLE `smoothie` (
  `Skey` varchar(4) NOT NULL,
  `Description` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smoothie`
--

INSERT INTO `smoothie` (`Skey`, `Description`) VALUES
('91', 'Made with Strawberry'),
('92', 'Made with Kiwi'),
('93', 'Made with Blueberry'),
('94', 'Made with Mango'),
('95', 'Made with Pineapple'),
('96', 'Made with Banana'),
('121', 'Straight out from Moon'),
('122', 'Straight out from Jupiter'),
('123', 'Straight out from Mars'),
('124', 'Straight out from Nepture'),
('125', 'Straight out from Mercury');

-- --------------------------------------------------------

--
-- Table structure for table `tea`
--

CREATE TABLE `tea` (
  `Tkey` varchar(4) NOT NULL,
  `Description` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `americano`
--
ALTER TABLE `americano`
  ADD KEY `DK_AK` (`Akey`);

--
-- Indexes for table `icecream`
--
ALTER TABLE `icecream`
  ADD KEY `DK_IK` (`Ikey`);

--
-- Indexes for table `latte`
--
ALTER TABLE `latte`
  ADD KEY `fk_foreign_key_name` (`Lkey`);

--
-- Indexes for table `mocha`
--
ALTER TABLE `mocha`
  ADD KEY `DK_MK` (`Mkey`);

--
-- Indexes for table `price`
--
ALTER TABLE `price`
  ADD KEY `DK_PK` (`PKey`);

--
-- Indexes for table `smoothie`
--
ALTER TABLE `smoothie`
  ADD KEY `DK_SK` (`Skey`) USING BTREE;

--
-- Indexes for table `tea`
--
ALTER TABLE `tea`
  ADD KEY `TK_MK` (`Tkey`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
