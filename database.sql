/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.4.28-MariaDB : Database - paolohs_library
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`paolohs_library` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `paolohs_library`;

/*Table structure for table `authors` */

DROP TABLE IF EXISTS `authors`;

CREATE TABLE `authors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `book_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `authors` */

insert  into `authors`(`id`,`name`,`book_id`) values 
(5,'Roc',5),
(6,'Annita Shreve',6);

/*Table structure for table `books` */

DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `books` */

insert  into `books`(`id`,`title`) values 
(5,'Fortune'),
(6,'Fortune\'s Rock');

/*Table structure for table `user_tokens` */

DROP TABLE IF EXISTS `user_tokens`;

CREATE TABLE `user_tokens` (
  `token_id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `token` varchar(512) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`token_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `user_tokens` */

insert  into `user_tokens`(`token_id`,`userid`,`token`,`created_at`) values 
(7,1,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeV96YWZyYS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeV96YWZyYS5jb20iLCJpYXQiOjE3MzAwOTE1OTksImRhdGEiOnsidXNlcmlkIjoxfX0.KhNimaA7AGEa_421VhfU0lcdmnXa7ONbaj6Vb8iqJAc','2024-10-28 12:59:59'),
(13,2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vcGFvbG9oc19saWJyYXJ5Lm9yZyIsImF1ZCI6Imh0dHA6Ly9wYW9sb2hzX2xpYnJhcnkuY29tIiwiaWF0IjoxNzMwMDkzNDAzLCJkYXRhIjp7InVzZXJpZCI6Mn19.bFaOqDwnmRFe_9HI5rpSCbdXDlitzUNjHQYV0mwrW44','2024-10-28 13:30:03'),
(20,3,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vcGFvbG9oc19saWJyYXJ5Lm9yZyIsImF1ZCI6Imh0dHA6Ly9wYW9sb2hzX2xpYnJhcnkuY29tIiwiaWF0IjoxNzMwOTQ0NjE0LCJkYXRhIjp7InVzZXJpZCI6M319.7Dg3zRxIcnx_K0Kv_WgfbRGONrQXBMv9waOn9rUvFlo','2024-11-07 09:56:54'),
(25,4,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vcGFvbG9oc19saWJyYXJ5Lm9yZyIsImF1ZCI6Imh0dHA6Ly9wYW9sb2hzX2xpYnJhcnkuY29tIiwiaWF0IjoxNzMwOTQ1NDg3LCJkYXRhIjp7InVzZXJpZCI6NH19.iN07ualycvYC6sAWo235JvYutHzjFKVtUMOZgGiF0TY','2024-11-07 10:11:27'),
(30,5,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vcGFvbG9oc19saWJyYXJ5Lm9yZyIsImF1ZCI6Imh0dHA6Ly9wYW9sb2hzX2xpYnJhcnkuY29tIiwiaWF0IjoxNzMyNTEyMzE5LCJkYXRhIjp7InVzZXJpZCI6NX19.GyYDaGibfjntURNhhL7_9YGKBbXM8VMzPYMSMXQlsfA','2024-11-25 13:25:19'),
(35,6,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vcGFvbG9oc19saWJyYXJ5Lm9yZyIsImF1ZCI6Imh0dHA6Ly9wYW9sb2hzX2xpYnJhcnkuY29tIiwiaWF0IjoxNzMyNTEyNjc0LCJkYXRhIjp7InVzZXJpZCI6Nn19.VopIWHqhguZIHTD53f3KkddkA3NPHtMkE0aGAJLccwQ','2024-11-25 13:31:14');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `users` */

insert  into `users`(`userid`,`username`,`password`) values 
(1,'paolo','$2y$10$RdCNmfQDcIbp8.xw1jwCwenVSMZiflTsCCsnuNxd2KYZtAKTeBmwK'),
(2,'pao','$2y$10$mioUE/p2i2VpShcq5PwBMuybXMwoW5qcBy3RcZg4IUYUL.esugSJS'),
(3,'prepose','$2y$10$3go2f22xfCS3nsVgJY3R7OUtJoR5EipV6diehwEBseXqL3pLiEa6e'),
(4,'test','$2y$10$wo5WjOwdVWXIgVuNyis58OgmOXPjpCcscvOYdg9RfjIqNsInjtrTy'),
(5,'paoolo','$2y$10$Nnh7Hjg.oOJJFfa8tC8TFeUUVnHK6AshnbkakI87eEx5VTWCEdzDu'),
(6,'pablo','$2y$10$U4H72JBd9cHUMPY1pDA8Ou12mhKDXl/hKMUZ6HeKCQnQP05jTxkrW');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
