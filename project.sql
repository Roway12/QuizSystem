-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2021-07-17 21:12:41
-- 服务器版本： 5.7.33
-- PHP 版本： 5.6.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `project`
--

-- --------------------------------------------------------

--
-- 表的结构 `record`
--

CREATE TABLE `record` (
  `item_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(20) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `num_question` varchar(20) NOT NULL,
  `date` varchar(20) DEFAULT NULL,
  `time` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `record`
--

INSERT INTO `record` (`item_id`, `username`, `grade`, `num_question`, `date`, `time`) VALUES
(1, 'Roway', '19', '9', '2021-07-14', '86'),
(2, 'Roway', '13', '16', '2021-07-14', '116'),
(3, 'user', '0', '3', '2021-07-15', '208'),
(4, 'Roway', '8', '8', '2021-07-15', '60'),
(5, 'Roway', '7', '6', '2021-07-15', '42'),
(6, 'Roway', '0', '1', '2021-07-15', '28'),
(7, 'user', '6', '5', '2021-07-15', '43'),
(8, 'user', '1', '4', '2021-07-15', '16'),
(9, 'Roway', '4', '5', '2021-07-15', '16'),
(10, 'user', '0', '1', '2021-07-16', '6'),
(11, 'user', '2', '3', '2021-07-16', '25'),
(12, 'user', '2', '3', '2021-07-16', '25'),
(13, 'user', '7', '8', '2021-07-16', '83'),
(57, 'Roway', '4', '4', '2021-07-16', '61'),
(58, 'user', '3', '3', '2021-07-16', '53'),
(59, 'Roway', '2', '2', '2021-07-16', '10'),
(60, 'user', '0', '1', '2021-07-16', '50'),
(61, 'Roway', '4', '3', '2021-07-16', '11'),
(62, 'Roway', '5', '4', '2021-07-16', '48');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(255) NOT NULL,
  `question_donated` int(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `question_donated`) VALUES
(1, 'Roway', '$2y$10$C.ogj0Gat9jqNMsTRL..XOiKy3i9xnOwiChCyMpExKqu/cMpog0yi', 5),
(2, 'Marc', '$2y$10$frk6nOA2ExVjiAoD3GMubOyL/OuJ3WDbpXoais34XVpis9OzXCQy.', 0),
(3, 'jack', '$2y$10$y51eA3Ro.DppQ1ybE0dH6ure.05AtyvjW.F3G26lBI9KihfNL1Dxu', 0),
(4, 'Tony', '$2y$10$phnlizfUxHOh3s65YoGdI.xje.Q66v2Zn3H0Kt9QZyYt7ssSvg7XS', 1);

--
-- 转储表的索引
--

--
-- 表的索引 `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`item_id`);

--
-- 表的索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `record`
--
ALTER TABLE `record`
  MODIFY `item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
