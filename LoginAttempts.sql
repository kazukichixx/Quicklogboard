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
-- テーブルの構造 `LoginAttempts`
--

CREATE TABLE `LoginAttempts` (
  `AttemptID` int(11) NOT NULL,
  `UserID` varchar(50) NOT NULL,
  `Timestamp` datetime NOT NULL,
  `Action` varchar(50) NOT NULL,
  `UploadID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `LoginAttempts`
--

INSERT INTO `LoginAttempts` (`AttemptID`, `UserID`, `Timestamp`, `Action`, `UploadID`) VALUES
(51, 'user012', '2024-09-16 21:08:15', 'Login', NULL),
(52, 'user018', '2024-08-24 15:42:15', 'Failed Login Attempt', NULL),
(53, 'user015', '2024-08-22 20:25:15', 'Logout', NULL),
(54, 'user019', '2024-08-28 18:48:15', 'Login', NULL),
(55, 'user018', '2024-09-09 02:58:15', 'Logout', NULL),
(56, 'user012', '2024-09-02 07:06:15', 'Login', NULL),
(57, 'user020', '2024-09-10 03:20:15', 'Login', NULL),
(58, 'user014', '2024-09-19 01:20:15', 'Login', NULL),
(59, 'user015', '2024-08-29 20:23:15', 'Login', NULL),
(60, 'user012', '2024-09-08 14:09:15', 'Failed Login Attempt', NULL),
(61, 'user001', '2024-09-18 01:58:15', 'Login', NULL),
(62, 'user011', '2024-09-04 10:29:15', 'Failed Login Attempt', NULL),
(63, 'user005', '2024-09-04 14:52:15', 'Login', NULL),
(64, 'user019', '2024-09-08 18:50:15', 'Logout', NULL),
(65, 'user012', '2024-08-23 14:37:15', 'Login', NULL),
(66, 'user011', '2024-08-30 03:49:15', 'Failed Login Attempt', NULL),
(67, 'user002', '2024-08-31 23:21:15', 'Logout', NULL),
(68, 'user003', '2024-09-07 08:20:15', 'Failed Login Attempt', NULL),
(69, 'user017', '2024-09-10 14:11:15', 'Login', NULL),
(70, 'user014', '2024-08-29 16:13:15', 'Logout', NULL),
(71, 'user012', '2024-08-28 16:53:15', 'Login', NULL),
(72, 'user006', '2024-09-17 01:42:15', 'Failed Login Attempt', NULL),
(73, 'user019', '2024-09-06 15:17:15', 'Login', NULL),
(74, 'user012', '2024-08-29 13:18:15', 'Login', NULL),
(75, 'user002', '2024-08-30 05:10:15', 'Login', NULL),
(76, 'user019', '2024-08-29 22:37:15', 'Logout', NULL),
(77, 'user005', '2024-09-01 13:09:15', 'Login', NULL),
(78, 'user014', '2024-08-31 07:23:15', 'Login', NULL),
(79, 'user002', '2024-09-03 19:31:15', 'Failed Login Attempt', NULL),
(80, 'user005', '2024-08-24 02:20:15', 'Failed Login Attempt', NULL),
(81, 'user009', '2024-08-29 20:58:15', 'Logout', NULL),
(82, 'user017', '2024-08-21 04:39:15', 'Failed Login Attempt', NULL),
(83, 'user016', '2024-09-05 14:34:15', 'Login', NULL),
(84, 'user011', '2024-08-25 04:27:15', 'Failed Login Attempt', NULL),
(85, 'user010', '2024-09-15 12:22:15', 'Login', NULL),
(86, 'user015', '2024-08-26 11:52:15', 'Failed Login Attempt', NULL),
(87, 'user008', '2024-09-20 15:31:15', 'Login', NULL),
(88, 'user012', '2024-09-21 02:14:15', 'Login', NULL),
(89, 'user009', '2024-08-25 11:51:15', 'Failed Login Attempt', NULL),
(90, 'user001', '2024-08-25 18:52:15', 'Login', NULL),
(91, 'user012', '2024-09-13 13:15:15', 'Login', NULL),
(92, 'user008', '2024-08-28 08:14:15', 'Logout', NULL),
(93, 'user017', '2024-08-27 06:52:15', 'Failed Login Attempt', NULL),
(94, 'user005', '2024-09-08 05:30:15', 'Failed Login Attempt', NULL),
(95, 'user005', '2024-09-20 17:23:15', 'Logout', NULL),
(96, 'user014', '2024-09-18 21:11:15', 'Login', NULL),
(97, 'user003', '2024-09-01 00:34:15', 'Login', NULL),
(98, 'user002', '2024-09-01 17:34:15', 'Login', NULL),
(99, 'user017', '2024-09-12 00:12:15', 'Logout', NULL),
(100, 'user002', '2024-08-26 12:14:15', 'Logout', NULL),
(101, 'user012', '2024-09-16 21:08:15', 'Login', NULL),
(102, 'user018', '2024-08-24 15:42:15', 'Failed Login Attempt', NULL),
(103, 'user015', '2024-08-22 20:25:15', 'Logout', NULL),
(104, 'user019', '2024-08-28 18:48:15', 'Login', NULL),
(105, 'user018', '2024-09-09 02:58:15', 'Logout', NULL),
(106, 'user012', '2024-09-02 07:06:15', 'Login', NULL),
(107, 'user020', '2024-09-10 03:20:15', 'Login', NULL),
(108, 'user014', '2024-09-19 01:20:15', 'Login', NULL),
(109, 'user015', '2024-08-29 20:23:15', 'Login', NULL),
(110, 'user012', '2024-09-08 14:09:15', 'Failed Login Attempt', NULL),
(111, 'user001', '2024-09-18 01:58:15', 'Login', NULL),
(112, 'user011', '2024-09-04 10:29:15', 'Failed Login Attempt', NULL),
(113, 'user005', '2024-09-04 14:52:15', 'Login', NULL),
(114, 'user019', '2024-09-08 18:50:15', 'Logout', NULL),
(115, 'user012', '2024-08-23 14:37:15', 'Login', NULL),
(116, 'user011', '2024-08-30 03:49:15', 'Failed Login Attempt', NULL),
(117, 'user002', '2024-08-31 23:21:15', 'Logout', NULL),
(118, 'user003', '2024-09-07 08:20:15', 'Failed Login Attempt', NULL),
(119, 'user017', '2024-09-10 14:11:15', 'Login', NULL),
(120, 'user014', '2024-08-29 16:13:15', 'Logout', NULL),
(121, 'user012', '2024-08-28 16:53:15', 'Login', NULL),
(122, 'user006', '2024-09-17 01:42:15', 'Failed Login Attempt', NULL),
(123, 'user019', '2024-09-06 15:17:15', 'Login', NULL),
(124, 'user012', '2024-08-29 13:18:15', 'Login', NULL),
(125, 'user002', '2024-08-30 05:10:15', 'Login', NULL),
(126, 'user019', '2024-08-29 22:37:15', 'Logout', NULL),
(127, 'user005', '2024-09-01 13:09:15', 'Login', NULL),
(128, 'user014', '2024-08-31 07:23:15', 'Login', NULL),
(129, 'user002', '2024-09-03 19:31:15', 'Failed Login Attempt', NULL),
(130, 'user005', '2024-08-24 02:20:15', 'Failed Login Attempt', NULL),
(131, 'user009', '2024-08-29 20:58:15', 'Logout', NULL),
(132, 'user017', '2024-08-21 04:39:15', 'Failed Login Attempt', NULL),
(133, 'user016', '2024-09-05 14:34:15', 'Login', NULL),
(134, 'user011', '2024-08-25 04:27:15', 'Failed Login Attempt', NULL),
(135, 'user010', '2024-09-15 12:22:15', 'Login', NULL),
(136, 'user015', '2024-08-26 11:52:15', 'Failed Login Attempt', NULL),
(137, 'user008', '2024-09-20 15:31:15', 'Login', NULL),
(138, 'user012', '2024-09-21 02:14:15', 'Login', NULL),
(139, 'user009', '2024-08-25 11:51:15', 'Failed Login Attempt', NULL),
(140, 'user001', '2024-08-25 18:52:15', 'Login', NULL),
(141, 'user012', '2024-09-13 13:15:15', 'Login', NULL),
(142, 'user008', '2024-08-28 08:14:15', 'Logout', NULL),
(143, 'user017', '2024-08-27 06:52:15', 'Failed Login Attempt', NULL),
(144, 'user005', '2024-09-08 05:30:15', 'Failed Login Attempt', NULL),
(145, 'user005', '2024-09-20 17:23:15', 'Logout', NULL),
(146, 'user014', '2024-09-18 21:11:15', 'Login', NULL),
(147, 'user003', '2024-09-01 00:34:15', 'Login', NULL),
(148, 'user002', '2024-09-01 17:34:15', 'Login', NULL),
(149, 'user017', '2024-09-12 00:12:15', 'Logout', NULL),
(150, 'user002', '2024-08-26 12:14:15', 'Logout', NULL);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `LoginAttempts`
--
ALTER TABLE `LoginAttempts`
  ADD PRIMARY KEY (`AttemptID`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `LoginAttempts`
--
ALTER TABLE `LoginAttempts`
  MODIFY `AttemptID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
