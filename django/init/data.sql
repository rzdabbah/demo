-- MySQL dump 10.16  Distrib 10.1.48-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.48-MariaDB-0+deb9u2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- create database movies

create database IF NOT EXISTS  movies;

use movies ;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` varchar(0) DEFAULT NULL,
  `name` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` varchar(0) DEFAULT NULL,
  `group_id` varchar(0) DEFAULT NULL,
  `permission_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` tinyint(4) DEFAULT NULL,
  `content_type_id` tinyint(4) DEFAULT NULL,
  `codename` varchar(18) DEFAULT NULL,
  `name` varchar(23) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,1,'add_logentry','Can add log entry'),(2,1,'change_logentry','Can change log entry'),(3,1,'delete_logentry','Can delete log entry'),(4,1,'view_logentry','Can view log entry'),(5,2,'add_permission','Can add permission'),(6,2,'change_permission','Can change permission'),(7,2,'delete_permission','Can delete permission'),(8,2,'view_permission','Can view permission'),(9,3,'add_group','Can add group'),(10,3,'change_group','Can change group'),(11,3,'delete_group','Can delete group'),(12,3,'view_group','Can view group'),(13,4,'add_user','Can add user'),(14,4,'change_user','Can change user'),(15,4,'delete_user','Can delete user'),(16,4,'view_user','Can view user'),(17,5,'add_contenttype','Can add content type'),(18,5,'change_contenttype','Can change content type'),(19,5,'delete_contenttype','Can delete content type'),(20,5,'view_contenttype','Can view content type'),(21,6,'add_session','Can add session'),(22,6,'change_session','Can change session'),(23,6,'delete_session','Can delete session'),(24,6,'view_session','Can view session'),(25,7,'add_movies','Can add movies'),(26,7,'change_movies','Can change movies'),(27,7,'delete_movies','Can delete movies'),(28,7,'view_movies','Can view movies'),(29,8,'add_reviews','Can add reviews'),(30,8,'change_reviews','Can change reviews'),(31,8,'delete_reviews','Can delete reviews'),(32,8,'view_reviews','Can view reviews');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` tinyint(4) DEFAULT NULL,
  `password` varchar(88) DEFAULT NULL,
  `last_login` varchar(10) DEFAULT NULL,
  `is_superuser` tinyint(4) DEFAULT NULL,
  `username` varchar(6) DEFAULT NULL,
  `last_name` varchar(0) DEFAULT NULL,
  `email` varchar(0) DEFAULT NULL,
  `is_staff` tinyint(4) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `date_joined` varchar(10) DEFAULT NULL,
  `first_name` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$g2PqIrW7KzYrgaIT4GYq4z$51stz1d4b00x7SAJEMitTYMh/81KasJNGOgzHZJdfEI=','2024-09-30',1,'IMDB','','',1,1,'2024-09-14',''),(2,'pbkdf2_sha256$600000$RodKiME3q2TYxglPTZrbIH$gkxEQLemv81IC1gPL6ciGr0wDlnD7y18zc4IGdHDRhY=','2024-09-30',0,'farouk','','',0,1,'2024-09-19',''),(3,'pbkdf2_sha256$600000$qkTj5VKUZiTtFHgBDl173n$sush1L0y6SpHbwCgTHoHUlUEYDgrN5ZbKnj641A4jMg=','2024-09-27',0,'jack','','',0,1,'2024-09-27','');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL,
  `group_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL,
  `permission_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` tinyint(4) DEFAULT NULL,
  `object_id` tinyint(4) DEFAULT NULL,
  `object_repr` varchar(77) DEFAULT NULL,
  `action_flag` tinyint(4) DEFAULT NULL,
  `change_message` varchar(45) DEFAULT NULL,
  `content_type_id` tinyint(4) DEFAULT NULL,
  `user_id` tinyint(4) DEFAULT NULL,
  `action_time` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,1,'Movies object (1)',1,'[{\"added\": {}}]',7,1,'2024-09-14'),(2,2,'Movies object (2)',1,'[{\"added\": {}}]',7,1,'2024-09-14'),(3,2,'Movies object (2)',2,'[{\"changed\": {\"fields\": [\"Poster\"]}}]',7,1,'2024-09-19'),(4,2,'Movies object (2)',2,'[{\"changed\": {\"fields\": [\"Poster\"]}}]',7,1,'2024-09-19'),(5,1,'Movies object (1)',2,'[{\"changed\": {\"fields\": [\"Poster\"]}}]',7,1,'2024-09-19'),(6,1,'Movies object (1)',2,'[]',7,1,'2024-09-19'),(7,3,'Movies object (3)',1,'[{\"added\": {}}]',7,1,'2024-09-19'),(8,3,'Movies object (3)',2,'[{\"changed\": {\"fields\": [\"Slug\"]}}]',7,1,'2024-09-19'),(9,8,'Movies object (8)',1,'[{\"added\": {}}]',7,1,'2024-09-27'),(10,8,'Movies object (8)',3,'',7,1,'2024-09-27'),(11,7,'Movies object (7)',3,'',7,1,'2024-09-27'),(12,6,'Movies object (6)',3,'',7,1,'2024-09-27'),(13,5,'Movies object (5)',3,'',7,1,'2024-09-27'),(14,4,'Movies object (4)',3,'',7,1,'2024-09-27'),(15,3,'Movies object (3)',3,'',7,1,'2024-09-27'),(16,2,'Movies object (2)',3,'',7,1,'2024-09-27'),(17,1,'Movies object (1)',3,'',7,1,'2024-09-27'),(18,9,'Movies object (9)',1,'[{\"added\": {}}]',7,1,'2024-09-27'),(19,9,'Movies object (9)',3,'',7,1,'2024-09-27'),(20,10,'Movies object (10)',1,'[{\"added\": {}}]',7,1,'2024-09-27'),(21,10,'Movies object (10)',3,'',7,1,'2024-09-27'),(22,11,'Movies object (11)',1,'[{\"added\": {}}]',7,1,'2024-09-27'),(23,11,'Movies object (11)',3,'',7,1,'2024-09-27'),(24,12,'Movies object (12)',1,'[{\"added\": {}}]',7,1,'2024-09-27'),(25,13,'Movies object (13)',1,'[{\"added\": {}}]',7,1,'2024-09-27'),(26,13,'Movies object (13)',3,'',7,1,'2024-09-27'),(27,12,'Movies object (12)',3,'',7,1,'2024-09-27'),(28,28,'Movies object (28)',1,'[{\"added\": {}}]',7,1,'2024-09-27'),(29,29,'Movies object (29)',1,'[{\"added\": {}}]',7,1,'2024-09-27'),(30,14,'IMDB',2,'[{\"changed\": {\"fields\": [\"Slug\"]}}]',7,1,'2024-09-30'),(31,15,'IMDB',2,'[{\"changed\": {\"fields\": [\"Slug\"]}}]',7,1,'2024-09-30'),(32,16,'Saturday Night',2,'[{\"changed\": {\"fields\": [\"Slug\"]}}]',7,1,'2024-09-30'),(33,17,'Mufasa: The Lion King',2,'[{\"changed\": {\"fields\": [\"Slug\"]}}]',7,1,'2024-09-30'),(34,18,'Mufasa: The Lion King',2,'[{\"changed\": {\"fields\": [\"Slug\"]}}]',7,1,'2024-09-30'),(35,29,'My First Article5',3,'',7,1,'2024-09-30'),(36,28,'My First Article5',3,'',7,1,'2024-09-30'),(37,27,'My First Article5',3,'',7,1,'2024-09-30'),(38,26,'My First Article5',3,'',7,1,'2024-09-30'),(39,25,'My First Article5',3,'',7,1,'2024-09-30'),(40,24,'My First Article',3,'',7,1,'2024-09-30'),(41,23,'My First Article',3,'',7,1,'2024-09-30'),(42,22,'Mufasa: ',3,'',7,1,'2024-09-30'),(43,21,'<django.db.models.query_utils.DeferredAttribute object at 0x000001799D6BE310>',3,'',7,1,'2024-09-30'),(44,20,'<WSGIRequest: POST \'/movies/createMovie/\'>',3,'',7,1,'2024-09-30'),(45,19,'<WSGIRequest: POST \'/movies/createMovie/\'>',3,'',7,1,'2024-09-30'),(46,18,'Mufasa: The Lion King',3,'',7,1,'2024-09-30'),(47,17,'Mufasa: The Lion King',3,'',7,1,'2024-09-30'),(48,16,'Saturday Night',3,'',7,1,'2024-09-30'),(49,15,'IMDB',3,'',7,1,'2024-09-30'),(50,14,'IMDB',3,'',7,1,'2024-09-30'),(51,35,'Wolfs',2,'[{\"changed\": {\"fields\": [\"Poster\"]}}]',7,1,'2024-09-30'),(52,37,'Joker: Folie à Deux',2,'[{\"changed\": {\"fields\": [\"Poster\"]}}]',7,1,'2024-09-30'),(53,29,'IMDB amazing Mufasa: The Lion King 5',2,'[{\"changed\": {\"fields\": [\"Feedback stars\"]}}]',8,1,'2024-09-30'),(54,30,'IMDB recomended Mufasa: The Lion King 4',2,'[{\"changed\": {\"fields\": [\"Feedback stars\"]}}]',8,1,'2024-09-30');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` tinyint(4) DEFAULT NULL,
  `app_label` varchar(12) DEFAULT NULL,
  `model` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'movies','movies'),(8,'movies','reviews'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` tinyint(4) DEFAULT NULL,
  `app` varchar(12) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `applied` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-09-14'),(2,'auth','0001_initial','2024-09-14'),(3,'admin','0001_initial','2024-09-14'),(4,'admin','0002_logentry_remove_auto_add','2024-09-14'),(5,'admin','0003_logentry_add_action_flag_choices','2024-09-14'),(6,'contenttypes','0002_remove_content_type_name','2024-09-14'),(7,'auth','0002_alter_permission_name_max_length','2024-09-14'),(8,'auth','0003_alter_user_email_max_length','2024-09-14'),(9,'auth','0004_alter_user_username_opts','2024-09-14'),(10,'auth','0005_alter_user_last_login_null','2024-09-14'),(11,'auth','0006_require_contenttypes_0002','2024-09-14'),(12,'auth','0007_alter_validators_add_error_messages','2024-09-14'),(13,'auth','0008_alter_user_username_max_length','2024-09-14'),(14,'auth','0009_alter_user_last_name_max_length','2024-09-14'),(15,'auth','0010_alter_group_name_max_length','2024-09-14'),(16,'auth','0011_update_proxy_permissions','2024-09-14'),(17,'auth','0012_alter_user_first_name_max_length','2024-09-14'),(18,'movies','0001_initial','2024-09-14'),(19,'sessions','0001_initial','2024-09-14'),(20,'movies','0002_alter_movies_poster','2024-09-14'),(21,'movies','0003_alter_movies_poster','2024-09-14'),(22,'movies','0004_alter_movies_poster','2024-09-19'),(23,'movies','0005_reviews','2024-09-27'),(24,'movies','0006_alter_reviews_movie','2024-09-27'),(25,'movies','0007_alter_movies_poster','2024-09-30'),(26,'movies','0008_alter_movies_poster','2024-09-30');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(32) DEFAULT NULL,
  `session_data` varchar(227) DEFAULT NULL,
  `expire_date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('11ipc4svbyq81kx2lza037x89nu6bii5','.eJxVjMsOwiAQRf-FtSEyPASX7vsNhBmmUjWQlHZl_HfbpAvd3nPOfYuY1qXEtfMcpyyuQonT74aJnlx3kB-p3pukVpd5Qrkr8qBdDi3z63a4fwcl9bLVxCH4oDEpR2AMeQM8AimPrA04BBssaBUQNZ0vaA0Ex2nEvIUKMovPF9rEOAQ:1spa2q:t29prc2m7ggfmE5DrN2eHVgZ0IN0bkRTwuVfnyhOTZU','2024-09-28');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_movies`
--

DROP TABLE IF EXISTS `movies_movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies_movies` (
  `id` tinyint(4) DEFAULT NULL,
  `title` varchar(28) DEFAULT NULL,
  `slug` varchar(23) DEFAULT NULL,
  `description` varchar(238) DEFAULT NULL,
  `Director` varchar(19) DEFAULT NULL,
  `Four_main_actors` varchar(63) DEFAULT NULL,
  `year_release` varchar(10) DEFAULT NULL,
  `poster` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_movies`
--

LOCK TABLES `movies_movies` WRITE;
/*!40000 ALTER TABLE `movies_movies` DISABLE KEYS */;
INSERT INTO `movies_movies` VALUES (30,'Mufasa: The Lion King','Mufasa-The-Lion-King','Simba, having become king of the Pride Lands, is determined for his cub to follow in his paw prints while the origins of his late father Mufasa are explored.','Barry Jenkins','Aaron Pierre, 	Kelvin Harrison Jr., 	Seth Rogen,  Billy Eichner','2024-09-30','mufasa_Rlm662h.jpg'),(31,'Venom: The Last Dance (2024)','Venom-The-Last-Dance','Eddie and Venom are on the run. Hunted by both of their worlds and with the net closing in, the duo are forced into a devastating decision that will bring the curtains down on Venom and Eddie\'s last dance.','Kelly Marcel','Tom Hardy,Juno Temple,	Alanna Ubach,Rhys Ifans','2024-09-30','Venom_The_Last_Dance_SX6Slwh.jpg'),(32,'Ballerina (2025)','Ballerina','A young female assassin seeks revenge against the people who killed her family.','Len Wiseman','Ana de Armas,Keanu Reeves,Catalina Sandino Moreno,Norman Reedus','2024-09-30','Ballerina_2025.jpg'),(33,'Beetlejuice Beetlejuice','Beetlejuice-Beetlejuice','After a family tragedy, three generations of the Deetz family return home to Winter River. Still haunted by Beetlejuice, Lydia\'s life is turned upside down when her teenage daughter, Astrid, accidentally opens the portal to the Afterlife.','Tim Burton','Michael Keaton,Winona Ryder,Catherine O\'Hara,Jenna Ortega','2024-09-30','Beetlejuice_Beetlejuice.JPG'),(34,'Apartment 7A','Apartment-7A','A struggling young dancer finds herself drawn in by dark forces when a peculiar, well-connected older couple promise her a shot at fame.','Natalie Erika James','Julia Garner,Dianne Wiest,Kevin McNally,Jim Sturgess','2024-09-30','Apartment_7A.JPG'),(35,'Wolfs','Wolfs','Two rival fixers cross paths when they\'re both called in to help cover up a prominent New York official\'s misstep. Over one explosive night, they\'ll have to set aside their petty grievances and their egos to finish the job.','Jon Watts','Amy Ryan,Austin Abrams,George Clooney,Brad Pitt','2024-09-30','Wolfs.JPG'),(36,'The Wild Robot','The-Wild-Robot','After a shipwreck, an intelligent robot called Roz is stranded on an uninhabited island. To survive the harsh environment, Roz bonds with the island\'s animals and cares for an orphaned baby goose.','Chris Sanders','Lupita Nyong\'o,Pedro Pascal,Kit Connor,Bill Nighy','2024-09-30','The_Wild_Robot.JPG'),(37,'Joker: Folie à Deux','Joker-Folie-a-Deux','Arthur Fleck is institutionalized at Arkham, awaiting trial for his crimes as Joker. While struggling with his dual identity, Arthur not only stumbles upon true love, but also finds the music that\'s always been inside him.','Todd Phillips','Joaquin Phoenix,Zazie Beetz,Lady Gaga,Catherine Keener','2024-09-30','Joker_Folie_à_Deux.JPG'),(38,'Smile 2','Smile-2','About to embark on a world tour, global pop sensation Skye Riley begins experiencing increasingly terrifying and inexplicable events. Overwhelmed by the escalating horrors and the pressures of fame, Skye is forced to face her past.','Parker Finn','Kyle Gallner,Naomi Scott,Ray Nicholson,Drew Barrymore','2024-09-30','Smile_2.JPG'),(39,'Red One','Red-One','After Santa Claus (code name: Red One) is kidnapped, the North Pole\'s Head of Security (Dwayne Johnson) must team up with the world\'s most infamous bounty hunter (Chris Evans) in a globe-trotting, action-packed mission to save Christmas.','Jake Kasdan','Dwayne Johnson,Chris Evans,Lucy Liu,	J.K. Simmons','2024-09-30','Red_One.JPG'),(40,'Gladiator II','Gladiator-II','After his home is conquered by the tyrannical emperors who now lead Rome, Lucius is forced to enter the Colosseum and must look to his past to find strength to return the glory of Rome to its people.','Ridley Scott','Denzel Washington,Joseph Quinn,Pedro Pascal,Connie Nielsen','2024-09-30','Gladiator_II.JPG'),(41,'Wicked','Wicked','After two decades as one of the most beloved and enduring musicals on the stage, Wicked makes its long-awaited journey to the big screen as a spectacular, generation-defining two-part cinematic event this holiday season.','Jon M. Chu','Cynthia Erivo,Ariana Grande,Jonathan Bailey,Marissa Bode','2024-09-30','Wicked.JPG');
/*!40000 ALTER TABLE `movies_movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_reviews`
--

DROP TABLE IF EXISTS `movies_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies_reviews` (
  `id` tinyint(4) DEFAULT NULL,
  `year_release_review` varchar(10) DEFAULT NULL,
  `feedback_stars` tinyint(4) DEFAULT NULL,
  `review` varchar(14) DEFAULT NULL,
  `movie_id` tinyint(4) DEFAULT NULL,
  `user_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_reviews`
--

LOCK TABLES `movies_reviews` WRITE;
/*!40000 ALTER TABLE `movies_reviews` DISABLE KEYS */;
INSERT INTO `movies_reviews` VALUES (30,'2024-09-30',4,'recomended',30,1),(31,'2024-09-30',3,'nice!!',30,1),(32,'2024-09-30',2,'fantastic',31,1),(36,'2024-09-30',5,'55555555555555',30,1),(37,'2024-09-30',3,'ascas',30,2);
/*!40000 ALTER TABLE `movies_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sqlite_sequence`
--

DROP TABLE IF EXISTS `sqlite_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sqlite_sequence` (
  `name` varchar(19) DEFAULT NULL,
  `seq` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sqlite_sequence`
--

LOCK TABLES `sqlite_sequence` WRITE;
/*!40000 ALTER TABLE `sqlite_sequence` DISABLE KEYS */;
INSERT INTO `sqlite_sequence` VALUES ('django_migrations',26),('django_admin_log',54),('django_content_type',8),('auth_permission',32),('auth_group',0),('auth_user',3),('movies_reviews',37),('movies_movies',42);
/*!40000 ALTER TABLE `sqlite_sequence` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-30 16:46:24
