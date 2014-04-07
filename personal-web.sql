SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

drop database IF EXISTS `personal_web`;

CREATE DATABASE IF NOT EXISTS `personal_web` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `personal_web`;

--
-- 表的结构 `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(20) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `number` varchar(30) DEFAULT 0 ,
  `type` int(1) DEFAULT 0 COMMENT '1表示最低，2表示高级',
  
  `reset_month` int(2) DEFAULT -1,
  `reset_week` int(1) DEFAULT -1,
  `reset_hour` int(2) DEFAULT -1,
  `reset_minute` int(2) DEFAULT -1,
  
  `time` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;


--
-- 表的结构 `event_happen`
--

CREATE TABLE IF NOT EXISTS `event_happen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eventid` int(11) NOT NULL,

  
  `time` int(11) DEFAULT 0,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`eventid`) REFERENCES `event` (`id`) on delete cascade on update cascade
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;


--
-- 表的结构 `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `userid` varchar(20) NOT NULL,
  `password` varchar(60) NOT NULL,
  `role` char(1) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `ques` varchar(200) DEFAULT NULL,
  `answer` varchar(200) DEFAULT NULL,
  `time` int(11) DEFAULT 0,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;

INSERT INTO `users` (`userid`, `password`, `role`, `email`, `name`, `tel`, `ques`, `answer`) VALUES
('zjian1993', 'zjian1993', 'A', 'zjian1993@gmail.com', 'Kapayi', '15267004690', 'Q', 'A');



