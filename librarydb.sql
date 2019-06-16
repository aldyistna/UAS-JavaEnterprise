# Host: localhost  (Version 5.5.5-10.1.16-MariaDB)
# Date: 2019-06-16 11:36:07
# Generator: MySQL-Front 5.4  (Build 3.46)
# Internet: http://www.mysqlfront.de/

/*!40101 SET NAMES utf8 */;

#
# Structure for table "categories"
#

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL DEFAULT '0',
  `nama` varchar(30) NOT NULL,
  `jenis` varchar(30) NOT NULL,
  `ket` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Structure for table "books"
#

DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `ket` varchar(50) DEFAULT NULL,
  `book_name` varchar(255) NOT NULL,
  `categories_id` int(11) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `years` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK25ies5wh6rlok95o3hf9btt` (`categories_id`),
  CONSTRAINT `FK25ies5wh6rlok95o3hf9btt` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Structure for table "hibernate_sequence"
#

DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
