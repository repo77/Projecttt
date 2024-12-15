-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Време на генериране: 14 дек 2024 в 16:57
-- Версия на сървъра: 10.4.28-MariaDB
-- Версия на PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данни: `library`
--

-- --------------------------------------------------------

--
-- Структура на таблица `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Схема на данните от таблица `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'Test Admin', 'admin@gmail.com', 'admin', 'f925916e2754e5e03f75dd58a5733251', '2024-12-01 07:03:56');

-- --------------------------------------------------------

--
-- Структура на таблица `tblauthors`
--

CREATE TABLE `tblauthors` (
  `id` int(11) NOT NULL,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Схема на данните от таблица `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(1, 'Viki', '2024-12-07 07:23:03', '2024-12-08 16:39:46'),
(2, 'Nick Samoylov', '2024-11-25 07:23:03', '2024-12-14 13:57:58'),
(3, 'Anita Desai', '2024-12-01 07:23:03', '2024-12-04 06:34:26'),
(4, 'HC Verma', '2024-11-25 07:23:03', '2024-12-04 13:34:26'),
(5, 'R.D. Sharma ', '2024-12-07 09:23:03', '2024-12-12 12:34:26'),
(10, 'Dr. Andy Williams', '2024-11-28 10:23:03', '2024-12-05 07:34:26'),
(11, 'Kyle Hill', '2024-12-09 07:23:03', '2024-12-14 16:34:26'),
(12, 'Robert T. Kiyosak', '2024-11-27 07:23:03', '2024-12-03 06:34:26'),
(13, 'Kelly Barnhill', '2024-12-11 07:23:03', '2024-12-15 06:34:26'),
(14, 'Herbert Schildt', '2024-11-24 08:23:03', '2024-12-01 10:34:26');

-- --------------------------------------------------------

--
-- Структура на таблица `tblbooks`
--

CREATE TABLE `tblbooks` (
  `id` int(11) NOT NULL,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` varchar(25) DEFAULT NULL,
  `BookPrice` decimal(10,2) DEFAULT NULL,
  `bookImage` varchar(250) NOT NULL,
  `isIssued` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Схема на данните от таблица `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `bookImage`, `isIssued`, `RegDate`, `UpdationDate`) VALUES
(1, 'PHP And MySql programming', 9, 1, '978-0-7432-7356-5', 20.00, '1efecc0ca822e40b7b673c0d79ae943f.jpg', 1, '2024-12-01 07:23:03', '2024-12-14 14:11:44'),
(3, 'physics', 6, 4, '978-3-16-148410-0', 15.00, 'dd8267b57e0e4feee5911cb1e1a03a79.jpg', 0, '2024-11-30 08:23:03', '2024-12-14 14:11:14'),
(5, 'Murach\'s MySQL', 5, 1, '978-1-4028-9462-6', 55.00, '5939d64655b4d2ae443830d73abc35b6.jpg', 0, '2024-12-05 07:23:03', '2024-12-14 14:12:31'),
(6, 'WordPress for Beginners 2022: A Visual Step-by-Step Guide to Mastering WordPress', 5, 10, '978-0-670-81302-4', 70.00, '144ab706ba1cb9f6c23fd6ae9c0502b3.jpg', NULL, '2024-12-01 08:23:03', '2024-12-04 16:34:11'),
(7, 'WordPress Mastery Guide:', 5, 11, '978-0-452-28423-4', 53.00, '90083a56014186e88ffca10286172e64.jpg', NULL, '2024-11-30 07:23:03', '2024-12-07 13:34:11'),
(8, 'Rich Dad Poor Dad: What the Rich Teach Their Kids About Money That the Poor and Middle Class Do Not', 8, 12, '978-0-316-76948-8', 120.00, '52411b2bd2a6b2e0df3eb10943a5b640.jpg', NULL, '2024-12-05 10:23:03', '2024-12-12 12:34:11'),
(9, 'The Girl Who Drank the Moon', 8, 13, '978-0-553-21311-7', 150.00, 'f05cd198ac9335245e1fdffa793207a7.jpg', NULL, '2024-12-03 07:23:03', '2024-12-05 09:34:11'),
(10, 'C++: The Complete Reference, 4th Edition', 5, 14, '978-0-14-044913-6', 142.00, '36af5de9012bf8c804e499dc3c3b33a5.jpg', 0, '2024-11-30 07:23:03', '2024-12-08 10:34:11'),
(11, 'ASP.NET Core 5 for Beginners', 9, 11, '978-0-14-143960-0', 78.00, 'b1b6788016bbfab12cfd2722604badc9.jpg', 0, '2024-12-03 07:23:03', '2024-12-07 13:13:11');

-- --------------------------------------------------------

--
-- Структура на таблица `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Схема на данните от таблица `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(4, 'Romantic', 1, '2024-11-30 07:23:03', '2024-12-04 06:33:43'),
(5, 'Technology', 1, '2024-12-01 07:23:03', '2024-12-06 13:33:51'),
(6, 'Science', 1, '2024-11-25 10:23:03', '2024-12-03 11:33:51'),
(7, 'Management', 1, '2024-12-01 07:23:03', '2024-12-10 08:33:51'),
(8, 'General', 1, '2024-12-06 10:23:03', '2024-12-08 14:33:51'),
(9, 'Programming', 1, '2024-11-29 07:23:03', '2024-12-04 12:33:51'),
(11, 'Musicals', 1, '2024-12-06 15:16:19', '2024-12-14 14:20:21'),
(13, 'History', 1, '2024-12-14 13:47:08', '2024-12-14 13:48:18');

-- --------------------------------------------------------

--
-- Структура на таблица `tblissuedbookdetails`
--

CREATE TABLE `tblissuedbookdetails` (
  `id` int(11) NOT NULL,
  `BookId` int(11) DEFAULT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT current_timestamp(),
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `RetrunStatus` int(1) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Схема на данните от таблица `tblissuedbookdetails`
--

INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `RetrunStatus`, `fine`) VALUES
(7, 5, 'SID011', '2024-12-11 07:45:57', '2024-12-20 14:49:56', 1, 4),
(8, 1, 'SID001', '2024-12-07 05:45:57', '2024-12-14 14:27:53', 1, 2),
(9, 10, 'SID009', '2024-12-05 10:45:57', '2024-12-14 14:26:48', 1, 2),
(10, 11, 'SID009', '2024-12-02 10:45:57', NULL, NULL, NULL),
(11, 1, 'SID012', '2024-12-01 09:45:57', NULL, NULL, NULL),
(12, 10, 'SID012', '2024-12-10 05:45:57', '2024-12-12 06:33:08', 1, 5);

-- --------------------------------------------------------

--
-- Структура на таблица `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Схема на данните от таблица `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(1, 'SID001', 'Viktoria Pencheva', 'viki@gmail.com', '0865472555', 'f925916e2754e5e03f75dd58a5733251', 1, '2024-12-09 07:23:03', '2024-12-06 16:30:54'),
(4, 'SID005', 'Viktor Asenov', 'viktor@gmail.com', '0869710025', '92228410fc8b872914e023160cf4ae8f', 1, '2024-12-14 13:23:03', '2024-12-14 13:28:18'),
(8, 'SID009', 'Ivan Ivanov', 'ivan@gmail.com', '0835987452', 'f925916e2754e5e03f75dd58a5733251', 1, '2024-12-01 10:23:03', '2024-12-14 13:43:26'),
(9, 'SID010', 'Yordan Yordanov', 'yordan@gmail.com', '0885856224', 'f925916e2754e5e03f75dd58a5733251', 1, '2024-12-07 05:23:03', '2024-12-14 13:43:52'),
(10, 'SID011', 'Sara Naidenova', 'sara@gmail.com', '0867242375', 'f925916e2754e5e03f75dd58a5733251', 1, '2024-12-12 07:23:03', '2024-12-14 13:27:50'),
(11, 'SID012', 'Alexander Dimitrov', 'alex@gmail.com', '0885463782', 'f925916e2754e5e03f75dd58a5733251', 1, '2024-11-29 10:23:03', '2024-12-14 13:44:58'),
(12, 'SID015', 'Georgi Raykov', 'georgi@gmail.com', '0892645521', '16d7a4fca7442dda3ad93c9a726597e4', 1, '2024-12-06 13:16:30', NULL),
(13, '1', 'Test', 'test@gmail.com', '0896457561', 'a3876fafbc8b9b9d3820b6e3a610e3d2', 1, '2024-12-14 14:07:31', NULL);

--
-- Indexes for dumped tables
--

--
-- Индекси за таблица `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Индекси за таблица `tblauthors`
--
ALTER TABLE `tblauthors`
  ADD PRIMARY KEY (`id`);

--
-- Индекси за таблица `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`id`);

--
-- Индекси за таблица `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Индекси за таблица `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  ADD PRIMARY KEY (`id`);

--
-- Индекси за таблица `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblauthors`
--
ALTER TABLE `tblauthors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
