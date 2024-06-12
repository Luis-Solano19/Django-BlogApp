-- MySQL dump 10.13  Distrib 8.0.35, for Win64 (x86_64)
--
-- Host: localhost    Database: blogapp
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `assignments_about`
--

DROP TABLE IF EXISTS `assignments_about`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assignments_about` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `about_heading` varchar(50) NOT NULL,
  `about_description` varchar(500) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignments_about`
--

LOCK TABLES `assignments_about` WRITE;
/*!40000 ALTER TABLE `assignments_about` DISABLE KEYS */;
INSERT INTO `assignments_about` VALUES (1,'About Us','This blog project was created with the purpose of learning Django!','2024-06-06 00:40:54.088942','2024-06-06 00:40:54.088942');
/*!40000 ALTER TABLE `assignments_about` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assignments_socialmedia`
--

DROP TABLE IF EXISTS `assignments_socialmedia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assignments_socialmedia` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `platform` varchar(50) NOT NULL,
  `link` varchar(200) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `link` (`link`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignments_socialmedia`
--

LOCK TABLES `assignments_socialmedia` WRITE;
/*!40000 ALTER TABLE `assignments_socialmedia` DISABLE KEYS */;
INSERT INTO `assignments_socialmedia` VALUES (1,'Github','http://www.github.com','2024-06-06 00:41:09.210279','2024-06-06 00:41:09.210279'),(2,'Facebook','http://www.facebook.com','2024-06-06 00:41:12.928048','2024-06-06 00:41:12.928048'),(3,'Linkedin','http://www.linkedin.com','2024-06-06 00:41:15.798757','2024-06-06 00:41:15.798757');
/*!40000 ALTER TABLE `assignments_socialmedia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (2,'Editor1'),(1,'Manager');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (17,1,13),(27,1,14),(28,1,15),(18,1,16),(6,1,25),(7,1,26),(8,1,27),(9,1,28),(10,1,29),(11,1,30),(12,1,31),(1,1,32),(2,1,33),(3,1,34),(4,1,35),(5,1,36),(13,1,37),(14,1,38),(15,1,39),(16,1,40),(20,2,25),(21,2,26),(22,2,27),(23,2,28),(24,2,29),(25,2,30),(26,2,31),(19,2,32);
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add category',7,'add_category'),(26,'Can change category',7,'change_category'),(27,'Can delete category',7,'delete_category'),(28,'Can view category',7,'view_category'),(29,'Can add blog',8,'add_blog'),(30,'Can change blog',8,'change_blog'),(31,'Can delete blog',8,'delete_blog'),(32,'Can view blog',8,'view_blog'),(33,'Can add about',9,'add_about'),(34,'Can change about',9,'change_about'),(35,'Can delete about',9,'delete_about'),(36,'Can view about',9,'view_about'),(37,'Can add social media',10,'add_socialmedia'),(38,'Can change social media',10,'change_socialmedia'),(39,'Can delete social media',10,'delete_socialmedia'),(40,'Can view social media',10,'view_socialmedia'),(41,'Can add comment',11,'add_comment'),(42,'Can change comment',11,'change_comment'),(43,'Can delete comment',11,'delete_comment'),(44,'Can view comment',11,'view_comment');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$720000$AdyQO2NEQg5uoqA7v5v8ko$s8nEXf1n+UVy5g9Lfz2PvNsANp8rpRb8oQ/+u8QTIdo=','2024-06-11 18:18:59.195472',1,'luis','Luis','Solano','luis.solano19@hotmail.com',1,1,'2024-06-03 04:28:02.000000'),(2,'pbkdf2_sha256$720000$RnVPiI2xGXwCqRiIT4xJcR$pGAZ1JA6gtrcTVci+1zu1KldrhBw8QF7/C0NPJmMzlA=','2024-06-11 03:48:03.584589',0,'manager','Sylvio','Montalvo','manager@gmail.com',1,1,'2024-06-09 05:57:45.000000'),(3,'pbkdf2_sha256$720000$jxM1b3Wvt4cFdQgHpNqEGf$iAWywXoHBc6idoMmtB1g5QEWw/ZwmxqCiFIAE4k1hAY=','2024-06-12 06:36:26.734258',0,'Lysa','Lysa','Nill','lysanill@gmail.com',1,1,'2024-06-11 00:46:38.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (1,2,1),(2,3,2);
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs_blog`
--

DROP TABLE IF EXISTS `blogs_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogs_blog` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `featured_image` varchar(100) NOT NULL,
  `short_description` longtext NOT NULL,
  `blog_body` longtext NOT NULL,
  `status` varchar(20) NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `author_id` int NOT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `blogs_blog_author_id_fb67c004_fk_auth_user_id` (`author_id`),
  KEY `blogs_blog_category_id_3cfdf215_fk_blogs_category_id` (`category_id`),
  CONSTRAINT `blogs_blog_author_id_fb67c004_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `blogs_blog_category_id_3cfdf215_fk_blogs_category_id` FOREIGN KEY (`category_id`) REFERENCES `blogs_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs_blog`
--

LOCK TABLES `blogs_blog` WRITE;
/*!40000 ALTER TABLE `blogs_blog` DISABLE KEYS */;
INSERT INTO `blogs_blog` VALUES (1,'XDefiant Making a Big Change to Sniper Rifles','xdefiant-making-a-big-change-to-sniper-rifles-1','uploads/2024/06/08/7jIuoPSPOc8-HD1.jpg','Ubisoft has announced significant changes to sniper rifles in its popular first-person shooter, XDefiant, following player feedback. Since its release in late May, XDefiant has quickly gained a substantial player base, breaking Ubisoft records for unique users within hours of its launch. The game, often compared to Call of Duty, has been praised for its fast-paced gameplay and unique faction-based mechanics..','XDefiant\'s launch was notably successful, reaching over one million players within just two and a half hours. Despite initial server issues, the game\'s user base expanded to three million within 48 hours. Though it\'s a new addition to the FPS genre, XDefiant stands out with unique features like faction abilities and the omission of skill-based matchmaking. However, the game has faced criticism regarding the balance of sniper rifles, which many players consider overpowered.\r\n\r\nIn response to these concerns, XDefiant\'s executive director, Mark Rubin, confirmed on X (formerly Twitter) that sniper rifles would undergo significant changes. The developer admitted that the sniper rifles are indeed buggy in their current state. The team aims to fix and balance these overpowered rifles as soon as possible. Rather than reducing their damage, the development team plans to add flinch mechanics, making it harder for players to maintain accuracy while taking hits. This adjustment aims to balance the gameplay without entirely removing the one-shot kill capability that many players enjoy.','Published',1,'2024-06-03 04:32:06.140724','2024-06-09 05:54:03.603263',1,3),(2,'Bird flu can infect cats. What does that mean for their people?','bird-flu-can-infect-cats-what-does-that-mean-for-their-people-2','uploads/2024/06/02/cat.jpeg','Raw milk, raw meat and dead birds may all be sources of infection','Cats are getting — and dying of — bird flu. That’s sparking worries about the risk that the ongoing outbreak of highly pathogenic H5N1 avian influenza poses for these feline furballs and their owners.\r\n\r\nThis outbreak has been sickening and killing wild birds and poultry in the United States since 2021 (SN: 5/16/24). H5N1 has also jumped into a wide variety of mammals, including farm animals such as goats, dairy cattle and, most recently, four alpacas in Idaho (SN: 3/6/23; SN: 4/3/24).','Published',0,'2024-06-03 04:33:25.950424','2024-06-09 05:53:34.910840',1,4),(3,'10 fun hands-on projects to learn AWS','10-fun-hands-on-projects-to-learn-aws-3','uploads/2024/06/02/aws.jpg','There’s no better way to learn AWS than to use the services provided to build real-world applications. I am a strong proponent of “learn as you build”, so I’ve put together 10 fun projects, with varying degrees of difficulty, that will help jump-start your cloud career. \r\n\r\nFor each project, I’ve called out the prerequisites, services used, and provided a link to an online tutorial.','1. Launch a static website on Amazon S3\r\nDeploying your static website on Amazon S3 is a cost-effective solution that is often cheaper than a traditional hosting provider. I migrated my website to Amazon S3 years ago and have been saving money ever since! This is a super fun project AWS newbies and introduces you to several core services like Amazon S3 and Amazon CloudFront. \r\n\r\nYou’ll create an Amazon S3 bucket to hold your static website files and an Amazon CloudFront distribution to serve your website globally. Amazon Route 53 will manage your domain name, and AWS Certificate Manager will provide a valid SSL/TLS certificate.\r\n\r\nServices used\r\n\r\nAmazon S3 \r\nAmazon CloudFront \r\nAmazon Route 53 \r\nAWS Certificate Manager r \r\nPrerequisites \r\n\r\nYou’ll need a few things to get started with this project:\r\n\r\nStatic website made up of HTML, CSS, JavaScript, etc. files.\r\nTo get started, check out this online tutorial.','Published',0,'2024-06-03 04:35:03.784517','2024-06-09 05:53:51.821951',1,2),(4,'¿Cuáles son los diferentes géneros del anime y el manga?','cuales-son-los-diferentes-generos-del-anime-y-el-manga','uploads/2024/06/02/Yuri-1024x576.jpg','Siendo un fan del anime y el manga a estas alturas deberías ser más sabio que el propio Maestro Roshi de Dragon Ball Super. O puede que no, por eso venimos desde Kokohai a enseñarte cuáles son los diferentes géneros del anime y el manga.','Yuri:\r\nSi estáis en la edad adolescente sabréis muy bien de que trata el “Yuri“. Un género que se basa específicamente en relaciones lésbicas entre las protagonistas o personajes secundarios. Eso sí, el Yuri no cuenta con relaciones explícitas, más bien en un contexto más romántico.\r\n\r\nAlgunas series o películas de género Yuri son los siguientes:\r\n\r\nNoir\r\nBloom Into You\r\nAoi Hana\r\n\r\n– Shounen (Shonen)\r\n\r\nEl Shounen o más conocido como Shonen es el género de anime más básico y común que podremos encontrar en la lista. Como os digo es el género más común y suele ser una mezcla equilibrada entre acción y comedia. Por supuesto lo más habitual es que el público Shounen sea mayormente masculino. Se caracteriza por ser un género en el que hay una gran cantidad de acción con personajes peculiares que todos recordamos.\r\n\r\nAlgunas series o películas de género Shounen son los siguientes:\r\n\r\nOne Piece\r\nNaruto\r\nDragon Ball','Published',1,'2024-06-03 04:36:50.994094','2024-06-06 00:42:26.328816',1,1);
/*!40000 ALTER TABLE `blogs_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs_category`
--

DROP TABLE IF EXISTS `blogs_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogs_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_name` (`category_name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs_category`
--

LOCK TABLES `blogs_category` WRITE;
/*!40000 ALTER TABLE `blogs_category` DISABLE KEYS */;
INSERT INTO `blogs_category` VALUES (1,'Anime','2024-06-03 04:29:45.613300','2024-06-03 04:29:45.613300'),(2,'Technology','2024-06-03 04:29:51.390082','2024-06-03 04:29:54.609985'),(3,'Games','2024-06-03 04:30:00.892501','2024-06-03 04:30:00.892501'),(4,'Science','2024-06-03 04:30:04.666365','2024-06-03 04:30:04.666365'),(5,'Sports','2024-06-03 17:29:14.770969','2024-06-03 17:29:19.467676');
/*!40000 ALTER TABLE `blogs_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs_comment`
--

DROP TABLE IF EXISTS `blogs_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogs_comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `comment` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `blog_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blogs_comment_blog_id_029e72ef_fk_blogs_blog_id` (`blog_id`),
  KEY `blogs_comment_user_id_e0b0b977_fk_auth_user_id` (`user_id`),
  CONSTRAINT `blogs_comment_blog_id_029e72ef_fk_blogs_blog_id` FOREIGN KEY (`blog_id`) REFERENCES `blogs_blog` (`id`),
  CONSTRAINT `blogs_comment_user_id_e0b0b977_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs_comment`
--

LOCK TABLES `blogs_comment` WRITE;
/*!40000 ALTER TABLE `blogs_comment` DISABLE KEYS */;
INSERT INTO `blogs_comment` VALUES (1,'buen commentario','2024-06-11 18:19:11.714610','2024-06-11 18:19:11.714610',1,1),(2,'test c','2024-06-12 05:34:03.506462','2024-06-12 05:34:03.506462',1,1),(3,'test2','2024-06-12 06:09:14.501658','2024-06-12 06:09:14.501658',1,1),(4,'Hello! Great post','2024-06-12 06:36:48.730585','2024-06-12 06:36:48.730585',4,3);
/*!40000 ALTER TABLE `blogs_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-06-03 04:28:50.812770','1','social',1,'[{\"added\": {}}]',3,1),(2,'2024-06-03 04:29:22.687538','1','Manager',2,'[{\"changed\": {\"fields\": [\"Name\", \"Permissions\"]}}]',3,1),(3,'2024-06-03 04:29:38.076411','2','Editor1',1,'[{\"added\": {}}]',3,1),(4,'2024-06-03 04:29:45.614298','1','Anime',1,'[{\"added\": {}}]',7,1),(5,'2024-06-03 04:29:51.391078','2','Tech',1,'[{\"added\": {}}]',7,1),(6,'2024-06-03 04:29:54.610984','2','Technology',2,'[{\"changed\": {\"fields\": [\"Category name\"]}}]',7,1),(7,'2024-06-03 04:30:00.892501','3','Games',1,'[{\"added\": {}}]',7,1),(8,'2024-06-03 04:30:04.667364','4','Science',1,'[{\"added\": {}}]',7,1),(9,'2024-06-03 04:32:06.142720','1','xdefiant-making-a-big-change-to-sniper-rifles',1,'[{\"added\": {}}]',8,1),(10,'2024-06-03 04:33:25.951421','2','bird-flu-can-infect-cats-what-does-that-mean-for-their-people',1,'[{\"added\": {}}]',8,1),(11,'2024-06-03 04:33:30.379835','2','bird-flu-can-infect-cats-what-does-that-mean-for-their-people',2,'[{\"changed\": {\"fields\": [\"Is featured\"]}}]',8,1),(12,'2024-06-03 04:35:03.785515','3','10-fun-hands-on-projects-to-learn-aws',1,'[{\"added\": {}}]',8,1),(13,'2024-06-03 04:36:50.995106','4','cuales-son-los-diferentes-generos-del-anime-y-el-manga',1,'[{\"added\": {}}]',8,1),(14,'2024-06-03 04:37:00.709522','4','cuales-son-los-diferentes-generos-del-anime-y-el-manga',2,'[{\"changed\": {\"fields\": [\"Is featured\"]}}]',8,1),(15,'2024-06-03 04:37:08.419288','1','xdefiant-making-a-big-change-to-sniper-rifles',2,'[{\"changed\": {\"fields\": [\"Is featured\"]}}]',8,1),(16,'2024-06-03 17:29:14.771966','5','Spots',1,'[{\"added\": {}}]',7,1),(17,'2024-06-03 17:29:19.468674','5','Sports',2,'[{\"changed\": {\"fields\": [\"Category name\"]}}]',7,1),(18,'2024-06-03 17:30:07.752104','6','a',1,'[{\"added\": {}}]',7,1),(19,'2024-06-03 17:30:11.620732','6','a',3,'',7,1),(20,'2024-06-06 00:40:54.089940','1','About Us',1,'[{\"added\": {}}]',9,1),(21,'2024-06-06 00:41:09.211276','1','Github',1,'[{\"added\": {}}]',10,1),(22,'2024-06-06 00:41:12.928048','2','Facebook',1,'[{\"added\": {}}]',10,1),(23,'2024-06-06 00:41:15.799756','3','Linkedin',1,'[{\"added\": {}}]',10,1),(24,'2024-06-06 00:41:27.317638','4','cuales-son-los-diferentes-generos-del-anime-y-el-manga',2,'[{\"changed\": {\"fields\": [\"Is featured\"]}}]',8,1),(25,'2024-06-06 00:41:27.320635','2','bird-flu-can-infect-cats-what-does-that-mean-for-their-people',2,'[{\"changed\": {\"fields\": [\"Is featured\"]}}]',8,1),(26,'2024-06-06 00:41:27.322630','1','xdefiant-making-a-big-change-to-sniper-rifles',2,'[{\"changed\": {\"fields\": [\"Is featured\"]}}]',8,1),(27,'2024-06-06 00:41:35.529292','4','cuales-son-los-diferentes-generos-del-anime-y-el-manga',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',8,1),(28,'2024-06-06 00:41:35.530290','3','10-fun-hands-on-projects-to-learn-aws',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',8,1),(29,'2024-06-06 00:41:35.532284','2','bird-flu-can-infect-cats-what-does-that-mean-for-their-people',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',8,1),(30,'2024-06-06 00:41:35.534279','1','xdefiant-making-a-big-change-to-sniper-rifles',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',8,1),(31,'2024-06-06 00:41:41.566017','4','cuales-son-los-diferentes-generos-del-anime-y-el-manga',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',8,1),(32,'2024-06-06 00:42:26.330813','4','cuales-son-los-diferentes-generos-del-anime-y-el-manga',2,'[{\"changed\": {\"fields\": [\"Is featured\"]}}]',8,1),(33,'2024-06-06 00:42:31.542382','3','10-fun-hands-on-projects-to-learn-aws',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',8,1),(34,'2024-06-06 00:42:37.450666','3','10-fun-hands-on-projects-to-learn-aws',2,'[{\"changed\": {\"fields\": [\"Is featured\"]}}]',8,1),(35,'2024-06-07 00:51:32.510002','5','teest-blog',2,'[{\"changed\": {\"fields\": [\"Slug\"]}}]',8,1),(36,'2024-06-07 01:01:56.278874','8','new-post-8',3,'',8,1),(37,'2024-06-07 01:01:56.282835','6','new-post',3,'',8,1),(38,'2024-06-07 01:01:56.286720','5','teest-blog',3,'',8,1),(39,'2024-06-07 01:02:03.452877','3','10-fun-hands-on-projects-to-learn-aws',2,'[{\"changed\": {\"fields\": [\"Is featured\"]}}]',8,1),(40,'2024-06-07 01:02:10.710795','3','10-fun-hands-on-projects-to-learn-aws',2,'[{\"changed\": {\"fields\": [\"Is featured\"]}}]',8,1),(41,'2024-06-07 01:02:10.712789','2','bird-flu-can-infect-cats-what-does-that-mean-for-their-people',2,'[{\"changed\": {\"fields\": [\"Is featured\"]}}]',8,1),(42,'2024-06-07 01:03:36.032748','3','10-fun-hands-on-projects-to-learn-aws',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',8,1),(43,'2024-06-07 01:03:36.034743','1','xdefiant-making-a-big-change-to-sniper-rifles',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',8,1),(44,'2024-06-07 01:03:41.964972','2','bird-flu-can-infect-cats-what-does-that-mean-for-their-people',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',8,1),(45,'2024-06-07 04:43:06.147839','3','10-fun-hands-on-projects-to-learn-aws',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',8,1),(46,'2024-06-09 05:57:46.745534','2','manager',1,'[{\"added\": {}}]',4,1),(47,'2024-06-09 05:58:04.109374','2','manager',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\", \"Groups\"]}}]',4,1),(48,'2024-06-10 18:42:18.533109','1','luis',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]',4,1),(49,'2024-06-10 18:42:33.262391','2','manager',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]',4,1),(50,'2024-06-11 00:44:11.549757','2','manager',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',4,1),(51,'2024-06-11 00:44:19.225244','2','manager',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',4,1),(52,'2024-06-11 00:46:39.680365','3','Lysa',1,'[{\"added\": {}}]',4,1),(53,'2024-06-11 00:47:03.334594','3','Lysa',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\", \"Groups\"]}}]',4,1),(54,'2024-06-11 03:26:50.920490','1','Manager',2,'[{\"changed\": {\"fields\": [\"Permissions\"]}}]',3,1),(55,'2024-06-11 18:19:11.715611','1','buen commentario',1,'[{\"added\": {}}]',11,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(9,'assignments','about'),(10,'assignments','socialmedia'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(8,'blogs','blog'),(7,'blogs','category'),(11,'blogs','comment'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-06-03 04:26:48.617593'),(2,'auth','0001_initial','2024-06-03 04:26:49.385512'),(3,'admin','0001_initial','2024-06-03 04:26:49.547825'),(4,'admin','0002_logentry_remove_auto_add','2024-06-03 04:26:49.558796'),(5,'admin','0003_logentry_add_action_flag_choices','2024-06-03 04:26:49.569764'),(6,'assignments','0001_initial','2024-06-03 04:26:49.590018'),(7,'assignments','0002_socialmedia','2024-06-03 04:26:49.619310'),(8,'assignments','0003_socialmedia_created_at_socialmedia_updated_at','2024-06-03 04:26:49.666175'),(9,'contenttypes','0002_remove_content_type_name','2024-06-03 04:26:49.765061'),(10,'auth','0002_alter_permission_name_max_length','2024-06-03 04:26:49.844053'),(11,'auth','0003_alter_user_email_max_length','2024-06-03 04:26:49.875937'),(12,'auth','0004_alter_user_username_opts','2024-06-03 04:26:49.885911'),(13,'auth','0005_alter_user_last_login_null','2024-06-03 04:26:49.962525'),(14,'auth','0006_require_contenttypes_0002','2024-06-03 04:26:49.965546'),(15,'auth','0007_alter_validators_add_error_messages','2024-06-03 04:26:49.975552'),(16,'auth','0008_alter_user_username_max_length','2024-06-03 04:26:50.058572'),(17,'auth','0009_alter_user_last_name_max_length','2024-06-03 04:26:50.141322'),(18,'auth','0010_alter_group_name_max_length','2024-06-03 04:26:50.168751'),(19,'auth','0011_update_proxy_permissions','2024-06-03 04:26:50.180720'),(20,'auth','0012_alter_user_first_name_max_length','2024-06-03 04:26:50.252391'),(21,'blogs','0001_initial','2024-06-03 04:26:50.294445'),(22,'blogs','0002_alter_category_options_blog','2024-06-03 04:26:50.498709'),(23,'blogs','0003_alter_blog_status','2024-06-03 04:26:50.583757'),(24,'blogs','0004_about','2024-06-03 04:26:50.602793'),(25,'blogs','0005_socialmedia','2024-06-03 04:26:50.641688'),(26,'blogs','0006_alter_about_heading_alter_socialmedia_heading','2024-06-03 04:26:50.646674'),(27,'blogs','0007_remove_socialmedia_heading','2024-06-03 04:26:50.662632'),(28,'blogs','0008_delete_about_delete_socialmedia','2024-06-03 04:26:50.685611'),(29,'sessions','0001_initial','2024-06-03 04:26:50.727267'),(30,'blogs','0009_comment','2024-06-11 18:18:30.075691');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-12  1:17:45
