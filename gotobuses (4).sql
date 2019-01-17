-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 05, 2019 at 03:52 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gotobuses`
--

-- --------------------------------------------------------

--
-- Table structure for table `buses`
--

DROP TABLE IF EXISTS `buses`;
CREATE TABLE IF NOT EXISTS `buses` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `bus_number` varchar(100) NOT NULL,
  `bus_type` varchar(100) NOT NULL,
  `access_token` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `last_location` varchar(100) DEFAULT NULL,
  `bearing` varchar(50) DEFAULT '0',
  `last_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `bus_number` (`bus_number`),
  UNIQUE KEY `access_token` (`access_token`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buses`
--

INSERT INTO `buses` (`id`, `name`, `phone`, `email`, `bus_number`, `bus_type`, `access_token`, `created_at`, `last_location`, `bearing`, `last_updated_at`) VALUES
(1, 'Pawan Travels', '8968894728', 'mylnext@gmail.com', 'CH01 BT 9678', 'AC', 'nA7ejbyrpAbzDpKYsJru', '2018-12-29 23:11:53', '30.741482,76.768066', '10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

DROP TABLE IF EXISTS `routes`;
CREATE TABLE IF NOT EXISTS `routes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `bus_id` int(10) NOT NULL,
  `source` varchar(500) NOT NULL,
  `destination` varchar(500) NOT NULL,
  `waypoints` varchar(10000) NOT NULL,
  `sourceLatLong` varchar(100) NOT NULL,
  `destinationLatLong` varchar(100) NOT NULL,
  `waypointsLatLong` varchar(50000) NOT NULL,
  `departure_time` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`id`, `bus_id`, `source`, `destination`, `waypoints`, `sourceLatLong`, `destinationLatLong`, `waypointsLatLong`, `departure_time`) VALUES
(9, 1, '17G, 17F, Sector 17, Chandigarh, 160017, India', 'Yudhister Setu, Inter State Bus Terminal, Kashmere Gate, Inter State Bus Terminal, Kashmere Gate, New Delhi, Delhi 110006, India', 'Airport Chowk, Uninon Territory, Behlana, Chandigarh, Punjab 160003, India|Kaithal, Haryana 136027, India|', '30.7354327,76.7785531', '28.6699541,77.2306799', '30.7354327,76.7785531|30.7349655,76.778941|30.7349655,76.778941|30.734835,76.7787166|30.734835,76.7787166|30.73410609999999,76.77917060000001|30.73410609999999,76.77917060000001|30.7336574,76.7796084|30.7336574,76.7796084|30.7279036,76.7847792|30.7279036,76.7847792|30.72221469999999,76.7899719|30.72221469999999,76.7899719|30.7166465,76.79535210000002|30.7166465,76.79535210000002|30.710911,76.8010549|30.710911,76.8010549|30.7044394,76.7910047|30.7044394,76.7910047|30.7033118,76.79073509999999|30.7033118,76.79073509999999|30.69518369999999,76.7987711|30.69518369999999,76.7987711|30.670692,76.8127456|30.670692,76.8127456|30.6773949,76.8085086|30.6773949,76.8085086|30.6774146,76.8084978|30.6774146,76.8084978|30.66459709999999,76.8167531|30.66459709999999,76.8167531|30.6640204,76.8172408|30.6640204,76.8172408|30.6584799,76.8208353|30.6584799,76.8208353|30.6552994,76.82126989999999|30.6552994,76.82126989999999|30.5801872,76.7457888|30.5801872,76.7457888|30.4922135,76.600253|30.4922135,76.600253|30.4931431,76.5885812|30.4931431,76.5885812|30.4946159,76.5790226|30.4946159,76.5790226|30.4566749,76.5686752|30.4566749,76.5686752|30.30595499999999,76.4255773|30.30595499999999,76.4255773|30.30372759999999,76.4237342|30.30372759999999,76.4237342|30.2942394,76.4274064|30.2942394,76.4274064|30.1267012,76.31820069999999|30.1267012,76.31820069999999|29.8118715,76.3895872|29.8118715,76.3895872|29.8064533,76.39135089999999|29.8064533,76.39135089999999|29.8040763,76.3978729|29.8040763,76.3978729|29.80426039999999,76.4038436|29.80426039999999,76.4038436|29.7871685,76.4015448|29.7871685,76.4015448|29.7873591,76.39963250000001|29.7873591,76.39963250000001|29.7860257,76.3995065|29.7860257,76.3995065|29.7861265,76.3984239|29.7861265,76.3984239|29.7856836,76.398405|29.7856836,76.398405|29.7856817,76.3984541|29.7856817,76.3984541|29.785662,76.3989605|29.785662,76.3989605|29.7848606,76.3988531|29.7848606,76.3988531|29.7847272,76.4010141|29.7847272,76.4010141|29.7833593,76.4007383|29.7833593,76.4007383|29.7833113,76.4010143|29.7833113,76.4010143|29.6960831,76.4102339|29.6960831,76.4102339|29.5231685,76.5950972|29.5231685,76.5950972|29.5208796,76.6115722|29.5208796,76.6115722|29.4935115,76.88852340000001|29.4935115,76.88852340000001|29.480792,76.8923791|29.480792,76.8923791|29.4676613,76.9713754|29.4676613,76.9713754|29.467692,76.9712573|29.467692,76.9712573|29.281676,77.00008240000001|29.281676,77.00008240000001|29.2764512,77.00162030000001|29.2764512,77.00162030000001|28.9671871,77.09096459999999|28.9671871,77.09096459999999|28.8877792,77.1166099|28.8877792,77.1166099|28.8860922,77.1171896|28.8860922,77.1171896|28.8822037,77.1185958|28.8822037,77.1185958|28.8031878,77.14303699999999|28.8031878,77.14303699999999|28.7384746,77.15442089999999|28.7384746,77.15442089999999|28.7336407,77.1786506|28.7336407,77.1786506|28.6798143,77.22939660000002|28.6798143,77.22939660000002|28.6813261,77.22279859999999|28.6813261,77.22279859999999|28.668967,77.22739039999999|28.668967,77.22739039999999|28.6693152,77.22816170000002|28.6693152,77.22816170000002|28.6699541,77.2306799|', '10:30'),
(10, 1, 'Ludhiana, Punjab, India', 'Kashmere Gate, New Delhi, Delhi, India', 'Chandigarh, India|', '30.9009656,75.8572763', '28.666471,77.2332868', '30.9009656,75.8572763|30.9019223,75.8557058|30.9019223,75.8557058|30.9036912,75.8544036|30.9036912,75.8544036|30.90216269999999,75.85576669999999|30.90216269999999,75.85576669999999|30.9020977,75.8556801|30.9020977,75.8556801|30.8957923,75.86661110000001|30.8957923,75.86661110000001|30.8853071,75.88662149999999|30.8853071,75.88662149999999|30.8852597,75.8872939|30.8852597,75.8872939|30.6323235,76.34535629999999|30.6323235,76.34535629999999|30.632427,76.3454802|30.632427,76.3454802|30.6047841,76.392333|30.6047841,76.392333|30.6209055,76.3938677|30.6209055,76.3938677|30.6206725,76.39398249999999|30.6206725,76.39398249999999|30.6442296,76.4407193|30.6442296,76.4407193|30.6916184,76.664119|30.6916184,76.664119|30.691011,76.6644371|30.691011,76.6644371|30.6949321,76.68751979999999|30.6949321,76.68751979999999|30.7175877,76.72383289999999|30.7175877,76.72383289999999|30.7272654,76.7335039|30.7272654,76.7335039|30.7317982,76.7467788|30.7317982,76.7467788|30.738877,76.7579902|30.738877,76.7579902|30.7458005,76.7689766|30.7458005,76.7689766|30.7401583,76.7740961|30.7401583,76.7740961|30.7336574,76.7796084|30.7336574,76.7796084|30.7333139,76.7794148|30.7333139,76.7794148|30.7334706,76.78002839999999|30.7334706,76.78002839999999|30.7279036,76.7847792|30.7279036,76.7847792|30.72221469999999,76.7899719|30.72221469999999,76.7899719|30.7166465,76.79535210000002|30.7166465,76.79535210000002|30.710911,76.8010549|30.710911,76.8010549|30.7044394,76.7910047|30.7044394,76.7910047|30.7033118,76.79073509999999|30.7033118,76.79073509999999|30.69518369999999,76.7987711|30.69518369999999,76.7987711|30.66459709999999,76.8167531|30.66459709999999,76.8167531|30.4040529,76.7867904|30.4040529,76.7867904|30.3767638,76.7959832|30.3767638,76.7959832|30.37558039999999,76.79650620000001|30.37558039999999,76.79650620000001|30.2288912,76.85348069999999|30.2288912,76.85348069999999|29.281676,77.00008240000001|29.281676,77.00008240000001|29.2764512,77.00162030000001|29.2764512,77.00162030000001|28.9671871,77.09096459999999|28.9671871,77.09096459999999|28.8877792,77.1166099|28.8877792,77.1166099|28.8860922,77.1171896|28.8860922,77.1171896|28.8822037,77.1185958|28.8822037,77.1185958|28.8031878,77.14303699999999|28.8031878,77.14303699999999|28.7384746,77.15442089999999|28.7384746,77.15442089999999|28.7336407,77.1786506|28.7336407,77.1786506|28.6806435,77.2293376|28.6806435,77.2293376|28.6787932,77.2295824|28.6787932,77.2295824|28.67727219999999,77.2305039|28.67727219999999,77.2305039|28.6757752,77.231195|28.6757752,77.231195|28.6735821,77.2506806|28.6735821,77.2506806|28.6705884,77.233589|28.6705884,77.233589|28.6679564,77.23306749999999|28.6679564,77.23306749999999|28.666471,77.2332868|', '0:8');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `phone` varchar(15) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `age` int(4) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `access_token` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `access_token` (`access_token`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `phone`, `name`, `email`, `age`, `gender`, `access_token`, `created_at`) VALUES
(1, '8968894728', 'Anup Kumar Panwar ', '1anuppanwar@gmail.com', 21, 'Male', 'ZPBvpWFgybZKn8iklVOQ', '2019-01-01 13:50:56');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;