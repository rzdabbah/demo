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

--
-- Table structure for table `auth_group`
--
CREATE DATABASE  IF NOT EXISTS  movies;
use movies
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
INSERT INTO `auth_permission` VALUES (1,1,'add_logentry','Can add log entry'),(2,1,'change_logentry','Can change log entry'),(3,1,'delete_logentry','Can delete log entry'),(4,1,'view_logentry','Can view log entry'),(5,2,'add_permission','Can add permission'),(6,2,'change_permission','Can change permission'),(7,2,'delete_permission','Can delete permission'),(8,2,'view_permission','Can view permission'),(9,3,'add_group','Can add group'),(10,3,'change_group','Can change group'),(11,3,'delete_group','Can delete group'),(12,3,'view_group','Can view group'),(13,4,'add_user','Can add user'),(14,4,'change_user','Can change user'),(15,4,'delete_user','Can delete user'),(16,4,'view_user','Can view user'),(17,5,'add_contenttype','Can add content type'),(18,5,'change_contenttype','Can change content type'),(19,5,'delete_contenttype','Can delete content type'),(20,5,'view_contenttype','Can view content type'),(21,6,'add_session','Can add session'),(22,6,'change_session','Can change session'),(23,6,'delete_session','Can delete session'),(24,6,'view_session','Can view session'),(25,7,'add_movie','Can add movie'),(26,7,'change_movie','Can change movie'),(27,7,'delete_movie','Can delete movie'),(28,7,'view_movie','Can view movie'),(29,8,'add_review','Can add review'),(30,8,'change_review','Can change review'),(31,8,'delete_review','Can delete review'),(32,8,'view_review','Can view review'),(33,9,'add_rating','Can add rating'),(34,9,'change_rating','Can change rating'),(35,9,'delete_rating','Can delete rating'),(36,9,'view_rating','Can view rating');
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
  `last_login` DATE DEFAULT NULL,
  `is_superuser` tinyint(4) DEFAULT NULL,
  `username` varchar(6) DEFAULT NULL,
  `last_name` varchar(0) DEFAULT NULL,
  `email` varchar(0) DEFAULT NULL,
  `is_staff` tinyint(4) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `date_joined` DATE DEFAULT NULL,
  `first_name` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$870000$AnZfOX91hVSwibvfpT6RtO$tj1hskzVqYXxud0adsU+9Ybud3qgCe72n1X1wZWYlJo=','2024-09-25',1,'pc','','',1,1,'2024-09-16',''),(3,'pbkdf2_sha256$870000$vgWsltfc6lG0XDulJVCOPV$FV+xeerKKNjFUHm+L2/WrZoD25Sg6XUpFVu34zdQZd0=','2024-10-08',0,'xferax','','',0,1,'2024-09-16',''),(4,'pbkdf2_sha256$870000$NlsxWal9oVkaU2blT4rzQS$z8zjE38gKXRX03N+PdoSTBut6VwA6n8Plw+Zs4RirKo=','2024-09-18',0,'julian','','',0,1,'','');
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
  `object_repr` varchar(29) DEFAULT NULL,
  `action_flag` tinyint(4) DEFAULT NULL,
  `change_message` varchar(39) DEFAULT NULL,
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
INSERT INTO `django_admin_log` VALUES (1,1,'BreakingBad',1,'[{\"added\": {}}]',7,1,'2024-09-16'),(2,1,'BreakingBad',3,'',7,1,'2024-09-16'),(3,2,'Pirates of the Caribbean',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',7,1,'2024-09-16'),(4,2,'xferax',3,'',4,1,'2024-09-16'),(5,8,'You Don\'t Mess with the Zohan',3,'',7,1,'2024-09-16'),(6,18,'Pirates of the Caribbean',2,'[{\"changed\": {\"fields\": [\"Poster\"]}}]',7,1,'2024-09-16'),(7,4,'Julian',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',4,1,'2024-09-17'),(8,4,'Julian',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',4,1,'2024-09-17'),(9,4,'Julian',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',4,1,'2024-09-17'),(10,4,'Julian',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',4,1,'2024-09-17'),(11,4,'Julian',2,'[]',4,1,'2024-09-17'),(12,4,'Julian',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',4,1,'2024-09-17'),(13,4,'Julian',2,'[]',4,1,'2024-09-17'),(14,4,'julian',2,'[{\"changed\": {\"fields\": [\"Username\"]}}]',4,1,'2024-09-17'),(15,4,'julian',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',4,1,'2024-09-17'),(16,4,'julian',2,'[]',4,1,'2024-09-17');
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
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'movies','movie'),(9,'movies','rating'),(8,'movies','review'),(6,'sessions','session');
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
  `name` varchar(54) DEFAULT NULL,
  `applied` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-09-16'),(2,'auth','0001_initial','2024-09-16'),(3,'admin','0001_initial','2024-09-16'),(4,'admin','0002_logentry_remove_auto_add','2024-09-16'),(5,'admin','0003_logentry_add_action_flag_choices','2024-09-16'),(6,'contenttypes','0002_remove_content_type_name','2024-09-16'),(7,'auth','0002_alter_permission_name_max_length','2024-09-16'),(8,'auth','0003_alter_user_email_max_length','2024-09-16'),(9,'auth','0004_alter_user_username_opts','2024-09-16'),(10,'auth','0005_alter_user_last_login_null','2024-09-16'),(11,'auth','0006_require_contenttypes_0002','2024-09-16'),(12,'auth','0007_alter_validators_add_error_messages','2024-09-16'),(13,'auth','0008_alter_user_username_max_length','2024-09-16'),(14,'auth','0009_alter_user_last_name_max_length','2024-09-16'),(15,'auth','0010_alter_group_name_max_length','2024-09-16'),(16,'auth','0011_update_proxy_permissions','2024-09-16'),(17,'auth','0012_alter_user_first_name_max_length','2024-09-16'),(18,'movies','0001_initial','2024-09-16'),(19,'sessions','0001_initial','2024-09-16'),(20,'movies','0002_movie_trailer_url_alter_movie_year_of_release','2024-09-16'),(21,'movies','0003_movie_rating_rating','2024-09-18'),(22,'movies','0004_review_rating','2024-09-18'),(23,'movies','0005_alter_rating_unique_together','2024-09-18'),(24,'movies','0006_remove_review_rating_alter_rating_unique_together','2024-09-18');
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
  `expire_date` DATE DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('fdcyrpvq7xxkbl9zk88vtgx1kht5trck','.eJxVjMsOwiAQRf-FtSHDU3Dpvt9ABhikaiAp7cr479qkC93ec859sYDbWsM2aAlzZhem2Ol3i5ge1HaQ79hunafe1mWOfFf4QQefeqbn9XD_DiqO-q0BpC2oAIUzOklXSFlfHDo0pkQAmyRZSeQFigjSaI3aFeO1L9meU2TvD9HrN6E:1sqXgN:iDUSARUfAh-s1NMPnUD_sf27NX740cixSUYyfYzeKeU','2024-10-01');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_movie`
--

DROP TABLE IF EXISTS `movies_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies_movie` (
  `id` tinyint(4) DEFAULT NULL,
  `title` varchar(28) DEFAULT NULL,
  `description` varchar(248) DEFAULT NULL,
  `director` varchar(20) DEFAULT NULL,
  `main_actors` varchar(46) DEFAULT NULL,
  `year_of_release` smallint(6) DEFAULT NULL,
  `poster` varchar(1024) DEFAULT NULL,
  `trailer_url` varchar(41) DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_movie`
--

LOCK TABLES `movies_movie` WRITE;
/*!40000 ALTER TABLE `movies_movie` DISABLE KEYS */;
INSERT INTO `movies_movie` VALUES (16,'The Godfather','The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.','Francis Ford Coppola','Marlon Brando, Al Pacino, James Caan',1972,'https://dqetr53zgkoua.cloudfront.net/django/media/posters/pc_316YMoG.png','https://www.youtube.com/embed/naQr0uTrH_s',0.0),(20,'Friday','It\s Friday, and Craig and Smokey must come up with $200 they owe a local bully or there won\t be a Saturday.','F. Gary Gray','Ice Cube, Chris Tucker, Nia Long',1995,'https://dqetr53zgkoua.cloudfront.net/django/media/posters/fr_ApeOT4C.png','https://www.youtube.com/embed/IIFEDWYsDbs',0.0),(22,'Spectre','A cryptic message from James Bond\'s past sends him on a trail to uncover the existence of a sinister organization named SPECTRE. With a new threat dawning, Bond learns the terrible truth about the author of all his pain in his most recent missions.','Sam Mendes','Daniel Craig, Christoph Waltz, Léa Seydoux',2015,'https://dqetr53zgkoua.cloudfront.net/django/media/posters/sp_cp3JuSB.png','https://www.youtube.com/embed/z4UDNzXD3qA',0.0),(23,'Avatar','A paraplegic Marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.','James Cameron','Sam Worthington, Zoe Saldana, Sigourney Weaver',2009,'https://dqetr53zgkoua.cloudfront.net/django/media/posters/av_TbQgxPn.png','https://www.youtube.com/embed/CM79GTEm2ps',0.0),(24,'Kingsman: The Secret Service','A spy organization recruits a promising street kid into the agency\'s training program, while a global threat emerges from a twisted tech genius.','Matthew Vaughn','Colin Firth, Taron Egerton, Samuel L. Jackson',2014,'https://dqetr53zgkoua.cloudfront.net/django/media/posters/km.png','https://www.youtube.com/embed/m4NCribDx4U',0.0),(25,'The Lion King','After the murder of his father, a young lion prince flees his kingdom only to learn the true meaning of responsibility and bravery.','Jon Favreau','Donald Glover, Beyoncé, Seth Rogen',2019,'https://dqetr53zgkoua.cloudfront.net/django/media/posters/lk.png','https://www.youtube.com/embed/7TavVZMewpY',0.0),(26,'Titanic','A seventeen-year-old aristocrat falls in love with a kind but poor artist aboard the luxurious, ill-fated R.M.S. Titanic.','James Cameron','Leonardo DiCaprio, Kate Winslet, Billy Zane',1997,'https://dqetr53zgkoua.cloudfront.net/django/media/posters/tt.png','https://www.youtube.com/embed/wO44qBPBG4c',0.0),(27,'Eragon','In his homeland of Alagaesia, a farm boy happens upon a dragon\'s egg -- a discovery that leads him on a predestined journey where he realizes he\'s the one person who can defend his home against an evil king.','Stefen Fangmeier','Ed Speleers, Sienna Guillory, Jeremy Irons',2006,'https://dqetr53zgkoua.cloudfront.net/django/media/posters/er.png','https://www.youtube.com/embed/N2N7DygmQvc',0.0);
/*!40000 ALTER TABLE `movies_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_rating`
--

DROP TABLE IF EXISTS `movies_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies_rating` (
  `id` tinyint(4) DEFAULT NULL,
  `rating` tinyint(4) DEFAULT NULL,
  `movie_id` tinyint(4) DEFAULT NULL,
  `user_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_rating`
--

LOCK TABLES `movies_rating` WRITE;
/*!40000 ALTER TABLE `movies_rating` DISABLE KEYS */;
INSERT INTO `movies_rating` VALUES (1,5,16,4),(2,4,18,4),(3,5,18,3),(4,5,16,1),(5,5,17,1),(8,5,16,3);
/*!40000 ALTER TABLE `movies_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_review`
--

DROP TABLE IF EXISTS `movies_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies_review` (
  `id` tinyint(4) DEFAULT NULL,
  `review_text` varchar(84) DEFAULT NULL,
  `created_at` DATE DEFAULT NULL,
  `movie_id` tinyint(4) DEFAULT NULL,
  `user_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_review`
--

LOCK TABLES `movies_review` WRITE;
/*!40000 ALTER TABLE `movies_review` DISABLE KEYS */;
INSERT INTO `movies_review` VALUES (16,'This is the best movie ever that some one could watch , So recommended.','2024-09-16',16,1),(21,'One of the best actor of all time, Al Pacino is the best one who can cast this role.','2024-09-16',16,3),(24,'This is the best movie.','2024-09-17',17,1),(25,'The Best of all time.','2024-09-17',16,4),(26,'This movie is so recommended.','2024-09-17',18,4),(27,'You will just enjoy watching it.','2024-09-17',17,4),(28,'I liked this movie so much its an art.','2024-09-17',17,3),(29,'One of the funniest movie ever.','2024-09-17',18,3);
/*!40000 ALTER TABLE `movies_review` ENABLE KEYS */;
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
INSERT INTO `sqlite_sequence` VALUES ('django_migrations',24),('django_admin_log',16),('django_content_type',9),('auth_permission',36),('auth_group',0),('auth_user',4),('movies_review',41),('movies_movie',32),('movies_rating',8);
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

-- Dump completed on 2024-04-30 16:42:47
