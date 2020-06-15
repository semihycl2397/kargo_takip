-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 15, 2020 at 07:13 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kargo`
--

-- --------------------------------------------------------

--
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
CREATE TABLE IF NOT EXISTS `cargo` (
  `Id` int(11) NOT NULL,
  `CargoName` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `RecipientName` varchar(25) COLLATE utf8_turkish_ci NOT NULL,
  `RecipientSurname` varchar(25) COLLATE utf8_turkish_ci NOT NULL,
  `RecipientPhone` int(20) NOT NULL,
  `RecipientAddress` varchar(512) COLLATE utf8_turkish_ci NOT NULL,
  `RecipientEmail` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `WhereFrom` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `WhereTo` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `CreateDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `cargo`
--

INSERT INTO `cargo` (`Id`, `CargoName`, `RecipientName`, `RecipientSurname`, `RecipientPhone`, `RecipientAddress`, `RecipientEmail`, `WhereFrom`, `WhereTo`, `CreateDate`) VALUES
(1, 'A Kargosu', 'Abdulhalim', 'Güler', 11111111, 'ahsasjjkasn', 'akasjakjs', 'snkasnksnd', 'sdskdnsd', '2020-06-15 16:54:12'),
(2, 'B Kargosu', 'Sunay', 'Güler', 22222222, 'srhtjmfngvcgfdhthdfgdf', 'tehddfgerhrtkjgrd', 'elazığ', 'malatya', '2020-06-15 17:16:05'),
(3, 'C Kargosu', 'İrfan', 'Yücel', 3333565, 'rhtmjytdtyjrhryfjdtykdrth', 'yrjkdtukghdfjdyj', 'istanbul', 'ankara', '2020-06-15 17:16:54'),
(4, 'D Kargosu', 'Yıldız', 'Demir', 56486654, 'rtjshsrhjnfdghsthstfg', 'srthsfhshstrhtr', 'kayseri', 'muş', '2020-06-15 17:17:35');

-- --------------------------------------------------------

--
-- Table structure for table `cargo_follow`
--

DROP TABLE IF EXISTS `cargo_follow`;
CREATE TABLE IF NOT EXISTS `cargo_follow` (
  `Id` int(11) NOT NULL,
  `CargoId` int(11) NOT NULL,
  `SendUserId` int(11) NOT NULL,
  `CreateDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `Id` int(11) NOT NULL,
  `UserName` varchar(25) COLLATE utf8_turkish_ci NOT NULL,
  `Surname` varchar(25) COLLATE utf8_turkish_ci NOT NULL,
  `Email` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `Address` varchar(512) COLLATE utf8_turkish_ci NOT NULL,
  `Phone` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `TC` varchar(11) COLLATE utf8_turkish_ci NOT NULL,
  `Password` varchar(256) COLLATE utf8_turkish_ci NOT NULL,
  `CreateDate` timestamp NULL DEFAULT current_timestamp(),
  `IsAdmin` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Id`, `UserName`, `Surname`, `Email`, `Address`, `Phone`, `TC`, `Password`, `CreateDate`, `IsAdmin`) VALUES
(1, 'Azad', 'Erdogan', 'fgkdtkfgkfgkfkfjk', 'hthrtjsrjhnsrtjnsrytj', '26595+5965+6', '12365478901', 'kghjdyjdtyjctkj', '2020-06-15 18:05:39', 0),
(2, 'Semih', 'YÜCEL', 'smhycl2341@gmail.com', 'thddtksxryhdxtyjdtukdxtyjdtukdxtyjdtuk', '053738556042455', '19369877795', '123456789', '2020-06-15 18:07:40', 1),
(3, 'Bahadır', 'Sevim', 'rhsetjsetjhxyrjfsrtjh', 'sxryjxrthxutkctukmxrtj', '659451156484654', '78965412302', '9876543210', '2020-06-15 18:08:52', 0),
(4, 'Enes', 'Yılmaz', 'fjgmdtygkhfjkçötyj', 'yrkjsrthjdtöugjödryjfdtyk', '5497896412305', '36985214711', '1236547890', '2020-06-15 18:09:37', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
