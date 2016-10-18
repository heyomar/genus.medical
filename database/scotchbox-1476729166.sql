-- MySQL dump 10.13  Distrib 5.5.46, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: scotchbox
-- ------------------------------------------------------
-- Server version	5.5.46-0ubuntu0.14.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2016-10-17 16:16:40','2016-10-17 16:16:40','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_hook_list`
--

DROP TABLE IF EXISTS `wp_hook_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_hook_list` (
  `called_by` varchar(96) NOT NULL,
  `hook_name` varchar(96) NOT NULL,
  `hook_type` varchar(15) NOT NULL,
  `first_call` int(11) NOT NULL,
  `arg_count` tinyint(4) NOT NULL,
  `file_name` varchar(128) NOT NULL,
  `line_num` smallint(6) NOT NULL,
  PRIMARY KEY (`first_call`,`hook_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_hook_list`
--

LOCK TABLES `wp_hook_list` WRITE;
/*!40000 ALTER TABLE `wp_hook_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_hook_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_nf3_action_meta`
--

DROP TABLE IF EXISTS `wp_nf3_action_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_nf3_action_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `key` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_nf3_action_meta`
--

LOCK TABLES `wp_nf3_action_meta` WRITE;
/*!40000 ALTER TABLE `wp_nf3_action_meta` DISABLE KEYS */;
INSERT INTO `wp_nf3_action_meta` VALUES (1,1,'label','Success Message'),(2,1,'message','Thank you {field:name} for filling out my form!'),(3,1,'objectType','Action'),(4,1,'objectDomain','actions'),(5,1,'editActive',''),(6,1,'conditions','a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),(7,1,'payment_gateways',''),(8,1,'payment_total',''),(9,1,'tag',''),(10,1,'to',''),(11,1,'email_subject',''),(12,1,'email_message',''),(13,1,'from_name',''),(14,1,'from_address',''),(15,1,'reply_to',''),(16,1,'email_format','html'),(17,1,'cc',''),(18,1,'bcc',''),(19,1,'attach_csv',''),(20,1,'redirect_url',''),(21,1,'success_msg','<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>'),(22,1,'email_message_plain',''),(23,2,'objectType','Action'),(24,2,'objectDomain','actions'),(25,2,'editActive',''),(26,2,'label','Email Notification'),(27,2,'conditions','a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),(28,2,'payment_gateways',''),(29,2,'payment_total',''),(30,2,'tag',''),(31,2,'to','{system:admin_email}'),(32,2,'email_subject','New message from {field:name}'),(33,2,'email_message','<p>{field:message}</p><p>- {field:name} ( {field:email} )</p>'),(34,2,'from_name',''),(35,2,'from_address',''),(36,2,'reply_to','{field:email}'),(37,2,'email_format','html'),(38,2,'cc',''),(39,2,'bcc',''),(40,2,'attach_csv','0'),(41,2,'email_message_plain',''),(42,3,'label','Save to Database'),(43,3,'objectType','Action'),(44,3,'objectDomain','actions'),(45,3,'editActive',''),(46,3,'conditions','a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),(47,3,'payment_gateways',''),(48,3,'payment_total',''),(49,3,'tag',''),(50,3,'to',''),(51,3,'email_subject',''),(52,3,'email_message',''),(53,3,'from_name',''),(54,3,'from_address',''),(55,3,'reply_to',''),(56,3,'email_format','html'),(57,3,'cc',''),(58,3,'bcc',''),(59,3,'attach_csv',''),(60,3,'redirect_url',''),(61,3,'email_message_plain',''),(62,4,'label','Email Confirmation'),(63,4,'to','{field:email}'),(64,4,'subject','This is an email action.'),(65,4,'message','Hello, Ninja Forms!'),(66,4,'objectType','Action'),(67,4,'objectDomain','actions'),(68,4,'editActive',''),(69,4,'conditions','a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:0:{}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),(70,4,'payment_gateways',''),(71,4,'payment_total',''),(72,4,'tag',''),(73,4,'email_subject','Submission Confirmation '),(74,4,'email_message','<p>{field:all_fields}<br></p>'),(75,4,'from_name',''),(76,4,'from_address',''),(77,4,'reply_to',''),(78,4,'email_format','html'),(79,4,'cc',''),(80,4,'bcc',''),(81,4,'attach_csv',''),(82,4,'email_message_plain','');
/*!40000 ALTER TABLE `wp_nf3_action_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_nf3_actions`
--

DROP TABLE IF EXISTS `wp_nf3_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_nf3_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext COLLATE utf8mb4_unicode_ci,
  `key` longtext COLLATE utf8mb4_unicode_ci,
  `type` longtext COLLATE utf8mb4_unicode_ci,
  `active` tinyint(1) DEFAULT '1',
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_nf3_actions`
--

LOCK TABLES `wp_nf3_actions` WRITE;
/*!40000 ALTER TABLE `wp_nf3_actions` DISABLE KEYS */;
INSERT INTO `wp_nf3_actions` VALUES (1,'','','successmessage',1,1,'2016-08-24 16:39:20',NULL),(2,'','','email',1,1,'2016-08-24 16:47:39',NULL),(3,'','','save',1,1,'2016-08-24 16:39:20',NULL),(4,'','','email',1,1,'2016-08-24 16:39:20',NULL);
/*!40000 ALTER TABLE `wp_nf3_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_nf3_field_meta`
--

DROP TABLE IF EXISTS `wp_nf3_field_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_nf3_field_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `key` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_nf3_field_meta`
--

LOCK TABLES `wp_nf3_field_meta` WRITE;
/*!40000 ALTER TABLE `wp_nf3_field_meta` DISABLE KEYS */;
INSERT INTO `wp_nf3_field_meta` VALUES (1,1,'label_pos','above'),(2,1,'required','1'),(3,1,'order','1'),(4,1,'placeholder',''),(5,1,'default',''),(6,1,'wrapper_class',''),(7,1,'element_class',''),(8,1,'objectType','Field'),(9,1,'objectDomain','fields'),(10,1,'editActive',''),(11,1,'container_class',''),(12,1,'input_limit',''),(13,1,'input_limit_type','characters'),(14,1,'input_limit_msg','Character(s) left'),(15,1,'manual_key',''),(16,1,'disable_input',''),(17,1,'admin_label',''),(18,1,'help_text',''),(19,1,'desc_text',''),(20,1,'disable_browser_autocomplete',''),(21,1,'mask',''),(22,1,'custom_mask',''),(23,1,'wrap_styles_background-color',''),(24,1,'wrap_styles_border',''),(25,1,'wrap_styles_border-style',''),(26,1,'wrap_styles_border-color',''),(27,1,'wrap_styles_color',''),(28,1,'wrap_styles_height',''),(29,1,'wrap_styles_width',''),(30,1,'wrap_styles_font-size',''),(31,1,'wrap_styles_margin',''),(32,1,'wrap_styles_padding',''),(33,1,'wrap_styles_display',''),(34,1,'wrap_styles_float',''),(35,1,'wrap_styles_show_advanced_css','0'),(36,1,'wrap_styles_advanced',''),(37,1,'label_styles_background-color',''),(38,1,'label_styles_border',''),(39,1,'label_styles_border-style',''),(40,1,'label_styles_border-color',''),(41,1,'label_styles_color',''),(42,1,'label_styles_height',''),(43,1,'label_styles_width',''),(44,1,'label_styles_font-size',''),(45,1,'label_styles_margin',''),(46,1,'label_styles_padding',''),(47,1,'label_styles_display',''),(48,1,'label_styles_float',''),(49,1,'label_styles_show_advanced_css','0'),(50,1,'label_styles_advanced',''),(51,1,'element_styles_background-color',''),(52,1,'element_styles_border',''),(53,1,'element_styles_border-style',''),(54,1,'element_styles_border-color',''),(55,1,'element_styles_color',''),(56,1,'element_styles_height',''),(57,1,'element_styles_width',''),(58,1,'element_styles_font-size',''),(59,1,'element_styles_margin',''),(60,1,'element_styles_padding',''),(61,1,'element_styles_display',''),(62,1,'element_styles_float',''),(63,1,'element_styles_show_advanced_css','0'),(64,1,'element_styles_advanced',''),(65,1,'cellcid','c3277'),(66,2,'label_pos','above'),(67,2,'required','1'),(68,2,'order','2'),(69,2,'placeholder',''),(70,2,'default',''),(71,2,'wrapper_class',''),(72,2,'element_class',''),(73,2,'objectType','Field'),(74,2,'objectDomain','fields'),(75,2,'editActive',''),(76,2,'container_class',''),(77,2,'admin_label',''),(78,2,'help_text',''),(79,2,'desc_text',''),(80,2,'wrap_styles_background-color',''),(81,2,'wrap_styles_border',''),(82,2,'wrap_styles_border-style',''),(83,2,'wrap_styles_border-color',''),(84,2,'wrap_styles_color',''),(85,2,'wrap_styles_height',''),(86,2,'wrap_styles_width',''),(87,2,'wrap_styles_font-size',''),(88,2,'wrap_styles_margin',''),(89,2,'wrap_styles_padding',''),(90,2,'wrap_styles_display',''),(91,2,'wrap_styles_float',''),(92,2,'wrap_styles_show_advanced_css','0'),(93,2,'wrap_styles_advanced',''),(94,2,'label_styles_background-color',''),(95,2,'label_styles_border',''),(96,2,'label_styles_border-style',''),(97,2,'label_styles_border-color',''),(98,2,'label_styles_color',''),(99,2,'label_styles_height',''),(100,2,'label_styles_width',''),(101,2,'label_styles_font-size',''),(102,2,'label_styles_margin',''),(103,2,'label_styles_padding',''),(104,2,'label_styles_display',''),(105,2,'label_styles_float',''),(106,2,'label_styles_show_advanced_css','0'),(107,2,'label_styles_advanced',''),(108,2,'element_styles_background-color',''),(109,2,'element_styles_border',''),(110,2,'element_styles_border-style',''),(111,2,'element_styles_border-color',''),(112,2,'element_styles_color',''),(113,2,'element_styles_height',''),(114,2,'element_styles_width',''),(115,2,'element_styles_font-size',''),(116,2,'element_styles_margin',''),(117,2,'element_styles_padding',''),(118,2,'element_styles_display',''),(119,2,'element_styles_float',''),(120,2,'element_styles_show_advanced_css','0'),(121,2,'element_styles_advanced',''),(122,2,'cellcid','c3281'),(123,3,'label_pos','above'),(124,3,'required','1'),(125,3,'order','3'),(126,3,'placeholder',''),(127,3,'default',''),(128,3,'wrapper_class',''),(129,3,'element_class',''),(130,3,'objectType','Field'),(131,3,'objectDomain','fields'),(132,3,'editActive',''),(133,3,'container_class',''),(134,3,'input_limit',''),(135,3,'input_limit_type','characters'),(136,3,'input_limit_msg','Character(s) left'),(137,3,'manual_key',''),(138,3,'disable_input',''),(139,3,'admin_label',''),(140,3,'help_text',''),(141,3,'desc_text',''),(142,3,'disable_browser_autocomplete',''),(143,3,'textarea_rte',''),(144,3,'disable_rte_mobile',''),(145,3,'textarea_media',''),(146,3,'wrap_styles_background-color',''),(147,3,'wrap_styles_border',''),(148,3,'wrap_styles_border-style',''),(149,3,'wrap_styles_border-color',''),(150,3,'wrap_styles_color',''),(151,3,'wrap_styles_height',''),(152,3,'wrap_styles_width',''),(153,3,'wrap_styles_font-size',''),(154,3,'wrap_styles_margin',''),(155,3,'wrap_styles_padding',''),(156,3,'wrap_styles_display',''),(157,3,'wrap_styles_float',''),(158,3,'wrap_styles_show_advanced_css','0'),(159,3,'wrap_styles_advanced',''),(160,3,'label_styles_background-color',''),(161,3,'label_styles_border',''),(162,3,'label_styles_border-style',''),(163,3,'label_styles_border-color',''),(164,3,'label_styles_color',''),(165,3,'label_styles_height',''),(166,3,'label_styles_width',''),(167,3,'label_styles_font-size',''),(168,3,'label_styles_margin',''),(169,3,'label_styles_padding',''),(170,3,'label_styles_display',''),(171,3,'label_styles_float',''),(172,3,'label_styles_show_advanced_css','0'),(173,3,'label_styles_advanced',''),(174,3,'element_styles_background-color',''),(175,3,'element_styles_border',''),(176,3,'element_styles_border-style',''),(177,3,'element_styles_border-color',''),(178,3,'element_styles_color',''),(179,3,'element_styles_height',''),(180,3,'element_styles_width',''),(181,3,'element_styles_font-size',''),(182,3,'element_styles_margin',''),(183,3,'element_styles_padding',''),(184,3,'element_styles_display',''),(185,3,'element_styles_float',''),(186,3,'element_styles_show_advanced_css','0'),(187,3,'element_styles_advanced',''),(188,3,'cellcid','c3284'),(189,4,'processing_label','Processing'),(190,4,'order','5'),(191,4,'objectType','Field'),(192,4,'objectDomain','fields'),(193,4,'editActive',''),(194,4,'container_class',''),(195,4,'element_class',''),(196,4,'wrap_styles_background-color',''),(197,4,'wrap_styles_border',''),(198,4,'wrap_styles_border-style',''),(199,4,'wrap_styles_border-color',''),(200,4,'wrap_styles_color',''),(201,4,'wrap_styles_height',''),(202,4,'wrap_styles_width',''),(203,4,'wrap_styles_font-size',''),(204,4,'wrap_styles_margin',''),(205,4,'wrap_styles_padding',''),(206,4,'wrap_styles_display',''),(207,4,'wrap_styles_float',''),(208,4,'wrap_styles_show_advanced_css','0'),(209,4,'wrap_styles_advanced',''),(210,4,'label_styles_background-color',''),(211,4,'label_styles_border',''),(212,4,'label_styles_border-style',''),(213,4,'label_styles_border-color',''),(214,4,'label_styles_color',''),(215,4,'label_styles_height',''),(216,4,'label_styles_width',''),(217,4,'label_styles_font-size',''),(218,4,'label_styles_margin',''),(219,4,'label_styles_padding',''),(220,4,'label_styles_display',''),(221,4,'label_styles_float',''),(222,4,'label_styles_show_advanced_css','0'),(223,4,'label_styles_advanced',''),(224,4,'element_styles_background-color',''),(225,4,'element_styles_border',''),(226,4,'element_styles_border-style',''),(227,4,'element_styles_border-color',''),(228,4,'element_styles_color',''),(229,4,'element_styles_height',''),(230,4,'element_styles_width',''),(231,4,'element_styles_font-size',''),(232,4,'element_styles_margin',''),(233,4,'element_styles_padding',''),(234,4,'element_styles_display',''),(235,4,'element_styles_float',''),(236,4,'element_styles_show_advanced_css','0'),(237,4,'element_styles_advanced',''),(238,4,'submit_element_hover_styles_background-color',''),(239,4,'submit_element_hover_styles_border',''),(240,4,'submit_element_hover_styles_border-style',''),(241,4,'submit_element_hover_styles_border-color',''),(242,4,'submit_element_hover_styles_color',''),(243,4,'submit_element_hover_styles_height',''),(244,4,'submit_element_hover_styles_width',''),(245,4,'submit_element_hover_styles_font-size',''),(246,4,'submit_element_hover_styles_margin',''),(247,4,'submit_element_hover_styles_padding',''),(248,4,'submit_element_hover_styles_display',''),(249,4,'submit_element_hover_styles_float',''),(250,4,'submit_element_hover_styles_show_advanced_css','0'),(251,4,'submit_element_hover_styles_advanced',''),(252,4,'cellcid','c3287');
/*!40000 ALTER TABLE `wp_nf3_field_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_nf3_fields`
--

DROP TABLE IF EXISTS `wp_nf3_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_nf3_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` longtext COLLATE utf8mb4_unicode_ci,
  `key` longtext COLLATE utf8mb4_unicode_ci,
  `type` longtext COLLATE utf8mb4_unicode_ci,
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_nf3_fields`
--

LOCK TABLES `wp_nf3_fields` WRITE;
/*!40000 ALTER TABLE `wp_nf3_fields` DISABLE KEYS */;
INSERT INTO `wp_nf3_fields` VALUES (1,'Name','name','textbox',1,'2016-08-24 16:39:20',NULL),(2,'Email','email','email',1,'2016-08-24 16:39:20',NULL),(3,'Message','message','textarea',1,'2016-08-24 16:39:20',NULL),(4,'Submit','submit','submit',1,'2016-08-24 16:39:20',NULL);
/*!40000 ALTER TABLE `wp_nf3_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_nf3_form_meta`
--

DROP TABLE IF EXISTS `wp_nf3_form_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_nf3_form_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `key` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_nf3_form_meta`
--

LOCK TABLES `wp_nf3_form_meta` WRITE;
/*!40000 ALTER TABLE `wp_nf3_form_meta` DISABLE KEYS */;
INSERT INTO `wp_nf3_form_meta` VALUES (1,1,'default_label_pos','above'),(2,1,'_seq_num','3'),(3,1,'conditions','a:0:{}'),(4,1,'objectType','Form Setting'),(5,1,'editActive',''),(6,1,'show_title','1'),(7,1,'clear_complete','1'),(8,1,'hide_complete','1'),(9,1,'wrapper_class',''),(10,1,'element_class',''),(11,1,'add_submit','1'),(12,1,'logged_in',''),(13,1,'not_logged_in_msg',''),(14,1,'sub_limit_number',''),(15,1,'sub_limit_msg',''),(16,1,'calculations','a:0:{}'),(17,1,'formContentData','a:4:{i:0;a:2:{s:5:\"order\";s:1:\"0\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:4:\"name\";}s:5:\"width\";s:3:\"100\";}}}i:1;a:2:{s:5:\"order\";s:1:\"1\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:5:\"email\";}s:5:\"width\";s:3:\"100\";}}}i:2;a:2:{s:5:\"order\";s:1:\"2\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:7:\"message\";}s:5:\"width\";s:3:\"100\";}}}i:3;a:2:{s:5:\"order\";s:1:\"3\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:6:\"submit\";}s:5:\"width\";s:3:\"100\";}}}}'),(18,1,'container_styles_background-color',''),(19,1,'container_styles_border',''),(20,1,'container_styles_border-style',''),(21,1,'container_styles_border-color',''),(22,1,'container_styles_color',''),(23,1,'container_styles_height',''),(24,1,'container_styles_width',''),(25,1,'container_styles_font-size',''),(26,1,'container_styles_margin',''),(27,1,'container_styles_padding',''),(28,1,'container_styles_display',''),(29,1,'container_styles_float',''),(30,1,'container_styles_show_advanced_css','0'),(31,1,'container_styles_advanced',''),(32,1,'title_styles_background-color',''),(33,1,'title_styles_border',''),(34,1,'title_styles_border-style',''),(35,1,'title_styles_border-color',''),(36,1,'title_styles_color',''),(37,1,'title_styles_height',''),(38,1,'title_styles_width',''),(39,1,'title_styles_font-size',''),(40,1,'title_styles_margin',''),(41,1,'title_styles_padding',''),(42,1,'title_styles_display',''),(43,1,'title_styles_float',''),(44,1,'title_styles_show_advanced_css','0'),(45,1,'title_styles_advanced',''),(46,1,'row_styles_background-color',''),(47,1,'row_styles_border',''),(48,1,'row_styles_border-style',''),(49,1,'row_styles_border-color',''),(50,1,'row_styles_color',''),(51,1,'row_styles_height',''),(52,1,'row_styles_width',''),(53,1,'row_styles_font-size',''),(54,1,'row_styles_margin',''),(55,1,'row_styles_padding',''),(56,1,'row_styles_display',''),(57,1,'row_styles_show_advanced_css','0'),(58,1,'row_styles_advanced',''),(59,1,'row-odd_styles_background-color',''),(60,1,'row-odd_styles_border',''),(61,1,'row-odd_styles_border-style',''),(62,1,'row-odd_styles_border-color',''),(63,1,'row-odd_styles_color',''),(64,1,'row-odd_styles_height',''),(65,1,'row-odd_styles_width',''),(66,1,'row-odd_styles_font-size',''),(67,1,'row-odd_styles_margin',''),(68,1,'row-odd_styles_padding',''),(69,1,'row-odd_styles_display',''),(70,1,'row-odd_styles_show_advanced_css','0'),(71,1,'row-odd_styles_advanced',''),(72,1,'success-msg_styles_background-color',''),(73,1,'success-msg_styles_border',''),(74,1,'success-msg_styles_border-style',''),(75,1,'success-msg_styles_border-color',''),(76,1,'success-msg_styles_color',''),(77,1,'success-msg_styles_height',''),(78,1,'success-msg_styles_width',''),(79,1,'success-msg_styles_font-size',''),(80,1,'success-msg_styles_margin',''),(81,1,'success-msg_styles_padding',''),(82,1,'success-msg_styles_display',''),(83,1,'success-msg_styles_show_advanced_css','0'),(84,1,'success-msg_styles_advanced',''),(85,1,'error_msg_styles_background-color',''),(86,1,'error_msg_styles_border',''),(87,1,'error_msg_styles_border-style',''),(88,1,'error_msg_styles_border-color',''),(89,1,'error_msg_styles_color',''),(90,1,'error_msg_styles_height',''),(91,1,'error_msg_styles_width',''),(92,1,'error_msg_styles_font-size',''),(93,1,'error_msg_styles_margin',''),(94,1,'error_msg_styles_padding',''),(95,1,'error_msg_styles_display',''),(96,1,'error_msg_styles_show_advanced_css','0'),(97,1,'error_msg_styles_advanced','');
/*!40000 ALTER TABLE `wp_nf3_form_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_nf3_forms`
--

DROP TABLE IF EXISTS `wp_nf3_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_nf3_forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext COLLATE utf8mb4_unicode_ci,
  `key` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `subs` int(11) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_nf3_forms`
--

LOCK TABLES `wp_nf3_forms` WRITE;
/*!40000 ALTER TABLE `wp_nf3_forms` DISABLE KEYS */;
INSERT INTO `wp_nf3_forms` VALUES (1,'Contact Me','','2016-08-24 16:39:20',NULL,NULL,NULL);
/*!40000 ALTER TABLE `wp_nf3_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_nf3_object_meta`
--

DROP TABLE IF EXISTS `wp_nf3_object_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_nf3_object_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `key` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_nf3_object_meta`
--

LOCK TABLES `wp_nf3_object_meta` WRITE;
/*!40000 ALTER TABLE `wp_nf3_object_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_nf3_object_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_nf3_objects`
--

DROP TABLE IF EXISTS `wp_nf3_objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_nf3_objects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` longtext COLLATE utf8mb4_unicode_ci,
  `title` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_nf3_objects`
--

LOCK TABLES `wp_nf3_objects` WRITE;
/*!40000 ALTER TABLE `wp_nf3_objects` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_nf3_objects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_nf3_relationships`
--

DROP TABLE IF EXISTS `wp_nf3_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_nf3_relationships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `child_id` int(11) NOT NULL,
  `child_type` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `parent_type` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_nf3_relationships`
--

LOCK TABLES `wp_nf3_relationships` WRITE;
/*!40000 ALTER TABLE `wp_nf3_relationships` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_nf3_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://wordpress.dev','yes'),(2,'home','http://wordpress.dev','yes'),(3,'blogname','WordPress Site','yes'),(4,'blogdescription','Just another WordPress site','yes'),(5,'users_can_register','0','yes'),(6,'admin_email','digital@hlkagency.com','yes'),(7,'start_of_week','1','yes'),(8,'use_balanceTags','0','yes'),(9,'use_smilies','1','yes'),(10,'require_name_email','1','yes'),(11,'comments_notify','1','yes'),(12,'posts_per_rss','10','yes'),(13,'rss_use_excerpt','0','yes'),(14,'mailserver_url','mail.example.com','yes'),(15,'mailserver_login','login@example.com','yes'),(16,'mailserver_pass','password','yes'),(17,'mailserver_port','110','yes'),(18,'default_category','1','yes'),(19,'default_comment_status','open','yes'),(20,'default_ping_status','open','yes'),(21,'default_pingback_flag','1','yes'),(22,'posts_per_page','10','yes'),(23,'date_format','F j, Y','yes'),(24,'time_format','g:i a','yes'),(25,'links_updated_date_format','F j, Y g:i a','yes'),(26,'comment_moderation','0','yes'),(27,'moderation_notify','1','yes'),(28,'permalink_structure','/index.php/%year%/%monthnum%/%day%/%postname%/','yes'),(29,'rewrite_rules','a:73:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:42:\"index.php/feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:37:\"index.php/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:18:\"index.php/embed/?$\";s:21:\"index.php?&embed=true\";s:30:\"index.php/page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:51:\"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:46:\"index.php/comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:27:\"index.php/comments/embed/?$\";s:21:\"index.php?&embed=true\";s:54:\"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:49:\"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:30:\"index.php/search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:42:\"index.php/search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:24:\"index.php/search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:45:\"index.php/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:55:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:49:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:42:\"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:54:\"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:36:\"index.php/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:29:\"index.php/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:41:\"index.php/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:23:\"index.php/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:68:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:78:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:98:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:74:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:87:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:75:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:71:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:57:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:67:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:87:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:63:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:48:\"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:37:\"index.php/.?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/.?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/.?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"index.php/(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:30:\"index.php/(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:50:\"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:45:\"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:38:\"index.php/(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:45:\"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:34:\"index.php/(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes'),(30,'hack_file','0','yes'),(31,'blog_charset','UTF-8','yes'),(32,'moderation_keys','','no'),(33,'active_plugins','a:20:{i:0;s:31:\"query-monitor/query-monitor.php\";i:1;s:34:\"advanced-custom-fields-pro/acf.php\";i:2;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:3;s:31:\"debug-objects/debug-objects.php\";i:4;s:37:\"disable-comments/disable-comments.php\";i:5;s:33:\"disable-emojis/disable-emojis.php\";i:6;s:45:\"enable-media-replace/enable-media-replace.php\";i:7;s:53:\"enhanced-media-library-pro/enhanced-media-library.php\";i:8;s:59:\"force-regenerate-thumbnails/force-regenerate-thumbnails.php\";i:9;s:49:\"log-deprecated-notices/log-deprecated-notices.php\";i:10;s:27:\"ninja-forms/ninja-forms.php\";i:11;s:27:\"redirection/redirection.php\";i:12;s:45:\"simple-page-ordering/simple-page-ordering.php\";i:13;s:27:\"theme-check/theme-check.php\";i:14;s:32:\"white-label-cms/wlcms-plugin.php\";i:15;s:24:\"wordpress-seo/wp-seo.php\";i:16;s:47:\"wp-migrate-db-pro-cli/wp-migrate-db-pro-cli.php\";i:17;s:63:\"wp-migrate-db-pro-media-files/wp-migrate-db-pro-media-files.php\";i:18;s:39:\"wp-migrate-db-pro/wp-migrate-db-pro.php\";i:19;s:45:\"yoast-seo-acf-analysis/yoast-acf-analysis.php\";}','yes'),(34,'category_base','','yes'),(35,'ping_sites','http://rpc.pingomatic.com/','yes'),(36,'comment_max_links','2','yes'),(37,'gmt_offset','0','yes'),(38,'default_email_category','1','yes'),(39,'recently_edited','','no'),(40,'template','twentysixteen','yes'),(41,'stylesheet','twentysixteen','yes'),(42,'comment_whitelist','1','yes'),(43,'blacklist_keys','','no'),(44,'comment_registration','0','yes'),(45,'html_type','text/html','yes'),(46,'use_trackback','0','yes'),(47,'default_role','subscriber','yes'),(48,'db_version','37965','yes'),(49,'uploads_use_yearmonth_folders','1','yes'),(50,'upload_path','','yes'),(51,'blog_public','1','yes'),(52,'default_link_category','2','yes'),(53,'show_on_front','posts','yes'),(54,'tag_base','','yes'),(55,'show_avatars','1','yes'),(56,'avatar_rating','G','yes'),(57,'upload_url_path','','yes'),(58,'thumbnail_size_w','150','yes'),(59,'thumbnail_size_h','150','yes'),(60,'thumbnail_crop','1','yes'),(61,'medium_size_w','300','yes'),(62,'medium_size_h','300','yes'),(63,'avatar_default','mystery','yes'),(64,'large_size_w','1024','yes'),(65,'large_size_h','1024','yes'),(66,'image_default_link_type','none','yes'),(67,'image_default_size','','yes'),(68,'image_default_align','','yes'),(69,'close_comments_for_old_posts','0','yes'),(70,'close_comments_days_old','14','yes'),(71,'thread_comments','1','yes'),(72,'thread_comments_depth','5','yes'),(73,'page_comments','0','yes'),(74,'comments_per_page','50','yes'),(75,'default_comments_page','newest','yes'),(76,'comment_order','asc','yes'),(77,'sticky_posts','a:0:{}','yes'),(78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(79,'widget_text','a:0:{}','yes'),(80,'widget_rss','a:0:{}','yes'),(81,'uninstall_plugins','a:3:{s:49:\"log-deprecated-notices/log-deprecated-notices.php\";a:2:{i:0;s:14:\"Deprecated_Log\";i:1;s:12:\"on_uninstall\";}s:27:\"ninja-forms/ninja-forms.php\";s:21:\"ninja_forms_uninstall\";s:31:\"debug-objects/debug-objects.php\";a:2:{i:0;s:13:\"Debug_Objects\";i:1;s:12:\"on_uninstall\";}}','no'),(82,'timezone_string','','yes'),(83,'page_for_posts','0','yes'),(84,'page_on_front','0','yes'),(85,'default_post_format','0','yes'),(86,'link_manager_enabled','0','yes'),(87,'finished_splitting_shared_terms','1','yes'),(88,'site_icon','0','yes'),(89,'medium_large_size_w','768','yes'),(90,'medium_large_size_h','0','yes'),(91,'initial_db_version','37965','yes'),(92,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:64:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:14:\"_debug_objects\";b:1;s:18:\"view_query_monitor\";b:1;s:15:\"wpseo_bulk_edit\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),(93,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(94,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(95,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(96,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(97,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(98,'sidebars_widgets','a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes'),(99,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(100,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(101,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(102,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(103,'cron','a:3:{i:1476764200;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1476765853;a:1:{s:29:\"wp_session_garbage_collection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}s:7:\"version\";i:2;}','yes'),(104,'_transient_is_multi_author','0','yes'),(105,'_transient_twentysixteen_categories','1','yes'),(107,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.6.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.6.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.6.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.6.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.6.1\";s:7:\"version\";s:5:\"4.6.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.4\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1476721001;s:15:\"version_checked\";s:5:\"4.6.1\";s:12:\"translations\";a:0:{}}','no'),(110,'_site_transient_timeout_theme_roots','1476722802','no'),(111,'_site_transient_theme_roots','a:4:{s:5:\"theme\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:14:\"twentyfourteen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}','no'),(142,'_transient_timeout_cptui_activation_redirect','1476721081','no'),(143,'_transient_cptui_activation_redirect','1','no'),(144,'disable_comments_options','a:5:{s:19:\"disabled_post_types\";a:0:{}s:17:\"remove_everywhere\";b:0;s:9:\"permanent\";b:0;s:16:\"extra_post_types\";b:0;s:10:\"db_version\";i:6;}','yes'),(145,'ninja_forms_version','3.0.9','yes'),(146,'ninja_forms_settings','a:7:{s:11:\"date_format\";s:5:\"m/d/Y\";s:8:\"currency\";s:3:\"USD\";s:18:\"recaptcha_site_key\";s:0:\"\";s:20:\"recaptcha_secret_key\";s:0:\"\";s:14:\"recaptcha_lang\";s:0:\"\";s:19:\"delete_on_uninstall\";i:0;s:21:\"disable_admin_notices\";i:0;}','yes'),(147,'wpseo','a:21:{s:14:\"blocking_files\";a:0:{}s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:5:\"3.7.0\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:0:\"\";s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:12:\"website_name\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";b:0;s:16:\"environment_type\";s:0:\"\";s:20:\"enable_setting_pages\";b:0;s:21:\"enable_admin_bar_menu\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1476721052;}','yes'),(148,'wpseo_permalinks','a:9:{s:15:\"cleanpermalinks\";b:0;s:24:\"cleanpermalink-extravars\";s:0:\"\";s:29:\"cleanpermalink-googlecampaign\";b:0;s:31:\"cleanpermalink-googlesitesearch\";b:0;s:15:\"cleanreplytocom\";b:0;s:10:\"cleanslugs\";b:1;s:18:\"redirectattachment\";b:0;s:17:\"stripcategorybase\";b:0;s:13:\"trailingslash\";b:0;}','yes'),(149,'wpseo_titles','a:56:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:23:\"content-analysis-active\";b:1;s:23:\"keyword-analysis-active\";b:1;s:9:\"separator\";s:7:\"sc-dash\";s:5:\"noodp\";b:0;s:15:\"usemetakeywords\";b:0;s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:18:\"metakey-home-wpseo\";s:0:\"\";s:20:\"metakey-author-wpseo\";s:0:\"\";s:22:\"noindex-subpages-wpseo\";b:0;s:20:\"noindex-author-wpseo\";b:0;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"metakey-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:16:\"hideeditbox-post\";b:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"metakey-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:16:\"hideeditbox-page\";b:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"metakey-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:22:\"hideeditbox-attachment\";b:0;s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:20:\"metakey-tax-category\";s:0:\"\";s:24:\"hideeditbox-tax-category\";b:0;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:20:\"metakey-tax-post_tag\";s:0:\"\";s:24:\"hideeditbox-tax-post_tag\";b:0;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:23:\"metakey-tax-post_format\";s:0:\"\";s:27:\"hideeditbox-tax-post_format\";b:0;s:23:\"noindex-tax-post_format\";b:1;}','yes'),(150,'wpseo_social','a:20:{s:9:\"fb_admins\";a:0:{}s:12:\"fbconnectkey\";s:32:\"12501d30b3f05035fd256c3c0b35dbc1\";s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:14:\"plus-publisher\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:7:\"summary\";s:11:\"youtube_url\";s:0:\"\";s:15:\"google_plus_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}','yes'),(151,'wpseo_rss','a:2:{s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";}','yes'),(152,'wpseo_internallinks','a:10:{s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:23:\"breadcrumbs-blog-remove\";b:0;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:0;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:7:\"&raquo;\";s:23:\"post_types-post-maintax\";i:0;}','yes'),(153,'wpseo_xml','a:16:{s:22:\"disable_author_sitemap\";b:1;s:22:\"disable_author_noposts\";b:1;s:16:\"enablexmlsitemap\";b:1;s:16:\"entries-per-page\";i:1000;s:14:\"excluded-posts\";s:0:\"\";s:38:\"user_role-administrator-not_in_sitemap\";b:0;s:31:\"user_role-editor-not_in_sitemap\";b:0;s:31:\"user_role-author-not_in_sitemap\";b:0;s:36:\"user_role-contributor-not_in_sitemap\";b:0;s:35:\"user_role-subscriber-not_in_sitemap\";b:0;s:30:\"post_types-post-not_in_sitemap\";b:0;s:30:\"post_types-page-not_in_sitemap\";b:0;s:36:\"post_types-attachment-not_in_sitemap\";b:1;s:34:\"taxonomies-category-not_in_sitemap\";b:0;s:34:\"taxonomies-post_tag-not_in_sitemap\";b:0;s:37:\"taxonomies-post_format-not_in_sitemap\";b:0;}','yes'),(154,'wpseo_flush_rewrite','1','yes'),(155,'_site_transient_update_plugins','','no'),(156,'wpuxss_eml_pro_bulkedit_savebutton_off','0','yes'),(157,'wpmdb_settings','a:11:{s:3:\"key\";s:40:\"u37FWLB2EuiZf8U34jkePUkrASmvBs9BzAc0qBXJ\";s:10:\"allow_pull\";b:0;s:10:\"allow_push\";b:0;s:8:\"profiles\";a:0:{}s:7:\"licence\";s:0:\"\";s:10:\"verify_ssl\";b:0;s:17:\"blacklist_plugins\";a:0:{}s:11:\"max_request\";i:1048576;s:22:\"delay_between_requests\";i:0;s:18:\"prog_tables_hidden\";b:1;s:21:\"pause_before_finalize\";b:0;}','no'),(158,'wpmdb_schema_version','1','no'),(159,'widget_ninja_forms_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(160,'wpuxss_eml_version','2.3.1','yes'),(161,'wpuxss_eml_mimes_backup','a:90:{s:12:\"jpg|jpeg|jpe\";a:5:{s:4:\"mime\";s:10:\"image/jpeg\";s:8:\"singular\";s:10:\"image/jpeg\";s:6:\"plural\";s:10:\"image/jpeg\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"gif\";a:5:{s:4:\"mime\";s:9:\"image/gif\";s:8:\"singular\";s:9:\"image/gif\";s:6:\"plural\";s:9:\"image/gif\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"png\";a:5:{s:4:\"mime\";s:9:\"image/png\";s:8:\"singular\";s:9:\"image/png\";s:6:\"plural\";s:9:\"image/png\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"bmp\";a:5:{s:4:\"mime\";s:9:\"image/bmp\";s:8:\"singular\";s:9:\"image/bmp\";s:6:\"plural\";s:9:\"image/bmp\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:8:\"tiff|tif\";a:5:{s:4:\"mime\";s:10:\"image/tiff\";s:8:\"singular\";s:10:\"image/tiff\";s:6:\"plural\";s:10:\"image/tiff\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"ico\";a:5:{s:4:\"mime\";s:12:\"image/x-icon\";s:8:\"singular\";s:12:\"image/x-icon\";s:6:\"plural\";s:12:\"image/x-icon\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:7:\"asf|asx\";a:5:{s:4:\"mime\";s:14:\"video/x-ms-asf\";s:8:\"singular\";s:14:\"video/x-ms-asf\";s:6:\"plural\";s:14:\"video/x-ms-asf\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"wmv\";a:5:{s:4:\"mime\";s:14:\"video/x-ms-wmv\";s:8:\"singular\";s:14:\"video/x-ms-wmv\";s:6:\"plural\";s:14:\"video/x-ms-wmv\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"wmx\";a:5:{s:4:\"mime\";s:14:\"video/x-ms-wmx\";s:8:\"singular\";s:14:\"video/x-ms-wmx\";s:6:\"plural\";s:14:\"video/x-ms-wmx\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:2:\"wm\";a:5:{s:4:\"mime\";s:13:\"video/x-ms-wm\";s:8:\"singular\";s:13:\"video/x-ms-wm\";s:6:\"plural\";s:13:\"video/x-ms-wm\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"avi\";a:5:{s:4:\"mime\";s:9:\"video/avi\";s:8:\"singular\";s:9:\"video/avi\";s:6:\"plural\";s:9:\"video/avi\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"divx\";a:5:{s:4:\"mime\";s:10:\"video/divx\";s:8:\"singular\";s:10:\"video/divx\";s:6:\"plural\";s:10:\"video/divx\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"flv\";a:5:{s:4:\"mime\";s:11:\"video/x-flv\";s:8:\"singular\";s:11:\"video/x-flv\";s:6:\"plural\";s:11:\"video/x-flv\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:6:\"mov|qt\";a:5:{s:4:\"mime\";s:15:\"video/quicktime\";s:8:\"singular\";s:15:\"video/quicktime\";s:6:\"plural\";s:15:\"video/quicktime\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:12:\"mpeg|mpg|mpe\";a:5:{s:4:\"mime\";s:10:\"video/mpeg\";s:8:\"singular\";s:10:\"video/mpeg\";s:6:\"plural\";s:10:\"video/mpeg\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:7:\"mp4|m4v\";a:5:{s:4:\"mime\";s:9:\"video/mp4\";s:8:\"singular\";s:9:\"video/mp4\";s:6:\"plural\";s:9:\"video/mp4\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"ogv\";a:5:{s:4:\"mime\";s:9:\"video/ogg\";s:8:\"singular\";s:9:\"video/ogg\";s:6:\"plural\";s:9:\"video/ogg\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"webm\";a:5:{s:4:\"mime\";s:10:\"video/webm\";s:8:\"singular\";s:10:\"video/webm\";s:6:\"plural\";s:10:\"video/webm\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"mkv\";a:5:{s:4:\"mime\";s:16:\"video/x-matroska\";s:8:\"singular\";s:16:\"video/x-matroska\";s:6:\"plural\";s:16:\"video/x-matroska\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:8:\"3gp|3gpp\";a:5:{s:4:\"mime\";s:10:\"video/3gpp\";s:8:\"singular\";s:10:\"video/3gpp\";s:6:\"plural\";s:10:\"video/3gpp\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:8:\"3g2|3gp2\";a:5:{s:4:\"mime\";s:11:\"video/3gpp2\";s:8:\"singular\";s:11:\"video/3gpp2\";s:6:\"plural\";s:11:\"video/3gpp2\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:18:\"txt|asc|c|cc|h|srt\";a:5:{s:4:\"mime\";s:10:\"text/plain\";s:8:\"singular\";s:10:\"text/plain\";s:6:\"plural\";s:10:\"text/plain\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"csv\";a:5:{s:4:\"mime\";s:8:\"text/csv\";s:8:\"singular\";s:8:\"text/csv\";s:6:\"plural\";s:8:\"text/csv\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"tsv\";a:5:{s:4:\"mime\";s:25:\"text/tab-separated-values\";s:8:\"singular\";s:25:\"text/tab-separated-values\";s:6:\"plural\";s:25:\"text/tab-separated-values\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"ics\";a:5:{s:4:\"mime\";s:13:\"text/calendar\";s:8:\"singular\";s:13:\"text/calendar\";s:6:\"plural\";s:13:\"text/calendar\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"rtx\";a:5:{s:4:\"mime\";s:13:\"text/richtext\";s:8:\"singular\";s:13:\"text/richtext\";s:6:\"plural\";s:13:\"text/richtext\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"css\";a:5:{s:4:\"mime\";s:8:\"text/css\";s:8:\"singular\";s:8:\"text/css\";s:6:\"plural\";s:8:\"text/css\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:8:\"htm|html\";a:5:{s:4:\"mime\";s:9:\"text/html\";s:8:\"singular\";s:9:\"text/html\";s:6:\"plural\";s:9:\"text/html\";s:6:\"filter\";i:0;s:6:\"upload\";i:0;}s:3:\"vtt\";a:5:{s:4:\"mime\";s:8:\"text/vtt\";s:8:\"singular\";s:8:\"text/vtt\";s:6:\"plural\";s:8:\"text/vtt\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"dfxp\";a:5:{s:4:\"mime\";s:20:\"application/ttaf+xml\";s:8:\"singular\";s:20:\"application/ttaf+xml\";s:6:\"plural\";s:20:\"application/ttaf+xml\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:11:\"mp3|m4a|m4b\";a:5:{s:4:\"mime\";s:10:\"audio/mpeg\";s:8:\"singular\";s:10:\"audio/mpeg\";s:6:\"plural\";s:10:\"audio/mpeg\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:6:\"ra|ram\";a:5:{s:4:\"mime\";s:17:\"audio/x-realaudio\";s:8:\"singular\";s:17:\"audio/x-realaudio\";s:6:\"plural\";s:17:\"audio/x-realaudio\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"wav\";a:5:{s:4:\"mime\";s:9:\"audio/wav\";s:8:\"singular\";s:9:\"audio/wav\";s:6:\"plural\";s:9:\"audio/wav\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:7:\"ogg|oga\";a:5:{s:4:\"mime\";s:9:\"audio/ogg\";s:8:\"singular\";s:9:\"audio/ogg\";s:6:\"plural\";s:9:\"audio/ogg\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:8:\"mid|midi\";a:5:{s:4:\"mime\";s:10:\"audio/midi\";s:8:\"singular\";s:10:\"audio/midi\";s:6:\"plural\";s:10:\"audio/midi\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"wma\";a:5:{s:4:\"mime\";s:14:\"audio/x-ms-wma\";s:8:\"singular\";s:14:\"audio/x-ms-wma\";s:6:\"plural\";s:14:\"audio/x-ms-wma\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"wax\";a:5:{s:4:\"mime\";s:14:\"audio/x-ms-wax\";s:8:\"singular\";s:14:\"audio/x-ms-wax\";s:6:\"plural\";s:14:\"audio/x-ms-wax\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"mka\";a:5:{s:4:\"mime\";s:16:\"audio/x-matroska\";s:8:\"singular\";s:16:\"audio/x-matroska\";s:6:\"plural\";s:16:\"audio/x-matroska\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"rtf\";a:5:{s:4:\"mime\";s:15:\"application/rtf\";s:8:\"singular\";s:15:\"application/rtf\";s:6:\"plural\";s:15:\"application/rtf\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:2:\"js\";a:5:{s:4:\"mime\";s:22:\"application/javascript\";s:8:\"singular\";s:22:\"application/javascript\";s:6:\"plural\";s:22:\"application/javascript\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"pdf\";a:5:{s:4:\"mime\";s:15:\"application/pdf\";s:8:\"singular\";s:15:\"application/pdf\";s:6:\"plural\";s:15:\"application/pdf\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"swf\";a:5:{s:4:\"mime\";s:29:\"application/x-shockwave-flash\";s:8:\"singular\";s:29:\"application/x-shockwave-flash\";s:6:\"plural\";s:29:\"application/x-shockwave-flash\";s:6:\"filter\";i:0;s:6:\"upload\";i:0;}s:5:\"class\";a:5:{s:4:\"mime\";s:16:\"application/java\";s:8:\"singular\";s:16:\"application/java\";s:6:\"plural\";s:16:\"application/java\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"tar\";a:5:{s:4:\"mime\";s:17:\"application/x-tar\";s:8:\"singular\";s:17:\"application/x-tar\";s:6:\"plural\";s:17:\"application/x-tar\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"zip\";a:5:{s:4:\"mime\";s:15:\"application/zip\";s:8:\"singular\";s:15:\"application/zip\";s:6:\"plural\";s:15:\"application/zip\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:7:\"gz|gzip\";a:5:{s:4:\"mime\";s:18:\"application/x-gzip\";s:8:\"singular\";s:18:\"application/x-gzip\";s:6:\"plural\";s:18:\"application/x-gzip\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"rar\";a:5:{s:4:\"mime\";s:15:\"application/rar\";s:8:\"singular\";s:15:\"application/rar\";s:6:\"plural\";s:15:\"application/rar\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:2:\"7z\";a:5:{s:4:\"mime\";s:27:\"application/x-7z-compressed\";s:8:\"singular\";s:27:\"application/x-7z-compressed\";s:6:\"plural\";s:27:\"application/x-7z-compressed\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"exe\";a:5:{s:4:\"mime\";s:24:\"application/x-msdownload\";s:8:\"singular\";s:24:\"application/x-msdownload\";s:6:\"plural\";s:24:\"application/x-msdownload\";s:6:\"filter\";i:0;s:6:\"upload\";i:0;}s:3:\"psd\";a:5:{s:4:\"mime\";s:24:\"application/octet-stream\";s:8:\"singular\";s:24:\"application/octet-stream\";s:6:\"plural\";s:24:\"application/octet-stream\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"xcf\";a:5:{s:4:\"mime\";s:24:\"application/octet-stream\";s:8:\"singular\";s:24:\"application/octet-stream\";s:6:\"plural\";s:24:\"application/octet-stream\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"doc\";a:5:{s:4:\"mime\";s:18:\"application/msword\";s:8:\"singular\";s:18:\"application/msword\";s:6:\"plural\";s:18:\"application/msword\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:11:\"pot|pps|ppt\";a:5:{s:4:\"mime\";s:29:\"application/vnd.ms-powerpoint\";s:8:\"singular\";s:29:\"application/vnd.ms-powerpoint\";s:6:\"plural\";s:29:\"application/vnd.ms-powerpoint\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"wri\";a:5:{s:4:\"mime\";s:24:\"application/vnd.ms-write\";s:8:\"singular\";s:24:\"application/vnd.ms-write\";s:6:\"plural\";s:24:\"application/vnd.ms-write\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:15:\"xla|xls|xlt|xlw\";a:5:{s:4:\"mime\";s:24:\"application/vnd.ms-excel\";s:8:\"singular\";s:24:\"application/vnd.ms-excel\";s:6:\"plural\";s:24:\"application/vnd.ms-excel\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"mdb\";a:5:{s:4:\"mime\";s:25:\"application/vnd.ms-access\";s:8:\"singular\";s:25:\"application/vnd.ms-access\";s:6:\"plural\";s:25:\"application/vnd.ms-access\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"mpp\";a:5:{s:4:\"mime\";s:26:\"application/vnd.ms-project\";s:8:\"singular\";s:26:\"application/vnd.ms-project\";s:6:\"plural\";s:26:\"application/vnd.ms-project\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"docx\";a:5:{s:4:\"mime\";s:71:\"application/vnd.openxmlformats-officedocument.wordprocessingml.document\";s:8:\"singular\";s:71:\"application/vnd.openxmlformats-officedocument.wordprocessingml.document\";s:6:\"plural\";s:71:\"application/vnd.openxmlformats-officedocument.wordprocessingml.document\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"docm\";a:5:{s:4:\"mime\";s:48:\"application/vnd.ms-word.document.macroEnabled.12\";s:8:\"singular\";s:48:\"application/vnd.ms-word.document.macroEnabled.12\";s:6:\"plural\";s:48:\"application/vnd.ms-word.document.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"dotx\";a:5:{s:4:\"mime\";s:71:\"application/vnd.openxmlformats-officedocument.wordprocessingml.template\";s:8:\"singular\";s:71:\"application/vnd.openxmlformats-officedocument.wordprocessingml.template\";s:6:\"plural\";s:71:\"application/vnd.openxmlformats-officedocument.wordprocessingml.template\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"dotm\";a:5:{s:4:\"mime\";s:48:\"application/vnd.ms-word.template.macroEnabled.12\";s:8:\"singular\";s:48:\"application/vnd.ms-word.template.macroEnabled.12\";s:6:\"plural\";s:48:\"application/vnd.ms-word.template.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"xlsx\";a:5:{s:4:\"mime\";s:65:\"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet\";s:8:\"singular\";s:65:\"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet\";s:6:\"plural\";s:65:\"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"xlsm\";a:5:{s:4:\"mime\";s:46:\"application/vnd.ms-excel.sheet.macroEnabled.12\";s:8:\"singular\";s:46:\"application/vnd.ms-excel.sheet.macroEnabled.12\";s:6:\"plural\";s:46:\"application/vnd.ms-excel.sheet.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"xlsb\";a:5:{s:4:\"mime\";s:53:\"application/vnd.ms-excel.sheet.binary.macroEnabled.12\";s:8:\"singular\";s:53:\"application/vnd.ms-excel.sheet.binary.macroEnabled.12\";s:6:\"plural\";s:53:\"application/vnd.ms-excel.sheet.binary.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"xltx\";a:5:{s:4:\"mime\";s:68:\"application/vnd.openxmlformats-officedocument.spreadsheetml.template\";s:8:\"singular\";s:68:\"application/vnd.openxmlformats-officedocument.spreadsheetml.template\";s:6:\"plural\";s:68:\"application/vnd.openxmlformats-officedocument.spreadsheetml.template\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"xltm\";a:5:{s:4:\"mime\";s:49:\"application/vnd.ms-excel.template.macroEnabled.12\";s:8:\"singular\";s:49:\"application/vnd.ms-excel.template.macroEnabled.12\";s:6:\"plural\";s:49:\"application/vnd.ms-excel.template.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"xlam\";a:5:{s:4:\"mime\";s:46:\"application/vnd.ms-excel.addin.macroEnabled.12\";s:8:\"singular\";s:46:\"application/vnd.ms-excel.addin.macroEnabled.12\";s:6:\"plural\";s:46:\"application/vnd.ms-excel.addin.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"pptx\";a:5:{s:4:\"mime\";s:73:\"application/vnd.openxmlformats-officedocument.presentationml.presentation\";s:8:\"singular\";s:73:\"application/vnd.openxmlformats-officedocument.presentationml.presentation\";s:6:\"plural\";s:73:\"application/vnd.openxmlformats-officedocument.presentationml.presentation\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"pptm\";a:5:{s:4:\"mime\";s:58:\"application/vnd.ms-powerpoint.presentation.macroEnabled.12\";s:8:\"singular\";s:58:\"application/vnd.ms-powerpoint.presentation.macroEnabled.12\";s:6:\"plural\";s:58:\"application/vnd.ms-powerpoint.presentation.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"ppsx\";a:5:{s:4:\"mime\";s:70:\"application/vnd.openxmlformats-officedocument.presentationml.slideshow\";s:8:\"singular\";s:70:\"application/vnd.openxmlformats-officedocument.presentationml.slideshow\";s:6:\"plural\";s:70:\"application/vnd.openxmlformats-officedocument.presentationml.slideshow\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"ppsm\";a:5:{s:4:\"mime\";s:55:\"application/vnd.ms-powerpoint.slideshow.macroEnabled.12\";s:8:\"singular\";s:55:\"application/vnd.ms-powerpoint.slideshow.macroEnabled.12\";s:6:\"plural\";s:55:\"application/vnd.ms-powerpoint.slideshow.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"potx\";a:5:{s:4:\"mime\";s:69:\"application/vnd.openxmlformats-officedocument.presentationml.template\";s:8:\"singular\";s:69:\"application/vnd.openxmlformats-officedocument.presentationml.template\";s:6:\"plural\";s:69:\"application/vnd.openxmlformats-officedocument.presentationml.template\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"potm\";a:5:{s:4:\"mime\";s:54:\"application/vnd.ms-powerpoint.template.macroEnabled.12\";s:8:\"singular\";s:54:\"application/vnd.ms-powerpoint.template.macroEnabled.12\";s:6:\"plural\";s:54:\"application/vnd.ms-powerpoint.template.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"ppam\";a:5:{s:4:\"mime\";s:51:\"application/vnd.ms-powerpoint.addin.macroEnabled.12\";s:8:\"singular\";s:51:\"application/vnd.ms-powerpoint.addin.macroEnabled.12\";s:6:\"plural\";s:51:\"application/vnd.ms-powerpoint.addin.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"sldx\";a:5:{s:4:\"mime\";s:66:\"application/vnd.openxmlformats-officedocument.presentationml.slide\";s:8:\"singular\";s:66:\"application/vnd.openxmlformats-officedocument.presentationml.slide\";s:6:\"plural\";s:66:\"application/vnd.openxmlformats-officedocument.presentationml.slide\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"sldm\";a:5:{s:4:\"mime\";s:51:\"application/vnd.ms-powerpoint.slide.macroEnabled.12\";s:8:\"singular\";s:51:\"application/vnd.ms-powerpoint.slide.macroEnabled.12\";s:6:\"plural\";s:51:\"application/vnd.ms-powerpoint.slide.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:28:\"onetoc|onetoc2|onetmp|onepkg\";a:5:{s:4:\"mime\";s:19:\"application/onenote\";s:8:\"singular\";s:19:\"application/onenote\";s:6:\"plural\";s:19:\"application/onenote\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"oxps\";a:5:{s:4:\"mime\";s:16:\"application/oxps\";s:8:\"singular\";s:16:\"application/oxps\";s:6:\"plural\";s:16:\"application/oxps\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"xps\";a:5:{s:4:\"mime\";s:30:\"application/vnd.ms-xpsdocument\";s:8:\"singular\";s:30:\"application/vnd.ms-xpsdocument\";s:6:\"plural\";s:30:\"application/vnd.ms-xpsdocument\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"odt\";a:5:{s:4:\"mime\";s:39:\"application/vnd.oasis.opendocument.text\";s:8:\"singular\";s:39:\"application/vnd.oasis.opendocument.text\";s:6:\"plural\";s:39:\"application/vnd.oasis.opendocument.text\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"odp\";a:5:{s:4:\"mime\";s:47:\"application/vnd.oasis.opendocument.presentation\";s:8:\"singular\";s:47:\"application/vnd.oasis.opendocument.presentation\";s:6:\"plural\";s:47:\"application/vnd.oasis.opendocument.presentation\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"ods\";a:5:{s:4:\"mime\";s:46:\"application/vnd.oasis.opendocument.spreadsheet\";s:8:\"singular\";s:46:\"application/vnd.oasis.opendocument.spreadsheet\";s:6:\"plural\";s:46:\"application/vnd.oasis.opendocument.spreadsheet\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"odg\";a:5:{s:4:\"mime\";s:43:\"application/vnd.oasis.opendocument.graphics\";s:8:\"singular\";s:43:\"application/vnd.oasis.opendocument.graphics\";s:6:\"plural\";s:43:\"application/vnd.oasis.opendocument.graphics\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"odc\";a:5:{s:4:\"mime\";s:40:\"application/vnd.oasis.opendocument.chart\";s:8:\"singular\";s:40:\"application/vnd.oasis.opendocument.chart\";s:6:\"plural\";s:40:\"application/vnd.oasis.opendocument.chart\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"odb\";a:5:{s:4:\"mime\";s:43:\"application/vnd.oasis.opendocument.database\";s:8:\"singular\";s:43:\"application/vnd.oasis.opendocument.database\";s:6:\"plural\";s:43:\"application/vnd.oasis.opendocument.database\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"odf\";a:5:{s:4:\"mime\";s:42:\"application/vnd.oasis.opendocument.formula\";s:8:\"singular\";s:42:\"application/vnd.oasis.opendocument.formula\";s:6:\"plural\";s:42:\"application/vnd.oasis.opendocument.formula\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:6:\"wp|wpd\";a:5:{s:4:\"mime\";s:23:\"application/wordperfect\";s:8:\"singular\";s:23:\"application/wordperfect\";s:6:\"plural\";s:23:\"application/wordperfect\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"key\";a:5:{s:4:\"mime\";s:29:\"application/vnd.apple.keynote\";s:8:\"singular\";s:29:\"application/vnd.apple.keynote\";s:6:\"plural\";s:29:\"application/vnd.apple.keynote\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:7:\"numbers\";a:5:{s:4:\"mime\";s:29:\"application/vnd.apple.numbers\";s:8:\"singular\";s:29:\"application/vnd.apple.numbers\";s:6:\"plural\";s:29:\"application/vnd.apple.numbers\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:5:\"pages\";a:5:{s:4:\"mime\";s:27:\"application/vnd.apple.pages\";s:8:\"singular\";s:27:\"application/vnd.apple.pages\";s:6:\"plural\";s:27:\"application/vnd.apple.pages\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}}','yes'),(162,'wpuxss_eml_taxonomies','a:3:{s:14:\"media_category\";a:13:{s:8:\"assigned\";i:1;s:9:\"eml_media\";i:1;s:6:\"public\";i:1;s:6:\"labels\";a:12:{s:4:\"name\";s:16:\"Media Categories\";s:13:\"singular_name\";s:14:\"Media Category\";s:9:\"menu_name\";s:16:\"Media Categories\";s:9:\"all_items\";s:20:\"All Media Categories\";s:9:\"edit_item\";s:19:\"Edit Media Category\";s:9:\"view_item\";s:19:\"View Media Category\";s:11:\"update_item\";s:21:\"Update Media Category\";s:12:\"add_new_item\";s:22:\"Add New Media Category\";s:13:\"new_item_name\";s:23:\"New Media Category Name\";s:11:\"parent_item\";s:21:\"Parent Media Category\";s:17:\"parent_item_colon\";s:22:\"Parent Media Category:\";s:12:\"search_items\";s:23:\"Search Media Categories\";}s:12:\"hierarchical\";i:1;s:17:\"show_admin_column\";i:1;s:12:\"admin_filter\";i:1;s:21:\"media_uploader_filter\";i:1;s:25:\"media_popup_taxonomy_edit\";i:1;s:17:\"show_in_nav_menus\";i:1;s:4:\"sort\";i:0;s:12:\"show_in_rest\";i:0;s:7:\"rewrite\";a:2:{s:4:\"slug\";s:14:\"media_category\";s:10:\"with_front\";i:1;}}s:8:\"category\";a:6:{s:9:\"eml_media\";i:0;s:12:\"admin_filter\";i:0;s:21:\"media_uploader_filter\";i:0;s:25:\"media_popup_taxonomy_edit\";i:0;s:20:\"taxonomy_auto_assign\";i:0;s:8:\"assigned\";i:0;}s:8:\"post_tag\";a:6:{s:9:\"eml_media\";i:0;s:12:\"admin_filter\";i:0;s:21:\"media_uploader_filter\";i:0;s:25:\"media_popup_taxonomy_edit\";i:0;s:20:\"taxonomy_auto_assign\";i:0;s:8:\"assigned\";i:0;}}','yes'),(163,'wpuxss_eml_lib_options','a:3:{s:24:\"enhance_media_shortcodes\";i:0;s:13:\"media_orderby\";s:4:\"date\";s:11:\"media_order\";s:4:\"DESC\";}','yes'),(164,'wpuxss_eml_tax_options','a:4:{s:12:\"tax_archives\";i:1;s:24:\"edit_all_as_hierarchical\";i:0;s:13:\"force_filters\";i:0;s:10:\"show_count\";i:1;}','yes'),(165,'wpuxss_eml_mimes','a:90:{s:12:\"jpg|jpeg|jpe\";a:5:{s:4:\"mime\";s:10:\"image/jpeg\";s:8:\"singular\";s:10:\"image/jpeg\";s:6:\"plural\";s:10:\"image/jpeg\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"gif\";a:5:{s:4:\"mime\";s:9:\"image/gif\";s:8:\"singular\";s:9:\"image/gif\";s:6:\"plural\";s:9:\"image/gif\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"png\";a:5:{s:4:\"mime\";s:9:\"image/png\";s:8:\"singular\";s:9:\"image/png\";s:6:\"plural\";s:9:\"image/png\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"bmp\";a:5:{s:4:\"mime\";s:9:\"image/bmp\";s:8:\"singular\";s:9:\"image/bmp\";s:6:\"plural\";s:9:\"image/bmp\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:8:\"tiff|tif\";a:5:{s:4:\"mime\";s:10:\"image/tiff\";s:8:\"singular\";s:10:\"image/tiff\";s:6:\"plural\";s:10:\"image/tiff\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"ico\";a:5:{s:4:\"mime\";s:12:\"image/x-icon\";s:8:\"singular\";s:12:\"image/x-icon\";s:6:\"plural\";s:12:\"image/x-icon\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:7:\"asf|asx\";a:5:{s:4:\"mime\";s:14:\"video/x-ms-asf\";s:8:\"singular\";s:14:\"video/x-ms-asf\";s:6:\"plural\";s:14:\"video/x-ms-asf\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"wmv\";a:5:{s:4:\"mime\";s:14:\"video/x-ms-wmv\";s:8:\"singular\";s:14:\"video/x-ms-wmv\";s:6:\"plural\";s:14:\"video/x-ms-wmv\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"wmx\";a:5:{s:4:\"mime\";s:14:\"video/x-ms-wmx\";s:8:\"singular\";s:14:\"video/x-ms-wmx\";s:6:\"plural\";s:14:\"video/x-ms-wmx\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:2:\"wm\";a:5:{s:4:\"mime\";s:13:\"video/x-ms-wm\";s:8:\"singular\";s:13:\"video/x-ms-wm\";s:6:\"plural\";s:13:\"video/x-ms-wm\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"avi\";a:5:{s:4:\"mime\";s:9:\"video/avi\";s:8:\"singular\";s:9:\"video/avi\";s:6:\"plural\";s:9:\"video/avi\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"divx\";a:5:{s:4:\"mime\";s:10:\"video/divx\";s:8:\"singular\";s:10:\"video/divx\";s:6:\"plural\";s:10:\"video/divx\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"flv\";a:5:{s:4:\"mime\";s:11:\"video/x-flv\";s:8:\"singular\";s:11:\"video/x-flv\";s:6:\"plural\";s:11:\"video/x-flv\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:6:\"mov|qt\";a:5:{s:4:\"mime\";s:15:\"video/quicktime\";s:8:\"singular\";s:15:\"video/quicktime\";s:6:\"plural\";s:15:\"video/quicktime\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:12:\"mpeg|mpg|mpe\";a:5:{s:4:\"mime\";s:10:\"video/mpeg\";s:8:\"singular\";s:10:\"video/mpeg\";s:6:\"plural\";s:10:\"video/mpeg\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:7:\"mp4|m4v\";a:5:{s:4:\"mime\";s:9:\"video/mp4\";s:8:\"singular\";s:9:\"video/mp4\";s:6:\"plural\";s:9:\"video/mp4\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"ogv\";a:5:{s:4:\"mime\";s:9:\"video/ogg\";s:8:\"singular\";s:9:\"video/ogg\";s:6:\"plural\";s:9:\"video/ogg\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"webm\";a:5:{s:4:\"mime\";s:10:\"video/webm\";s:8:\"singular\";s:10:\"video/webm\";s:6:\"plural\";s:10:\"video/webm\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"mkv\";a:5:{s:4:\"mime\";s:16:\"video/x-matroska\";s:8:\"singular\";s:16:\"video/x-matroska\";s:6:\"plural\";s:16:\"video/x-matroska\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:8:\"3gp|3gpp\";a:5:{s:4:\"mime\";s:10:\"video/3gpp\";s:8:\"singular\";s:10:\"video/3gpp\";s:6:\"plural\";s:10:\"video/3gpp\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:8:\"3g2|3gp2\";a:5:{s:4:\"mime\";s:11:\"video/3gpp2\";s:8:\"singular\";s:11:\"video/3gpp2\";s:6:\"plural\";s:11:\"video/3gpp2\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:18:\"txt|asc|c|cc|h|srt\";a:5:{s:4:\"mime\";s:10:\"text/plain\";s:8:\"singular\";s:10:\"text/plain\";s:6:\"plural\";s:10:\"text/plain\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"csv\";a:5:{s:4:\"mime\";s:8:\"text/csv\";s:8:\"singular\";s:8:\"text/csv\";s:6:\"plural\";s:8:\"text/csv\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"tsv\";a:5:{s:4:\"mime\";s:25:\"text/tab-separated-values\";s:8:\"singular\";s:25:\"text/tab-separated-values\";s:6:\"plural\";s:25:\"text/tab-separated-values\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"ics\";a:5:{s:4:\"mime\";s:13:\"text/calendar\";s:8:\"singular\";s:13:\"text/calendar\";s:6:\"plural\";s:13:\"text/calendar\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"rtx\";a:5:{s:4:\"mime\";s:13:\"text/richtext\";s:8:\"singular\";s:13:\"text/richtext\";s:6:\"plural\";s:13:\"text/richtext\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"css\";a:5:{s:4:\"mime\";s:8:\"text/css\";s:8:\"singular\";s:8:\"text/css\";s:6:\"plural\";s:8:\"text/css\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:8:\"htm|html\";a:5:{s:4:\"mime\";s:9:\"text/html\";s:8:\"singular\";s:9:\"text/html\";s:6:\"plural\";s:9:\"text/html\";s:6:\"filter\";i:0;s:6:\"upload\";i:0;}s:3:\"vtt\";a:5:{s:4:\"mime\";s:8:\"text/vtt\";s:8:\"singular\";s:8:\"text/vtt\";s:6:\"plural\";s:8:\"text/vtt\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"dfxp\";a:5:{s:4:\"mime\";s:20:\"application/ttaf+xml\";s:8:\"singular\";s:20:\"application/ttaf+xml\";s:6:\"plural\";s:20:\"application/ttaf+xml\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:11:\"mp3|m4a|m4b\";a:5:{s:4:\"mime\";s:10:\"audio/mpeg\";s:8:\"singular\";s:10:\"audio/mpeg\";s:6:\"plural\";s:10:\"audio/mpeg\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:6:\"ra|ram\";a:5:{s:4:\"mime\";s:17:\"audio/x-realaudio\";s:8:\"singular\";s:17:\"audio/x-realaudio\";s:6:\"plural\";s:17:\"audio/x-realaudio\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"wav\";a:5:{s:4:\"mime\";s:9:\"audio/wav\";s:8:\"singular\";s:9:\"audio/wav\";s:6:\"plural\";s:9:\"audio/wav\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:7:\"ogg|oga\";a:5:{s:4:\"mime\";s:9:\"audio/ogg\";s:8:\"singular\";s:9:\"audio/ogg\";s:6:\"plural\";s:9:\"audio/ogg\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:8:\"mid|midi\";a:5:{s:4:\"mime\";s:10:\"audio/midi\";s:8:\"singular\";s:10:\"audio/midi\";s:6:\"plural\";s:10:\"audio/midi\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"wma\";a:5:{s:4:\"mime\";s:14:\"audio/x-ms-wma\";s:8:\"singular\";s:14:\"audio/x-ms-wma\";s:6:\"plural\";s:14:\"audio/x-ms-wma\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"wax\";a:5:{s:4:\"mime\";s:14:\"audio/x-ms-wax\";s:8:\"singular\";s:14:\"audio/x-ms-wax\";s:6:\"plural\";s:14:\"audio/x-ms-wax\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"mka\";a:5:{s:4:\"mime\";s:16:\"audio/x-matroska\";s:8:\"singular\";s:16:\"audio/x-matroska\";s:6:\"plural\";s:16:\"audio/x-matroska\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"rtf\";a:5:{s:4:\"mime\";s:15:\"application/rtf\";s:8:\"singular\";s:15:\"application/rtf\";s:6:\"plural\";s:15:\"application/rtf\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:2:\"js\";a:5:{s:4:\"mime\";s:22:\"application/javascript\";s:8:\"singular\";s:22:\"application/javascript\";s:6:\"plural\";s:22:\"application/javascript\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"pdf\";a:5:{s:4:\"mime\";s:15:\"application/pdf\";s:8:\"singular\";s:3:\"PDF\";s:6:\"plural\";s:4:\"PDFs\";s:6:\"filter\";i:1;s:6:\"upload\";i:1;}s:3:\"swf\";a:5:{s:4:\"mime\";s:29:\"application/x-shockwave-flash\";s:8:\"singular\";s:29:\"application/x-shockwave-flash\";s:6:\"plural\";s:29:\"application/x-shockwave-flash\";s:6:\"filter\";i:0;s:6:\"upload\";i:0;}s:5:\"class\";a:5:{s:4:\"mime\";s:16:\"application/java\";s:8:\"singular\";s:16:\"application/java\";s:6:\"plural\";s:16:\"application/java\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"tar\";a:5:{s:4:\"mime\";s:17:\"application/x-tar\";s:8:\"singular\";s:17:\"application/x-tar\";s:6:\"plural\";s:17:\"application/x-tar\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"zip\";a:5:{s:4:\"mime\";s:15:\"application/zip\";s:8:\"singular\";s:15:\"application/zip\";s:6:\"plural\";s:15:\"application/zip\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:7:\"gz|gzip\";a:5:{s:4:\"mime\";s:18:\"application/x-gzip\";s:8:\"singular\";s:18:\"application/x-gzip\";s:6:\"plural\";s:18:\"application/x-gzip\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"rar\";a:5:{s:4:\"mime\";s:15:\"application/rar\";s:8:\"singular\";s:15:\"application/rar\";s:6:\"plural\";s:15:\"application/rar\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:2:\"7z\";a:5:{s:4:\"mime\";s:27:\"application/x-7z-compressed\";s:8:\"singular\";s:27:\"application/x-7z-compressed\";s:6:\"plural\";s:27:\"application/x-7z-compressed\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"exe\";a:5:{s:4:\"mime\";s:24:\"application/x-msdownload\";s:8:\"singular\";s:24:\"application/x-msdownload\";s:6:\"plural\";s:24:\"application/x-msdownload\";s:6:\"filter\";i:0;s:6:\"upload\";i:0;}s:3:\"psd\";a:5:{s:4:\"mime\";s:24:\"application/octet-stream\";s:8:\"singular\";s:24:\"application/octet-stream\";s:6:\"plural\";s:24:\"application/octet-stream\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"xcf\";a:5:{s:4:\"mime\";s:24:\"application/octet-stream\";s:8:\"singular\";s:24:\"application/octet-stream\";s:6:\"plural\";s:24:\"application/octet-stream\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"doc\";a:5:{s:4:\"mime\";s:18:\"application/msword\";s:8:\"singular\";s:18:\"application/msword\";s:6:\"plural\";s:18:\"application/msword\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:11:\"pot|pps|ppt\";a:5:{s:4:\"mime\";s:29:\"application/vnd.ms-powerpoint\";s:8:\"singular\";s:29:\"application/vnd.ms-powerpoint\";s:6:\"plural\";s:29:\"application/vnd.ms-powerpoint\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"wri\";a:5:{s:4:\"mime\";s:24:\"application/vnd.ms-write\";s:8:\"singular\";s:24:\"application/vnd.ms-write\";s:6:\"plural\";s:24:\"application/vnd.ms-write\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:15:\"xla|xls|xlt|xlw\";a:5:{s:4:\"mime\";s:24:\"application/vnd.ms-excel\";s:8:\"singular\";s:24:\"application/vnd.ms-excel\";s:6:\"plural\";s:24:\"application/vnd.ms-excel\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"mdb\";a:5:{s:4:\"mime\";s:25:\"application/vnd.ms-access\";s:8:\"singular\";s:25:\"application/vnd.ms-access\";s:6:\"plural\";s:25:\"application/vnd.ms-access\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"mpp\";a:5:{s:4:\"mime\";s:26:\"application/vnd.ms-project\";s:8:\"singular\";s:26:\"application/vnd.ms-project\";s:6:\"plural\";s:26:\"application/vnd.ms-project\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"docx\";a:5:{s:4:\"mime\";s:71:\"application/vnd.openxmlformats-officedocument.wordprocessingml.document\";s:8:\"singular\";s:71:\"application/vnd.openxmlformats-officedocument.wordprocessingml.document\";s:6:\"plural\";s:71:\"application/vnd.openxmlformats-officedocument.wordprocessingml.document\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"docm\";a:5:{s:4:\"mime\";s:48:\"application/vnd.ms-word.document.macroEnabled.12\";s:8:\"singular\";s:48:\"application/vnd.ms-word.document.macroEnabled.12\";s:6:\"plural\";s:48:\"application/vnd.ms-word.document.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"dotx\";a:5:{s:4:\"mime\";s:71:\"application/vnd.openxmlformats-officedocument.wordprocessingml.template\";s:8:\"singular\";s:71:\"application/vnd.openxmlformats-officedocument.wordprocessingml.template\";s:6:\"plural\";s:71:\"application/vnd.openxmlformats-officedocument.wordprocessingml.template\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"dotm\";a:5:{s:4:\"mime\";s:48:\"application/vnd.ms-word.template.macroEnabled.12\";s:8:\"singular\";s:48:\"application/vnd.ms-word.template.macroEnabled.12\";s:6:\"plural\";s:48:\"application/vnd.ms-word.template.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"xlsx\";a:5:{s:4:\"mime\";s:65:\"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet\";s:8:\"singular\";s:65:\"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet\";s:6:\"plural\";s:65:\"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"xlsm\";a:5:{s:4:\"mime\";s:46:\"application/vnd.ms-excel.sheet.macroEnabled.12\";s:8:\"singular\";s:46:\"application/vnd.ms-excel.sheet.macroEnabled.12\";s:6:\"plural\";s:46:\"application/vnd.ms-excel.sheet.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"xlsb\";a:5:{s:4:\"mime\";s:53:\"application/vnd.ms-excel.sheet.binary.macroEnabled.12\";s:8:\"singular\";s:53:\"application/vnd.ms-excel.sheet.binary.macroEnabled.12\";s:6:\"plural\";s:53:\"application/vnd.ms-excel.sheet.binary.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"xltx\";a:5:{s:4:\"mime\";s:68:\"application/vnd.openxmlformats-officedocument.spreadsheetml.template\";s:8:\"singular\";s:68:\"application/vnd.openxmlformats-officedocument.spreadsheetml.template\";s:6:\"plural\";s:68:\"application/vnd.openxmlformats-officedocument.spreadsheetml.template\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"xltm\";a:5:{s:4:\"mime\";s:49:\"application/vnd.ms-excel.template.macroEnabled.12\";s:8:\"singular\";s:49:\"application/vnd.ms-excel.template.macroEnabled.12\";s:6:\"plural\";s:49:\"application/vnd.ms-excel.template.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"xlam\";a:5:{s:4:\"mime\";s:46:\"application/vnd.ms-excel.addin.macroEnabled.12\";s:8:\"singular\";s:46:\"application/vnd.ms-excel.addin.macroEnabled.12\";s:6:\"plural\";s:46:\"application/vnd.ms-excel.addin.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"pptx\";a:5:{s:4:\"mime\";s:73:\"application/vnd.openxmlformats-officedocument.presentationml.presentation\";s:8:\"singular\";s:73:\"application/vnd.openxmlformats-officedocument.presentationml.presentation\";s:6:\"plural\";s:73:\"application/vnd.openxmlformats-officedocument.presentationml.presentation\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"pptm\";a:5:{s:4:\"mime\";s:58:\"application/vnd.ms-powerpoint.presentation.macroEnabled.12\";s:8:\"singular\";s:58:\"application/vnd.ms-powerpoint.presentation.macroEnabled.12\";s:6:\"plural\";s:58:\"application/vnd.ms-powerpoint.presentation.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"ppsx\";a:5:{s:4:\"mime\";s:70:\"application/vnd.openxmlformats-officedocument.presentationml.slideshow\";s:8:\"singular\";s:70:\"application/vnd.openxmlformats-officedocument.presentationml.slideshow\";s:6:\"plural\";s:70:\"application/vnd.openxmlformats-officedocument.presentationml.slideshow\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"ppsm\";a:5:{s:4:\"mime\";s:55:\"application/vnd.ms-powerpoint.slideshow.macroEnabled.12\";s:8:\"singular\";s:55:\"application/vnd.ms-powerpoint.slideshow.macroEnabled.12\";s:6:\"plural\";s:55:\"application/vnd.ms-powerpoint.slideshow.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"potx\";a:5:{s:4:\"mime\";s:69:\"application/vnd.openxmlformats-officedocument.presentationml.template\";s:8:\"singular\";s:69:\"application/vnd.openxmlformats-officedocument.presentationml.template\";s:6:\"plural\";s:69:\"application/vnd.openxmlformats-officedocument.presentationml.template\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"potm\";a:5:{s:4:\"mime\";s:54:\"application/vnd.ms-powerpoint.template.macroEnabled.12\";s:8:\"singular\";s:54:\"application/vnd.ms-powerpoint.template.macroEnabled.12\";s:6:\"plural\";s:54:\"application/vnd.ms-powerpoint.template.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"ppam\";a:5:{s:4:\"mime\";s:51:\"application/vnd.ms-powerpoint.addin.macroEnabled.12\";s:8:\"singular\";s:51:\"application/vnd.ms-powerpoint.addin.macroEnabled.12\";s:6:\"plural\";s:51:\"application/vnd.ms-powerpoint.addin.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"sldx\";a:5:{s:4:\"mime\";s:66:\"application/vnd.openxmlformats-officedocument.presentationml.slide\";s:8:\"singular\";s:66:\"application/vnd.openxmlformats-officedocument.presentationml.slide\";s:6:\"plural\";s:66:\"application/vnd.openxmlformats-officedocument.presentationml.slide\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"sldm\";a:5:{s:4:\"mime\";s:51:\"application/vnd.ms-powerpoint.slide.macroEnabled.12\";s:8:\"singular\";s:51:\"application/vnd.ms-powerpoint.slide.macroEnabled.12\";s:6:\"plural\";s:51:\"application/vnd.ms-powerpoint.slide.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:28:\"onetoc|onetoc2|onetmp|onepkg\";a:5:{s:4:\"mime\";s:19:\"application/onenote\";s:8:\"singular\";s:19:\"application/onenote\";s:6:\"plural\";s:19:\"application/onenote\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"oxps\";a:5:{s:4:\"mime\";s:16:\"application/oxps\";s:8:\"singular\";s:16:\"application/oxps\";s:6:\"plural\";s:16:\"application/oxps\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"xps\";a:5:{s:4:\"mime\";s:30:\"application/vnd.ms-xpsdocument\";s:8:\"singular\";s:30:\"application/vnd.ms-xpsdocument\";s:6:\"plural\";s:30:\"application/vnd.ms-xpsdocument\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"odt\";a:5:{s:4:\"mime\";s:39:\"application/vnd.oasis.opendocument.text\";s:8:\"singular\";s:39:\"application/vnd.oasis.opendocument.text\";s:6:\"plural\";s:39:\"application/vnd.oasis.opendocument.text\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"odp\";a:5:{s:4:\"mime\";s:47:\"application/vnd.oasis.opendocument.presentation\";s:8:\"singular\";s:47:\"application/vnd.oasis.opendocument.presentation\";s:6:\"plural\";s:47:\"application/vnd.oasis.opendocument.presentation\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"ods\";a:5:{s:4:\"mime\";s:46:\"application/vnd.oasis.opendocument.spreadsheet\";s:8:\"singular\";s:46:\"application/vnd.oasis.opendocument.spreadsheet\";s:6:\"plural\";s:46:\"application/vnd.oasis.opendocument.spreadsheet\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"odg\";a:5:{s:4:\"mime\";s:43:\"application/vnd.oasis.opendocument.graphics\";s:8:\"singular\";s:43:\"application/vnd.oasis.opendocument.graphics\";s:6:\"plural\";s:43:\"application/vnd.oasis.opendocument.graphics\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"odc\";a:5:{s:4:\"mime\";s:40:\"application/vnd.oasis.opendocument.chart\";s:8:\"singular\";s:40:\"application/vnd.oasis.opendocument.chart\";s:6:\"plural\";s:40:\"application/vnd.oasis.opendocument.chart\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"odb\";a:5:{s:4:\"mime\";s:43:\"application/vnd.oasis.opendocument.database\";s:8:\"singular\";s:43:\"application/vnd.oasis.opendocument.database\";s:6:\"plural\";s:43:\"application/vnd.oasis.opendocument.database\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"odf\";a:5:{s:4:\"mime\";s:42:\"application/vnd.oasis.opendocument.formula\";s:8:\"singular\";s:42:\"application/vnd.oasis.opendocument.formula\";s:6:\"plural\";s:42:\"application/vnd.oasis.opendocument.formula\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:6:\"wp|wpd\";a:5:{s:4:\"mime\";s:23:\"application/wordperfect\";s:8:\"singular\";s:23:\"application/wordperfect\";s:6:\"plural\";s:23:\"application/wordperfect\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"key\";a:5:{s:4:\"mime\";s:29:\"application/vnd.apple.keynote\";s:8:\"singular\";s:29:\"application/vnd.apple.keynote\";s:6:\"plural\";s:29:\"application/vnd.apple.keynote\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:7:\"numbers\";a:5:{s:4:\"mime\";s:29:\"application/vnd.apple.numbers\";s:8:\"singular\";s:29:\"application/vnd.apple.numbers\";s:6:\"plural\";s:29:\"application/vnd.apple.numbers\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:5:\"pages\";a:5:{s:4:\"mime\";s:27:\"application/vnd.apple.pages\";s:8:\"singular\";s:27:\"application/vnd.apple.pages\";s:6:\"plural\";s:27:\"application/vnd.apple.pages\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}}','yes');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2016-10-17 16:16:40','2016-10-17 16:16:40','Welcome to WordPress. This is your first post. Edit or delete it, then start writing!','Hello world!','','publish','open','open','','hello-world','','','2016-10-17 16:16:40','2016-10-17 16:16:40','',0,'http://wordpress.dev/?p=1',0,'post','',1),(2,1,'2016-10-17 16:16:40','2016-10-17 16:16:40','This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://wordpress.dev/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!','Sample Page','','publish','closed','open','','sample-page','','','2016-10-17 16:16:40','2016-10-17 16:16:40','',0,'http://wordpress.dev/?page_id=2',0,'page','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','siteadmin'),(2,1,'first_name',''),(3,1,'last_name',''),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'comment_shortcuts','false'),(7,1,'admin_color','fresh'),(8,1,'use_ssl','0'),(9,1,'show_admin_bar_front','true'),(10,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(11,1,'wp_user_level','10'),(12,1,'dismissed_wp_pointers',''),(13,1,'show_welcome_panel','1');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'siteadmin','$P$BdZhnHO42BJEVsGH9gsIZp4o/MT4qE1','siteadmin','digital@hlkagency.com','','2016-10-17 16:16:40','',0,'siteadmin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-17 18:32:46
