-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2024 年 9 月 23 日 04:57
-- サーバのバージョン： 10.4.28-MariaDB
-- PHP のバージョン: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gs_db_quicklogboard`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `Users`
--

CREATE TABLE `Users` (
  `UserID` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `PasswordHash` varchar(255) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `CreatedDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `Users`
--

INSERT INTO `Users` (`UserID`, `Username`, `PasswordHash`, `Email`, `CreatedDate`) VALUES
(1, 'test1', '$2y$10$V6wSEr3dHr3HiX0rMenVI.YO2baPLH40GxHtKKrGCWwHlJuFt.OHe', 'kazukiffff1114@gmail.com', '2024-09-22 14:09:26'),
(2, 'test2', '$2y$10$P/bioiNYM8NhFnfCJFYkrucsepFUaRSludq0LfMrTv7jj7otvp.Ja', 'kazuki1114shukatu@gmail.com', '2024-09-22 14:44:23'),
(4, 'test3', '$2y$10$5K04my/KdIXDkOHnEOsYcOA0e3Vg9Ogfo3IeXrXoz.S7XabTrVVvq', 'kazuki1116shukatu@gmail.com', '2024-09-22 14:57:56'),
(5, 'test4', '$2y$10$mZ6/foQFy8cw0l4/cXWf9.NOrcEBUm3BzROgZzWOHoOo1TXMvSyr6', 'kazuki1117shukatu@gmail.com', '2024-09-22 15:35:23'),
(7, 'test5', '$2y$10$EjXvhNWjVN5vMrp0AIFlxebxAZqVrnj4Yc6TjIcxhciCQ7k0hth8a', 'kazuki1118shukatu@gmail.com', '2024-09-22 15:45:54'),
(8, 'test6', '$2y$10$0cKvD5tOOxAd62gg7ninTO1mzTyDp/GoV14eaXa1Yes5QMjOE9oJW', 'kazuki1119shukatu@gmail.com', '2024-09-23 11:20:34');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `Users`
--
ALTER TABLE `Users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
