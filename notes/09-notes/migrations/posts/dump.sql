-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: 
-- ------------------------------------------------------
-- Server version	8.0.33-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!50606 SET @OLD_INNODB_STATS_AUTO_RECALC=@@INNODB_STATS_AUTO_RECALC */;
/*!50606 SET GLOBAL INNODB_STATS_AUTO_RECALC=OFF */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `mysql`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `mysql` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `mysql`;

--
-- Table structure for table `columns_priv`
--

DROP TABLE IF EXISTS `columns_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `columns_priv` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Table_name` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Column_name` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`Host`,`User`,`Db`,`Table_name`,`Column_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Column privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `columns_priv`
--

LOCK TABLES `columns_priv` WRITE;
/*!40000 ALTER TABLE `columns_priv` DISABLE KEYS */;
/*!40000 ALTER TABLE `columns_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `component`
--

DROP TABLE IF EXISTS `component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `component` (
  `component_id` int unsigned NOT NULL AUTO_INCREMENT,
  `component_group_id` int unsigned NOT NULL,
  `component_urn` text NOT NULL,
  PRIMARY KEY (`component_id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='Components';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `component`
--

LOCK TABLES `component` WRITE;
/*!40000 ALTER TABLE `component` DISABLE KEYS */;
INSERT INTO `component` VALUES (1,1,'file://component_validate_password');
/*!40000 ALTER TABLE `component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db`
--

DROP TABLE IF EXISTS `db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Event_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Host`,`User`,`Db`),
  KEY `User` (`User`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Database privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db`
--

LOCK TABLES `db` WRITE;
/*!40000 ALTER TABLE `db` DISABLE KEYS */;
INSERT INTO `db` VALUES ('localhost','performance_schema','mysql.session','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N'),('localhost','sys','mysql.sys','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y');
/*!40000 ALTER TABLE `db` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_roles`
--

DROP TABLE IF EXISTS `default_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `default_roles` (
  `HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `USER` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `DEFAULT_ROLE_HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '%',
  `DEFAULT_ROLE_USER` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`HOST`,`USER`,`DEFAULT_ROLE_HOST`,`DEFAULT_ROLE_USER`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Default roles';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_roles`
--

LOCK TABLES `default_roles` WRITE;
/*!40000 ALTER TABLE `default_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `engine_cost`
--

DROP TABLE IF EXISTS `engine_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `engine_cost` (
  `engine_name` varchar(64) NOT NULL,
  `device_type` int NOT NULL,
  `cost_name` varchar(64) NOT NULL,
  `cost_value` float DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comment` varchar(1024) DEFAULT NULL,
  `default_value` float GENERATED ALWAYS AS ((case `cost_name` when _utf8mb3'io_block_read_cost' then 1.0 when _utf8mb3'memory_block_read_cost' then 0.25 else NULL end)) VIRTUAL,
  PRIMARY KEY (`cost_name`,`engine_name`,`device_type`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `engine_cost`
--

LOCK TABLES `engine_cost` WRITE;
/*!40000 ALTER TABLE `engine_cost` DISABLE KEYS */;
INSERT INTO `engine_cost` (`engine_name`, `device_type`, `cost_name`, `cost_value`, `last_update`, `comment`) VALUES ('default',0,'io_block_read_cost',NULL,'2022-12-11 20:50:03',NULL),('default',0,'memory_block_read_cost',NULL,'2022-12-11 20:50:03',NULL);
/*!40000 ALTER TABLE `engine_cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `func`
--

DROP TABLE IF EXISTS `func`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `func` (
  `name` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `ret` tinyint NOT NULL DEFAULT '0',
  `dl` char(128) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `type` enum('function','aggregate') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='User defined functions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `func`
--

LOCK TABLES `func` WRITE;
/*!40000 ALTER TABLE `func` DISABLE KEYS */;
/*!40000 ALTER TABLE `func` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `global_grants`
--

DROP TABLE IF EXISTS `global_grants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `global_grants` (
  `USER` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `PRIV` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `WITH_GRANT_OPTION` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`USER`,`HOST`,`PRIV`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Extended global grants';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `global_grants`
--

LOCK TABLES `global_grants` WRITE;
/*!40000 ALTER TABLE `global_grants` DISABLE KEYS */;
INSERT INTO `global_grants` VALUES ('brown','localhost','APPLICATION_PASSWORD_ADMIN','Y'),('brown','localhost','AUDIT_ABORT_EXEMPT','Y'),('brown','localhost','AUDIT_ADMIN','Y'),('brown','localhost','AUTHENTICATION_POLICY_ADMIN','Y'),('brown','localhost','BACKUP_ADMIN','Y'),('brown','localhost','BINLOG_ADMIN','Y'),('brown','localhost','BINLOG_ENCRYPTION_ADMIN','Y'),('brown','localhost','CLONE_ADMIN','Y'),('brown','localhost','CONNECTION_ADMIN','Y'),('brown','localhost','ENCRYPTION_KEY_ADMIN','Y'),('brown','localhost','FIREWALL_EXEMPT','Y'),('brown','localhost','FLUSH_OPTIMIZER_COSTS','Y'),('brown','localhost','FLUSH_STATUS','Y'),('brown','localhost','FLUSH_TABLES','Y'),('brown','localhost','FLUSH_USER_RESOURCES','Y'),('brown','localhost','GROUP_REPLICATION_ADMIN','Y'),('brown','localhost','GROUP_REPLICATION_STREAM','Y'),('brown','localhost','INNODB_REDO_LOG_ARCHIVE','Y'),('brown','localhost','INNODB_REDO_LOG_ENABLE','Y'),('brown','localhost','PASSWORDLESS_USER_ADMIN','Y'),('brown','localhost','PERSIST_RO_VARIABLES_ADMIN','Y'),('brown','localhost','REPLICATION_APPLIER','Y'),('brown','localhost','REPLICATION_SLAVE_ADMIN','Y'),('brown','localhost','RESOURCE_GROUP_ADMIN','Y'),('brown','localhost','RESOURCE_GROUP_USER','Y'),('brown','localhost','ROLE_ADMIN','Y'),('brown','localhost','SENSITIVE_VARIABLES_OBSERVER','Y'),('brown','localhost','SERVICE_CONNECTION_ADMIN','Y'),('brown','localhost','SESSION_VARIABLES_ADMIN','Y'),('brown','localhost','SET_USER_ID','Y'),('brown','localhost','SHOW_ROUTINE','Y'),('brown','localhost','SYSTEM_USER','Y'),('brown','localhost','SYSTEM_VARIABLES_ADMIN','Y'),('brown','localhost','TABLE_ENCRYPTION_ADMIN','Y'),('brown','localhost','TELEMETRY_LOG_ADMIN','Y'),('brown','localhost','XA_RECOVER_ADMIN','Y'),('debian-sys-maint','localhost','APPLICATION_PASSWORD_ADMIN','Y'),('debian-sys-maint','localhost','AUDIT_ADMIN','Y'),('debian-sys-maint','localhost','AUTHENTICATION_POLICY_ADMIN','Y'),('debian-sys-maint','localhost','BACKUP_ADMIN','Y'),('debian-sys-maint','localhost','BINLOG_ADMIN','Y'),('debian-sys-maint','localhost','BINLOG_ENCRYPTION_ADMIN','Y'),('debian-sys-maint','localhost','CLONE_ADMIN','Y'),('debian-sys-maint','localhost','CONNECTION_ADMIN','Y'),('debian-sys-maint','localhost','ENCRYPTION_KEY_ADMIN','Y'),('debian-sys-maint','localhost','FLUSH_OPTIMIZER_COSTS','Y'),('debian-sys-maint','localhost','FLUSH_STATUS','Y'),('debian-sys-maint','localhost','FLUSH_TABLES','Y'),('debian-sys-maint','localhost','FLUSH_USER_RESOURCES','Y'),('debian-sys-maint','localhost','GROUP_REPLICATION_ADMIN','Y'),('debian-sys-maint','localhost','GROUP_REPLICATION_STREAM','Y'),('debian-sys-maint','localhost','INNODB_REDO_LOG_ARCHIVE','Y'),('debian-sys-maint','localhost','INNODB_REDO_LOG_ENABLE','Y'),('debian-sys-maint','localhost','PASSWORDLESS_USER_ADMIN','Y'),('debian-sys-maint','localhost','PERSIST_RO_VARIABLES_ADMIN','Y'),('debian-sys-maint','localhost','REPLICATION_APPLIER','Y'),('debian-sys-maint','localhost','REPLICATION_SLAVE_ADMIN','Y'),('debian-sys-maint','localhost','RESOURCE_GROUP_ADMIN','Y'),('debian-sys-maint','localhost','RESOURCE_GROUP_USER','Y'),('debian-sys-maint','localhost','ROLE_ADMIN','Y'),('debian-sys-maint','localhost','SENSITIVE_VARIABLES_OBSERVER','Y'),('debian-sys-maint','localhost','SERVICE_CONNECTION_ADMIN','Y'),('debian-sys-maint','localhost','SESSION_VARIABLES_ADMIN','Y'),('debian-sys-maint','localhost','SET_USER_ID','Y'),('debian-sys-maint','localhost','SHOW_ROUTINE','Y'),('debian-sys-maint','localhost','SYSTEM_USER','Y'),('debian-sys-maint','localhost','SYSTEM_VARIABLES_ADMIN','Y'),('debian-sys-maint','localhost','TABLE_ENCRYPTION_ADMIN','Y'),('debian-sys-maint','localhost','TELEMETRY_LOG_ADMIN','Y'),('debian-sys-maint','localhost','XA_RECOVER_ADMIN','Y'),('mysql.infoschema','localhost','AUDIT_ABORT_EXEMPT','N'),('mysql.infoschema','localhost','FIREWALL_EXEMPT','N'),('mysql.infoschema','localhost','SYSTEM_USER','N'),('mysql.session','localhost','AUDIT_ABORT_EXEMPT','N'),('mysql.session','localhost','AUTHENTICATION_POLICY_ADMIN','N'),('mysql.session','localhost','BACKUP_ADMIN','N'),('mysql.session','localhost','CLONE_ADMIN','N'),('mysql.session','localhost','CONNECTION_ADMIN','N'),('mysql.session','localhost','FIREWALL_EXEMPT','N'),('mysql.session','localhost','PERSIST_RO_VARIABLES_ADMIN','N'),('mysql.session','localhost','SESSION_VARIABLES_ADMIN','N'),('mysql.session','localhost','SYSTEM_USER','N'),('mysql.session','localhost','SYSTEM_VARIABLES_ADMIN','N'),('mysql.session','localhost','TELEMETRY_LOG_ADMIN','N'),('mysql.sys','localhost','AUDIT_ABORT_EXEMPT','N'),('mysql.sys','localhost','FIREWALL_EXEMPT','N'),('mysql.sys','localhost','SYSTEM_USER','N'),('root','localhost','APPLICATION_PASSWORD_ADMIN','Y'),('root','localhost','AUDIT_ABORT_EXEMPT','Y'),('root','localhost','AUDIT_ADMIN','Y'),('root','localhost','AUTHENTICATION_POLICY_ADMIN','Y'),('root','localhost','BACKUP_ADMIN','Y'),('root','localhost','BINLOG_ADMIN','Y'),('root','localhost','BINLOG_ENCRYPTION_ADMIN','Y'),('root','localhost','CLONE_ADMIN','Y'),('root','localhost','CONNECTION_ADMIN','Y'),('root','localhost','ENCRYPTION_KEY_ADMIN','Y'),('root','localhost','FIREWALL_EXEMPT','Y'),('root','localhost','FLUSH_OPTIMIZER_COSTS','Y'),('root','localhost','FLUSH_STATUS','Y'),('root','localhost','FLUSH_TABLES','Y'),('root','localhost','FLUSH_USER_RESOURCES','Y'),('root','localhost','GROUP_REPLICATION_ADMIN','Y'),('root','localhost','GROUP_REPLICATION_STREAM','Y'),('root','localhost','INNODB_REDO_LOG_ARCHIVE','Y'),('root','localhost','INNODB_REDO_LOG_ENABLE','Y'),('root','localhost','PASSWORDLESS_USER_ADMIN','Y'),('root','localhost','PERSIST_RO_VARIABLES_ADMIN','Y'),('root','localhost','REPLICATION_APPLIER','Y'),('root','localhost','REPLICATION_SLAVE_ADMIN','Y'),('root','localhost','RESOURCE_GROUP_ADMIN','Y'),('root','localhost','RESOURCE_GROUP_USER','Y'),('root','localhost','ROLE_ADMIN','Y'),('root','localhost','SENSITIVE_VARIABLES_OBSERVER','Y'),('root','localhost','SERVICE_CONNECTION_ADMIN','Y'),('root','localhost','SESSION_VARIABLES_ADMIN','Y'),('root','localhost','SET_USER_ID','Y'),('root','localhost','SHOW_ROUTINE','Y'),('root','localhost','SYSTEM_USER','Y'),('root','localhost','SYSTEM_VARIABLES_ADMIN','Y'),('root','localhost','TABLE_ENCRYPTION_ADMIN','Y'),('root','localhost','TELEMETRY_LOG_ADMIN','Y'),('root','localhost','XA_RECOVER_ADMIN','Y');
/*!40000 ALTER TABLE `global_grants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gtid_executed`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `gtid_executed` (
  `source_uuid` char(36) NOT NULL COMMENT 'uuid of the source where the transaction was originally executed.',
  `interval_start` bigint NOT NULL COMMENT 'First number of interval.',
  `interval_end` bigint NOT NULL COMMENT 'Last number of interval.',
  PRIMARY KEY (`source_uuid`,`interval_start`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `help_category`
--

DROP TABLE IF EXISTS `help_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_category` (
  `help_category_id` smallint unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `parent_category_id` smallint unsigned DEFAULT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`help_category_id`),
  UNIQUE KEY `name` (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='help categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_category`
--

LOCK TABLES `help_category` WRITE;
/*!40000 ALTER TABLE `help_category` DISABLE KEYS */;
INSERT INTO `help_category` VALUES (0,'Contents',0,''),(1,'Help Metadata',0,''),(2,'Data Types',0,''),(3,'Administration',0,''),(4,'Functions',0,''),(5,'Enterprise Encryption Functions',4,''),(6,'Language Structure',0,''),(7,'Geographic Features',0,''),(8,'MBR',7,''),(9,'WKT',7,''),(10,'Comparison Operators',4,''),(11,'Logical Operators',4,''),(12,'Flow Control Functions',4,''),(13,'Numeric Functions',4,''),(14,'Date and Time Functions',4,''),(15,'String Functions',4,''),(16,'Cast Functions and Operators',4,''),(17,'XML',4,''),(18,'Bit Functions',4,''),(19,'Encryption Functions',4,''),(20,'Locking Functions',4,''),(21,'Information Functions',4,''),(22,'Spatial Functions',4,''),(23,'WKT Functions',22,''),(24,'WKB Functions',22,''),(25,'Geometry Constructors',22,''),(26,'Geometry Property Functions',22,''),(27,'Point Property Functions',22,''),(28,'LineString Property Functions',22,''),(29,'Polygon Property Functions',22,''),(30,'GeometryCollection Property Functions',22,''),(31,'Geometry Relation Functions',22,''),(32,'MBR Functions',22,''),(33,'GTID',4,''),(34,'Aggregate Functions and Modifiers',4,''),(35,'GROUP BY Functions and Modifiers',4,''),(36,'Window Functions',4,''),(37,'Performance Schema Functions',4,''),(38,'Internal Functions',4,''),(39,'Miscellaneous Functions',4,''),(40,'Data Definition',0,''),(41,'Data Manipulation',0,''),(42,'Transactions',0,''),(43,'Replication Statements',0,''),(44,'Prepared Statements',0,''),(45,'Compound Statements',0,''),(46,'Account Management',0,''),(47,'Table Maintenance',0,''),(48,'Loadable Functions',0,''),(49,'Components',0,''),(50,'Plugins',0,''),(51,'Utility',0,''),(52,'Storage Engines',0,'');
/*!40000 ALTER TABLE `help_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_keyword`
--

DROP TABLE IF EXISTS `help_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_keyword` (
  `help_keyword_id` int unsigned NOT NULL,
  `name` char(64) NOT NULL,
  PRIMARY KEY (`help_keyword_id`),
  UNIQUE KEY `name` (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='help keywords';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_keyword`
--

LOCK TABLES `help_keyword` WRITE;
/*!40000 ALTER TABLE `help_keyword` DISABLE KEYS */;
INSERT INTO `help_keyword` VALUES (108,'%'),(264,'&'),(422,'(JSON'),(86,'*'),(84,'+'),(85,'-'),(423,'->'),(425,'->>'),(87,'/'),(75,':='),(59,'<'),(266,'<<'),(58,'<='),(56,'<=>'),(57,'<>'),(55,'='),(61,'>'),(60,'>='),(267,'>>'),(90,'ABS'),(881,'ACCOUNT'),(91,'ACOS'),(659,'ACTION'),(49,'ADD'),(120,'ADDDATE'),(121,'ADDTIME'),(915,'ADMIN'),(270,'AES_DECRYPT'),(271,'AES_ENCRYPT'),(581,'AFTER'),(247,'AGAINST'),(936,'AGGREGATE'),(582,'ALGORITHM'),(695,'ALL'),(50,'ALTER'),(583,'ANALYZE'),(62,'AND'),(526,'ANY_VALUE'),(660,'ARCHIVE'),(254,'ARRAY'),(724,'AS'),(464,'ASC'),(185,'ASCII'),(92,'ASIN'),(776,'ASSIGN_GTIDS_TO_ANONYMOUS_TRANSACTIONS'),(6,'ASYMMETRIC_DECRYPT'),(13,'ASYMMETRIC_DERIVE'),(7,'ASYMMETRIC_ENCRYPT'),(8,'ASYMMETRIC_SIGN'),(9,'ASYMMETRIC_VERIFY'),(643,'AT'),(93,'ATAN'),(94,'ATAN2'),(882,'ATTRIBUTE'),(913,'AUTHENTICATION'),(745,'AUTOCOMMIT'),(584,'AUTOEXTEND_SIZE'),(585,'AUTO_INCREMENT'),(458,'AVG'),(586,'AVG_ROW_LENGTH'),(757,'BACKUP'),(771,'BEFORE'),(746,'BEGIN'),(288,'BENCHMARK'),(63,'BETWEEN'),(186,'BIN'),(253,'BINARY'),(563,'BINLOG'),(527,'BIN_TO_UUID'),(460,'BIT_AND'),(269,'BIT_COUNT'),(187,'BIT_LENGTH'),(461,'BIT_OR'),(462,'BIT_XOR'),(17,'BOOL'),(18,'BOOLEAN'),(230,'BOTH'),(647,'BTREE'),(465,'BY'),(42,'BYTE'),(971,'CACHE'),(689,'CALL'),(497,'CAN_ACCESS_COLUMN'),(498,'CAN_ACCESS_DATABASE'),(499,'CAN_ACCESS_TABLE'),(500,'CAN_ACCESS_USER'),(501,'CAN_ACCESS_VIEW'),(661,'CASCADE'),(76,'CASE'),(255,'CAST'),(862,'CATALOG_NAME'),(95,'CEIL'),(96,'CEILING'),(747,'CHAIN'),(883,'CHALLENGE_RESPONSE'),(587,'CHANGE'),(564,'CHANNEL'),(43,'CHAR'),(39,'CHARACTER'),(189,'CHARACTER_LENGTH'),(289,'CHARSET'),(188,'CHAR_LENGTH'),(588,'CHECK'),(589,'CHECKSUM'),(884,'CIPHER'),(863,'CLASS_ORIGIN'),(916,'CLIENT'),(944,'CLONE'),(697,'CLOSE'),(65,'COALESCE'),(965,'CODE'),(290,'COERCIBILITY'),(546,'COLLATE'),(291,'COLLATION'),(590,'COLUMN'),(591,'COLUMNS'),(864,'COLUMN_NAME'),(551,'COMMENT'),(748,'COMMIT'),(760,'COMMITTED'),(662,'COMPACT'),(552,'COMPLETION'),(940,'COMPONENT'),(272,'COMPRESS'),(663,'COMPRESSED'),(592,'COMPRESSION'),(190,'CONCAT'),(191,'CONCAT_WS'),(711,'CONCURRENT'),(859,'CONDITION'),(593,'CONNECTION'),(292,'CONNECTION_ID'),(749,'CONSISTENT'),(594,'CONSTRAINT'),(865,'CONSTRAINT_CATALOG'),(866,'CONSTRAINT_NAME'),(867,'CONSTRAINT_SCHEMA'),(860,'CONTINUE'),(97,'CONV'),(260,'CONVERT'),(122,'CONVERT_TZ'),(98,'COS'),(99,'COT'),(463,'COUNT'),(100,'CRC32'),(51,'CREATE'),(10,'CREATE_ASYMMETRIC_PRIV_KEY'),(11,'CREATE_ASYMMETRIC_PUB_KEY'),(14,'CREATE_DH_PARAMETERS'),(12,'CREATE_DIGEST'),(740,'CROSS'),(664,'CSV'),(482,'CUME_DIST'),(123,'CURDATE'),(885,'CURRENT'),(124,'CURRENT_DATE'),(293,'CURRENT_ROLE'),(125,'CURRENT_TIME'),(126,'CURRENT_TIMESTAMP'),(294,'CURRENT_USER'),(857,'CURSOR'),(868,'CURSOR_NAME'),(127,'CURTIME'),(595,'DATA'),(295,'DATABASE'),(949,'DATABASES'),(636,'DATAFILE'),(36,'DATE'),(128,'DATEDIFF'),(256,'DATETIME'),(129,'DATE_ADD'),(144,'DATE_FORMAT'),(130,'DATE_SUB'),(131,'DAY'),(145,'DAYNAME'),(146,'DAYOFMONTH'),(147,'DAYOFWEEK'),(148,'DAYOFYEAR'),(132,'DAY_HOUR'),(133,'DAY_MINUTE'),(134,'DAY_SECOND'),(848,'DEALLOCATE'),(28,'DEC'),(31,'DECIMAL'),(849,'DECLARE'),(2,'DEFAULT'),(839,'DEFAULT_AUTH'),(553,'DEFINER'),(653,'DEFINITION'),(101,'DEGREES'),(703,'DELAYED'),(596,'DELAY_KEY_WRITE'),(665,'DELETE'),(483,'DENSE_RANK'),(466,'DESC'),(982,'DESCRIBE'),(654,'DESCRIPTION'),(869,'DIAGNOSTICS'),(597,'DIRECTORY'),(554,'DISABLE'),(598,'DISCARD'),(459,'DISTINCT'),(725,'DISTINCTROW'),(88,'DIV'),(555,'DO'),(599,'DROP'),(739,'DUAL'),(726,'DUMPFILE'),(704,'DUPLICATE'),(666,'DYNAMIC'),(77,'ELSE'),(850,'ELSEIF'),(192,'ELT'),(556,'ENABLE'),(712,'ENCLOSED'),(547,'ENCRYPTION'),(78,'END'),(644,'ENDS'),(600,'ENGINE'),(950,'ENGINES'),(565,'ERROR'),(951,'ERRORS'),(239,'ESCAPE'),(713,'ESCAPED'),(557,'EVENT'),(963,'EVENTS'),(645,'EVERY'),(696,'EXCEPT'),(601,'EXCHANGE'),(847,'EXECUTE'),(642,'EXISTS'),(861,'EXIT'),(102,'EXP'),(248,'EXPANSION'),(886,'EXPIRE'),(983,'EXPLAIN'),(972,'EXPORT'),(193,'EXPORT_SET'),(934,'EXTENDED'),(682,'EXTENT_SIZE'),(149,'EXTRACT'),(424,'EXTRACTION)'),(261,'EXTRACTVALUE'),(887,'FACTOR'),(888,'FAILED_LOGIN_ATTEMPTS'),(15,'FALSE'),(932,'FAST'),(667,'FEDERATED'),(858,'FETCH'),(194,'FIELD'),(714,'FIELDS'),(917,'FILE'),(683,'FILE_BLOCK_SIZE'),(805,'FILTER'),(195,'FIND_IN_SET'),(889,'FINISH'),(602,'FIRST'),(484,'FIRST_VALUE'),(29,'FIXED'),(32,'FLOAT4'),(33,'FLOAT8'),(103,'FLOOR'),(973,'FLUSH'),(566,'FOR'),(741,'FORCE'),(603,'FOREIGN'),(196,'FORMAT'),(493,'FORMAT_BYTES'),(494,'FORMAT_PICO_TIME'),(296,'FOUND_ROWS'),(231,'FROM'),(197,'FROM_BASE64'),(150,'FROM_DAYS'),(151,'FROM_UNIXTIME'),(668,'FULL'),(604,'FULLTEXT'),(169,'FUNCTION'),(974,'GENERAL'),(336,'GEOMCOLLECTION'),(337,'GEOMETRYCOLLECTION'),(870,'GET'),(502,'GET_DD_COLUMN_PRIVILEGES'),(503,'GET_DD_CREATE_OPTIONS'),(504,'GET_DD_INDEX_SUB_PART_LENGTH'),(152,'GET_FORMAT'),(283,'GET_LOCK'),(761,'GLOBAL'),(918,'GRANT'),(952,'GRANTS'),(66,'GREATEST'),(576,'GROUP'),(528,'GROUPING'),(467,'GROUP_CONCAT'),(454,'GTID_SUBSET'),(455,'GTID_SUBTRACT'),(698,'HANDLER'),(727,'HAVING'),(669,'HEAP'),(5,'HELP'),(0,'HELP_DATE'),(1,'HELP_VERSION'),(198,'HEX'),(705,'HIGH_PRIORITY'),(890,'HISTORY'),(648,'HOST'),(953,'HOSTS'),(135,'HOUR'),(136,'HOUR_MINUTE'),(137,'HOUR_SECOND'),(297,'ICU_VERSION'),(722,'IDENTIFIED'),(81,'IF'),(82,'IFNULL'),(706,'IGNORE'),(777,'IGNORE_SERVER_IDS'),(605,'IMPORT'),(67,'IN'),(52,'INDEX'),(954,'INDEXES'),(531,'INET6_ATON'),(532,'INET6_NTOA'),(529,'INET_ATON'),(530,'INET_NTOA'),(715,'INFILE'),(914,'INITIAL'),(637,'INITIAL_SIZE'),(891,'INITIATE'),(426,'INLINE'),(742,'INNER'),(567,'INNODB'),(199,'INSERT'),(606,'INSERT_METHOD'),(941,'INSTALL'),(568,'INSTANCE'),(200,'INSTR'),(19,'INT1'),(22,'INT2'),(23,'INT3'),(25,'INT4'),(27,'INT8'),(26,'INTEGER'),(505,'INTERNAL_AUTO_INCREMENT'),(506,'INTERNAL_AVG_ROW_LENGTH'),(508,'INTERNAL_CHECKSUM'),(507,'INTERNAL_CHECK_TIME'),(509,'INTERNAL_DATA_FREE'),(510,'INTERNAL_DATA_LENGTH'),(511,'INTERNAL_DD_CHAR_LENGTH'),(512,'INTERNAL_GET_COMMENT_OR_ERROR'),(513,'INTERNAL_GET_ENABLED_ROLE_JSON'),(514,'INTERNAL_GET_HOSTNAME'),(515,'INTERNAL_GET_USERNAME'),(516,'INTERNAL_GET_VIEW_WARNING_OR_ERROR'),(517,'INTERNAL_INDEX_COLUMN_CARDINALITY'),(518,'INTERNAL_INDEX_LENGTH'),(519,'INTERNAL_IS_ENABLED_ROLE'),(520,'INTERNAL_IS_MANDATORY_ROLE'),(521,'INTERNAL_KEYS_DISABLED'),(522,'INTERNAL_MAX_DATA_LENGTH'),(523,'INTERNAL_TABLE_ROWS'),(524,'INTERNAL_UPDATE_TIME'),(710,'INTERSECT'),(68,'INTERVAL'),(707,'INTO'),(607,'INVISIBLE'),(840,'IO_THREAD'),(69,'IS'),(71,'ISNULL'),(762,'ISOLATION'),(892,'ISSUER'),(284,'IS_FREE_LOCK'),(533,'IS_IPV4'),(534,'IS_IPV4_COMPAT'),(535,'IS_IPV4_MAPPED'),(536,'IS_IPV6'),(285,'IS_USED_LOCK'),(537,'IS_UUID'),(525,'IS_VISIBLE_DD_OBJECT'),(851,'ITERATE'),(728,'JOIN'),(257,'JSON'),(416,'JSON_ARRAY'),(470,'JSON_ARRAYAGG'),(434,'JSON_ARRAY_APPEND'),(435,'JSON_ARRAY_INSERT'),(419,'JSON_CONTAINS'),(420,'JSON_CONTAINS_PATH'),(444,'JSON_DEPTH'),(421,'JSON_EXTRACT'),(436,'JSON_INSERT'),(428,'JSON_KEYS'),(445,'JSON_LENGTH'),(437,'JSON_MERGE'),(438,'JSON_MERGE_PATCH'),(439,'JSON_MERGE_PRESERVE'),(417,'JSON_OBJECT'),(471,'JSON_OBJECTAGG'),(429,'JSON_OVERLAPS'),(451,'JSON_PRETTY'),(418,'JSON_QUOTE'),(440,'JSON_REMOVE'),(441,'JSON_REPLACE'),(449,'JSON_SCHEMA_VALID'),(450,'JSON_SCHEMA_VALIDATION_REPORT'),(430,'JSON_SEARCH'),(442,'JSON_SET'),(452,'JSON_STORAGE_FREE'),(453,'JSON_STORAGE_SIZE'),(448,'JSON_TABLE'),(446,'JSON_TYPE'),(443,'JSON_UNQUOTE'),(447,'JSON_VALID'),(431,'JSON_VALUE'),(53,'KEY'),(569,'KEYRING'),(608,'KEYS'),(609,'KEY_BLOCK_SIZE'),(979,'KILL'),(485,'LAG'),(699,'LAST'),(153,'LAST_DAY'),(298,'LAST_INSERT_ID'),(486,'LAST_VALUE'),(201,'LCASE'),(487,'LEAD'),(232,'LEADING'),(72,'LEAST'),(852,'LEAVE'),(980,'LEAVES'),(202,'LEFT'),(203,'LENGTH'),(763,'LEVEL'),(223,'LIKE'),(690,'LIMIT'),(716,'LINES'),(338,'LINESTRING'),(104,'LN'),(717,'LOAD'),(204,'LOAD_FILE'),(718,'LOCAL'),(154,'LOCALTIME'),(155,'LOCALTIMESTAMP'),(205,'LOCATE'),(610,'LOCK'),(105,'LOG'),(107,'LOG10'),(106,'LOG2'),(577,'LOGFILE'),(772,'LOGS'),(47,'LONG'),(48,'LONGBINARY'),(853,'LOOP'),(206,'LOWER'),(691,'LOW_PRIORITY'),(207,'LPAD'),(208,'LTRIM'),(156,'MAKEDATE'),(157,'MAKETIME'),(209,'MAKE_SET'),(570,'MASTER'),(778,'MASTER_AUTO_POSITION'),(779,'MASTER_BIND'),(780,'MASTER_COMPRESSION_ALGORITHMS'),(781,'MASTER_CONNECT_RETRY'),(782,'MASTER_HEARTBEAT_PERIOD'),(783,'MASTER_HOST'),(784,'MASTER_LOG_FILE'),(785,'MASTER_LOG_POS'),(786,'MASTER_PASSWORD'),(787,'MASTER_PORT'),(538,'MASTER_POS_WAIT'),(788,'MASTER_RETRY_COUNT'),(789,'MASTER_SSL'),(790,'MASTER_SSL_CA'),(791,'MASTER_SSL_CERT'),(792,'MASTER_SSL_CIPHER'),(793,'MASTER_SSL_CRL'),(794,'MASTER_SSL_CRLPATH'),(795,'MASTER_SSL_KEY'),(796,'MASTER_SSL_VERIFY_SERVER_CERT'),(797,'MASTER_TLS_CIPHERSUITES'),(798,'MASTER_TLS_VERSION'),(799,'MASTER_USER'),(800,'MASTER_ZSTD_COMPRESSION_LEVEL'),(249,'MATCH'),(472,'MAX'),(893,'MAX_CONNECTIONS_PER_HOUR'),(894,'MAX_QUERIES_PER_HOUR'),(611,'MAX_ROWS'),(684,'MAX_SIZE'),(895,'MAX_UPDATES_PER_HOUR'),(896,'MAX_USER_CONNECTIONS'),(395,'MBRCONTAINS'),(396,'MBRCOVEREDBY'),(397,'MBRCOVERS'),(398,'MBRDISJOINT'),(399,'MBREQUALS'),(400,'MBRINTERSECTS'),(401,'MBROVERLAPS'),(402,'MBRTOUCHES'),(403,'MBRWITHIN'),(273,'MD5'),(933,'MEDIUM'),(432,'MEMBER'),(729,'MEMORY'),(670,'MERGE'),(871,'MESSAGE_TEXT'),(158,'MICROSECOND'),(210,'MID'),(24,'MIDDLEINT'),(473,'MIN'),(138,'MINUTE'),(139,'MINUTE_SECOND'),(612,'MIN_ROWS'),(89,'MOD'),(250,'MODE'),(613,'MODIFY'),(140,'MONTH'),(159,'MONTHNAME'),(671,'MRG_MYISAM'),(339,'MULTILINESTRING'),(340,'MULTIPOINT'),(341,'MULTIPOLYGON'),(955,'MUTEX'),(672,'MYISAM'),(872,'MYSQL_ERRNO'),(655,'NAME'),(948,'NAMES'),(539,'NAME_CONST'),(40,'NATIONAL'),(743,'NATURAL'),(41,'NCHAR'),(673,'NDB'),(674,'NDBCLUSTER'),(801,'NETWORK_NAMESPACE'),(897,'NEVER'),(700,'NEXT'),(571,'NO'),(685,'NODEGROUP'),(898,'NONE'),(64,'NOT'),(160,'NOW'),(931,'NO_WRITE_TO_BINLOG'),(488,'NTH_VALUE'),(489,'NTILE'),(70,'NULL'),(83,'NULLIF'),(873,'NUMBER'),(30,'NUMERIC'),(44,'NVARCHAR'),(211,'OCT'),(212,'OCTET_LENGTH'),(433,'OF'),(730,'OFFSET'),(899,'OLD'),(558,'ON'),(548,'ONLY'),(701,'OPEN'),(614,'OPTIMIZE'),(975,'OPTIMIZER_COSTS'),(919,'OPTION'),(900,'OPTIONAL'),(719,'OPTIONALLY'),(579,'OPTIONS'),(73,'OR'),(213,'ORD'),(468,'ORDER'),(656,'ORGANIZATION'),(744,'OUTER'),(731,'OUTFILE'),(649,'OWNER'),(615,'PACK_KEYS'),(616,'PARSER'),(675,'PARTIAL'),(617,'PARTITION'),(618,'PARTITIONING'),(619,'PASSWORD'),(901,'PASSWORD_LOCK_TIME'),(427,'PATH)'),(490,'PERCENT_RANK'),(161,'PERIOD_ADD'),(162,'PERIOD_DIFF'),(945,'PERSIST'),(946,'PERSIST_ONLY'),(109,'PI'),(942,'PLUGIN'),(966,'PLUGINS'),(841,'PLUGIN_DIR'),(342,'POINT'),(343,'POLYGON'),(650,'PORT'),(214,'POSITION'),(110,'POW'),(111,'POWER'),(34,'PRECISION'),(768,'PREPARE'),(559,'PRESERVE'),(702,'PREV'),(620,'PRIMARY'),(920,'PRIVILEGES'),(802,'PRIVILEGE_CHECKS_USER'),(578,'PROCEDURE'),(921,'PROCESS'),(956,'PROCESSLIST'),(967,'PROFILE'),(968,'PROFILES'),(925,'PROXY'),(495,'PS_CURRENT_THREAD_ID'),(496,'PS_THREAD_ID'),(773,'PURGE'),(163,'QUARTER'),(251,'QUERY'),(692,'QUICK'),(215,'QUOTE'),(112,'RADIANS'),(113,'RAND'),(902,'RANDOM'),(274,'RANDOM_BYTES'),(491,'RANK'),(549,'READ'),(35,'REAL'),(621,'REBUILD'),(769,'RECOVER'),(572,'REDO_LOG'),(676,'REDUNDANT'),(657,'REFERENCE'),(677,'REFERENCES'),(241,'REGEXP'),(243,'REGEXP_INSTR'),(244,'REGEXP_LIKE'),(245,'REGEXP_REPLACE'),(246,'REGEXP_SUBSTR'),(903,'REGISTRATION'),(976,'RELAY'),(969,'RELAYLOG'),(803,'RELAY_LOG_FILE'),(804,'RELAY_LOG_POS'),(750,'RELEASE'),(286,'RELEASE_ALL_LOCKS'),(287,'RELEASE_LOCK'),(573,'RELOAD'),(622,'REMOVE'),(560,'RENAME'),(623,'REORGANIZE'),(624,'REPAIR'),(216,'REPEAT'),(764,'REPEATABLE'),(217,'REPLACE'),(838,'REPLICA'),(970,'REPLICAS'),(806,'REPLICATE_DO_DB'),(807,'REPLICATE_DO_TABLE'),(808,'REPLICATE_IGNORE_DB'),(809,'REPLICATE_IGNORE_TABLE'),(810,'REPLICATE_REWRITE_DB'),(811,'REPLICATE_WILD_DO_TABLE'),(812,'REPLICATE_WILD_IGNORE_TABLE'),(813,'REPLICATION'),(904,'REQUIRE'),(774,'RESET'),(878,'RESIGNAL'),(928,'RESOURCE'),(981,'RESTART'),(680,'RESTRICT'),(905,'RETAIN'),(855,'RETURN'),(874,'RETURNED_SQLSTATE'),(937,'RETURNS'),(906,'REUSE'),(218,'REVERSE'),(926,'REVOKE'),(219,'RIGHT'),(242,'RLIKE'),(907,'ROLE'),(299,'ROLES_GRAPHML'),(574,'ROLLBACK'),(114,'ROUND'),(708,'ROW'),(723,'ROWS'),(300,'ROW_COUNT'),(625,'ROW_FORMAT'),(492,'ROW_NUMBER'),(220,'RPAD'),(221,'RTRIM'),(756,'SAVEPOINT'),(561,'SCHEDULE'),(301,'SCHEMA'),(957,'SCHEMAS'),(875,'SCHEMA_NAME'),(141,'SECOND'),(164,'SEC_TO_TIME'),(709,'SELECT'),(469,'SEPARATOR'),(3,'SERIAL'),(765,'SERIALIZABLE'),(580,'SERVER'),(766,'SESSION'),(302,'SESSION_USER'),(550,'SET'),(275,'SHA'),(276,'SHA1'),(277,'SHA2'),(732,'SHARE'),(958,'SHOW'),(922,'SHUTDOWN'),(115,'SIGN'),(880,'SIGNAL'),(258,'SIGNED'),(116,'SIN'),(562,'SLAVE'),(540,'SLEEP'),(977,'SLOW'),(751,'SNAPSHOT'),(651,'SOCKET'),(938,'SONAME'),(222,'SOUNDEX'),(224,'SOUNDS'),(814,'SOURCE'),(815,'SOURCE_AUTO_POSITION'),(816,'SOURCE_BIND'),(817,'SOURCE_COMPRESSION_ALGORITHMS'),(818,'SOURCE_CONNECT_RETRY'),(819,'SOURCE_HEARTBEAT_PERIOD'),(820,'SOURCE_HOST'),(821,'SOURCE_LOG_FILE'),(822,'SOURCE_LOG_POS'),(823,'SOURCE_PASSWORD'),(824,'SOURCE_PORT'),(541,'SOURCE_POS_WAIT'),(825,'SOURCE_RETRY_COUNT'),(826,'SOURCE_SSL'),(827,'SOURCE_SSL_CA'),(828,'SOURCE_SSL_CERT'),(829,'SOURCE_SSL_CIPHER'),(830,'SOURCE_SSL_CRL'),(831,'SOURCE_SSL_CRLPATH'),(832,'SOURCE_SSL_KEY'),(833,'SOURCE_SSL_VERIFY_SERVER_CERT'),(834,'SOURCE_TLS_CIPHERSUITES'),(835,'SOURCE_TLS_VERSION'),(836,'SOURCE_USER'),(837,'SOURCE_ZSTD_COMPRESSION_LEVEL'),(225,'SPACE'),(626,'SPATIAL'),(879,'SQLSTATE'),(842,'SQL_AFTER_GTIDS'),(843,'SQL_AFTER_MTS_GAPS'),(844,'SQL_BEFORE_GTIDS'),(733,'SQL_BIG_RESULT'),(734,'SQL_BUFFER_RESULT'),(735,'SQL_CALC_FOUND_ROWS'),(775,'SQL_LOG_BIN'),(736,'SQL_NO_CACHE'),(737,'SQL_SMALL_RESULT'),(845,'SQL_THREAD'),(117,'SQRT'),(908,'SSL'),(752,'START'),(720,'STARTING'),(646,'STARTS'),(278,'STATEMENT_DIGEST'),(279,'STATEMENT_DIGEST_TEXT'),(627,'STATS_AUTO_RECALC'),(628,'STATS_PERSISTENT'),(629,'STATS_SAMPLE_PAGES'),(959,'STATUS'),(474,'STD'),(475,'STDDEV'),(476,'STDDEV_POP'),(477,'STDDEV_SAMP'),(846,'STOP'),(964,'STORAGE'),(678,'STORED'),(738,'STRAIGHT_JOIN'),(240,'STRCMP'),(939,'STRING'),(165,'STR_TO_DATE'),(365,'ST_AREA'),(344,'ST_ASBINARY'),(408,'ST_ASGEOJSON'),(346,'ST_ASTEXT'),(345,'ST_ASWKB'),(347,'ST_ASWKT'),(373,'ST_BUFFER'),(374,'ST_BUFFER_STRATEGY'),(366,'ST_CENTROID'),(410,'ST_COLLECT'),(384,'ST_CONTAINS'),(375,'ST_CONVEXHULL'),(385,'ST_CROSSES'),(376,'ST_DIFFERENCE'),(349,'ST_DIMENSION'),(386,'ST_DISJOINT'),(387,'ST_DISTANCE'),(411,'ST_DISTANCE_SPHERE'),(359,'ST_ENDPOINT'),(350,'ST_ENVELOPE'),(388,'ST_EQUALS'),(367,'ST_EXTERIORRING'),(389,'ST_FRECHETDISTANCE'),(404,'ST_GEOHASH'),(306,'ST_GEOMCOLLFROMTEXT'),(321,'ST_GEOMCOLLFROMWKB'),(307,'ST_GEOMETRYCOLLECTIONFROMTEXT'),(322,'ST_GEOMETRYCOLLECTIONFROMWKB'),(308,'ST_GEOMETRYFROMTEXT'),(323,'ST_GEOMETRYFROMWKB'),(371,'ST_GEOMETRYN'),(351,'ST_GEOMETRYTYPE'),(409,'ST_GEOMFROMGEOJSON'),(309,'ST_GEOMFROMTEXT'),(324,'ST_GEOMFROMWKB'),(390,'ST_HAUSDORFFDISTANCE'),(368,'ST_INTERIORRINGN'),(377,'ST_INTERSECTION'),(391,'ST_INTERSECTS'),(360,'ST_ISCLOSED'),(352,'ST_ISEMPTY'),(353,'ST_ISSIMPLE'),(412,'ST_ISVALID'),(405,'ST_LATFROMGEOHASH'),(355,'ST_LATITUDE'),(361,'ST_LENGTH'),(310,'ST_LINEFROMTEXT'),(325,'ST_LINEFROMWKB'),(378,'ST_LINEINTERPOLATEPOINT'),(379,'ST_LINEINTERPOLATEPOINTS'),(311,'ST_LINESTRINGFROMTEXT'),(326,'ST_LINESTRINGFROMWKB'),(406,'ST_LONGFROMGEOHASH'),(356,'ST_LONGITUDE'),(413,'ST_MAKEENVELOPE'),(312,'ST_MLINEFROMTEXT'),(327,'ST_MLINEFROMWKB'),(314,'ST_MPOINTFROMTEXT'),(329,'ST_MPOINTFROMWKB'),(316,'ST_MPOLYFROMTEXT'),(331,'ST_MPOLYFROMWKB'),(313,'ST_MULTILINESTRINGFROMTEXT'),(328,'ST_MULTILINESTRINGFROMWKB'),(315,'ST_MULTIPOINTFROMTEXT'),(330,'ST_MULTIPOINTFROMWKB'),(317,'ST_MULTIPOLYGONFROMTEXT'),(332,'ST_MULTIPOLYGONFROMWKB'),(372,'ST_NUMGEOMETRIES'),(369,'ST_NUMINTERIORRING'),(370,'ST_NUMINTERIORRINGS'),(362,'ST_NUMPOINTS'),(392,'ST_OVERLAPS'),(380,'ST_POINTATDISTANCE'),(407,'ST_POINTFROMGEOHASH'),(318,'ST_POINTFROMTEXT'),(333,'ST_POINTFROMWKB'),(363,'ST_POINTN'),(319,'ST_POLYFROMTEXT'),(334,'ST_POLYFROMWKB'),(320,'ST_POLYGONFROMTEXT'),(335,'ST_POLYGONFROMWKB'),(414,'ST_SIMPLIFY'),(354,'ST_SRID'),(364,'ST_STARTPOINT'),(348,'ST_SWAPXY'),(381,'ST_SYMDIFFERENCE'),(393,'ST_TOUCHES'),(382,'ST_TRANSFORM'),(383,'ST_UNION'),(415,'ST_VALIDATE'),(394,'ST_WITHIN'),(357,'ST_X'),(358,'ST_Y'),(876,'SUBCLASS_ORIGIN'),(166,'SUBDATE'),(909,'SUBJECT'),(226,'SUBSTR'),(227,'SUBSTRING'),(228,'SUBSTRING_INDEX'),(167,'SUBTIME'),(478,'SUM'),(923,'SUPER'),(168,'SYSDATE'),(658,'SYSTEM'),(303,'SYSTEM_USER'),(54,'TABLE'),(759,'TABLES'),(630,'TABLESPACE'),(877,'TABLE_NAME'),(118,'TAN'),(688,'TEMPORARY'),(721,'TERMINATED'),(79,'THEN'),(929,'THREAD_PRIORITY'),(38,'TIME'),(170,'TIMEDIFF'),(37,'TIMESTAMP'),(171,'TIMESTAMPADD'),(172,'TIMESTAMPDIFF'),(259,'TIMEZONE'),(173,'TIME_FORMAT'),(174,'TIME_TO_SEC'),(575,'TLS'),(638,'TO'),(229,'TO_BASE64'),(175,'TO_DAYS'),(176,'TO_SECONDS'),(984,'TRADITIONAL'),(233,'TRAILING'),(753,'TRANSACTION'),(985,'TREE'),(687,'TRIGGER'),(960,'TRIGGERS'),(234,'TRIM'),(16,'TRUE'),(119,'TRUNCATE'),(631,'TYPE'),(235,'UCASE'),(910,'UNBOUNDED'),(767,'UNCOMMITTED'),(280,'UNCOMPRESS'),(281,'UNCOMPRESSED_LENGTH'),(639,'UNDO'),(236,'UNHEX'),(943,'UNINSTALL'),(632,'UNION'),(633,'UNIQUE'),(177,'UNIX_TIMESTAMP'),(927,'UNKNOWN'),(758,'UNLOCK'),(911,'UNREGISTER'),(20,'UNSIGNED'),(854,'UNTIL'),(681,'UPDATE'),(262,'UPDATEXML'),(634,'UPGRADE'),(237,'UPPER'),(924,'USAGE'),(686,'USE'),(304,'USER'),(978,'USER_RESOURCES'),(935,'USE_FRM'),(693,'USING'),(178,'UTC_DATE'),(179,'UTC_TIME'),(180,'UTC_TIMESTAMP'),(542,'UUID'),(543,'UUID_SHORT'),(544,'UUID_TO_BIN'),(282,'VALIDATE_PASSWORD_STRENGTH'),(4,'VALUE'),(545,'VALUES'),(45,'VARCHARACTER'),(947,'VARIABLE'),(961,'VARIABLES'),(481,'VARIANCE'),(46,'VARYING'),(479,'VAR_POP'),(480,'VAR_SAMP'),(930,'VCPU'),(305,'VERSION'),(641,'VIEW'),(679,'VIRTUAL'),(635,'VISIBLE'),(640,'WAIT'),(456,'WAIT_FOR_EXECUTED_GTID_SET'),(457,'WAIT_UNTIL_SQL_THREAD_AFTER_GTIDS'),(962,'WARNINGS'),(181,'WEEK'),(182,'WEEKDAY'),(183,'WEEKOFYEAR'),(238,'WEIGHT_STRING'),(80,'WHEN'),(694,'WHERE'),(856,'WHILE'),(252,'WITH'),(754,'WORK'),(652,'WRAPPER'),(755,'WRITE'),(912,'X509'),(770,'XA'),(74,'XOR'),(142,'YEAR'),(184,'YEARWEEK'),(143,'YEAR_MONTH'),(21,'ZEROFILL'),(265,'^'),(263,'|'),(268,'~');
/*!40000 ALTER TABLE `help_keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_relation`
--

DROP TABLE IF EXISTS `help_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_relation` (
  `help_topic_id` int unsigned NOT NULL,
  `help_keyword_id` int unsigned NOT NULL,
  PRIMARY KEY (`help_keyword_id`,`help_topic_id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='keyword-topic relation';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_relation`
--

LOCK TABLES `help_relation` WRITE;
/*!40000 ALTER TABLE `help_relation` DISABLE KEYS */;
INSERT INTO `help_relation` VALUES (0,0),(1,1),(2,2),(483,2),(502,2),(503,2),(510,2),(513,2),(514,2),(522,2),(523,2),(547,2),(554,2),(592,2),(610,2),(612,2),(618,2),(620,2),(2,3),(522,3),(2,4),(547,4),(554,4),(608,4),(609,4),(3,5),(700,5),(4,6),(5,7),(6,8),(7,9),(8,10),(9,11),(10,12),(11,13),(12,14),(13,15),(14,15),(13,16),(14,16),(16,17),(17,17),(16,18),(240,18),(16,19),(16,20),(20,20),(22,20),(23,20),(25,20),(26,20),(242,20),(16,21),(20,21),(22,21),(23,21),(25,21),(26,21),(18,22),(19,23),(19,24),(20,25),(20,26),(242,26),(630,26),(22,27),(23,28),(23,29),(522,29),(23,30),(24,31),(242,31),(630,31),(25,32),(26,33),(26,34),(26,35),(630,35),(28,36),(129,36),(131,36),(242,36),(30,37),(165,37),(31,38),(163,38),(242,38),(33,39),(35,39),(502,39),(503,39),(510,39),(513,39),(514,39),(522,39),(551,39),(552,39),(555,39),(638,39),(639,39),(641,39),(645,39),(33,40),(35,40),(33,41),(34,42),(34,43),(184,43),(242,43),(35,44),(35,45),(35,46),(44,47),(44,48),(53,49),(510,49),(511,49),(524,49),(610,49),(53,50),(502,50),(503,50),(504,50),(505,50),(506,50),(507,50),(508,50),(509,50),(510,50),(511,50),(512,50),(610,50),(615,50),(621,50),(53,51),(513,51),(514,51),(515,51),(516,51),(517,51),(518,51),(519,51),(520,51),(521,51),(522,51),(524,51),(525,51),(526,51),(611,51),(612,51),(622,51),(630,51),(641,51),(649,51),(650,51),(651,51),(652,51),(653,51),(654,51),(656,51),(53,52),(510,52),(516,52),(522,52),(530,52),(557,52),(641,52),(667,52),(689,52),(692,52),(53,53),(510,53),(522,53),(523,53),(547,53),(53,54),(510,54),(522,54),(535,54),(539,54),(540,54),(546,54),(548,54),(558,54),(625,54),(626,54),(627,54),(628,54),(629,54),(641,54),(654,54),(683,54),(54,55),(79,55),(55,56),(56,57),(57,58),(58,59),(59,60),(60,61),(61,62),(75,62),(61,63),(62,63),(62,64),(66,64),(69,64),(71,64),(74,64),(232,64),(234,64),(513,64),(514,64),(515,64),(521,64),(611,64),(612,64),(63,65),(510,65),(64,66),(65,67),(66,67),(240,67),(555,67),(644,67),(647,67),(648,67),(667,67),(677,67),(67,68),(131,68),(515,68),(610,68),(612,68),(68,69),(69,69),(70,69),(71,69),(70,70),(71,70),(523,70),(72,71),(73,72),(76,73),(521,73),(77,74),(78,75),(80,76),(593,76),(80,77),(593,77),(80,78),(572,78),(590,78),(593,78),(594,78),(597,78),(598,78),(600,78),(80,79),(593,79),(594,79),(80,80),(593,80),(81,81),(513,81),(514,81),(515,81),(521,81),(527,81),(528,81),(529,81),(533,81),(534,81),(535,81),(538,81),(594,81),(610,81),(611,81),(612,81),(613,81),(614,81),(617,81),(631,81),(694,81),(82,82),(83,83),(84,84),(85,85),(86,85),(87,86),(88,87),(89,88),(90,89),(109,89),(91,90),(92,91),(93,92),(94,93),(95,94),(96,95),(97,96),(98,97),(99,98),(100,99),(101,100),(102,101),(103,102),(104,103),(105,104),(106,105),(107,106),(108,107),(109,108),(110,109),(111,110),(112,111),(113,112),(114,113),(115,114),(116,115),(117,116),(118,117),(119,118),(120,119),(510,119),(540,119),(121,120),(122,121),(123,122),(124,123),(125,124),(126,125),(127,126),(128,127),(130,128),(131,129),(131,130),(133,130),(131,131),(134,131),(610,131),(612,131),(131,132),(131,133),(131,134),(131,135),(143,135),(131,136),(131,137),(131,138),(150,138),(131,139),(131,140),(151,140),(131,141),(157,141),(131,142),(179,142),(242,142),(131,143),(132,144),(135,145),(136,146),(137,147),(138,148),(139,149),(140,150),(141,151),(142,152),(144,153),(145,154),(146,155),(147,156),(148,157),(149,158),(152,159),(153,160),(154,161),(155,162),(156,163),(158,164),(159,165),(160,166),(161,167),(162,168),(163,169),(165,169),(214,169),(505,169),(518,169),(519,169),(531,169),(532,169),(630,169),(631,169),(641,169),(652,169),(664,169),(665,169),(164,170),(166,171),(167,172),(168,173),(169,174),(170,175),(171,176),(172,177),(173,178),(174,179),(175,180),(176,181),(177,182),(178,183),(180,184),(181,185),(182,186),(183,187),(185,188),(186,189),(187,190),(188,191),(189,192),(190,193),(191,194),(192,195),(193,196),(697,196),(698,196),(699,196),(194,197),(195,198),(196,199),(547,199),(548,199),(549,199),(197,200),(198,201),(199,202),(557,202),(200,203),(201,204),(202,205),(203,206),(204,207),(205,208),(206,209),(207,210),(208,211),(209,212),(210,213),(211,214),(212,215),(213,216),(598,216),(214,217),(521,217),(551,217),(552,217),(554,217),(610,217),(619,217),(215,218),(216,219),(557,219),(217,220),(218,221),(219,222),(220,223),(232,223),(641,223),(647,223),(648,223),(220,224),(221,225),(222,226),(223,227),(224,228),(225,229),(226,230),(226,231),(542,231),(546,231),(555,231),(641,231),(644,231),(647,231),(648,231),(667,231),(677,231),(226,232),(226,233),(226,234),(227,235),(228,236),(229,237),(230,238),(231,239),(233,240),(234,241),(235,242),(236,243),(237,244),(238,245),(239,246),(240,247),(240,248),(240,249),(240,250),(555,250),(240,251),(691,251),(240,252),(510,252),(516,252),(522,252),(610,252),(612,252),(615,252),(690,252),(241,253),(242,253),(573,253),(574,253),(642,253),(643,253),(690,253),(242,254),(242,255),(242,256),(242,257),(697,257),(698,257),(699,257),(242,258),(242,259),(243,260),(244,261),(245,262),(246,263),(247,264),(248,265),(249,266),(250,267),(251,268),(252,269),(253,270),(254,271),(255,272),(256,273),(257,274),(258,275),(258,276),(259,277),(260,278),(261,279),(262,280),(263,281),(264,282),(265,283),(266,284),(267,285),(268,286),(269,287),(270,288),(271,289),(638,289),(639,289),(272,290),(273,291),(641,291),(646,291),(274,292),(275,293),(276,294),(504,294),(515,294),(277,295),(502,295),(503,295),(513,295),(514,295),(520,295),(527,295),(528,295),(641,295),(649,295),(650,295),(278,296),(279,297),(280,298),(281,299),(282,300),(607,300),(283,301),(502,301),(503,301),(513,301),(514,301),(527,301),(528,301),(641,301),(649,301),(650,301),(284,302),(285,303),(286,304),(520,304),(582,304),(583,304),(610,304),(612,304),(614,304),(616,304),(617,304),(622,304),(656,304),(287,305),(288,306),(288,307),(289,308),(289,309),(290,310),(290,311),(291,312),(291,313),(292,314),(292,315),(293,316),(293,317),(294,318),(295,319),(295,320),(296,321),(296,322),(297,323),(297,324),(298,325),(298,326),(299,327),(299,328),(300,329),(300,330),(301,331),(301,332),(302,333),(303,334),(303,335),(304,336),(305,337),(306,338),(307,339),(308,340),(309,341),(310,342),(311,343),(312,344),(312,345),(313,346),(313,347),(314,348),(315,349),(316,350),(317,351),(318,352),(319,353),(320,354),(321,355),(322,356),(323,357),(324,358),(325,359),(326,360),(327,361),(328,362),(329,363),(330,364),(331,365),(332,366),(333,367),(334,368),(335,369),(335,370),(336,371),(337,372),(338,373),(339,374),(340,375),(341,376),(342,377),(343,378),(344,379),(345,380),(346,381),(347,382),(348,383),(349,384),(350,385),(351,386),(352,387),(353,388),(354,389),(355,390),(356,391),(357,392),(358,393),(359,394),(360,395),(361,396),(362,397),(363,398),(364,399),(365,400),(366,401),(367,402),(368,403),(369,404),(370,405),(371,406),(372,407),(373,408),(374,409),(375,410),(376,411),(377,412),(378,413),(379,414),(380,415),(381,416),(382,417),(383,418),(384,419),(385,420),(386,421),(387,422),(388,422),(387,423),(387,424),(388,425),(388,426),(388,427),(389,428),(390,429),(391,430),(392,431),(393,432),(393,433),(394,434),(395,435),(396,436),(397,437),(398,438),(399,439),(400,440),(401,441),(402,442),(403,443),(404,444),(405,445),(406,446),(407,447),(408,448),(409,449),(410,450),(411,451),(412,452),(413,453),(414,454),(415,455),(416,456),(417,457),(418,458),(418,459),(423,459),(424,459),(427,459),(428,459),(433,459),(544,459),(550,459),(555,459),(560,459),(419,460),(420,461),(421,462),(422,463),(423,463),(662,463),(687,463),(424,464),(555,464),(424,465),(510,465),(522,465),(542,465),(551,465),(552,465),(553,465),(555,465),(559,465),(610,465),(612,465),(424,466),(555,466),(697,466),(698,466),(699,466),(424,467),(424,468),(510,468),(542,468),(553,468),(555,468),(558,468),(559,468),(561,468),(424,469),(425,470),(426,471),(427,472),(428,473),(429,474),(430,475),(431,476),(432,477),(433,478),(434,479),(435,480),(436,481),(437,482),(438,483),(439,484),(440,485),(441,486),(442,487),(443,488),(444,489),(445,490),(446,491),(447,492),(448,493),(449,494),(450,495),(451,496),(452,497),(453,498),(454,499),(455,500),(456,501),(457,502),(458,503),(459,504),(460,505),(461,506),(462,507),(463,508),(464,509),(465,510),(466,511),(467,512),(468,513),(469,514),(470,515),(471,516),(472,517),(473,518),(474,519),(475,520),(476,521),(477,522),(478,523),(479,524),(480,525),(481,526),(482,527),(484,528),(485,529),(486,530),(487,531),(488,532),(489,533),(490,534),(491,535),(492,536),(493,537),(494,538),(495,539),(496,540),(497,541),(498,542),(499,543),(500,544),(501,545),(547,545),(554,545),(561,545),(502,546),(503,546),(510,546),(513,546),(514,546),(522,546),(502,547),(503,547),(510,547),(513,547),(514,547),(522,547),(502,548),(503,548),(562,548),(563,548),(564,548),(565,548),(571,548),(572,548),(502,549),(503,549),(545,549),(562,549),(563,549),(564,549),(565,549),(570,549),(571,549),(572,549),(690,549),(502,550),(503,550),(510,550),(513,550),(514,550),(522,550),(523,550),(547,550),(551,550),(552,550),(554,550),(555,550),(559,550),(562,550),(563,550),(564,550),(565,550),(576,550),(608,550),(609,550),(610,550),(618,550),(619,550),(620,550),(624,550),(637,550),(638,550),(639,550),(640,550),(641,550),(645,550),(504,551),(510,551),(515,551),(516,551),(522,551),(524,551),(610,551),(612,551),(504,552),(515,552),(504,553),(515,553),(504,554),(510,554),(515,554),(621,554),(622,554),(504,555),(515,555),(543,555),(600,555),(504,556),(510,556),(515,556),(621,556),(622,556),(504,557),(515,557),(529,557),(651,557),(504,558),(506,558),(515,558),(523,558),(557,558),(504,559),(515,559),(504,560),(510,560),(511,560),(539,560),(616,560),(504,561),(515,561),(504,562),(515,562),(581,562),(583,562),(585,562),(679,562),(681,562),(693,562),(506,563),(644,563),(688,563),(506,564),(577,564),(579,564),(580,564),(581,564),(582,564),(583,564),(584,564),(585,564),(677,564),(680,564),(681,564),(690,564),(506,565),(690,565),(506,566),(555,566),(577,566),(579,566),(580,566),(581,566),(582,566),(583,566),(584,566),(585,566),(602,566),(605,566),(606,566),(619,566),(624,566),(641,566),(677,566),(680,566),(681,566),(690,566),(697,566),(698,566),(699,566),(506,567),(522,567),(641,567),(506,568),(569,568),(506,569),(506,570),(573,570),(574,570),(575,570),(577,570),(642,570),(643,570),(668,570),(693,570),(506,571),(522,571),(523,571),(506,572),(506,573),(615,573),(506,574),(562,574),(563,574),(564,574),(565,574),(566,574),(567,574),(568,574),(572,574),(506,575),(507,576),(517,576),(524,576),(555,576),(621,576),(622,576),(623,576),(624,576),(507,577),(517,577),(524,577),(508,578),(518,578),(519,578),(531,578),(532,578),(641,578),(653,578),(672,578),(673,578),(509,579),(520,579),(509,580),(520,580),(533,580),(510,581),(510,582),(510,583),(625,583),(697,583),(698,583),(699,583),(510,584),(511,584),(522,584),(524,584),(510,585),(510,586),(522,586),(510,587),(577,587),(578,587),(579,587),(510,588),(522,588),(626,588),(510,589),(522,589),(627,589),(510,590),(510,591),(522,591),(551,591),(641,591),(647,591),(648,591),(510,592),(522,592),(510,593),(522,593),(691,593),(697,593),(698,593),(699,593),(510,594),(522,594),(510,595),(520,595),(522,595),(551,595),(510,596),(522,596),(510,597),(522,597),(510,598),(610,598),(510,599),(511,599),(527,599),(528,599),(529,599),(530,599),(531,599),(532,599),(533,599),(534,599),(535,599),(536,599),(537,599),(538,599),(588,599),(589,599),(610,599),(613,599),(614,599),(623,599),(631,599),(510,600),(511,600),(522,600),(524,600),(536,600),(641,600),(660,600),(690,600),(510,601),(510,602),(522,602),(545,602),(510,603),(520,603),(522,603),(523,603),(510,604),(516,604),(522,604),(510,605),(546,605),(551,605),(510,606),(522,606),(510,607),(516,607),(522,607),(510,608),(641,608),(667,608),(510,609),(522,609),(510,610),(555,610),(569,610),(570,610),(610,610),(612,610),(690,610),(510,611),(522,611),(510,612),(522,612),(510,613),(610,613),(510,614),(628,614),(510,615),(522,615),(510,616),(516,616),(522,616),(510,617),(522,617),(542,617),(547,617),(551,617),(554,617),(555,617),(557,617),(689,617),(692,617),(510,618),(510,619),(520,619),(582,619),(583,619),(610,619),(612,619),(619,619),(510,620),(510,621),(510,622),(510,623),(510,624),(629,624),(510,625),(522,625),(510,626),(516,626),(521,626),(534,626),(510,627),(522,627),(510,628),(522,628),(510,629),(522,629),(510,630),(511,630),(524,630),(536,630),(510,631),(622,631),(510,632),(553,632),(560,632),(510,633),(510,634),(626,634),(510,635),(516,635),(522,635),(511,636),(524,636),(511,637),(524,637),(511,638),(566,638),(567,638),(568,638),(573,638),(574,638),(577,638),(579,638),(619,638),(511,639),(524,639),(536,639),(606,639),(511,640),(524,640),(512,641),(526,641),(538,641),(513,642),(514,642),(515,642),(521,642),(527,642),(528,642),(529,642),(533,642),(534,642),(535,642),(538,642),(610,642),(611,642),(612,642),(613,642),(614,642),(617,642),(631,642),(694,642),(515,643),(515,644),(515,645),(515,646),(516,647),(520,648),(520,649),(520,650),(520,651),(520,652),(521,653),(521,654),(521,655),(521,656),(521,657),(534,657),(521,658),(534,658),(622,658),(522,659),(523,659),(522,660),(522,661),(523,661),(535,661),(538,661),(522,662),(522,663),(522,664),(551,664),(522,665),(523,665),(542,665),(522,666),(522,667),(522,668),(641,668),(647,668),(648,668),(674,668),(684,668),(522,669),(522,670),(522,671),(522,672),(522,673),(522,674),(522,675),(522,676),(522,677),(523,677),(615,677),(522,678),(522,679),(523,680),(535,680),(538,680),(523,681),(547,681),(555,681),(559,681),(524,682),(524,683),(524,684),(524,685),(524,686),(557,686),(701,686),(525,687),(537,687),(641,687),(535,688),(541,689),(542,690),(545,690),(553,690),(555,690),(558,690),(559,690),(561,690),(644,690),(677,690),(542,691),(547,691),(551,691),(552,691),(554,691),(559,691),(570,691),(542,692),(626,692),(629,692),(542,693),(557,693),(587,693),(666,693),(542,694),(545,694),(559,694),(647,694),(648,694),(667,694),(544,695),(550,695),(555,695),(560,695),(580,695),(581,695),(610,695),(615,695),(617,695),(618,695),(620,695),(689,695),(692,695),(544,696),(553,696),(620,696),(545,697),(601,697),(545,698),(606,698),(545,699),(545,700),(545,701),(604,701),(641,701),(669,701),(545,702),(547,703),(549,703),(554,703),(547,704),(547,705),(555,705),(547,706),(551,706),(552,706),(555,706),(557,706),(559,706),(617,706),(692,706),(547,707),(553,707),(554,707),(555,707),(692,707),(547,708),(561,708),(547,709),(548,709),(553,709),(554,709),(555,709),(697,709),(698,709),(699,709),(550,710),(553,710),(551,711),(552,711),(551,712),(551,713),(551,714),(641,714),(647,714),(648,714),(551,715),(552,715),(551,716),(552,716),(551,717),(692,717),(551,718),(552,718),(570,718),(625,718),(628,718),(629,718),(690,718),(551,719),(551,720),(551,721),(552,722),(610,722),(612,722),(552,723),(555,724),(557,724),(570,724),(610,724),(612,724),(615,724),(555,725),(555,726),(555,727),(555,728),(557,728),(555,729),(555,730),(555,731),(555,732),(555,733),(555,734),(555,735),(555,736),(555,737),(555,738),(557,738),(556,739),(557,740),(557,741),(621,741),(623,741),(557,742),(557,743),(557,744),(562,745),(563,745),(564,745),(565,745),(562,746),(563,746),(564,746),(565,746),(572,746),(590,746),(562,747),(563,747),(564,747),(565,747),(562,748),(563,748),(564,748),(565,748),(572,748),(562,749),(563,749),(564,749),(565,749),(572,749),(562,750),(563,750),(564,750),(565,750),(566,750),(567,750),(568,750),(572,750),(562,751),(563,751),(564,751),(565,751),(572,751),(562,752),(563,752),(564,752),(565,752),(572,752),(582,752),(583,752),(562,753),(563,753),(564,753),(565,753),(571,753),(562,754),(563,754),(564,754),(565,754),(562,755),(563,755),(564,755),(565,755),(570,755),(571,755),(572,755),(566,756),(567,756),(568,756),(569,757),(569,758),(570,758),(610,758),(612,758),(570,759),(641,759),(669,759),(684,759),(690,759),(571,760),(571,761),(637,761),(682,761),(686,761),(571,762),(571,763),(571,764),(571,765),(571,766),(637,766),(682,766),(686,766),(571,767),(572,768),(586,768),(588,768),(589,768),(572,769),(572,770),(573,771),(574,771),(573,772),(574,772),(641,772),(642,772),(643,772),(690,772),(573,773),(574,773),(575,774),(580,774),(581,774),(693,774),(694,774),(576,775),(577,776),(579,776),(577,777),(579,777),(577,778),(577,779),(577,780),(577,781),(577,782),(577,783),(577,784),(577,785),(577,786),(577,787),(577,788),(577,789),(577,790),(577,791),(577,792),(577,793),(577,794),(577,795),(577,796),(577,797),(577,798),(577,799),(577,800),(577,801),(579,801),(577,802),(579,802),(577,803),(579,803),(577,804),(579,804),(578,805),(578,806),(578,807),(578,808),(578,809),(578,810),(578,811),(578,812),(578,813),(579,813),(615,813),(579,814),(579,815),(579,816),(579,817),(579,818),(579,819),(579,820),(579,821),(579,822),(579,823),(579,824),(579,825),(579,826),(579,827),(579,828),(579,829),(579,830),(579,831),(579,832),(579,833),(579,834),(579,835),(579,836),(579,837),(580,838),(582,838),(584,838),(680,838),(693,838),(582,839),(583,839),(582,840),(583,840),(584,840),(585,840),(582,841),(583,841),(582,842),(583,842),(582,843),(583,843),(582,844),(583,844),(582,845),(583,845),(584,845),(585,845),(584,846),(585,846),(587,847),(615,847),(588,848),(589,848),(592,849),(602,849),(605,849),(606,849),(594,850),(595,851),(596,852),(597,853),(598,854),(599,855),(600,856),(602,857),(603,858),(605,859),(606,860),(606,861),(607,862),(608,862),(609,862),(607,863),(608,863),(609,863),(607,864),(608,864),(609,864),(607,865),(608,865),(609,865),(607,866),(608,866),(609,866),(607,867),(608,867),(609,867),(607,868),(608,868),(609,868),(607,869),(607,870),(607,871),(608,871),(609,871),(607,872),(608,872),(609,872),(607,873),(607,874),(607,875),(608,875),(609,875),(607,876),(608,876),(609,876),(607,877),(608,877),(609,877),(608,878),(608,879),(609,879),(609,880),(610,881),(612,881),(610,882),(612,882),(610,883),(610,884),(612,884),(610,885),(612,885),(619,885),(610,886),(612,886),(610,887),(610,888),(612,888),(610,889),(610,890),(612,890),(610,891),(610,892),(612,892),(610,893),(612,893),(610,894),(612,894),(610,895),(612,895),(610,896),(612,896),(610,897),(612,897),(610,898),(615,898),(618,898),(620,898),(610,899),(610,900),(612,900),(610,901),(612,901),(610,902),(612,902),(619,902),(610,903),(610,904),(612,904),(610,905),(619,905),(610,906),(612,906),(610,907),(611,907),(612,907),(613,907),(615,907),(618,907),(620,907),(610,908),(612,908),(610,909),(612,909),(610,910),(612,910),(610,911),(610,912),(612,912),(612,913),(612,914),(615,915),(615,916),(615,917),(615,918),(617,918),(615,919),(617,919),(615,920),(617,920),(671,920),(690,920),(615,921),(615,922),(696,922),(615,923),(615,924),(617,925),(617,926),(617,927),(621,928),(622,928),(623,928),(624,928),(621,929),(622,929),(621,930),(622,930),(625,931),(628,931),(629,931),(690,931),(626,932),(626,933),(629,934),(647,934),(648,934),(667,934),(684,934),(629,935),(630,936),(630,937),(630,938),(630,939),(632,940),(634,940),(632,941),(633,941),(633,942),(635,942),(641,942),(634,943),(635,943),(636,944),(637,945),(694,945),(637,946),(637,947),(640,948),(641,949),(658,949),(659,949),(641,950),(661,950),(641,951),(662,951),(641,952),(666,952),(641,953),(679,953),(690,953),(641,954),(641,955),(660,955),(641,956),(674,956),(641,957),(658,957),(659,957),(641,958),(642,958),(643,958),(644,958),(645,958),(646,958),(647,958),(648,958),(649,958),(650,958),(651,958),(652,958),(653,958),(654,958),(656,958),(658,958),(659,958),(660,958),(661,958),(662,958),(663,958),(664,958),(665,958),(666,958),(667,958),(668,958),(669,958),(670,958),(671,958),(672,958),(673,958),(674,958),(675,958),(676,958),(677,958),(678,958),(679,958),(680,958),(681,958),(682,958),(683,958),(684,958),(685,958),(686,958),(687,958),(641,959),(660,959),(665,959),(668,959),(673,959),(680,959),(681,959),(682,959),(683,959),(690,959),(641,960),(685,960),(641,961),(686,961),(641,962),(687,962),(644,963),(663,963),(677,963),(661,964),(664,965),(672,965),(670,966),(675,967),(676,968),(677,969),(678,970),(689,971),(692,971),(690,972),(690,973),(690,974),(690,975),(690,976),(690,977),(690,978),(691,979),(692,980),(695,981),(697,982),(698,982),(699,982),(697,983),(698,983),(699,983),(697,984),(698,984),(699,984),(697,985),(698,985),(699,985);
/*!40000 ALTER TABLE `help_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_topic`
--

DROP TABLE IF EXISTS `help_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_topic` (
  `help_topic_id` int unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `help_category_id` smallint unsigned NOT NULL,
  `description` text NOT NULL,
  `example` text NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`help_topic_id`),
  UNIQUE KEY `name` (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='help topics';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_topic`
--

LOCK TABLES `help_topic` WRITE;
/*!40000 ALTER TABLE `help_topic` DISABLE KEYS */;
INSERT INTO `help_topic` VALUES (630,'CREATE FUNCTION LOADABLE FUNCTION',48,'Syntax:\nCREATE [AGGREGATE] FUNCTION [IF NOT EXISTS] function_name\n    RETURNS {STRING|INTEGER|REAL|DECIMAL}\n    SONAME shared_library_name\n\nThis statement loads the loadable function named function_name. (CREATE\nFUNCTION is also used to created stored functions; see [HELP CREATE\nPROCEDURE].)\n\nA loadable function is a way to extend MySQL with a new function that\nworks like a native (built-in) MySQL function such as ABS() or\nCONCAT(). See Adding a Loadable Function\n(https://dev.mysql.com/doc/extending-mysql/8.0/en/adding-loadable-funct\nion.html).\n\nfunction_name is the name that should be used in SQL statements to\ninvoke the function. The RETURNS clause indicates the type of the\nfunction\'s return value. DECIMAL is a legal value after RETURNS, but\ncurrently DECIMAL functions return string values and should be written\nlike STRING functions.\n\nIF NOT EXISTS prevents an error from occurring if there already exists\na loadable function with the same name. It does not prevent an error\nfrom occurring if there already exists a built-in function having the\nsame name. IF NOT EXISTS is supported for CREATE FUNCTION statements\nbeginning with MySQL 8.0.29. See also\nhttps://dev.mysql.com/doc/refman/8.0/en/function-resolution.html#functi\non-name-resolution.\n\nThe AGGREGATE keyword, if given, signifies that the function is an\naggregate (group) function. An aggregate function works exactly like a\nnative MySQL aggregate function such as SUM() or COUNT().\n\nshared_library_name is the base name of the shared library file\ncontaining the code that implements the function. The file must be\nlocated in the plugin directory. This directory is given by the value\nof the plugin_dir system variable. For more information, see\nhttps://dev.mysql.com/doc/refman/8.0/en/function-loading.html.\n\nCREATE FUNCTION requires the INSERT privilege for the mysql system\nschema because it adds a row to the mysql.func system table to register\nthe function.\n\nCREATE FUNCTION also adds the function to the Performance Schema\nuser_defined_functions table that provides runtime information about\ninstalled loadable functions. See\nhttps://dev.mysql.com/doc/refman/8.0/en/performance-schema-user-defined\n-functions-table.html.\n\n*Note*:\n\nLike the mysql.func system table, the Performance Schema\nuser_defined_functions table lists loadable functions installed using\nCREATE FUNCTION. Unlike the mysql.func table, the\nuser_defined_functions table also lists loadable functions installed\nautomatically by server components or plugins. This difference makes\nuser_defined_functions preferable to mysql.func for checking which\nloadable functions are installed.\n\nDuring the normal startup sequence, the server loads functions\nregistered in the mysql.func table. If the server is started with the\n--skip-grant-tables option, functions registered in the table are not\nloaded and are unavailable.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/create-function-loadable.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/create-function-loadable.html'),(631,'DROP FUNCTION LOADABLE FUNCTION',48,'Syntax:\nDROP FUNCTION [IF EXISTS] function_name\n\nThis statement drops the loadable function named function_name. (DROP\nFUNCTION is also used to drop stored functions; see [HELP DROP\nPROCEDURE].)\n\nDROP FUNCTION is the complement of CREATE FUNCTION. It requires the\nDELETE privilege for the mysql system schema because it removes the row\nfrom the mysql.func system table that registers the function.\n\nDROP FUNCTION also removes the function from the Performance Schema\nuser_defined_functions table that provides runtime information about\ninstalled loadable functions. See\nhttps://dev.mysql.com/doc/refman/8.0/en/performance-schema-user-defined\n-functions-table.html.\n\nDuring the normal startup sequence, the server loads functions\nregistered in the mysql.func table. Because DROP FUNCTION removes the\nmysql.func row for the dropped function, the server does not load the\nfunction during subsequent restarts.\n\nDROP FUNCTION cannot be used to drop a loadable function that is\ninstalled automatically by components or plugins rather than by using\nCREATE FUNCTION. Such a function is also dropped automatically, when\nthe component or plugin that installed it is uninstalled.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/drop-function-loadable.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/drop-function-loadable.html'),(632,'INSTALL COMPONENT',49,'Syntax:\nINSTALL COMPONENT component_name [, component_name ] ...\n\nThis statement installs one or more components, which become active\nimmediately. A component provides services that are available to the\nserver and other components; see\nhttps://dev.mysql.com/doc/refman/8.0/en/components.html. INSTALL\nCOMPONENT requires the INSERT privilege for the mysql.component system\ntable because it adds a row to that table to register the component.\n\nExample:\n\nINSTALL COMPONENT \'file://component1\', \'file://component2\';\n\nA component is named using a URN that begins with file:// and indicates\nthe base name of the library file that implements the component,\nlocated in the directory named by the plugin_dir system variable.\nComponent names do not include any platform-dependent file name suffix\nsuch as .so or .dll. (These naming details are subject to change\nbecause component name interpretation is itself performed by a service\nand the component infrastructure makes it possible to replace the\ndefault service implementation with alternative implementations.)\n\nIf any error occurs, the statement fails and has no effect. For\nexample, this happens if a component name is erroneous, a named\ncomponent does not exist or is already installed, or component\ninitialization fails.\n\nA loader service handles component loading, which includes adding\ninstalled components to the mysql.component system table that serves as\na registry. For subsequent server restarts, any components listed in\nmysql.component are loaded by the loader service during the startup\nsequence. This occurs even if the server is started with the\n--skip-grant-tables option.\n\nIf a component depends on services not present in the registry and you\nattempt to install the component without also installing the component\nor components that provide the services on which it depends, an error\noccurs:\n\nERROR 3527 (HY000): Cannot satisfy dependency for service \'component_a\'\nrequired by component \'component_b\'.\n\nTo avoid this problem, either install all components in the same\nstatement, or install the dependent component after installing any\ncomponents on which it depends.\n\n*Note*:\n\nFor keyring components, do not use INSTALL COMPONENT. Instead,\nconfigure keyring component loading using a manifest file. See\nhttps://dev.mysql.com/doc/refman/8.0/en/keyring-component-installation.\nhtml.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/install-component.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/install-component.html'),(633,'INSTALL PLUGIN',50,'Syntax:\nINSTALL PLUGIN plugin_name SONAME \'shared_library_name\'\n\nThis statement installs a server plugin. It requires the INSERT\nprivilege for the mysql.plugin system table because it adds a row to\nthat table to register the plugin.\n\nplugin_name is the name of the plugin as defined in the plugin\ndescriptor structure contained in the library file (see Plugin Data\nStructures\n(https://dev.mysql.com/doc/extending-mysql/8.0/en/plugin-data-structure\ns.html)). Plugin names are not case-sensitive. For maximal\ncompatibility, plugin names should be limited to ASCII letters, digits,\nand underscore because they are used in C source files, shell command\nlines, M4 and Bourne shell scripts, and SQL environments.\n\nshared_library_name is the name of the shared library that contains the\nplugin code. The name includes the file name extension (for example,\nlibmyplugin.so, libmyplugin.dll, or libmyplugin.dylib).\n\nThe shared library must be located in the plugin directory (the\ndirectory named by the plugin_dir system variable). The library must be\nin the plugin directory itself, not in a subdirectory. By default,\nplugin_dir is the plugin directory under the directory named by the\npkglibdir configuration variable, but it can be changed by setting the\nvalue of plugin_dir at server startup. For example, set its value in a\nmy.cnf file:\n\n[mysqld]\nplugin_dir=/path/to/plugin/directory\n\nIf the value of plugin_dir is a relative path name, it is taken to be\nrelative to the MySQL base directory (the value of the basedir system\nvariable).\n\nINSTALL PLUGIN loads and initializes the plugin code to make the plugin\navailable for use. A plugin is initialized by executing its\ninitialization function, which handles any setup that the plugin must\nperform before it can be used. When the server shuts down, it executes\nthe deinitialization function for each plugin that is loaded so that\nthe plugin has a chance to perform any final cleanup.\n\nINSTALL PLUGIN also registers the plugin by adding a line that\nindicates the plugin name and library file name to the mysql.plugin\nsystem table. During the normal startup sequence, the server loads and\ninitializes plugins registered in mysql.plugin. This means that a\nplugin is installed with INSTALL PLUGIN only once, not every time the\nserver starts. If the server is started with the --skip-grant-tables\noption, plugins registered in the mysql.plugin table are not loaded and\nare unavailable.\n\nA plugin library can contain multiple plugins. For each of them to be\ninstalled, use a separate INSTALL PLUGIN statement. Each statement\nnames a different plugin, but all of them specify the same library\nname.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/install-plugin.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/install-plugin.html'),(634,'UNINSTALL COMPONENT',49,'Syntax:\nUNINSTALL COMPONENT component_name [, component_name ] ...\n\nThis statement deactivates and uninstalls one or more components. A\ncomponent provides services that are available to the server and other\ncomponents; see\nhttps://dev.mysql.com/doc/refman/8.0/en/components.html. UNINSTALL\nCOMPONENT is the complement of INSTALL COMPONENT. It requires the\nDELETE privilege for the mysql.component system table because it\nremoves the row from that table that registers the component.\n\nExample:\n\nUNINSTALL COMPONENT \'file://component1\', \'file://component2\';\n\nFor information about component naming, see [HELP INSTALL COMPONENT].\n\nIf any error occurs, the statement fails and has no effect. For\nexample, this happens if a component name is erroneous, a named\ncomponent is not installed, or cannot be uninstalled because other\ninstalled components depend on it.\n\nA loader service handles component unloading, which includes removing\nuninstalled components from the mysql.component system table that\nserves as a registry. As a result, unloaded components are not loaded\nduring the startup sequence for subsequent server restarts.\n\n*Note*:\n\nThis statement has no effect for keyring components, which are loaded\nusing a manifest file and cannot be uninstalled. See\nhttps://dev.mysql.com/doc/refman/8.0/en/keyring-component-installation.\nhtml.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/uninstall-component.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/uninstall-component.html'),(635,'UNINSTALL PLUGIN',49,'Syntax:\nUNINSTALL PLUGIN plugin_name\n\nThis statement removes an installed server plugin. UNINSTALL PLUGIN is\nthe complement of INSTALL PLUGIN. It requires the DELETE privilege for\nthe mysql.plugin system table because it removes the row from that\ntable that registers the plugin.\n\nplugin_name must be the name of some plugin that is listed in the\nmysql.plugin table. The server executes the plugin\'s deinitialization\nfunction and removes the row for the plugin from the mysql.plugin\nsystem table, so that subsequent server restarts do not load and\ninitialize the plugin. UNINSTALL PLUGIN does not remove the plugin\'s\nshared library file.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/uninstall-plugin.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/uninstall-plugin.html'),(636,'CLONE',49,'Syntax:\nCLONE clone_action\n\nclone_action: {\n    LOCAL DATA DIRECTORY [=] \'clone_dir\';\n  | INSTANCE FROM \'user\'@\'host\':port\n    IDENTIFIED BY \'password\'\n    [DATA DIRECTORY [=] \'clone_dir\']\n    [REQUIRE [NO] SSL]\n}\n\nThe CLONE statement is used to clone data locally or from a remote\nMySQL server instance. To use CLONE syntax, the clone plugin must be\ninstalled. See\nhttps://dev.mysql.com/doc/refman/8.0/en/clone-plugin.html.\n\nCLONE LOCAL DATA DIRECTORY syntax clones data from the local MySQL data\ndirectory to a directory on the same server or node where the MySQL\nserver instance runs. The \'clone_dir\' directory is the full path of the\nlocal directory that data is cloned to. An absolute path is required.\nThe specified directory must not exist, but the specified path must be\nan existent path. The MySQL server requires the necessary write access\nto create the specified directory. For more information, see\nhttps://dev.mysql.com/doc/refman/8.0/en/clone-plugin-local.html.\n\nCLONE INSTANCE syntax clones data from a remote MySQL server instance\n(the donor) and transfers it to the MySQL instance where the cloning\noperation was initiated (the recipient).\n\no user is the clone user on the donor MySQL server instance.\n\no host is the hostname address of the donor MySQL server instance.\n  Internet Protocol version 6 (IPv6) address format is not supported.\n  An alias to the IPv6 address can be used instead. An IPv4 address can\n  be used as is.\n\no port is the port number of the donor MySQL server instance. (The X\n  Protocol port specified by mysqlx_port is not supported. Connecting\n  to the donor MySQL server instance through MySQL Router is also not\n  supported.)\n\no IDENTIFIED BY \'password\' specifies the password of the clone user on\n  the donor MySQL server instance.\n\no DATA DIRECTORY [=] \'clone_dir\' is an optional clause used to specify\n  a directory on the recipient for the data you are cloning. Use this\n  option if you do not want to remove existing data in the recipient\n  data directory. An absolute path is required, and the directory must\n  not exist. The MySQL server must have the necessary write access to\n  create the directory.\n\n  When the optional DATA DIRECTORY [=] \'clone_dir\' clause is not used,\n  a cloning operation removes existing data in the recipient data\n  directory, replaces it with the cloned data, and automatically\n  restarts the server afterward.\n\no [REQUIRE [NO] SSL] explicitly specifies whether an encrypted\n  connection is to be used or not when transferring cloned data over\n  the network. An error is returned if the explicit specification\n  cannot be satisfied. If an SSL clause is not specified, clone\n  attempts to establish an encrypted connection by default, falling\n  back to an insecure connection if the secure connection attempt\n  fails. A secure connection is required when cloning encrypted data\n  regardless of whether this clause is specified. For more information,\n  see\n  https://dev.mysql.com/doc/refman/8.0/en/clone-plugin-remote.html#clon\n  e-plugin-remote-ssl.\n\nFor additional information about cloning data from a remote MySQL\nserver instance, see\nhttps://dev.mysql.com/doc/refman/8.0/en/clone-plugin-remote.html.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/clone.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/clone.html'),(637,'SET',3,'Syntax:\nSET variable = expr [, variable = expr] ...\n\nvariable: {\n    user_var_name\n  | param_name\n  | local_var_name\n  | {GLOBAL | @@GLOBAL.} system_var_name\n  | {PERSIST | @@PERSIST.} system_var_name\n  | {PERSIST_ONLY | @@PERSIST_ONLY.} system_var_name\n  | [SESSION | @@SESSION. | @@] system_var_name\n}\n\nSET syntax for variable assignment enables you to assign values to\ndifferent types of variables that affect the operation of the server or\nclients:\n\no User-defined variables. See\n  https://dev.mysql.com/doc/refman/8.0/en/user-variables.html.\n\no Stored procedure and function parameters, and stored program local\n  variables. See\n  https://dev.mysql.com/doc/refman/8.0/en/stored-program-variables.html\n  .\n\no System variables. See\n  https://dev.mysql.com/doc/refman/8.0/en/server-system-variables.html.\n  System variables also can be set at server startup, as described in\n  https://dev.mysql.com/doc/refman/8.0/en/using-system-variables.html.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/set-variable.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/set-variable.html'),(638,'SET CHARACTER SET',3,'Syntax:\nSET {CHARACTER SET | CHARSET}\n    {\'charset_name\' | DEFAULT}\n\nThis statement maps all strings sent between the server and the current\nclient with the given mapping. SET CHARACTER SET sets three session\nsystem variables: character_set_client and character_set_results are\nset to the given character set, and character_set_connection to the\nvalue of character_set_database. See\nhttps://dev.mysql.com/doc/refman/8.0/en/charset-connection.html.\n\ncharset_name may be quoted or unquoted.\n\nThe default character set mapping can be restored by using the value\nDEFAULT. The default depends on the server configuration.\n\nSome character sets cannot be used as the client character set.\nAttempting to use them with SET CHARACTER SET produces an error. See\nhttps://dev.mysql.com/doc/refman/8.0/en/charset-connection.html#charset\n-connection-impermissible-client-charset.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/set-character-set.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/set-character-set.html'),(639,'SET CHARSET',3,'Syntax:\nSET {CHARACTER SET | CHARSET}\n    {\'charset_name\' | DEFAULT}\n\nThis statement maps all strings sent between the server and the current\nclient with the given mapping. SET CHARACTER SET sets three session\nsystem variables: character_set_client and character_set_results are\nset to the given character set, and character_set_connection to the\nvalue of character_set_database. See\nhttps://dev.mysql.com/doc/refman/8.0/en/charset-connection.html.\n\ncharset_name may be quoted or unquoted.\n\nThe default character set mapping can be restored by using the value\nDEFAULT. The default depends on the server configuration.\n\nSome character sets cannot be used as the client character set.\nAttempting to use them with SET CHARACTER SET produces an error. See\nhttps://dev.mysql.com/doc/refman/8.0/en/charset-connection.html#charset\n-connection-impermissible-client-charset.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/set-character-set.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/set-character-set.html'),(640,'SET NAMES',3,'Syntax:\nSET NAMES {\'charset_name\'\n    [COLLATE \'collation_name\'] | DEFAULT}\n\nThis statement sets the three session system variables\ncharacter_set_client, character_set_connection, and\ncharacter_set_results to the given character set. Setting\ncharacter_set_connection to charset_name also sets collation_connection\nto the default collation for charset_name. See\nhttps://dev.mysql.com/doc/refman/8.0/en/charset-connection.html.\n\nThe optional COLLATE clause may be used to specify a collation\nexplicitly. If given, the collation must one of the permitted\ncollations for charset_name.\n\ncharset_name and collation_name may be quoted or unquoted.\n\nThe default mapping can be restored by using a value of DEFAULT. The\ndefault depends on the server configuration.\n\nSome character sets cannot be used as the client character set.\nAttempting to use them with SET NAMES produces an error. See\nhttps://dev.mysql.com/doc/refman/8.0/en/charset-connection.html#charset\n-connection-impermissible-client-charset.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/set-names.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/set-names.html'),(641,'SHOW',3,'SHOW has many forms that provide information about databases, tables,\ncolumns, or status information about the server. This section describes\nthose following:\n\nSHOW {BINARY | MASTER} LOGS\nSHOW BINLOG EVENTS [IN \'log_name\'] [FROM pos] [LIMIT [offset,] row_count]\nSHOW {CHARACTER SET | CHARSET} [like_or_where]\nSHOW COLLATION [like_or_where]\nSHOW [FULL] COLUMNS FROM tbl_name [FROM db_name] [like_or_where]\nSHOW CREATE DATABASE db_name\nSHOW CREATE EVENT event_name\nSHOW CREATE FUNCTION func_name\nSHOW CREATE PROCEDURE proc_name\nSHOW CREATE TABLE tbl_name\nSHOW CREATE TRIGGER trigger_name\nSHOW CREATE VIEW view_name\nSHOW DATABASES [like_or_where]\nSHOW ENGINE engine_name {STATUS | MUTEX}\nSHOW [STORAGE] ENGINES\nSHOW ERRORS [LIMIT [offset,] row_count]\nSHOW EVENTS\nSHOW FUNCTION CODE func_name\nSHOW FUNCTION STATUS [like_or_where]\nSHOW GRANTS FOR user\nSHOW INDEX FROM tbl_name [FROM db_name]\nSHOW MASTER STATUS\nSHOW OPEN TABLES [FROM db_name] [like_or_where]\nSHOW PLUGINS\nSHOW PROCEDURE CODE proc_name\nSHOW PROCEDURE STATUS [like_or_where]\nSHOW PRIVILEGES\nSHOW [FULL] PROCESSLIST\nSHOW PROFILE [types] [FOR QUERY n] [OFFSET n] [LIMIT n]\nSHOW PROFILES\nSHOW RELAYLOG EVENTS [IN \'log_name\'] [FROM pos] [LIMIT [offset,] row_count]\nSHOW {REPLICAS | SLAVE HOSTS}\nSHOW {REPLICA | SLAVE} STATUS [FOR CHANNEL channel]\nSHOW [GLOBAL | SESSION] STATUS [like_or_where]\nSHOW TABLE STATUS [FROM db_name] [like_or_where]\nSHOW [FULL] TABLES [FROM db_name] [like_or_where]\nSHOW TRIGGERS [FROM db_name] [like_or_where]\nSHOW [GLOBAL | SESSION] VARIABLES [like_or_where]\nSHOW WARNINGS [LIMIT [offset,] row_count]\n\nlike_or_where: {\n    LIKE \'pattern\'\n  | WHERE expr\n}\n\nIf the syntax for a given SHOW statement includes a LIKE \'pattern\'\npart, \'pattern\' is a string that can contain the SQL % and _ wildcard\ncharacters. The pattern is useful for restricting statement output to\nmatching values.\n\nSeveral SHOW statements also accept a WHERE clause that provides more\nflexibility in specifying which rows to display. See\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nIn SHOW statement results, user names and host names are quoted using\nbackticks (`).\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show.html'),(642,'SHOW BINARY LOGS',3,'Syntax:\nSHOW BINARY LOGS\nSHOW MASTER LOGS\n\nLists the binary log files on the server. This statement is used as\npart of the procedure described in [HELP PURGE BINARY LOGS], that shows\nhow to determine which logs can be purged. SHOW BINARY LOGS requires\nthe REPLICATION CLIENT privilege (or the deprecated SUPER privilege).\n\nEncrypted binary log files have a 512-byte file header that stores\ninformation required for encryption and decryption of the file. This is\nincluded in the file size displayed by SHOW BINARY LOGS. The Encrypted\ncolumn shows whether or not the binary log file is encrypted. Binary\nlog encryption is active if binlog_encryption=ON is set for the server.\nExisting binary log files are not encrypted or decrypted if binary log\nencryption is activated or deactivated while the server is running.\n\nmysql> SHOW BINARY LOGS;\n+---------------+-----------+-----------+\n| Log_name      | File_size | Encrypted |\n+---------------+-----------+-----------+\n| binlog.000015 |    724935 |       Yes |\n| binlog.000016 |    733481 |       Yes |\n+---------------+-----------+-----------+\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-binary-logs.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-binary-logs.html'),(643,'SHOW MASTER LOGS',3,'Syntax:\nSHOW BINARY LOGS\nSHOW MASTER LOGS\n\nLists the binary log files on the server. This statement is used as\npart of the procedure described in [HELP PURGE BINARY LOGS], that shows\nhow to determine which logs can be purged. SHOW BINARY LOGS requires\nthe REPLICATION CLIENT privilege (or the deprecated SUPER privilege).\n\nEncrypted binary log files have a 512-byte file header that stores\ninformation required for encryption and decryption of the file. This is\nincluded in the file size displayed by SHOW BINARY LOGS. The Encrypted\ncolumn shows whether or not the binary log file is encrypted. Binary\nlog encryption is active if binlog_encryption=ON is set for the server.\nExisting binary log files are not encrypted or decrypted if binary log\nencryption is activated or deactivated while the server is running.\n\nmysql> SHOW BINARY LOGS;\n+---------------+-----------+-----------+\n| Log_name      | File_size | Encrypted |\n+---------------+-----------+-----------+\n| binlog.000015 |    724935 |       Yes |\n| binlog.000016 |    733481 |       Yes |\n+---------------+-----------+-----------+\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-binary-logs.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-binary-logs.html'),(644,'SHOW BINLOG EVENTS',3,'Syntax:\nSHOW BINLOG EVENTS\n   [IN \'log_name\']\n   [FROM pos]\n   [LIMIT [offset,] row_count]\n\nShows the events in the binary log. If you do not specify \'log_name\',\nthe first binary log is displayed. SHOW BINLOG EVENTS requires the\nREPLICATION SLAVE privilege.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-binlog-events.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-binlog-events.html'),(645,'SHOW CHARACTER SET',3,'Syntax:\nSHOW {CHARACTER SET | CHARSET}\n    [LIKE \'pattern\' | WHERE expr]\n\nThe SHOW CHARACTER SET statement shows all available character sets.\nThe LIKE clause, if present, indicates which character set names to\nmatch. The WHERE clause can be given to select rows using more general\nconditions, as discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html. For\nexample:\n\nmysql> SHOW CHARACTER SET LIKE \'latin%\';\n+---------+-----------------------------+-------------------+--------+\n| Charset | Description                 | Default collation | Maxlen |\n+---------+-----------------------------+-------------------+--------+\n| latin1  | cp1252 West European        | latin1_swedish_ci |      1 |\n| latin2  | ISO 8859-2 Central European | latin2_general_ci |      1 |\n| latin5  | ISO 8859-9 Turkish          | latin5_turkish_ci |      1 |\n| latin7  | ISO 8859-13 Baltic          | latin7_general_ci |      1 |\n+---------+-----------------------------+-------------------+--------+\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-character-set.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-character-set.html'),(646,'SHOW COLLATION',3,'Syntax:\nSHOW COLLATION\n    [LIKE \'pattern\' | WHERE expr]\n\nThis statement lists collations supported by the server. By default,\nthe output from SHOW COLLATION includes all available collations. The\nLIKE clause, if present, indicates which collation names to match. The\nWHERE clause can be given to select rows using more general conditions,\nas discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html. For\nexample:\n\nmysql> SHOW COLLATION WHERE Charset = \'latin1\';\n+-------------------+---------+----+---------+----------+---------+\n| Collation         | Charset | Id | Default | Compiled | Sortlen |\n+-------------------+---------+----+---------+----------+---------+\n| latin1_german1_ci | latin1  |  5 |         | Yes      |       1 |\n| latin1_swedish_ci | latin1  |  8 | Yes     | Yes      |       1 |\n| latin1_danish_ci  | latin1  | 15 |         | Yes      |       1 |\n| latin1_german2_ci | latin1  | 31 |         | Yes      |       2 |\n| latin1_bin        | latin1  | 47 |         | Yes      |       1 |\n| latin1_general_ci | latin1  | 48 |         | Yes      |       1 |\n| latin1_general_cs | latin1  | 49 |         | Yes      |       1 |\n| latin1_spanish_ci | latin1  | 94 |         | Yes      |       1 |\n+-------------------+---------+----+---------+----------+---------+\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-collation.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-collation.html'),(647,'SHOW COLUMNS',3,'Syntax:\nSHOW [EXTENDED] [FULL] {COLUMNS | FIELDS}\n    {FROM | IN} tbl_name\n    [{FROM | IN} db_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW COLUMNS displays information about the columns in a given table.\nIt also works for views. SHOW COLUMNS displays information only for\nthose columns for which you have some privilege.\n\nmysql> SHOW COLUMNS FROM City;\n+-------------+----------+------+-----+---------+----------------+\n| Field       | Type     | Null | Key | Default | Extra          |\n+-------------+----------+------+-----+---------+----------------+\n| ID          | int(11)  | NO   | PRI | NULL    | auto_increment |\n| Name        | char(35) | NO   |     |         |                |\n| CountryCode | char(3)  | NO   | MUL |         |                |\n| District    | char(20) | NO   |     |         |                |\n| Population  | int(11)  | NO   |     | 0       |                |\n+-------------+----------+------+-----+---------+----------------+\n\nAn alternative to tbl_name FROM db_name syntax is db_name.tbl_name.\nThese two statements are equivalent:\n\nSHOW COLUMNS FROM mytable FROM mydb;\nSHOW COLUMNS FROM mydb.mytable;\n\nThe optional EXTENDED keyword causes the output to include information\nabout hidden columns that MySQL uses internally and are not accessible\nby users.\n\nThe optional FULL keyword causes the output to include the column\ncollation and comments, as well as the privileges you have for each\ncolumn.\n\nThe LIKE clause, if present, indicates which column names to match. The\nWHERE clause can be given to select rows using more general conditions,\nas discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nThe data types may differ from what you expect them to be based on a\nCREATE TABLE statement because MySQL sometimes changes data types when\nyou create or alter a table. The conditions under which this occurs are\ndescribed in\nhttps://dev.mysql.com/doc/refman/8.0/en/silent-column-changes.html.\n\nSHOW COLUMNS displays the following values for each table column:\n\no Field\n\n  The name of the column.\n\no Type\n\n  The column data type.\n\no Collation\n\n  The collation for nonbinary string columns, or NULL for other\n  columns. This value is displayed only if you use the FULL keyword.\n\no Null\n\n  The column nullability. The value is YES if NULL values can be stored\n  in the column, NO if not.\n\no Key\n\n  Whether the column is indexed:\n\n  o If Key is empty, the column either is not indexed or is indexed\n    only as a secondary column in a multiple-column, nonunique index.\n\n  o If Key is PRI, the column is a PRIMARY KEY or is one of the columns\n    in a multiple-column PRIMARY KEY.\n\n  o If Key is UNI, the column is the first column of a UNIQUE index. (A\n    UNIQUE index permits multiple NULL values, but you can tell whether\n    the column permits NULL by checking the Null field.)\n\n  o If Key is MUL, the column is the first column of a nonunique index\n    in which multiple occurrences of a given value are permitted within\n    the column.\n\n  If more than one of the Key values applies to a given column of a\n  table, Key displays the one with the highest priority, in the order\n  PRI, UNI, MUL.\n\n  A UNIQUE index may be displayed as PRI if it cannot contain NULL\n  values and there is no PRIMARY KEY in the table. A UNIQUE index may\n  display as MUL if several columns form a composite UNIQUE index;\n  although the combination of the columns is unique, each column can\n  still hold multiple occurrences of a given value.\n\no Default\n\n  The default value for the column. This is NULL if the column has an\n  explicit default of NULL, or if the column definition includes no\n  DEFAULT clause.\n\no Extra\n\n  Any additional information that is available about a given column.\n  The value is nonempty in these cases:\n\n  o auto_increment for columns that have the AUTO_INCREMENT attribute.\n\n  o on update CURRENT_TIMESTAMP for TIMESTAMP or DATETIME columns that\n    have the ON UPDATE CURRENT_TIMESTAMP attribute.\n\n  o VIRTUAL GENERATED or STORED GENERATED for generated columns.\n\n  o DEFAULT_GENERATED for columns that have an expression default\n    value.\n\no Privileges\n\n  The privileges you have for the column. This value is displayed only\n  if you use the FULL keyword.\n\no Comment\n\n  Any comment included in the column definition. This value is\n  displayed only if you use the FULL keyword.\n\nTable column information is also available from the INFORMATION_SCHEMA\nCOLUMNS table. See\nhttps://dev.mysql.com/doc/refman/8.0/en/information-schema-columns-tabl\ne.html. The extended information about hidden columns is available only\nusing SHOW EXTENDED COLUMNS; it cannot be obtained from the COLUMNS\ntable.\n\nYou can list a table\'s columns with the mysqlshow db_name tbl_name\ncommand.\n\nThe DESCRIBE statement provides information similar to SHOW COLUMNS.\nSee https://dev.mysql.com/doc/refman/8.0/en/describe.html.\n\nThe SHOW CREATE TABLE, SHOW TABLE STATUS, and SHOW INDEX statements\nalso provide information about tables. See [HELP SHOW].\n\nIn MySQL 8.0.30 and later, SHOW COLUMNS includes the table\'s generated\ninvisible primary key, if it has one, by default. You can cause this\ninformation to be suppressed in the statement\'s output by setting\nshow_gipk_in_create_table_and_information_schema = OFF. For more\ninformation, see\nhttps://dev.mysql.com/doc/refman/8.0/en/create-table-gipks.html.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-columns.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-columns.html'),(648,'SHOW FIELDS',3,'Syntax:\nSHOW [EXTENDED] [FULL] {COLUMNS | FIELDS}\n    {FROM | IN} tbl_name\n    [{FROM | IN} db_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW COLUMNS displays information about the columns in a given table.\nIt also works for views. SHOW COLUMNS displays information only for\nthose columns for which you have some privilege.\n\nmysql> SHOW COLUMNS FROM City;\n+-------------+----------+------+-----+---------+----------------+\n| Field       | Type     | Null | Key | Default | Extra          |\n+-------------+----------+------+-----+---------+----------------+\n| ID          | int(11)  | NO   | PRI | NULL    | auto_increment |\n| Name        | char(35) | NO   |     |         |                |\n| CountryCode | char(3)  | NO   | MUL |         |                |\n| District    | char(20) | NO   |     |         |                |\n| Population  | int(11)  | NO   |     | 0       |                |\n+-------------+----------+------+-----+---------+----------------+\n\nAn alternative to tbl_name FROM db_name syntax is db_name.tbl_name.\nThese two statements are equivalent:\n\nSHOW COLUMNS FROM mytable FROM mydb;\nSHOW COLUMNS FROM mydb.mytable;\n\nThe optional EXTENDED keyword causes the output to include information\nabout hidden columns that MySQL uses internally and are not accessible\nby users.\n\nThe optional FULL keyword causes the output to include the column\ncollation and comments, as well as the privileges you have for each\ncolumn.\n\nThe LIKE clause, if present, indicates which column names to match. The\nWHERE clause can be given to select rows using more general conditions,\nas discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nThe data types may differ from what you expect them to be based on a\nCREATE TABLE statement because MySQL sometimes changes data types when\nyou create or alter a table. The conditions under which this occurs are\ndescribed in\nhttps://dev.mysql.com/doc/refman/8.0/en/silent-column-changes.html.\n\nSHOW COLUMNS displays the following values for each table column:\n\no Field\n\n  The name of the column.\n\no Type\n\n  The column data type.\n\no Collation\n\n  The collation for nonbinary string columns, or NULL for other\n  columns. This value is displayed only if you use the FULL keyword.\n\no Null\n\n  The column nullability. The value is YES if NULL values can be stored\n  in the column, NO if not.\n\no Key\n\n  Whether the column is indexed:\n\n  o If Key is empty, the column either is not indexed or is indexed\n    only as a secondary column in a multiple-column, nonunique index.\n\n  o If Key is PRI, the column is a PRIMARY KEY or is one of the columns\n    in a multiple-column PRIMARY KEY.\n\n  o If Key is UNI, the column is the first column of a UNIQUE index. (A\n    UNIQUE index permits multiple NULL values, but you can tell whether\n    the column permits NULL by checking the Null field.)\n\n  o If Key is MUL, the column is the first column of a nonunique index\n    in which multiple occurrences of a given value are permitted within\n    the column.\n\n  If more than one of the Key values applies to a given column of a\n  table, Key displays the one with the highest priority, in the order\n  PRI, UNI, MUL.\n\n  A UNIQUE index may be displayed as PRI if it cannot contain NULL\n  values and there is no PRIMARY KEY in the table. A UNIQUE index may\n  display as MUL if several columns form a composite UNIQUE index;\n  although the combination of the columns is unique, each column can\n  still hold multiple occurrences of a given value.\n\no Default\n\n  The default value for the column. This is NULL if the column has an\n  explicit default of NULL, or if the column definition includes no\n  DEFAULT clause.\n\no Extra\n\n  Any additional information that is available about a given column.\n  The value is nonempty in these cases:\n\n  o auto_increment for columns that have the AUTO_INCREMENT attribute.\n\n  o on update CURRENT_TIMESTAMP for TIMESTAMP or DATETIME columns that\n    have the ON UPDATE CURRENT_TIMESTAMP attribute.\n\n  o VIRTUAL GENERATED or STORED GENERATED for generated columns.\n\n  o DEFAULT_GENERATED for columns that have an expression default\n    value.\n\no Privileges\n\n  The privileges you have for the column. This value is displayed only\n  if you use the FULL keyword.\n\no Comment\n\n  Any comment included in the column definition. This value is\n  displayed only if you use the FULL keyword.\n\nTable column information is also available from the INFORMATION_SCHEMA\nCOLUMNS table. See\nhttps://dev.mysql.com/doc/refman/8.0/en/information-schema-columns-tabl\ne.html. The extended information about hidden columns is available only\nusing SHOW EXTENDED COLUMNS; it cannot be obtained from the COLUMNS\ntable.\n\nYou can list a table\'s columns with the mysqlshow db_name tbl_name\ncommand.\n\nThe DESCRIBE statement provides information similar to SHOW COLUMNS.\nSee https://dev.mysql.com/doc/refman/8.0/en/describe.html.\n\nThe SHOW CREATE TABLE, SHOW TABLE STATUS, and SHOW INDEX statements\nalso provide information about tables. See [HELP SHOW].\n\nIn MySQL 8.0.30 and later, SHOW COLUMNS includes the table\'s generated\ninvisible primary key, if it has one, by default. You can cause this\ninformation to be suppressed in the statement\'s output by setting\nshow_gipk_in_create_table_and_information_schema = OFF. For more\ninformation, see\nhttps://dev.mysql.com/doc/refman/8.0/en/create-table-gipks.html.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-columns.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-columns.html'),(649,'SHOW CREATE DATABASE',3,'Syntax:\nSHOW CREATE {DATABASE | SCHEMA} [IF NOT EXISTS] db_name\n\nShows the CREATE DATABASE statement that creates the named database. If\nthe SHOW statement includes an IF NOT EXISTS clause, the output too\nincludes such a clause. SHOW CREATE SCHEMA is a synonym for SHOW CREATE\nDATABASE.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-create-database.html\n\n','mysql> SHOW CREATE DATABASE test\\G\n*************************** 1. row ***************************\n       Database: test\nCreate Database: CREATE DATABASE `test` /*!40100 DEFAULT CHARACTER SET utf8mb4\n                 COLLATE utf8mb4_0900_ai_ci */ /*!80014 DEFAULT ENCRYPTION=\'N\' */\n\nmysql> SHOW CREATE SCHEMA test\\G\n*************************** 1. row ***************************\n       Database: test\nCreate Database: CREATE DATABASE `test` /*!40100 DEFAULT CHARACTER SET utf8mb4\n                 COLLATE utf8mb4_0900_ai_ci */ /*!80014 DEFAULT ENCRYPTION=\'N\' */\n','https://dev.mysql.com/doc/refman/8.0/en/show-create-database.html'),(650,'SHOW CREATE SCHEMA',3,'Syntax:\nSHOW CREATE {DATABASE | SCHEMA} [IF NOT EXISTS] db_name\n\nShows the CREATE DATABASE statement that creates the named database. If\nthe SHOW statement includes an IF NOT EXISTS clause, the output too\nincludes such a clause. SHOW CREATE SCHEMA is a synonym for SHOW CREATE\nDATABASE.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-create-database.html\n\n','mysql> SHOW CREATE DATABASE test\\G\n*************************** 1. row ***************************\n       Database: test\nCreate Database: CREATE DATABASE `test` /*!40100 DEFAULT CHARACTER SET utf8mb4\n                 COLLATE utf8mb4_0900_ai_ci */ /*!80014 DEFAULT ENCRYPTION=\'N\' */\n\nmysql> SHOW CREATE SCHEMA test\\G\n*************************** 1. row ***************************\n       Database: test\nCreate Database: CREATE DATABASE `test` /*!40100 DEFAULT CHARACTER SET utf8mb4\n                 COLLATE utf8mb4_0900_ai_ci */ /*!80014 DEFAULT ENCRYPTION=\'N\' */\n','https://dev.mysql.com/doc/refman/8.0/en/show-create-database.html'),(651,'SHOW CREATE EVENT',3,'Syntax:\nSHOW CREATE EVENT event_name\n\nThis statement displays the CREATE EVENT statement needed to re-create\na given event. It requires the EVENT privilege for the database from\nwhich the event is to be shown. For example (using the same event\ne_daily defined and then altered in [HELP SHOW EVENTS]):\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-create-event.html\n\n','mysql> SHOW CREATE EVENT myschema.e_daily\\G\n*************************** 1. row ***************************\n               Event: e_daily\n            sql_mode: ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,\n                      NO_ZERO_IN_DATE,NO_ZERO_DATE,\n                      ERROR_FOR_DIVISION_BY_ZERO,\n                      NO_ENGINE_SUBSTITUTION\n           time_zone: SYSTEM\n        Create Event: CREATE DEFINER=`jon`@`ghidora` EVENT `e_daily`\n                        ON SCHEDULE EVERY 1 DAY\n                        STARTS CURRENT_TIMESTAMP + INTERVAL 6 HOUR\n                        ON COMPLETION NOT PRESERVE\n                        ENABLE\n                        COMMENT \'Saves total number of sessions then\n                                clears the table each day\'\n                        DO BEGIN\n                          INSERT INTO site_activity.totals (time, total)\n                            SELECT CURRENT_TIMESTAMP, COUNT(*)\n                              FROM site_activity.sessions;\n                          DELETE FROM site_activity.sessions;\n                        END\ncharacter_set_client: utf8mb4\ncollation_connection: utf8mb4_0900_ai_ci\n  Database Collation: utf8mb4_0900_ai_ci\n','https://dev.mysql.com/doc/refman/8.0/en/show-create-event.html'),(652,'SHOW CREATE FUNCTION',3,'Syntax:\nSHOW CREATE FUNCTION func_name\n\nThis statement is similar to SHOW CREATE PROCEDURE but for stored\nfunctions. See [HELP SHOW CREATE PROCEDURE].\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-create-function.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-create-function.html'),(653,'SHOW CREATE PROCEDURE',3,'Syntax:\nSHOW CREATE PROCEDURE proc_name\n\nThis statement is a MySQL extension. It returns the exact string that\ncan be used to re-create the named stored procedure. A similar\nstatement, SHOW CREATE FUNCTION, displays information about stored\nfunctions (see [HELP SHOW CREATE FUNCTION]).\n\nTo use either statement, you must be the user named as the routine\nDEFINER, have the SHOW_ROUTINE privilege, have the SELECT privilege at\nthe global level, or have the CREATE ROUTINE, ALTER ROUTINE, or EXECUTE\nprivilege granted at a scope that includes the routine. The value\ndisplayed for the Create Procedure or Create Function field is NULL if\nyou have only CREATE ROUTINE, ALTER ROUTINE, or EXECUTE.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-create-procedure.html\n\n','mysql> SHOW CREATE PROCEDURE test.citycount\\G\n*************************** 1. row ***************************\n           Procedure: citycount\n            sql_mode: ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,\n                      NO_ZERO_IN_DATE,NO_ZERO_DATE,\n                      ERROR_FOR_DIVISION_BY_ZERO,\n                      NO_ENGINE_SUBSTITUTION\n    Create Procedure: CREATE DEFINER=`me`@`localhost`\n                      PROCEDURE `citycount`(IN country CHAR(3), OUT cities INT)\n                      BEGIN\n                        SELECT COUNT(*) INTO cities FROM world.city\n                        WHERE CountryCode = country;\n                      END\ncharacter_set_client: utf8mb4\ncollation_connection: utf8mb4_0900_ai_ci\n  Database Collation: utf8mb4_0900_ai_ci\n\nmysql> SHOW CREATE FUNCTION test.hello\\G\n*************************** 1. row ***************************\n            Function: hello\n            sql_mode: ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,\n                      NO_ZERO_IN_DATE,NO_ZERO_DATE,\n                      ERROR_FOR_DIVISION_BY_ZERO,\n                      NO_ENGINE_SUBSTITUTION\n     Create Function: CREATE DEFINER=`me`@`localhost`\n                      FUNCTION `hello`(s CHAR(20))\n                      RETURNS char(50) CHARSET utf8mb4\n                      DETERMINISTIC\n                      RETURN CONCAT(\'Hello, \',s,\'!\')\ncharacter_set_client: utf8mb4\ncollation_connection: utf8mb4_0900_ai_ci\n  Database Collation: utf8mb4_0900_ai_ci\n','https://dev.mysql.com/doc/refman/8.0/en/show-create-procedure.html'),(654,'SHOW CREATE TABLE',3,'Syntax:\nSHOW CREATE TABLE tbl_name\n\nShows the CREATE TABLE statement that creates the named table. To use\nthis statement, you must have some privilege for the table. This\nstatement also works with views.\n\nAs of MySQL 8.0.16, MySQL implements CHECK constraints and SHOW CREATE\nTABLE displays them. All CHECK constraints are displayed as table\nconstraints. That is, a CHECK constraint originally specified as part\nof a column definition displays as a separate clause not part of the\ncolumn definition. Example:\n\nmysql> CREATE TABLE t1 (\n         i1 INT CHECK (i1 <> 0),      -- column constraint\n         i2 INT,\n         CHECK (i2 > i1),             -- table constraint\n         CHECK (i2 <> 0) NOT ENFORCED -- table constraint, not enforced\n       );\n\nmysql> SHOW CREATE TABLE t1\\G\n*************************** 1. row ***************************\n       Table: t1\nCreate Table: CREATE TABLE `t1` (\n  `i1` int DEFAULT NULL,\n  `i2` int DEFAULT NULL,\n  CONSTRAINT `t1_chk_1` CHECK ((`i1` <> 0)),\n  CONSTRAINT `t1_chk_2` CHECK ((`i2` > `i1`)),\n  CONSTRAINT `t1_chk_3` CHECK ((`i2` <> 0)) /*!80016 NOT ENFORCED */\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci\n\nSHOW CREATE TABLE quotes table and column names according to the value\nof the sql_quote_show_create option. See\nhttps://dev.mysql.com/doc/refman/8.0/en/server-system-variables.html.\n\nWhen altering the storage engine of a table, table options that are not\napplicable to the new storage engine are retained in the table\ndefinition to enable reverting the table with its previously defined\noptions to the original storage engine, if necessary. For example, when\nchanging the storage engine from InnoDB to MyISAM, options specific to\nInnoDB, such as ROW_FORMAT=COMPACT, are retained, as shown here:\n\nmysql> CREATE TABLE t1 (c1 INT PRIMARY KEY) ROW_FORMAT=COMPACT ENGINE=InnoDB;\nmysql> ALTER TABLE t1 ENGINE=MyISAM;\nmysql> SHOW CREATE TABLE t1\\G\n*************************** 1. row ***************************\n       Table: t1\nCreate Table: CREATE TABLE `t1` (\n  `c1` int NOT NULL,\n  PRIMARY KEY (`c1`)\n) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT\n\nWhen creating a table with strict mode disabled, the storage engine\'s\ndefault row format is used if the specified row format is not\nsupported. The actual row format of the table is reported in the\nRow_format column in response to SHOW TABLE STATUS. SHOW CREATE TABLE\nshows the row format that was specified in the CREATE TABLE statement.\n\nIn MySQL 8.0.30 and later, SHOW CREATE TABLE includes the definition of\nthe table\'s generated invisible primary key, if it has such a key, by\ndefault. You can cause this information to be suppressed in the\nstatement\'s output by setting\nshow_gipk_in_create_table_and_information_schema = OFF. For more\ninformation, see\nhttps://dev.mysql.com/doc/refman/8.0/en/create-table-gipks.html.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-create-table.html\n\n','mysql> SHOW CREATE TABLE t\\G\n*************************** 1. row ***************************\n       Table: t\nCreate Table: CREATE TABLE `t` (\n  `id` int NOT NULL AUTO_INCREMENT,\n  `s` char(60) DEFAULT NULL,\n  PRIMARY KEY (`id`)\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci\n','https://dev.mysql.com/doc/refman/8.0/en/show-create-table.html'),(655,'SHOW CREATE TRIGGER',3,'Syntax:\nSHOW CREATE TRIGGER trigger_name\n\nThis statement shows the CREATE TRIGGER statement that creates the\nnamed trigger. This statement requires the TRIGGER privilege for the\ntable associated with the trigger.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-create-trigger.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-create-trigger.html'),(656,'SHOW CREATE USER',3,'Syntax:\nSHOW CREATE USER user\n\nThis statement shows the CREATE USER statement that creates the named\nuser. An error occurs if the user does not exist. The statement\nrequires the SELECT privilege for the mysql system schema, except to\nsee information for the current user. For the current user, the SELECT\nprivilege for the mysql.user system table is required for display of\nthe password hash in the IDENTIFIED AS clause; otherwise, the hash\ndisplays as <secret>.\n\nTo name the account, use the format described in\nhttps://dev.mysql.com/doc/refman/8.0/en/account-names.html. The host\nname part of the account name, if omitted, defaults to \'%\'. It is also\npossible to specify CURRENT_USER or CURRENT_USER() to refer to the\naccount associated with the current session.\n\nPassword hash values displayed in the IDENTIFIED WITH clause of output\nfrom SHOW CREATE USER may contain unprintable characters that have\nadverse effects on terminal displays and in other environments.\nEnabling the print_identified_with_as_hex system variable (available as\nof MySQL 8.0.17) causes SHOW CREATE USER to display such hash values as\nhexadecimal strings rather than as regular string literals. Hash values\nthat do not contain unprintable characters still display as regular\nstring literals, even with this variable enabled.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-create-user.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-create-user.html'),(657,'SHOW CREATE VIEW',3,'Syntax:\nSHOW CREATE VIEW view_name\n\nThis statement shows the CREATE VIEW statement that creates the named\nview.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-create-view.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-create-view.html'),(658,'SHOW DATABASES',3,'Syntax:\nSHOW {DATABASES | SCHEMAS}\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW DATABASES lists the databases on the MySQL server host. SHOW\nSCHEMAS is a synonym for SHOW DATABASES. The LIKE clause, if present,\nindicates which database names to match. The WHERE clause can be given\nto select rows using more general conditions, as discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nYou see only those databases for which you have some kind of privilege,\nunless you have the global SHOW DATABASES privilege. You can also get\nthis list using the mysqlshow command.\n\nIf the server was started with the --skip-show-database option, you\ncannot use this statement at all unless you have the SHOW DATABASES\nprivilege.\n\nMySQL implements databases as directories in the data directory, so\nthis statement simply lists directories in that location. However, the\noutput may include names of directories that do not correspond to\nactual databases.\n\nDatabase information is also available from the INFORMATION_SCHEMA\nSCHEMATA table. See\nhttps://dev.mysql.com/doc/refman/8.0/en/information-schema-schemata-tab\nle.html.\n\n*Caution*:\n\nBecause any static global privilege is considered a privilege for all\ndatabases, any static global privilege enables a user to see all\ndatabase names with SHOW DATABASES or by examining the SCHEMATA table\nof INFORMATION_SCHEMA, except databases that have been restricted at\nthe database level by partial revokes.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-databases.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-databases.html'),(659,'SHOW SCHEMAS',3,'Syntax:\nSHOW {DATABASES | SCHEMAS}\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW DATABASES lists the databases on the MySQL server host. SHOW\nSCHEMAS is a synonym for SHOW DATABASES. The LIKE clause, if present,\nindicates which database names to match. The WHERE clause can be given\nto select rows using more general conditions, as discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nYou see only those databases for which you have some kind of privilege,\nunless you have the global SHOW DATABASES privilege. You can also get\nthis list using the mysqlshow command.\n\nIf the server was started with the --skip-show-database option, you\ncannot use this statement at all unless you have the SHOW DATABASES\nprivilege.\n\nMySQL implements databases as directories in the data directory, so\nthis statement simply lists directories in that location. However, the\noutput may include names of directories that do not correspond to\nactual databases.\n\nDatabase information is also available from the INFORMATION_SCHEMA\nSCHEMATA table. See\nhttps://dev.mysql.com/doc/refman/8.0/en/information-schema-schemata-tab\nle.html.\n\n*Caution*:\n\nBecause any static global privilege is considered a privilege for all\ndatabases, any static global privilege enables a user to see all\ndatabase names with SHOW DATABASES or by examining the SCHEMATA table\nof INFORMATION_SCHEMA, except databases that have been restricted at\nthe database level by partial revokes.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-databases.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-databases.html'),(660,'SHOW ENGINE',3,'Syntax:\nSHOW ENGINE engine_name {STATUS | MUTEX}\n\nSHOW ENGINE displays operational information about a storage engine. It\nrequires the PROCESS privilege. The statement has these variants:\n\nSHOW ENGINE INNODB STATUS\nSHOW ENGINE INNODB MUTEX\nSHOW ENGINE PERFORMANCE_SCHEMA STATUS\n\nSHOW ENGINE INNODB STATUS displays extensive information from the\nstandard InnoDB Monitor about the state of the InnoDB storage engine.\nFor information about the standard monitor and other InnoDB Monitors\nthat provide information about InnoDB processing, see\nhttps://dev.mysql.com/doc/refman/8.0/en/innodb-monitors.html.\n\nSHOW ENGINE INNODB MUTEX displays InnoDB mutex and rw-lock statistics.\n\n*Note*:\n\nInnoDB mutexes and rwlocks can also be monitored using Performance\nSchema tables. See\nhttps://dev.mysql.com/doc/refman/8.0/en/monitor-innodb-mutex-waits-perf\normance-schema.html.\n\nMutex statistics collection is configured dynamically using the\nfollowing options:\n\no To enable the collection of mutex statistics, run:\n\nSET GLOBAL innodb_monitor_enable=\'latch\';\n\no To reset mutex statistics, run:\n\nSET GLOBAL innodb_monitor_reset=\'latch\';\n\no To disable the collection of mutex statistics, run:\n\nSET GLOBAL innodb_monitor_disable=\'latch\';\n\nCollection of mutex statistics for SHOW ENGINE INNODB MUTEX can also be\nenabled by setting innodb_monitor_enable=\'all\', or disabled by setting\ninnodb_monitor_disable=\'all\'.\n\nSHOW ENGINE INNODB MUTEX output has these columns:\n\no Type\n\n  Always InnoDB.\n\no Name\n\n  For mutexes, the Name field reports only the mutex name. For rwlocks,\n  the Name field reports the source file where the rwlock is\n  implemented, and the line number in the file where the rwlock is\n  created. The line number is specific to your version of MySQL.\n\no Status\n\n  The mutex status. This field reports the number of spins, waits, and\n  calls. Statistics for low-level operating system mutexes, which are\n  implemented outside of InnoDB, are not reported.\n\n  o spins indicates the number of spins.\n\n  o waits indicates the number of mutex waits.\n\n  o calls indicates how many times the mutex was requested.\n\nSHOW ENGINE INNODB MUTEX does not list mutexes and rw-locks for each\nbuffer pool block, as the amount of output would be overwhelming on\nsystems with a large buffer pool. SHOW ENGINE INNODB MUTEX does,\nhowever, print aggregate BUF_BLOCK_MUTEX spin, wait, and call values\nfor buffer pool block mutexes and rw-locks. SHOW ENGINE INNODB MUTEX\nalso does not list any mutexes or rw-locks that have never been waited\non (os_waits=0). Thus, SHOW ENGINE INNODB MUTEX only displays\ninformation about mutexes and rw-locks outside of the buffer pool that\nhave caused at least one OS-level wait.\n\nUse SHOW ENGINE PERFORMANCE_SCHEMA STATUS to inspect the internal\noperation of the Performance Schema code:\n\nmysql> SHOW ENGINE PERFORMANCE_SCHEMA STATUS\\G\n...\n*************************** 3. row ***************************\n  Type: performance_schema\n  Name: events_waits_history.size\nStatus: 76\n*************************** 4. row ***************************\n  Type: performance_schema\n  Name: events_waits_history.count\nStatus: 10000\n*************************** 5. row ***************************\n  Type: performance_schema\n  Name: events_waits_history.memory\nStatus: 760000\n...\n*************************** 57. row ***************************\n  Type: performance_schema\n  Name: performance_schema.memory\nStatus: 26459600\n...\n\nThis statement is intended to help the DBA understand the effects that\ndifferent Performance Schema options have on memory requirements.\n\nName values consist of two parts, which name an internal buffer and a\nbuffer attribute, respectively. Interpret buffer names as follows:\n\no An internal buffer that is not exposed as a table is named within\n  parentheses. Examples: (pfs_cond_class).size,\n  (pfs_mutex_class).memory.\n\no An internal buffer that is exposed as a table in the\n  performance_schema database is named after the table, without\n  parentheses. Examples: events_waits_history.size,\n  mutex_instances.count.\n\no A value that applies to the Performance Schema as a whole begins with\n  performance_schema. Example: performance_schema.memory.\n\nBuffer attributes have these meanings:\n\no size is the size of the internal record used by the implementation,\n  such as the size of a row in a table. size values cannot be changed.\n\no count is the number of internal records, such as the number of rows\n  in a table. count values can be changed using Performance Schema\n  configuration options.\n\no For a table, tbl_name.memory is the product of size and count. For\n  the Performance Schema as a whole, performance_schema.memory is the\n  sum of all the memory used (the sum of all other memory values).\n\nIn some cases, there is a direct relationship between a Performance\nSchema configuration parameter and a SHOW ENGINE value. For example,\nevents_waits_history_long.count corresponds to\nperformance_schema_events_waits_history_long_size. In other cases, the\nrelationship is more complex. For example, events_waits_history.count\ncorresponds to performance_schema_events_waits_history_size (the number\nof rows per thread) multiplied by\nperformance_schema_max_thread_instances ( the number of threads).\n\nSHOW ENGINE NDB STATUS If the server has the NDB storage engine\nenabled, SHOW ENGINE NDB STATUS displays cluster status information\nsuch as the number of connected data nodes, the cluster connectstring,\nand cluster binary log epochs, as well as counts of various Cluster API\nobjects created by the MySQL Server when connected to the cluster.\nSample output from this statement is shown here:\n\nmysql> SHOW ENGINE NDB STATUS;\n+------------+-----------------------+--------------------------------------------------+\n| Type       | Name                  | Status                                           |\n+------------+-----------------------+--------------------------------------------------+\n| ndbcluster | connection            | cluster_node_id=7,\n  connected_host=198.51.100.103, connected_port=1186, number_of_data_nodes=4,\n  number_of_ready_data_nodes=3, connect_count=0                                         |\n| ndbcluster | NdbTransaction        | created=6, free=0, sizeof=212                    |\n| ndbcluster | NdbOperation          | created=8, free=8, sizeof=660                    |\n| ndbcluster | NdbIndexScanOperation | created=1, free=1, sizeof=744                    |\n| ndbcluster | NdbIndexOperation     | created=0, free=0, sizeof=664                    |\n| ndbcluster | NdbRecAttr            | created=1285, free=1285, sizeof=60               |\n| ndbcluster | NdbApiSignal          | created=16, free=16, sizeof=136                  |\n| ndbcluster | NdbLabel              | created=0, free=0, sizeof=196                    |\n| ndbcluster | NdbBranch             | created=0, free=0, sizeof=24                     |\n| ndbcluster | NdbSubroutine         | created=0, free=0, sizeof=68                     |\n| ndbcluster | NdbCall               | created=0, free=0, sizeof=16                     |\n| ndbcluster | NdbBlob               | created=1, free=1, sizeof=264                    |\n| ndbcluster | NdbReceiver           | created=4, free=0, sizeof=68                     |\n| ndbcluster | binlog                | latest_epoch=155467, latest_trans_epoch=148126,\n  latest_received_binlog_epoch=0, latest_handled_binlog_epoch=0,\n  latest_applied_binlog_epoch=0                                                         |\n+------------+-----------------------+--------------------------------------------------+\n\nThe Status column in each of these rows provides information about the\nMySQL server\'s connection to the cluster and about the cluster binary\nlog\'s status, respectively. The Status information is in the form of\ncomma-delimited set of name/value pairs.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-engine.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-engine.html'),(661,'SHOW ENGINES',3,'Syntax:\nSHOW [STORAGE] ENGINES\n\nSHOW ENGINES displays status information about the server\'s storage\nengines. This is particularly useful for checking whether a storage\nengine is supported, or to see what the default engine is.\n\nFor information about MySQL storage engines, see\nhttps://dev.mysql.com/doc/refman/8.0/en/innodb-storage-engine.html, and\nhttps://dev.mysql.com/doc/refman/8.0/en/storage-engines.html.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-engines.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-engines.html'),(662,'SHOW ERRORS',3,'Syntax:\nSHOW ERRORS [LIMIT [offset,] row_count]\nSHOW COUNT(*) ERRORS\n\nSHOW ERRORS is a diagnostic statement that is similar to SHOW WARNINGS,\nexcept that it displays information only for errors, rather than for\nerrors, warnings, and notes.\n\nThe LIMIT clause has the same syntax as for the SELECT statement. See\nhttps://dev.mysql.com/doc/refman/8.0/en/select.html.\n\nThe SHOW COUNT(*) ERRORS statement displays the number of errors. You\ncan also retrieve this number from the error_count variable:\n\nSHOW COUNT(*) ERRORS;\nSELECT @@error_count;\n\nSHOW ERRORS and error_count apply only to errors, not warnings or\nnotes. In other respects, they are similar to SHOW WARNINGS and\nwarning_count. In particular, SHOW ERRORS cannot display information\nfor more than max_error_count messages, and error_count can exceed the\nvalue of max_error_count if the number of errors exceeds\nmax_error_count.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-errors.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-errors.html'),(663,'SHOW EVENTS',3,'Syntax:\nSHOW EVENTS\n    [{FROM | IN} schema_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nThis statement displays information about Event Manager events, which\nare discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/event-scheduler.html. It\nrequires the EVENT privilege for the database from which the events are\nto be shown.\n\nIn its simplest form, SHOW EVENTS lists all of the events in the\ncurrent schema:\n\nmysql> SELECT CURRENT_USER(), SCHEMA();\n+----------------+----------+\n| CURRENT_USER() | SCHEMA() |\n+----------------+----------+\n| jon@ghidora    | myschema |\n+----------------+----------+\n1 row in set (0.00 sec)\n\nmysql> SHOW EVENTS\\G\n*************************** 1. row ***************************\n                  Db: myschema\n                Name: e_daily\n             Definer: jon@ghidora\n           Time zone: SYSTEM\n                Type: RECURRING\n          Execute at: NULL\n      Interval value: 1\n      Interval field: DAY\n              Starts: 2018-08-08 11:06:34\n                Ends: NULL\n              Status: ENABLED\n          Originator: 1\ncharacter_set_client: utf8mb4\ncollation_connection: utf8mb4_0900_ai_ci\n  Database Collation: utf8mb4_0900_ai_ci\n\nTo see events for a specific schema, use the FROM clause. For example,\nto see events for the test schema, use the following statement:\n\nSHOW EVENTS FROM test;\n\nThe LIKE clause, if present, indicates which event names to match. The\nWHERE clause can be given to select rows using more general conditions,\nas discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-events.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-events.html'),(664,'SHOW FUNCTION CODE',3,'Syntax:\nSHOW FUNCTION CODE func_name\n\nThis statement is similar to SHOW PROCEDURE CODE but for stored\nfunctions. See [HELP SHOW PROCEDURE CODE].\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-function-code.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-function-code.html'),(665,'SHOW FUNCTION STATUS',3,'Syntax:\nSHOW FUNCTION STATUS\n    [LIKE \'pattern\' | WHERE expr]\n\nThis statement is similar to SHOW PROCEDURE STATUS but for stored\nfunctions. See [HELP SHOW PROCEDURE STATUS].\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-function-status.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-function-status.html'),(666,'SHOW GRANTS',3,'Syntax:\nSHOW GRANTS\n    [FOR user_or_role\n        [USING role [, role] ...]]\n\nuser_or_role: {\n    user (see )\n  | role (see .\n}\n\nThis statement displays the privileges and roles that are assigned to a\nMySQL user account or role, in the form of GRANT statements that must\nbe executed to duplicate the privilege and role assignments.\n\n*Note*:\n\nTo display nonprivilege information for MySQL accounts, use the SHOW\nCREATE USER statement. See [HELP SHOW CREATE USER].\n\nSHOW GRANTS requires the SELECT privilege for the mysql system schema,\nexcept to display privileges and roles for the current user.\n\nTo name the account or role for SHOW GRANTS, use the same format as for\nthe GRANT statement (for example, \'jeffrey\'@\'localhost\'):\n\nmysql> SHOW GRANTS FOR \'jeffrey\'@\'localhost\';\n+------------------------------------------------------------------+\n| Grants for jeffrey@localhost                                     |\n+------------------------------------------------------------------+\n| GRANT USAGE ON *.* TO `jeffrey`@`localhost`                      |\n| GRANT SELECT, INSERT, UPDATE ON `db1`.* TO `jeffrey`@`localhost` |\n+------------------------------------------------------------------+\n\nThe host part, if omitted, defaults to \'%\'. For additional information\nabout specifying account and role names, see\nhttps://dev.mysql.com/doc/refman/8.0/en/account-names.html, and\nhttps://dev.mysql.com/doc/refman/8.0/en/role-names.html.\n\nTo display the privileges granted to the current user (the account you\nare using to connect to the server), you can use any of the following\nstatements:\n\nSHOW GRANTS;\nSHOW GRANTS FOR CURRENT_USER;\nSHOW GRANTS FOR CURRENT_USER();\n\nIf SHOW GRANTS FOR CURRENT_USER (or any equivalent syntax) is used in\ndefiner context, such as within a stored procedure that executes with\ndefiner rather than invoker privileges, the grants displayed are those\nof the definer and not the invoker.\n\nIn MySQL 8.0 compared to previous series, SHOW GRANTS no longer\ndisplays ALL PRIVILEGES in its global-privileges output because the\nmeaning of ALL PRIVILEGES at the global level varies depending on which\ndynamic privileges are defined. Instead, SHOW GRANTS explicitly lists\neach granted global privilege:\n\nmysql> SHOW GRANTS FOR \'root\'@\'localhost\';\n+---------------------------------------------------------------------+\n| Grants for root@localhost                                           |\n+---------------------------------------------------------------------+\n| GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, RELOAD,         |\n| SHUTDOWN, PROCESS, FILE, REFERENCES, INDEX, ALTER, SHOW DATABASES,  |\n| SUPER, CREATE TEMPORARY TABLES, LOCK TABLES, EXECUTE, REPLICATION   |\n| SLAVE, REPLICATION CLIENT, CREATE VIEW, SHOW VIEW, CREATE ROUTINE,  |\n| ALTER ROUTINE, CREATE USER, EVENT, TRIGGER, CREATE TABLESPACE,      |\n| CREATE ROLE, DROP ROLE ON *.* TO `root`@`localhost` WITH GRANT      |\n| OPTION                                                              |\n| GRANT PROXY ON \'\'@\'\' TO `root`@`localhost` WITH GRANT OPTION        |\n+---------------------------------------------------------------------+\n\nApplications that process SHOW GRANTS output should be adjusted\naccordingly.\n\nAt the global level, GRANT OPTION applies to all granted static global\nprivileges if granted for any of them, but applies individually to\ngranted dynamic privileges. SHOW GRANTS displays global privileges this\nway:\n\no One line listing all granted static privileges, if there are any,\n  including WITH GRANT OPTION if appropriate.\n\no One line listing all granted dynamic privileges for which GRANT\n  OPTION is granted, if there are any, including WITH GRANT OPTION.\n\no One line listing all granted dynamic privileges for which GRANT\n  OPTION is not granted, if there are any, without WITH GRANT OPTION.\n\nWith the optional USING clause, SHOW GRANTS enables you to examine the\nprivileges associated with roles for the user. Each role named in the\nUSING clause must be granted to the user.\n\nSuppose that user u1 is assigned roles r1 and r2, as follows:\n\nCREATE ROLE \'r1\', \'r2\';\nGRANT SELECT ON db1.* TO \'r1\';\nGRANT INSERT, UPDATE, DELETE ON db1.* TO \'r2\';\nCREATE USER \'u1\'@\'localhost\' IDENTIFIED BY \'u1pass\';\nGRANT \'r1\', \'r2\' TO \'u1\'@\'localhost\';\n\nSHOW GRANTS without USING shows the granted roles:\n\nmysql> SHOW GRANTS FOR \'u1\'@\'localhost\';\n+---------------------------------------------+\n| Grants for u1@localhost                     |\n+---------------------------------------------+\n| GRANT USAGE ON *.* TO `u1`@`localhost`      |\n| GRANT `r1`@`%`,`r2`@`%` TO `u1`@`localhost` |\n+---------------------------------------------+\n\nAdding a USING clause causes the statement to also display the\nprivileges associated with each role named in the clause:\n\nmysql> SHOW GRANTS FOR \'u1\'@\'localhost\' USING \'r1\';\n+---------------------------------------------+\n| Grants for u1@localhost                     |\n+---------------------------------------------+\n| GRANT USAGE ON *.* TO `u1`@`localhost`      |\n| GRANT SELECT ON `db1`.* TO `u1`@`localhost` |\n| GRANT `r1`@`%`,`r2`@`%` TO `u1`@`localhost` |\n+---------------------------------------------+\nmysql> SHOW GRANTS FOR \'u1\'@\'localhost\' USING \'r2\';\n+-------------------------------------------------------------+\n| Grants for u1@localhost                                     |\n+-------------------------------------------------------------+\n| GRANT USAGE ON *.* TO `u1`@`localhost`                      |\n| GRANT INSERT, UPDATE, DELETE ON `db1`.* TO `u1`@`localhost` |\n| GRANT `r1`@`%`,`r2`@`%` TO `u1`@`localhost`                 |\n+-------------------------------------------------------------+\nmysql> SHOW GRANTS FOR \'u1\'@\'localhost\' USING \'r1\', \'r2\';\n+---------------------------------------------------------------------+\n| Grants for u1@localhost                                             |\n+---------------------------------------------------------------------+\n| GRANT USAGE ON *.* TO `u1`@`localhost`                              |\n| GRANT SELECT, INSERT, UPDATE, DELETE ON `db1`.* TO `u1`@`localhost` |\n| GRANT `r1`@`%`,`r2`@`%` TO `u1`@`localhost`                         |\n+---------------------------------------------------------------------+\n\n*Note*:\n\nA privilege granted to an account is always in effect, but a role is\nnot. The active roles for an account can differ across and within\nsessions, depending on the value of the activate_all_roles_on_login\nsystem variable, the account default roles, and whether SET ROLE has\nbeen executed within a session.\n\nMySQL 8.0.16 and higher supports partial revokes of global privileges,\nsuch that a global privilege can be restricted from applying to\nparticular schemas (see\nhttps://dev.mysql.com/doc/refman/8.0/en/partial-revokes.html). To\nindicate which global schema privileges have been revoked for\nparticular schemas, SHOW GRANTS output includes REVOKE statements:\n\nmysql> SET PERSIST partial_revokes = ON;\nmysql> CREATE USER u1;\nmysql> GRANT SELECT, INSERT, DELETE ON *.* TO u1;\nmysql> REVOKE SELECT, INSERT ON mysql.* FROM u1;\nmysql> REVOKE DELETE ON world.* FROM u1;\nmysql> SHOW GRANTS FOR u1;\n+--------------------------------------------------+\n| Grants for u1@%                                  |\n+--------------------------------------------------+\n| GRANT SELECT, INSERT, DELETE ON *.* TO `u1`@`%`  |\n| REVOKE SELECT, INSERT ON `mysql`.* FROM `u1`@`%` |\n| REVOKE DELETE ON `world`.* FROM `u1`@`%`         |\n+--------------------------------------------------+\n\nSHOW GRANTS does not display privileges that are available to the named\naccount but are granted to a different account. For example, if an\nanonymous account exists, the named account might be able to use its\nprivileges, but SHOW GRANTS does not display them.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-grants.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-grants.html'),(667,'SHOW INDEX',3,'Syntax:\nSHOW [EXTENDED] {INDEX | INDEXES | KEYS}\n    {FROM | IN} tbl_name\n    [{FROM | IN} db_name]\n    [WHERE expr]\n\nSHOW INDEX returns table index information. The format resembles that\nof the SQLStatistics call in ODBC. This statement requires some\nprivilege for any column in the table.\n\nmysql> SHOW INDEX FROM City\\G\n*************************** 1. row ***************************\n        Table: city\n   Non_unique: 0\n     Key_name: PRIMARY\n Seq_in_index: 1\n  Column_name: ID\n    Collation: A\n  Cardinality: 4188\n     Sub_part: NULL\n       Packed: NULL\n         Null:\n   Index_type: BTREE\n      Comment:\nIndex_comment:\n      Visible: YES\n   Expression: NULL\n*************************** 2. row ***************************\n        Table: city\n   Non_unique: 1\n     Key_name: CountryCode\n Seq_in_index: 1\n  Column_name: CountryCode\n    Collation: A\n  Cardinality: 232\n     Sub_part: NULL\n       Packed: NULL\n         Null:\n   Index_type: BTREE\n      Comment:\nIndex_comment:\n      Visible: YES\n   Expression: NULL\n\nAn alternative to tbl_name FROM db_name syntax is db_name.tbl_name.\nThese two statements are equivalent:\n\nSHOW INDEX FROM mytable FROM mydb;\nSHOW INDEX FROM mydb.mytable;\n\nThe optional EXTENDED keyword causes the output to include information\nabout hidden indexes that MySQL uses internally and are not accessible\nby users.\n\nThe WHERE clause can be given to select rows using more general\nconditions, as discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nSHOW INDEX returns the following fields:\n\no Table\n\n  The name of the table.\n\no Non_unique\n\n  0 if the index cannot contain duplicates, 1 if it can.\n\no Key_name\n\n  The name of the index. If the index is the primary key, the name is\n  always PRIMARY.\n\no Seq_in_index\n\n  The column sequence number in the index, starting with 1.\n\no Column_name\n\n  The column name. See also the description for the Expression column.\n\no Collation\n\n  How the column is sorted in the index. This can have values A\n  (ascending), D (descending), or NULL (not sorted).\n\no Cardinality\n\n  An estimate of the number of unique values in the index. To update\n  this number, run ANALYZE TABLE or (for MyISAM tables) myisamchk -a.\n\n  Cardinality is counted based on statistics stored as integers, so the\n  value is not necessarily exact even for small tables. The higher the\n  cardinality, the greater the chance that MySQL uses the index when\n  doing joins.\n\no Sub_part\n\n  The index prefix. That is, the number of indexed characters if the\n  column is only partly indexed, NULL if the entire column is indexed.\n\n  *Note*:\n\n  Prefix limits are measured in bytes. However, prefix lengths for\n  index specifications in CREATE TABLE, ALTER TABLE, and CREATE INDEX\n  statements are interpreted as number of characters for nonbinary\n  string types (CHAR, VARCHAR, TEXT) and number of bytes for binary\n  string types (BINARY, VARBINARY, BLOB). Take this into account when\n  specifying a prefix length for a nonbinary string column that uses a\n  multibyte character set.\n\n  For additional information about index prefixes, see\n  https://dev.mysql.com/doc/refman/8.0/en/column-indexes.html, and\n  [HELP CREATE INDEX].\n\no Packed\n\n  Indicates how the key is packed. NULL if it is not.\n\no Null\n\n  Contains YES if the column may contain NULL values and \'\' if not.\n\no Index_type\n\n  The index method used (BTREE, FULLTEXT, HASH, RTREE).\n\no Comment\n\n  Information about the index not described in its own column, such as\n  disabled if the index is disabled.\n\no Index_comment\n\n  Any comment provided for the index with a COMMENT attribute when the\n  index was created.\n\no Visible\n\n  Whether the index is visible to the optimizer. See\n  https://dev.mysql.com/doc/refman/8.0/en/invisible-indexes.html.\n\no Expression\n\n  MySQL 8.0.13 and higher supports functional key parts (see\n  https://dev.mysql.com/doc/refman/8.0/en/create-index.html#create-inde\n  x-functional-key-parts), which affects both the Column_name and\n  Expression columns:\n\n  o For a nonfunctional key part, Column_name indicates the column\n    indexed by the key part and Expression is NULL.\n\n  o For a functional key part, Column_name column is NULL and\n    Expression indicates the expression for the key part.\n\nInformation about table indexes is also available from the\nINFORMATION_SCHEMA STATISTICS table. See\nhttps://dev.mysql.com/doc/refman/8.0/en/information-schema-statistics-t\nable.html. The extended information about hidden indexes is available\nonly using SHOW EXTENDED INDEX; it cannot be obtained from the\nSTATISTICS table.\n\nYou can list a table\'s indexes with the mysqlshow -k db_name tbl_name\ncommand.\n\nIn MySQL 8.0.30 and later, SHOW INDEX includes the table\'s generated\ninvisible key, if it has one, by default. You can cause this\ninformation to be suppressed in the statement\'s output by setting\nshow_gipk_in_create_table_and_information_schema = OFF. For more\ninformation, see\nhttps://dev.mysql.com/doc/refman/8.0/en/create-table-gipks.html.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-index.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-index.html'),(668,'SHOW MASTER STATUS',3,'Syntax:\nSHOW MASTER STATUS\n\nThis statement provides status information about the binary log files\nof the source server. It requires the REPLICATION CLIENT privilege (or\nthe deprecated SUPER privilege).\n\nExample:\n\nmysql> SHOW MASTER STATUS\\G\n*************************** 1. row ***************************\n             File: source-bin.000002\n         Position: 1307\n     Binlog_Do_DB: test\n Binlog_Ignore_DB: manual, mysql\nExecuted_Gtid_Set: 3E11FA47-71CA-11E1-9E33-C80AA9429562:1-5\n1 row in set (0.00 sec)\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-master-status.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-master-status.html'),(669,'SHOW OPEN TABLES',3,'Syntax:\nSHOW OPEN TABLES\n    [{FROM | IN} db_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW OPEN TABLES lists the non-TEMPORARY tables that are currently open\nin the table cache. See\nhttps://dev.mysql.com/doc/refman/8.0/en/table-cache.html. The FROM\nclause, if present, restricts the tables shown to those present in the\ndb_name database. The LIKE clause, if present, indicates which table\nnames to match. The WHERE clause can be given to select rows using more\ngeneral conditions, as discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-open-tables.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-open-tables.html'),(670,'SHOW PLUGINS',3,'Syntax:\nSHOW PLUGINS\n\nSHOW PLUGINS displays information about server plugins.\n\nExample of SHOW PLUGINS output:\n\nmysql> SHOW PLUGINS\\G\n*************************** 1. row ***************************\n   Name: binlog\n Status: ACTIVE\n   Type: STORAGE ENGINE\nLibrary: NULL\nLicense: GPL\n*************************** 2. row ***************************\n   Name: CSV\n Status: ACTIVE\n   Type: STORAGE ENGINE\nLibrary: NULL\nLicense: GPL\n*************************** 3. row ***************************\n   Name: MEMORY\n Status: ACTIVE\n   Type: STORAGE ENGINE\nLibrary: NULL\nLicense: GPL\n*************************** 4. row ***************************\n   Name: MyISAM\n Status: ACTIVE\n   Type: STORAGE ENGINE\nLibrary: NULL\nLicense: GPL\n...\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-plugins.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-plugins.html'),(671,'SHOW PRIVILEGES',3,'Syntax:\nSHOW PRIVILEGES\n\nSHOW PRIVILEGES shows the list of system privileges that the MySQL\nserver supports. The privileges displayed include all static\nprivileges, and all currently registered dynamic privileges.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-privileges.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-privileges.html'),(672,'SHOW PROCEDURE CODE',3,'Syntax:\nSHOW PROCEDURE CODE proc_name\n\nThis statement is a MySQL extension that is available only for servers\nthat have been built with debugging support. It displays a\nrepresentation of the internal implementation of the named stored\nprocedure. A similar statement, SHOW FUNCTION CODE, displays\ninformation about stored functions (see [HELP SHOW FUNCTION CODE]).\n\nTo use either statement, you must be the user named as the routine\nDEFINER, have the SHOW_ROUTINE privilege, or have the SELECT privilege\nat the global level.\n\nIf the named routine is available, each statement produces a result\nset. Each row in the result set corresponds to one \"instruction\" in the\nroutine. The first column is Pos, which is an ordinal number beginning\nwith 0. The second column is Instruction, which contains an SQL\nstatement (usually changed from the original source), or a directive\nwhich has meaning only to the stored-routine handler.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-procedure-code.html\n\n','mysql> DELIMITER //\nmysql> CREATE PROCEDURE p1 ()\n       BEGIN\n         DECLARE fanta INT DEFAULT 55;\n         DROP TABLE t2;\n         LOOP\n           INSERT INTO t3 VALUES (fanta);\n           END LOOP;\n         END//\nQuery OK, 0 rows affected (0.01 sec)\n\nmysql> SHOW PROCEDURE CODE p1//\n+-----+----------------------------------------+\n| Pos | Instruction                            |\n+-----+----------------------------------------+\n|   0 | set fanta@0 55                         |\n|   1 | stmt 9 \"DROP TABLE t2\"                 |\n|   2 | stmt 5 \"INSERT INTO t3 VALUES (fanta)\" |\n|   3 | jump 2                                 |\n+-----+----------------------------------------+\n4 rows in set (0.00 sec)\n\nmysql> CREATE FUNCTION test.hello (s CHAR(20))\n       RETURNS CHAR(50) DETERMINISTIC\n       RETURN CONCAT(\'Hello, \',s,\'!\');\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SHOW FUNCTION CODE test.hello;\n+-----+---------------------------------------+\n| Pos | Instruction                           |\n+-----+---------------------------------------+\n|   0 | freturn 254 concat(\'Hello, \',s@0,\'!\') |\n+-----+---------------------------------------+\n1 row in set (0.00 sec)\n','https://dev.mysql.com/doc/refman/8.0/en/show-procedure-code.html'),(673,'SHOW PROCEDURE STATUS',3,'Syntax:\nSHOW PROCEDURE STATUS\n    [LIKE \'pattern\' | WHERE expr]\n\nThis statement is a MySQL extension. It returns characteristics of a\nstored procedure, such as the database, name, type, creator, creation\nand modification dates, and character set information. A similar\nstatement, SHOW FUNCTION STATUS, displays information about stored\nfunctions (see [HELP SHOW FUNCTION STATUS]).\n\nTo use either statement, you must be the user named as the routine\nDEFINER, have the SHOW_ROUTINE privilege, have the SELECT privilege at\nthe global level, or have the CREATE ROUTINE, ALTER ROUTINE, or EXECUTE\nprivilege granted at a scope that includes the routine.\n\nThe LIKE clause, if present, indicates which procedure or function\nnames to match. The WHERE clause can be given to select rows using more\ngeneral conditions, as discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-procedure-status.html\n\n','mysql> SHOW PROCEDURE STATUS LIKE \'sp1\'\\G\n*************************** 1. row ***************************\n                  Db: test\n                Name: sp1\n                Type: PROCEDURE\n             Definer: testuser@localhost\n            Modified: 2018-08-08 13:54:11\n             Created: 2018-08-08 13:54:11\n       Security_type: DEFINER\n             Comment:\ncharacter_set_client: utf8mb4\ncollation_connection: utf8mb4_0900_ai_ci\n  Database Collation: utf8mb4_0900_ai_ci\n\nmysql> SHOW FUNCTION STATUS LIKE \'hello\'\\G\n*************************** 1. row ***************************\n                  Db: test\n                Name: hello\n                Type: FUNCTION\n             Definer: testuser@localhost\n            Modified: 2020-03-10 11:10:03\n             Created: 2020-03-10 11:10:03\n       Security_type: DEFINER\n             Comment:\ncharacter_set_client: utf8mb4\ncollation_connection: utf8mb4_0900_ai_ci\n  Database Collation: utf8mb4_0900_ai_ci\n','https://dev.mysql.com/doc/refman/8.0/en/show-procedure-status.html'),(674,'SHOW PROCESSLIST',3,'Syntax:\nSHOW [FULL] PROCESSLIST\n\nThe MySQL process list indicates the operations currently being\nperformed by the set of threads executing within the server. The SHOW\nPROCESSLIST statement is one source of process information. For a\ncomparison of this statement with other sources, see\nhttps://dev.mysql.com/doc/refman/8.0/en/processlist-access.html#process\nlist-sources.\n\n*Note*:\n\nAs of MySQL 8.0.22, an alternative implementation for SHOW PROCESSLIST\nis available based on the Performance Schema processlist table, which,\nunlike the default SHOW PROCESSLIST implementation, does not require a\nmutex and has better performance characteristics. For details, see\nhttps://dev.mysql.com/doc/refman/8.0/en/performance-schema-processlist-\ntable.html.\n\nIf you have the PROCESS privilege, you can see all threads, even those\nbelonging to other users. Otherwise (without the PROCESS privilege),\nnonanonymous users have access to information about their own threads\nbut not threads for other users, and anonymous users have no access to\nthread information.\n\nWithout the FULL keyword, SHOW PROCESSLIST displays only the first 100\ncharacters of each statement in the Info field.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-processlist.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-processlist.html'),(675,'SHOW PROFILE',3,'Syntax:\nSHOW PROFILE [type [, type] ... ]\n    [FOR QUERY n]\n    [LIMIT row_count [OFFSET offset]]\n\ntype: {\n    ALL\n  | BLOCK IO\n  | CONTEXT SWITCHES\n  | CPU\n  | IPC\n  | MEMORY\n  | PAGE FAULTS\n  | SOURCE\n  | SWAPS\n}\n\nThe SHOW PROFILE and SHOW PROFILES statements display profiling\ninformation that indicates resource usage for statements executed\nduring the course of the current session.\n\n*Note*:\n\nThe SHOW PROFILE and SHOW PROFILES statements are deprecated; expect\nthem to be removed in a future MySQL release. Use the Performance\nSchema instead; see\nhttps://dev.mysql.com/doc/refman/8.0/en/performance-schema-query-profil\ning.html.\n\nTo control profiling, use the profiling session variable, which has a\ndefault value of 0 (OFF). Enable profiling by setting profiling to 1 or\nON:\n\nmysql> SET profiling = 1;\n\nSHOW PROFILES displays a list of the most recent statements sent to the\nserver. The size of the list is controlled by the\nprofiling_history_size session variable, which has a default value of\n15. The maximum value is 100. Setting the value to 0 has the practical\neffect of disabling profiling.\n\nAll statements are profiled except SHOW PROFILE and SHOW PROFILES, so\nneither of those statements appears in the profile list. Malformed\nstatements are profiled. For example, SHOW PROFILING is an illegal\nstatement, and a syntax error occurs if you try to execute it, but it\nshows up in the profiling list.\n\nSHOW PROFILE displays detailed information about a single statement.\nWithout the FOR QUERY n clause, the output pertains to the most\nrecently executed statement. If FOR QUERY n is included, SHOW PROFILE\ndisplays information for statement n. The values of n correspond to the\nQuery_ID values displayed by SHOW PROFILES.\n\nThe LIMIT row_count clause may be given to limit the output to\nrow_count rows. If LIMIT is given, OFFSET offset may be added to begin\nthe output offset rows into the full set of rows.\n\nBy default, SHOW PROFILE displays Status and Duration columns. The\nStatus values are like the State values displayed by SHOW PROCESSLIST,\nalthough there might be some minor differences in interpretation for\nthe two statements for some status values (see\nhttps://dev.mysql.com/doc/refman/8.0/en/thread-information.html).\n\nOptional type values may be specified to display specific additional\ntypes of information:\n\no ALL displays all information\n\no BLOCK IO displays counts for block input and output operations\n\no CONTEXT SWITCHES displays counts for voluntary and involuntary\n  context switches\n\no CPU displays user and system CPU usage times\n\no IPC displays counts for messages sent and received\n\no MEMORY is not currently implemented\n\no PAGE FAULTS displays counts for major and minor page faults\n\no SOURCE displays the names of functions from the source code, together\n  with the name and line number of the file in which the function\n  occurs\n\no SWAPS displays swap counts\n\nProfiling is enabled per session. When a session ends, its profiling\ninformation is lost.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-profile.html\n\n','mysql> SELECT @@profiling;\n+-------------+\n| @@profiling |\n+-------------+\n|           0 |\n+-------------+\n1 row in set (0.00 sec)\n\nmysql> SET profiling = 1;\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> DROP TABLE IF EXISTS t1;\nQuery OK, 0 rows affected, 1 warning (0.00 sec)\n\nmysql> CREATE TABLE T1 (id INT);\nQuery OK, 0 rows affected (0.01 sec)\n\nmysql> SHOW PROFILES;\n+----------+----------+--------------------------+\n| Query_ID | Duration | Query                    |\n+----------+----------+--------------------------+\n|        0 | 0.000088 | SET PROFILING = 1        |\n|        1 | 0.000136 | DROP TABLE IF EXISTS t1  |\n|        2 | 0.011947 | CREATE TABLE t1 (id INT) |\n+----------+----------+--------------------------+\n3 rows in set (0.00 sec)\n\nmysql> SHOW PROFILE;\n+----------------------+----------+\n| Status               | Duration |\n+----------------------+----------+\n| checking permissions | 0.000040 |\n| creating table       | 0.000056 |\n| After create         | 0.011363 |\n| query end            | 0.000375 |\n| freeing items        | 0.000089 |\n| logging slow query   | 0.000019 |\n| cleaning up          | 0.000005 |\n+----------------------+----------+\n7 rows in set (0.00 sec)\n\nmysql> SHOW PROFILE FOR QUERY 1;\n+--------------------+----------+\n| Status             | Duration |\n+--------------------+----------+\n| query end          | 0.000107 |\n| freeing items      | 0.000008 |\n| logging slow query | 0.000015 |\n| cleaning up        | 0.000006 |\n+--------------------+----------+\n4 rows in set (0.00 sec)\n\nmysql> SHOW PROFILE CPU FOR QUERY 2;\n+----------------------+----------+----------+------------+\n| Status               | Duration | CPU_user | CPU_system |\n+----------------------+----------+----------+------------+\n| checking permissions | 0.000040 | 0.000038 |   0.000002 |\n| creating table       | 0.000056 | 0.000028 |   0.000028 |\n| After create         | 0.011363 | 0.000217 |   0.001571 |\n| query end            | 0.000375 | 0.000013 |   0.000028 |\n| freeing items        | 0.000089 | 0.000010 |   0.000014 |\n| logging slow query   | 0.000019 | 0.000009 |   0.000010 |\n| cleaning up          | 0.000005 | 0.000003 |   0.000002 |\n+----------------------+----------+----------+------------+\n7 rows in set (0.00 sec)\n','https://dev.mysql.com/doc/refman/8.0/en/show-profile.html'),(676,'SHOW PROFILES',3,'Syntax:\nSHOW PROFILES\n\nThe SHOW PROFILES statement, together with SHOW PROFILE, displays\nprofiling information that indicates resource usage for statements\nexecuted during the course of the current session. For more\ninformation, see [HELP SHOW PROFILE].\n\n*Note*:\n\nThe SHOW PROFILE and SHOW PROFILES statements are deprecated; expect it\nto be removed in a future MySQL release. Use the Performance Schema\ninstead; see\nhttps://dev.mysql.com/doc/refman/8.0/en/performance-schema-query-profil\ning.html.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-profiles.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-profiles.html'),(677,'SHOW RELAYLOG EVENTS',3,'Syntax:\nSHOW RELAYLOG EVENTS\n    [IN \'log_name\']\n    [FROM pos]\n    [LIMIT [offset,] row_count]\n    [channel_option]\n\nchannel_option:\n    FOR CHANNEL channel\n\nShows the events in the relay log of a replica. If you do not specify\n\'log_name\', the first relay log is displayed. This statement has no\neffect on the source. SHOW RELAYLOG EVENTS requires the REPLICATION\nSLAVE privilege.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-relaylog-events.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-relaylog-events.html'),(678,'SHOW REPLICAS',3,'Syntax:\n{SHOW REPLICAS}\n\nDisplays a list of replicas currently registered with the source. From\nMySQL 8.0.22, use SHOW REPLICAS in place of SHOW SLAVE HOSTS, which is\ndeprecated from that release. In releases before MySQL 8.0.22, use SHOW\nSLAVE HOSTS. SHOW REPLICAS requires the REPLICATION SLAVE privilege.\n\nSHOW REPLICAS should be executed on a server that acts as a replication\nsource. The statement displays information about servers that are or\nhave been connected as replicas, with each row of the result\ncorresponding to one replica server, as shown here:\n\nmysql> SHOW REPLICAS;\n+------------+-----------+------+-----------+--------------------------------------+\n| Server_id  | Host      | Port | Source_id | Replica_UUID                         |\n+------------+-----------+------+-----------+--------------------------------------+\n|         10 | iconnect2 | 3306 |         3 | 14cb6624-7f93-11e0-b2c0-c80aa9429562 |\n|         21 | athena    | 3306 |         3 | 07af4990-f41f-11df-a566-7ac56fdaf645 |\n+------------+-----------+------+-----------+--------------------------------------+\n\no Server_id: The unique server ID of the replica server, as configured\n  in the replica server\'s option file, or on the command line with\n  --server-id=value.\n\no Host: The host name of the replica server, as specified on the\n  replica with the --report-host option. This can differ from the\n  machine name as configured in the operating system.\n\no User: The replica server user name, as specified on the replica with\n  the --report-user option. Statement output includes this column only\n  if the source server is started with the --show-replica-auth-info or\n  --show-slave-auth-info option.\n\no Password: The replica server password, as specified on the replica\n  with the --report-password option. Statement output includes this\n  column only if the source server is started with the\n  --show-replica-auth-info or --show-slave-auth-info option.\n\no Port: The port on the source to which the replica server is\n  listening, as specified on the replica with the --report-port option.\n\n  A zero in this column means that the replica port (--report-port) was\n  not set.\n\no Source_id: The unique server ID of the source server that the replica\n  server is replicating from. This is the server ID of the server on\n  which SHOW REPLICAS is executed, so this same value is listed for\n  each row in the result.\n\no Replica_UUID: The globally unique ID of this replica, as generated on\n  the replica and found in the replica\'s auto.cnf file.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-replicas.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-replicas.html'),(679,'SHOW SLAVE HOSTS',3,'Syntax:\n{SHOW SLAVE HOSTS | SHOW REPLICAS}\n\nDisplays a list of replicas currently registered with the source. From\nMySQL 8.0.22, SHOW SLAVE HOSTS is deprecated and the alias SHOW\nREPLICAS should be used instead. The statement works in the same way as\nbefore, only the terminology used for the statement and its output has\nchanged. Both versions of the statement update the same status\nvariables when used. Please see the documentation for SHOW REPLICAS for\na description of the statement.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-slave-hosts.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-slave-hosts.html'),(680,'SHOW REPLICA STATUS',3,'Syntax:\nSHOW {REPLICA | SLAVE} STATUS [FOR CHANNEL channel]\n\nThis statement provides status information on essential parameters of\nthe replica threads. From MySQL 8.0.22, use SHOW REPLICA STATUS in\nplace of SHOW SLAVE STATUS, which is deprecated from that release. In\nreleases before MySQL 8.0.22, use SHOW SLAVE STATUS. The statement\nrequires the REPLICATION CLIENT privilege (or the deprecated SUPER\nprivilege).\n\nSHOW REPLICA STATUS is nonblocking. When run concurrently with STOP\nREPLICA, SHOW REPLICA STATUS returns without waiting for STOP REPLICA\nto finish shutting down the replication SQL (applier) thread or\nreplication I/O (receiver) thread (or both). This permits use in\nmonitoring and other applications where getting an immediate response\nfrom SHOW REPLICA STATUS is more important than ensuring that it\nreturned the latest data. The SLAVE keyword was replaced with REPLICA\nin MySQL 8.0.22.\n\nIf you issue this statement using the mysql client, you can use a \\G\nstatement terminator rather than a semicolon to obtain a more readable\nvertical layout:\n\nmysql> SHOW REPLICA STATUS\\G\n*************************** 1. row ***************************\n             Replica_IO_State: Waiting for source to send event\n                  Source_Host: localhost\n                  Source_User: repl\n                  Source_Port: 13000\n                Connect_Retry: 60\n              Source_Log_File: source-bin.000002\n          Read_Source_Log_Pos: 1307\n               Relay_Log_File: replica-relay-bin.000003\n                Relay_Log_Pos: 1508\n        Relay_Source_Log_File: source-bin.000002\n           Replica_IO_Running: Yes\n          Replica_SQL_Running: Yes\n              Replicate_Do_DB:\n          Replicate_Ignore_DB:\n           Replicate_Do_Table:\n       Replicate_Ignore_Table:\n      Replicate_Wild_Do_Table:\n  Replicate_Wild_Ignore_Table:\n                   Last_Errno: 0\n                   Last_Error:\n                 Skip_Counter: 0\n          Exec_Source_Log_Pos: 1307\n              Relay_Log_Space: 1858\n              Until_Condition: None\n               Until_Log_File:\n                Until_Log_Pos: 0\n           Source_SSL_Allowed: No\n           Source_SSL_CA_File:\n           Source_SSL_CA_Path:\n              Source_SSL_Cert:\n            Source_SSL_Cipher:\n               Source_SSL_Key:\n        Seconds_Behind_Source: 0\nSource_SSL_Verify_Server_Cert: No\n                Last_IO_Errno: 0\n                Last_IO_Error:\n               Last_SQL_Errno: 0\n               Last_SQL_Error:\n  Replicate_Ignore_Server_Ids:\n             Source_Server_Id: 1\n                  Source_UUID: 3e11fa47-71ca-11e1-9e33-c80aa9429562\n             Source_Info_File:\n                    SQL_Delay: 0\n          SQL_Remaining_Delay: NULL\n    Replica_SQL_Running_State: Reading event from the relay log\n           Source_Retry_Count: 10\n                  Source_Bind:\n      Last_IO_Error_Timestamp:\n     Last_SQL_Error_Timestamp:\n               Source_SSL_Crl:\n           Source_SSL_Crlpath:\n           Retrieved_Gtid_Set: 3e11fa47-71ca-11e1-9e33-c80aa9429562:1-5\n            Executed_Gtid_Set: 3e11fa47-71ca-11e1-9e33-c80aa9429562:1-5\n                Auto_Position: 1\n         Replicate_Rewrite_DB:\n                 Channel_name:\n           Source_TLS_Version: TLSv1.2\n       Source_public_key_path: public_key.pem\n        Get_source_public_key: 0\n            Network_Namespace:\n\nThe Performance Schema provides tables that expose replication\ninformation. This is similar to the information available from the SHOW\nREPLICA STATUS statement, but represented in table form. For details,\nsee\nhttps://dev.mysql.com/doc/refman/8.0/en/performance-schema-replication-\ntables.html.\n\nFrom MySQL 8.0.27, you can set the GTID_ONLY option on the CHANGE\nREPLICATION SOURCE TO statement to stop a replication channel from\npersisting file names and file positions in the replication metadata\nrepositories. With this setting, file positions for the source binary\nlog file and the relay log file are tracked in memory. The SHOW REPLICA\nSTATUS statement still displays file positions in normal use. However,\nbecause the file positions are not being regularly updated in the\nconnection metadata repository and the applier metadata repository\nexcept in a few situations, they are likely to be out of date if the\nserver is restarted.\n\nFor a replication channel with the GTID_ONLY setting after a server\nstart, the read and applied file positions for the source binary log\nfile (Read_Source_Log_Pos and Exec_Source_Log_Pos) are set to zero, and\nthe file names (Source_Log_File and Relay_Source_Log_File) are set to\nINVALID. The relay log file name (Relay_Log_File) is set according to\nthe relay_log_recovery setting, either a new file that was created at\nserver start or the first relay log file present. The file position\n(Relay_Log_Pos) is set to position 4, and GTID auto-skip is used to\nskip any transactions in the file that were already applied.\n\nWhen the receiver thread contacts the source and gets valid position\ninformation, the read position (Read_Source_Log_Pos) and file name\n(Source_Log_File) are updated with the correct data and become valid.\nWhen the applier thread applies a transaction from the source, or skips\nan already executed transaction, the executed position\n(Exec_Source_Log_Pos) and file name (Relay_Source_Log_File) are updated\nwith the correct data and become valid. The relay log file position\n(Relay_Log_Pos) is also updated at that time.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-replica-status.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-replica-status.html'),(681,'SHOW SLAVE STATUS',3,'Syntax:\nSHOW {SLAVE | REPLICA} STATUS [FOR CHANNEL channel]\n\nThis statement provides status information on essential parameters of\nthe replica threads. From MySQL 8.0.22, SHOW SLAVE STATUS is deprecated\nand the alias SHOW REPLICA STATUS should be used instead. The statement\nworks in the same way as before, only the terminology used for the\nstatement and its output has changed. Both versions of the statement\nupdate the same status variables when used. Please see the\ndocumentation for SHOW REPLICA STATUS for a description of the\nstatement.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-slave-status.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-slave-status.html'),(682,'SHOW STATUS',3,'Syntax:\nSHOW [GLOBAL | SESSION] STATUS\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW STATUS provides server status information (see\nhttps://dev.mysql.com/doc/refman/8.0/en/server-status-variables.html).\nThis statement does not require any privilege. It requires only the\nability to connect to the server.\n\nStatus variable information is also available from these sources:\n\no Performance Schema tables. See\n  https://dev.mysql.com/doc/refman/8.0/en/performance-schema-status-var\n  iable-tables.html.\n\no The mysqladmin extended-status command. See\n  https://dev.mysql.com/doc/refman/8.0/en/mysqladmin.html.\n\nFor SHOW STATUS, a LIKE clause, if present, indicates which variable\nnames to match. A WHERE clause can be given to select rows using more\ngeneral conditions, as discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nSHOW STATUS accepts an optional GLOBAL or SESSION variable scope\nmodifier:\n\no With a GLOBAL modifier, the statement displays the global status\n  values. A global status variable may represent status for some aspect\n  of the server itself (for example, Aborted_connects), or the\n  aggregated status over all connections to MySQL (for example,\n  Bytes_received and Bytes_sent). If a variable has no global value,\n  the session value is displayed.\n\no With a SESSION modifier, the statement displays the status variable\n  values for the current connection. If a variable has no session\n  value, the global value is displayed. LOCAL is a synonym for SESSION.\n\no If no modifier is present, the default is SESSION.\n\nThe scope for each status variable is listed at\nhttps://dev.mysql.com/doc/refman/8.0/en/server-status-variables.html.\n\nEach invocation of the SHOW STATUS statement uses an internal temporary\ntable and increments the global Created_tmp_tables value.\n\nWith a LIKE clause, the statement displays only rows for those\nvariables with names that match the pattern:\n\nmysql> SHOW STATUS LIKE \'Key%\';\n+--------------------+----------+\n| Variable_name      | Value    |\n+--------------------+----------+\n| Key_blocks_used    | 14955    |\n| Key_read_requests  | 96854827 |\n| Key_reads          | 162040   |\n| Key_write_requests | 7589728  |\n| Key_writes         | 3813196  |\n+--------------------+----------+\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-status.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-status.html'),(683,'SHOW TABLE STATUS',3,'Syntax:\nSHOW TABLE STATUS\n    [{FROM | IN} db_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW TABLE STATUS works likes SHOW TABLES, but provides a lot of\ninformation about each non-TEMPORARY table. You can also get this list\nusing the mysqlshow --status db_name command. The LIKE clause, if\npresent, indicates which table names to match. The WHERE clause can be\ngiven to select rows using more general conditions, as discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-table-status.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-table-status.html'),(684,'SHOW TABLES',3,'Syntax:\nSHOW [EXTENDED] [FULL] TABLES\n    [{FROM | IN} db_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW TABLES lists the non-TEMPORARY tables in a given database. You can\nalso get this list using the mysqlshow db_name command. The LIKE\nclause, if present, indicates which table names to match. The WHERE\nclause can be given to select rows using more general conditions, as\ndiscussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nMatching performed by the LIKE clause is dependent on the setting of\nthe lower_case_table_names system variable.\n\nThe optional EXTENDED modifier causes SHOW TABLES to list hidden tables\ncreated by failed ALTER TABLE statements. These temporary tables have\nnames beginning with #sql and can be dropped using DROP TABLE.\n\nThis statement also lists any views in the database. The optional FULL\nmodifier causes SHOW TABLES to display a second output column with\nvalues of BASE TABLE for a table, VIEW for a view, or SYSTEM VIEW for\nan INFORMATION_SCHEMA table.\n\nIf you have no privileges for a base table or view, it does not show up\nin the output from SHOW TABLES or mysqlshow db_name.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-tables.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-tables.html'),(685,'SHOW TRIGGERS',3,'Syntax:\nSHOW TRIGGERS\n    [{FROM | IN} db_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW TRIGGERS lists the triggers currently defined for tables in a\ndatabase (the default database unless a FROM clause is given). This\nstatement returns results only for databases and tables for which you\nhave the TRIGGER privilege. The LIKE clause, if present, indicates\nwhich table names (not trigger names) to match and causes the statement\nto display triggers for those tables. The WHERE clause can be given to\nselect rows using more general conditions, as discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nFor the ins_sum trigger defined in\nhttps://dev.mysql.com/doc/refman/8.0/en/triggers.html, the output of\nSHOW TRIGGERS is as shown here:\n\nmysql> SHOW TRIGGERS LIKE \'acc%\'\\G\n*************************** 1. row ***************************\n             Trigger: ins_sum\n               Event: INSERT\n               Table: account\n           Statement: SET @sum = @sum + NEW.amount\n              Timing: BEFORE\n             Created: 2018-08-08 10:10:12.61\n            sql_mode: ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,\n                      NO_ZERO_IN_DATE,NO_ZERO_DATE,\n                      ERROR_FOR_DIVISION_BY_ZERO,\n                      NO_ENGINE_SUBSTITUTION\n             Definer: me@localhost\ncharacter_set_client: utf8mb4\ncollation_connection: utf8mb4_0900_ai_ci\n  Database Collation: utf8mb4_0900_ai_ci\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-triggers.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-triggers.html'),(686,'SHOW VARIABLES',3,'Syntax:\nSHOW [GLOBAL | SESSION] VARIABLES\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW VARIABLES shows the values of MySQL system variables (see\nhttps://dev.mysql.com/doc/refman/8.0/en/server-system-variables.html).\nThis statement does not require any privilege. It requires only the\nability to connect to the server.\n\nSystem variable information is also available from these sources:\n\no Performance Schema tables. See\n  https://dev.mysql.com/doc/refman/8.0/en/performance-schema-system-var\n  iable-tables.html.\n\no The mysqladmin variables command. See\n  https://dev.mysql.com/doc/refman/8.0/en/mysqladmin.html.\n\nFor SHOW VARIABLES, a LIKE clause, if present, indicates which variable\nnames to match. A WHERE clause can be given to select rows using more\ngeneral conditions, as discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nSHOW VARIABLES accepts an optional GLOBAL or SESSION variable scope\nmodifier:\n\no With a GLOBAL modifier, the statement displays global system variable\n  values. These are the values used to initialize the corresponding\n  session variables for new connections to MySQL. If a variable has no\n  global value, no value is displayed.\n\no With a SESSION modifier, the statement displays the system variable\n  values that are in effect for the current connection. If a variable\n  has no session value, the global value is displayed. LOCAL is a\n  synonym for SESSION.\n\no If no modifier is present, the default is SESSION.\n\nThe scope for each system variable is listed at\nhttps://dev.mysql.com/doc/refman/8.0/en/server-system-variables.html.\n\nSHOW VARIABLES is subject to a version-dependent display-width limit.\nFor variables with very long values that are not completely displayed,\nuse SELECT as a workaround. For example:\n\nSELECT @@GLOBAL.innodb_data_file_path;\n\nMost system variables can be set at server startup (read-only variables\nsuch as version_comment are exceptions). Many can be changed at runtime\nwith the SET statement. See\nhttps://dev.mysql.com/doc/refman/8.0/en/using-system-variables.html,\nand [HELP SET].\n\nWith a LIKE clause, the statement displays only rows for those\nvariables with names that match the pattern. To obtain the row for a\nspecific variable, use a LIKE clause as shown:\n\nSHOW VARIABLES LIKE \'max_join_size\';\nSHOW SESSION VARIABLES LIKE \'max_join_size\';\n\nTo get a list of variables whose name match a pattern, use the %\nwildcard character in a LIKE clause:\n\nSHOW VARIABLES LIKE \'%size%\';\nSHOW GLOBAL VARIABLES LIKE \'%size%\';\n\nWildcard characters can be used in any position within the pattern to\nbe matched. Strictly speaking, because _ is a wildcard that matches any\nsingle character, you should escape it as \\_ to match it literally. In\npractice, this is rarely necessary.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-variables.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-variables.html'),(687,'SHOW WARNINGS',3,'Syntax:\nSHOW WARNINGS [LIMIT [offset,] row_count]\nSHOW COUNT(*) WARNINGS\n\nSHOW WARNINGS is a diagnostic statement that displays information about\nthe conditions (errors, warnings, and notes) resulting from executing a\nstatement in the current session. Warnings are generated for DML\nstatements such as INSERT, UPDATE, and LOAD DATA as well as DDL\nstatements such as CREATE TABLE and ALTER TABLE.\n\nThe LIMIT clause has the same syntax as for the SELECT statement. See\nhttps://dev.mysql.com/doc/refman/8.0/en/select.html.\n\nSHOW WARNINGS is also used following EXPLAIN, to display the extended\ninformation generated by EXPLAIN. See\nhttps://dev.mysql.com/doc/refman/8.0/en/explain-extended.html.\n\nSHOW WARNINGS displays information about the conditions resulting from\nexecution of the most recent nondiagnostic statement in the current\nsession. If the most recent statement resulted in an error during\nparsing, SHOW WARNINGS shows the resulting conditions, regardless of\nstatement type (diagnostic or nondiagnostic).\n\nThe SHOW COUNT(*) WARNINGS diagnostic statement displays the total\nnumber of errors, warnings, and notes. You can also retrieve this\nnumber from the warning_count system variable:\n\nSHOW COUNT(*) WARNINGS;\nSELECT @@warning_count;\n\nA difference in these statements is that the first is a diagnostic\nstatement that does not clear the message list. The second, because it\nis a SELECT statement is considered nondiagnostic and does clear the\nmessage list.\n\nA related diagnostic statement, SHOW ERRORS, shows only error\nconditions (it excludes warnings and notes), and SHOW COUNT(*) ERRORS\nstatement displays the total number of errors. See [HELP SHOW ERRORS].\nGET DIAGNOSTICS can be used to examine information for individual\nconditions. See [HELP GET DIAGNOSTICS].\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-warnings.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-warnings.html'),(688,'BINLOG',3,'Syntax:\nBINLOG \'str\'\n\nBINLOG is an internal-use statement. It is generated by the mysqlbinlog\nprogram as the printable representation of certain events in binary log\nfiles. (See https://dev.mysql.com/doc/refman/8.0/en/mysqlbinlog.html.)\nThe \'str\' value is a base 64-encoded string the that server decodes to\ndetermine the data change indicated by the corresponding event.\n\nTo execute BINLOG statements when applying mysqlbinlog output, a user\naccount requires the BINLOG_ADMIN privilege (or the deprecated SUPER\nprivilege), or the REPLICATION_APPLIER privilege plus the appropriate\nprivileges to execute each log event.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/binlog.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/binlog.html'),(689,'CACHE INDEX',3,'Syntax:\nCACHE INDEX {\n      tbl_index_list [, tbl_index_list] ...\n    | tbl_name PARTITION (partition_list)\n  }\n  IN key_cache_name\n\ntbl_index_list:\n  tbl_name [{INDEX|KEY} (index_name[, index_name] ...)]\n\npartition_list: {\n    partition_name[, partition_name] ...\n  | ALL\n}\n\nThe CACHE INDEX statement assigns table indexes to a specific key\ncache. It applies only to MyISAM tables, including partitioned MyISAM\ntables. After the indexes have been assigned, they can be preloaded\ninto the cache if desired with LOAD INDEX INTO CACHE.\n\nThe following statement assigns indexes from the tables t1, t2, and t3\nto the key cache named hot_cache:\n\nmysql> CACHE INDEX t1, t2, t3 IN hot_cache;\n+---------+--------------------+----------+----------+\n| Table   | Op                 | Msg_type | Msg_text |\n+---------+--------------------+----------+----------+\n| test.t1 | assign_to_keycache | status   | OK       |\n| test.t2 | assign_to_keycache | status   | OK       |\n| test.t3 | assign_to_keycache | status   | OK       |\n+---------+--------------------+----------+----------+\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/cache-index.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/cache-index.html'),(690,'FLUSH',3,'Syntax:\nFLUSH [NO_WRITE_TO_BINLOG | LOCAL] {\n    flush_option [, flush_option] ...\n  | tables_option\n}\n\nflush_option: {\n    BINARY LOGS\n  | ENGINE LOGS\n  | ERROR LOGS\n  | GENERAL LOGS\n  | HOSTS\n  | LOGS\n  | PRIVILEGES\n  | OPTIMIZER_COSTS\n  | RELAY LOGS [FOR CHANNEL channel]\n  | SLOW LOGS\n  | STATUS\n  | USER_RESOURCES\n}\n\ntables_option: {\n    TABLES\n  | TABLES tbl_name [, tbl_name] ...\n  | TABLES WITH READ LOCK\n  | TABLES tbl_name [, tbl_name] ... WITH READ LOCK\n  | TABLES tbl_name [, tbl_name] ... FOR EXPORT\n}\n\nThe FLUSH statement has several variant forms that clear or reload\nvarious internal caches, flush tables, or acquire locks. Each FLUSH\noperation requires the privileges indicated in its description.\n\n*Note*:\n\nIt is not possible to issue FLUSH statements within stored functions or\ntriggers. However, you may use FLUSH in stored procedures, so long as\nthese are not called from stored functions or triggers. See\nhttps://dev.mysql.com/doc/refman/8.0/en/stored-program-restrictions.html\n.\n\nBy default, the server writes FLUSH statements to the binary log so\nthat they replicate to replicas. To suppress logging, specify the\noptional NO_WRITE_TO_BINLOG keyword or its alias LOCAL.\n\n*Note*:\n\nFLUSH LOGS, FLUSH BINARY LOGS, FLUSH TABLES WITH READ LOCK (with or\nwithout a table list), and FLUSH TABLES tbl_name ... FOR EXPORT are not\nwritten to the binary log in any case because they would cause problems\nif replicated to a replica.\n\nThe FLUSH statement causes an implicit commit. See\nhttps://dev.mysql.com/doc/refman/8.0/en/implicit-commit.html.\n\nThe mysqladmin utility provides a command-line interface to some flush\noperations, using commands such as flush-hosts, flush-logs,\nflush-privileges, flush-status, and flush-tables. See\nhttps://dev.mysql.com/doc/refman/8.0/en/mysqladmin.html.\n\nSending a SIGHUP or SIGUSR1 signal to the server causes several flush\noperations to occur that are similar to various forms of the FLUSH\nstatement. Signals can be sent by the root system account or the system\naccount that owns the server process. This enables the flush operations\nto be performed without having to connect to the server, which requires\na MySQL account that has privileges sufficient for those operations.\nSee https://dev.mysql.com/doc/refman/8.0/en/unix-signal-response.html.\n\nThe RESET statement is similar to FLUSH. See [HELP RESET], for\ninformation about using RESET with replication.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/flush.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/flush.html'),(691,'KILL',3,'Syntax:\nKILL [CONNECTION | QUERY] processlist_id\n\nEach connection to mysqld runs in a separate thread. You can kill a\nthread with the KILL processlist_id statement.\n\nThread processlist identifiers can be determined from the ID column of\nthe INFORMATION_SCHEMA PROCESSLIST table, the Id column of SHOW\nPROCESSLIST output, and the PROCESSLIST_ID column of the Performance\nSchema threads table. The value for the current thread is returned by\nthe CONNECTION_ID() function.\n\nKILL permits an optional CONNECTION or QUERY modifier:\n\no KILL CONNECTION is the same as KILL with no modifier: It terminates\n  the connection associated with the given processlist_id, after\n  terminating any statement the connection is executing.\n\no KILL QUERY terminates the statement the connection is currently\n  executing, but leaves the connection itself intact.\n\nThe ability to see which threads are available to be killed depends on\nthe PROCESS privilege:\n\no Without PROCESS, you can see only your own threads.\n\no With PROCESS, you can see all threads.\n\nThe ability to kill threads and statements depends on the\nCONNECTION_ADMIN privilege and the deprecated SUPER privilege:\n\no Without CONNECTION_ADMIN or SUPER, you can kill only your own threads\n  and statements.\n\no With CONNECTION_ADMIN or SUPER, you can kill all threads and\n  statements, except that to affect a thread or statement that is\n  executing with the SYSTEM_USER privilege, your own session must\n  additionally have the SYSTEM_USER privilege.\n\nYou can also use the mysqladmin processlist and mysqladmin kill\ncommands to examine and kill threads.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/kill.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/kill.html'),(692,'LOAD INDEX',3,'Syntax:\nLOAD INDEX INTO CACHE\n  tbl_index_list [, tbl_index_list] ...\n\ntbl_index_list:\n  tbl_name\n    [PARTITION (partition_list)]\n    [{INDEX|KEY} (index_name[, index_name] ...)]\n    [IGNORE LEAVES]\n\npartition_list: {\n    partition_name[, partition_name] ...\n  | ALL\n}\n\nThe LOAD INDEX INTO CACHE statement preloads a table index into the key\ncache to which it has been assigned by an explicit CACHE INDEX\nstatement, or into the default key cache otherwise.\n\nLOAD INDEX INTO CACHE applies only to MyISAM tables, including\npartitioned MyISAM tables. In addition, indexes on partitioned tables\ncan be preloaded for one, several, or all partitions.\n\nThe IGNORE LEAVES modifier causes only blocks for the nonleaf nodes of\nthe index to be preloaded.\n\nIGNORE LEAVES is also supported for partitioned MyISAM tables.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/load-index.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/load-index.html'),(693,'RESET',3,'Syntax:\nRESET reset_option [, reset_option] ...\n\nreset_option: {\n    MASTER\n  | REPLICA\n  | SLAVE\n}\n\nThe RESET statement is used to clear the state of various server\noperations. You must have the RELOAD privilege to execute RESET.\n\nFor information about the RESET PERSIST statement that removes\npersisted global system variables, see [HELP RESET PERSIST].\n\nRESET acts as a stronger version of the FLUSH statement. See [HELP\nFLUSH].\n\nThe RESET statement causes an implicit commit. See\nhttps://dev.mysql.com/doc/refman/8.0/en/implicit-commit.html.\n\nThe following list describes the permitted RESET statement reset_option\nvalues:\n\no RESET MASTER\n\n  Deletes all binary logs listed in the index file, resets the binary\n  log index file to be empty, and creates a new binary log file.\n\no RESET REPLICA\n\n  Makes the replica forget its replication position in the source\n  binary logs. Also resets the relay log by deleting any existing relay\n  log files and beginning a new one. Use RESET REPLICA in place of\n  RESET SLAVE from MySQL 8.0.22.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/reset.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/reset.html'),(694,'RESET PERSIST',3,'Syntax:\nRESET PERSIST [[IF EXISTS] system_var_name]\n\nRESET PERSIST removes persisted global system variable settings from\nthe mysqld-auto.cnf option file in the data directory. Removing a\npersisted system variable causes the variable no longer to be\ninitialized from mysqld-auto.cnf at server startup. For more\ninformation about persisting system variables and the mysqld-auto.cnf\nfile, see\nhttps://dev.mysql.com/doc/refman/8.0/en/persisted-system-variables.html\n.\n\nPrior to MySQL 8.0.32, this statement did not work with variables whose\nname contained a dot character (.), such as MyISAM multiple key cache\nvariables and variables registered by components. (Bug #33417357)\n\nThe privileges required for RESET PERSIST depend on the type of system\nvariable to be removed:\n\no For dynamic system variables, this statement requires the\n  SYSTEM_VARIABLES_ADMIN privilege (or the deprecated SUPER privilege).\n\no For read-only system variables, this statement requires the\n  SYSTEM_VARIABLES_ADMIN and PERSIST_RO_VARIABLES_ADMIN privileges.\n\nSee\nhttps://dev.mysql.com/doc/refman/8.0/en/system-variable-privileges.html\n.\n\nDepending on whether the variable name and IF EXISTS clauses are\npresent, the RESET PERSIST statement has these forms:\n\no To remove all persisted variables from mysqld-auto.cnf, use RESET\n  PERSIST without naming any system variable:\n\nRESET PERSIST;\n\n  You must have privileges for removing both dynamic and read-only\n  system variables if mysqld-auto.cnf contains both kinds of variables.\n\no To remove a specific persisted variable from mysqld-auto.cnf, name it\n  in the statement:\n\nRESET PERSIST system_var_name;\n\n  This includes plugin system variables, even if the plugin is not\n  currently installed. If the variable is not present in the file, an\n  error occurs.\n\no To remove a specific persisted variable from mysqld-auto.cnf, but\n  produce a warning rather than an error if the variable is not present\n  in the file, add an IF EXISTS clause to the previous syntax:\n\nRESET PERSIST IF EXISTS system_var_name;\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/reset-persist.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/reset-persist.html'),(695,'RESTART',3,'Syntax:\nRESTART\n\nThis statement stops and restarts the MySQL server. It requires the\nSHUTDOWN privilege.\n\nOne use for RESTART is when it is not possible or convenient to gain\ncommand-line access to the MySQL server on the server host to restart\nit. For example, SET PERSIST_ONLY can be used at runtime to make\nconfiguration changes to system variables that can be set only at\nserver startup, but the server must still be restarted for those\nchanges to take effect. The RESTART statement provides a way to do so\nfrom within client sessions, without requiring command-line access on\nthe server host.\n\n*Note*:\n\nAfter executing a RESTART statement, the client can expect the current\nconnection to be lost. If auto-reconnect is enabled, the connection is\nreestablished after the server restarts. Otherwise, the connection must\nbe reestablished manually.\n\nA successful RESTART operation requires mysqld to be running in an\nenvironment that has a monitoring process available to detect a server\nshutdown performed for restart purposes:\n\no In the presence of a monitoring process, RESTART causes mysqld to\n  terminate such that the monitoring process can determine that it\n  should start a new mysqld instance.\n\no If no monitoring process is present, RESTART fails with an error.\n\nThese platforms provide the necessary monitoring support for the\nRESTART statement:\n\no Windows, when mysqld is started as a Windows service or standalone.\n  (mysqld forks, and one process acts as a monitor to the other, which\n  acts as the server.)\n\no Unix and Unix-like systems that use systemd or mysqld_safe to manage\n  mysqld.\n\nTo configure a monitoring environment such that mysqld enables the\nRESTART statement:\n\n1. Set the MYSQLD_PARENT_PID environment variable to the value of the\n   process ID of the process that starts mysqld, before starting\n   mysqld.\n\n2. When mysqld performs a shutdown due to use of the RESTART statement,\n   it returns exit code 16.\n\n3. When the monitoring process detects an exit code of 16, it starts\n   mysqld again. Otherwise, it exits.\n\nHere is a minimal example as implemented in the bash shell:\n\n#!/bin/bash\n\nexport MYSQLD_PARENT_PID=$$\n\nexport MYSQLD_RESTART_EXIT=16\n\nwhile true ; do\n  bin/mysqld mysqld options here\n  if [ $? -ne $MYSQLD_RESTART_EXIT ]; then\n    break\n  fi\ndone\n\nOn Windows, the forking used to implement RESTART makes determining the\nserver process to attach to for debugging more difficult. To alleviate\nthis, starting the server with --gdb suppresses forking, in addition to\nits other actions done to set up a debugging environment. In non-debug\nsettings, --no-monitor may be used for the sole purpose of suppressing\nforking the monitor process. For a server started with either --gdb or\n--no-monitor, executing RESTART causes the server to simply exit\nwithout restarting.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/restart.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/restart.html'),(696,'SHUTDOWN',3,'Syntax:\nSHUTDOWN\n\nThis statement stops the MySQL server. It requires the SHUTDOWN\nprivilege.\n\nSHUTDOWN provides an SQL-level interface to the same functionality\navailable using the mysqladmin shutdown command or the mysql_shutdown()\n(https://dev.mysql.com/doc/c-api/8.0/en/mysql-shutdown.html) C API\nfunction. A successful SHUTDOWN sequence consists of checking the\nprivileges, validating the arguments, and sending an OK packet to the\nclient. Then the server is shut down.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/shutdown.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/shutdown.html'),(697,'EXPLAIN',51,'Syntax:\n{EXPLAIN | DESCRIBE | DESC}\n    tbl_name [col_name | wild]\n\n{EXPLAIN | DESCRIBE | DESC}\n    [explain_type]\n    {explainable_stmt | FOR CONNECTION connection_id}\n\n{EXPLAIN | DESCRIBE | DESC} ANALYZE [FORMAT = TREE] select_statement\n\nexplain_type: {\n    FORMAT = format_name\n}\n\nformat_name: {\n    TRADITIONAL\n  | JSON\n  | TREE\n}\n\nexplainable_stmt: {\n    SELECT statement\n  | TABLE statement\n  | DELETE statement\n  | INSERT statement\n  | REPLACE statement\n  | UPDATE statement\n}\n\nThe DESCRIBE and EXPLAIN statements are synonyms. In practice, the\nDESCRIBE keyword is more often used to obtain information about table\nstructure, whereas EXPLAIN is used to obtain a query execution plan\n(that is, an explanation of how MySQL would execute a query).\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/explain.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/explain.html'),(698,'DESCRIBE',51,'Syntax:\n{EXPLAIN | DESCRIBE | DESC}\n    tbl_name [col_name | wild]\n\n{EXPLAIN | DESCRIBE | DESC}\n    [explain_type]\n    {explainable_stmt | FOR CONNECTION connection_id}\n\n{EXPLAIN | DESCRIBE | DESC} ANALYZE [FORMAT = TREE] select_statement\n\nexplain_type: {\n    FORMAT = format_name\n}\n\nformat_name: {\n    TRADITIONAL\n  | JSON\n  | TREE\n}\n\nexplainable_stmt: {\n    SELECT statement\n  | TABLE statement\n  | DELETE statement\n  | INSERT statement\n  | REPLACE statement\n  | UPDATE statement\n}\n\nThe DESCRIBE and EXPLAIN statements are synonyms. In practice, the\nDESCRIBE keyword is more often used to obtain information about table\nstructure, whereas EXPLAIN is used to obtain a query execution plan\n(that is, an explanation of how MySQL would execute a query).\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/explain.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/explain.html'),(699,'DESC',51,'Syntax:\n{EXPLAIN | DESCRIBE | DESC}\n    tbl_name [col_name | wild]\n\n{EXPLAIN | DESCRIBE | DESC}\n    [explain_type]\n    {explainable_stmt | FOR CONNECTION connection_id}\n\n{EXPLAIN | DESCRIBE | DESC} ANALYZE [FORMAT = TREE] select_statement\n\nexplain_type: {\n    FORMAT = format_name\n}\n\nformat_name: {\n    TRADITIONAL\n  | JSON\n  | TREE\n}\n\nexplainable_stmt: {\n    SELECT statement\n  | TABLE statement\n  | DELETE statement\n  | INSERT statement\n  | REPLACE statement\n  | UPDATE statement\n}\n\nThe DESCRIBE and EXPLAIN statements are synonyms. In practice, the\nDESCRIBE keyword is more often used to obtain information about table\nstructure, whereas EXPLAIN is used to obtain a query execution plan\n(that is, an explanation of how MySQL would execute a query).\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/explain.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/explain.html'),(700,'HELP STATEMENT',51,'Syntax:\nHELP \'search_string\'\n\nThe HELP statement returns online information from the MySQL Reference\nManual. Its proper operation requires that the help tables in the mysql\ndatabase be initialized with help topic information (see\nhttps://dev.mysql.com/doc/refman/8.0/en/server-side-help-support.html).\n\nThe HELP statement searches the help tables for the given search string\nand displays the result of the search. The search string is not\ncase-sensitive.\n\nThe search string can contain the wildcard characters % and _. These\nhave the same meaning as for pattern-matching operations performed with\nthe LIKE operator. For example, HELP \'rep%\' returns a list of topics\nthat begin with rep.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/help.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/help.html'),(701,'USE',51,'Syntax:\nUSE db_name\n\nThe USE statement tells MySQL to use the named database as the default\n(current) database for subsequent statements. This statement requires\nsome privilege for the database or some object within it.\n\nThe named database remains the default until the end of the session or\nanother USE statement is issued:\n\nUSE db1;\nSELECT COUNT(*) FROM mytable;   # selects from db1.mytable\nUSE db2;\nSELECT COUNT(*) FROM mytable;   # selects from db2.mytable\n\nThe database name must be specified on a single line. Newlines in\ndatabase names are not supported.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/use.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/use.html'),(702,'MERGE',52,'The MERGE storage engine, also known as the MRG_MyISAM engine, is a\ncollection of identical MyISAM tables that can be used as one.\n\"Identical\" means that all tables have identical column data types and\nindex information. You cannot merge MyISAM tables in which the columns\nare listed in a different order, do not have exactly the same data\ntypes in corresponding columns, or have the indexes in different order.\nHowever, any or all of the MyISAM tables can be compressed with\nmyisampack. See\nhttps://dev.mysql.com/doc/refman/8.0/en/myisampack.html. Differences\nbetween tables such as these do not matter:\n\no Names of corresponding columns and indexes can differ.\n\no Comments for tables, columns, and indexes can differ.\n\no Table options such as AVG_ROW_LENGTH, MAX_ROWS, or PACK_KEYS can\n  differ.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/merge-storage-engine.html\n\n','mysql> CREATE TABLE t1 (\n    ->    a INT NOT NULL AUTO_INCREMENT PRIMARY KEY,\n    ->    message CHAR(20)) ENGINE=MyISAM;\nmysql> CREATE TABLE t2 (\n    ->    a INT NOT NULL AUTO_INCREMENT PRIMARY KEY,\n    ->    message CHAR(20)) ENGINE=MyISAM;\nmysql> INSERT INTO t1 (message) VALUES (\'Testing\'),(\'table\'),(\'t1\');\nmysql> INSERT INTO t2 (message) VALUES (\'Testing\'),(\'table\'),(\'t2\');\nmysql> CREATE TABLE total (\n    ->    a INT NOT NULL AUTO_INCREMENT,\n    ->    message CHAR(20), INDEX(a))\n    ->    ENGINE=MERGE UNION=(t1,t2) INSERT_METHOD=LAST;\n','https://dev.mysql.com/doc/refman/8.0/en/merge-storage-engine.html');
/*!40000 ALTER TABLE `help_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `innodb_index_stats`
--

/*!40000 ALTER TABLE `innodb_index_stats` DISABLE KEYS */;
INSERT  IGNORE INTO `innodb_index_stats` VALUES ('api_db','refresh_token','PRIMARY','2023-05-05 05:39:13','n_diff_pfx01',2,1,'token_hash'),('api_db','refresh_token','PRIMARY','2023-05-05 05:39:13','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('api_db','refresh_token','PRIMARY','2023-05-05 05:39:13','size',1,NULL,'Number of pages in the index'),('api_db','refresh_token','expires_at','2023-05-05 05:39:13','n_diff_pfx01',2,1,'expires_at'),('api_db','refresh_token','expires_at','2023-05-05 05:39:13','n_diff_pfx02',2,1,'expires_at,token_hash'),('api_db','refresh_token','expires_at','2023-05-05 05:39:13','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('api_db','refresh_token','expires_at','2023-05-05 05:39:13','size',1,NULL,'Number of pages in the index'),('api_db','task','PRIMARY','2023-05-05 00:30:29','n_diff_pfx01',6,1,'id'),('api_db','task','PRIMARY','2023-05-05 00:30:29','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('api_db','task','PRIMARY','2023-05-05 00:30:29','size',1,NULL,'Number of pages in the index'),('api_db','task','name','2023-05-05 00:30:29','n_diff_pfx01',6,1,'name'),('api_db','task','name','2023-05-05 00:30:29','n_diff_pfx02',6,1,'name,id'),('api_db','task','name','2023-05-05 00:30:29','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('api_db','task','name','2023-05-05 00:30:29','size',1,NULL,'Number of pages in the index'),('api_db','task','user_id','2023-05-05 00:30:29','n_diff_pfx01',3,1,'user_id'),('api_db','task','user_id','2023-05-05 00:30:29','n_diff_pfx02',6,1,'user_id,id'),('api_db','task','user_id','2023-05-05 00:30:29','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('api_db','task','user_id','2023-05-05 00:30:29','size',1,NULL,'Number of pages in the index'),('api_db','user','PRIMARY','2023-05-04 23:00:47','n_diff_pfx01',3,1,'id'),('api_db','user','PRIMARY','2023-05-04 23:00:47','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('api_db','user','PRIMARY','2023-05-04 23:00:47','size',1,NULL,'Number of pages in the index'),('api_db','user','api_key','2023-05-04 23:00:47','n_diff_pfx01',3,1,'api_key'),('api_db','user','api_key','2023-05-04 23:00:47','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('api_db','user','api_key','2023-05-04 23:00:47','size',1,NULL,'Number of pages in the index'),('api_db','user','username','2023-05-04 23:00:47','n_diff_pfx01',3,1,'username'),('api_db','user','username','2023-05-04 23:00:47','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('api_db','user','username','2023-05-04 23:00:47','size',1,NULL,'Number of pages in the index'),('apiplatform','messenger_messages','IDX_75EA56E016BA31DB','2022-12-21 15:25:22','n_diff_pfx01',0,1,'delivered_at'),('apiplatform','messenger_messages','IDX_75EA56E016BA31DB','2022-12-21 15:25:22','n_diff_pfx02',0,1,'delivered_at,id'),('apiplatform','messenger_messages','IDX_75EA56E016BA31DB','2022-12-21 15:25:22','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('apiplatform','messenger_messages','IDX_75EA56E016BA31DB','2022-12-21 15:25:22','size',1,NULL,'Number of pages in the index'),('apiplatform','messenger_messages','IDX_75EA56E0E3BD61CE','2022-12-21 15:25:22','n_diff_pfx01',0,1,'available_at'),('apiplatform','messenger_messages','IDX_75EA56E0E3BD61CE','2022-12-21 15:25:22','n_diff_pfx02',0,1,'available_at,id'),('apiplatform','messenger_messages','IDX_75EA56E0E3BD61CE','2022-12-21 15:25:22','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('apiplatform','messenger_messages','IDX_75EA56E0E3BD61CE','2022-12-21 15:25:22','size',1,NULL,'Number of pages in the index'),('apiplatform','messenger_messages','IDX_75EA56E0FB7336F0','2022-12-21 15:25:22','n_diff_pfx01',0,1,'queue_name'),('apiplatform','messenger_messages','IDX_75EA56E0FB7336F0','2022-12-21 15:25:22','n_diff_pfx02',0,1,'queue_name,id'),('apiplatform','messenger_messages','IDX_75EA56E0FB7336F0','2022-12-21 15:25:22','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('apiplatform','messenger_messages','IDX_75EA56E0FB7336F0','2022-12-21 15:25:22','size',1,NULL,'Number of pages in the index'),('apiplatform','messenger_messages','PRIMARY','2022-12-21 15:25:22','n_diff_pfx01',0,1,'id'),('apiplatform','messenger_messages','PRIMARY','2022-12-21 15:25:22','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('apiplatform','messenger_messages','PRIMARY','2022-12-21 15:25:22','size',1,NULL,'Number of pages in the index'),('apiplatform','offer','PRIMARY','2022-12-21 15:25:22','n_diff_pfx01',0,1,'id'),('apiplatform','offer','PRIMARY','2022-12-21 15:25:22','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('apiplatform','offer','PRIMARY','2022-12-21 15:25:22','size',1,NULL,'Number of pages in the index'),('apiplatform','product','PRIMARY','2022-12-21 15:25:22','n_diff_pfx01',0,1,'id'),('apiplatform','product','PRIMARY','2022-12-21 15:25:22','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('apiplatform','product','PRIMARY','2022-12-21 15:25:22','size',1,NULL,'Number of pages in the index'),('doctrineorm','address','PRIMARY','2022-12-29 16:48:59','n_diff_pfx01',0,1,'id'),('doctrineorm','address','PRIMARY','2022-12-29 16:48:59','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('doctrineorm','address','PRIMARY','2022-12-29 16:48:59','size',1,NULL,'Number of pages in the index'),('doctrineorm','cart','PRIMARY','2022-12-29 19:14:26','n_diff_pfx01',0,1,'id'),('doctrineorm','cart','PRIMARY','2022-12-29 19:14:26','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('doctrineorm','cart','PRIMARY','2022-12-29 19:14:26','size',1,NULL,'Number of pages in the index'),('doctrineorm','cart','UNIQ_BA388B79395C3F3','2022-12-29 19:14:26','n_diff_pfx01',0,1,'customer_id'),('doctrineorm','cart','UNIQ_BA388B79395C3F3','2022-12-29 19:14:26','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('doctrineorm','cart','UNIQ_BA388B79395C3F3','2022-12-29 19:14:26','size',1,NULL,'Number of pages in the index'),('doctrineorm','category','IDX_64C19C1727ACA70','2022-12-29 20:15:41','n_diff_pfx01',5,1,'parent_id'),('doctrineorm','category','IDX_64C19C1727ACA70','2022-12-29 20:15:41','n_diff_pfx02',8,1,'parent_id,id'),('doctrineorm','category','IDX_64C19C1727ACA70','2022-12-29 20:15:41','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('doctrineorm','category','IDX_64C19C1727ACA70','2022-12-29 20:15:41','size',1,NULL,'Number of pages in the index'),('doctrineorm','category','PRIMARY','2022-12-29 20:15:41','n_diff_pfx01',8,1,'id'),('doctrineorm','category','PRIMARY','2022-12-29 20:15:41','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('doctrineorm','category','PRIMARY','2022-12-29 20:15:41','size',1,NULL,'Number of pages in the index'),('doctrineorm','customer','PRIMARY','2022-12-29 19:14:26','n_diff_pfx01',0,1,'id'),('doctrineorm','customer','PRIMARY','2022-12-29 19:14:26','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('doctrineorm','customer','PRIMARY','2022-12-29 19:14:26','size',1,NULL,'Number of pages in the index'),('doctrineorm','doctrine_migration_versions','PRIMARY','2022-12-29 20:25:12','n_diff_pfx01',5,1,'version'),('doctrineorm','doctrine_migration_versions','PRIMARY','2022-12-29 20:25:12','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('doctrineorm','doctrine_migration_versions','PRIMARY','2022-12-29 20:25:12','size',1,NULL,'Number of pages in the index'),('doctrineorm','interest_group','PRIMARY','2022-12-29 21:35:34','n_diff_pfx01',0,1,'id'),('doctrineorm','interest_group','PRIMARY','2022-12-29 21:35:34','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('doctrineorm','interest_group','PRIMARY','2022-12-29 21:35:34','size',1,NULL,'Number of pages in the index'),('doctrineorm','manufacturer','PRIMARY','2022-12-29 09:47:09','n_diff_pfx01',0,1,'id'),('doctrineorm','manufacturer','PRIMARY','2022-12-29 09:47:09','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('doctrineorm','manufacturer','PRIMARY','2022-12-29 09:47:09','size',1,NULL,'Number of pages in the index'),('doctrineorm','messenger_messages','IDX_75EA56E016BA31DB','2022-12-29 09:47:09','n_diff_pfx01',0,1,'delivered_at'),('doctrineorm','messenger_messages','IDX_75EA56E016BA31DB','2022-12-29 09:47:09','n_diff_pfx02',0,1,'delivered_at,id'),('doctrineorm','messenger_messages','IDX_75EA56E016BA31DB','2022-12-29 09:47:09','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('doctrineorm','messenger_messages','IDX_75EA56E016BA31DB','2022-12-29 09:47:09','size',1,NULL,'Number of pages in the index'),('doctrineorm','messenger_messages','IDX_75EA56E0E3BD61CE','2022-12-29 09:47:09','n_diff_pfx01',0,1,'available_at'),('doctrineorm','messenger_messages','IDX_75EA56E0E3BD61CE','2022-12-29 09:47:09','n_diff_pfx02',0,1,'available_at,id'),('doctrineorm','messenger_messages','IDX_75EA56E0E3BD61CE','2022-12-29 09:47:09','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('doctrineorm','messenger_messages','IDX_75EA56E0E3BD61CE','2022-12-29 09:47:09','size',1,NULL,'Number of pages in the index'),('doctrineorm','messenger_messages','IDX_75EA56E0FB7336F0','2022-12-29 09:47:09','n_diff_pfx01',0,1,'queue_name'),('doctrineorm','messenger_messages','IDX_75EA56E0FB7336F0','2022-12-29 09:47:09','n_diff_pfx02',0,1,'queue_name,id'),('doctrineorm','messenger_messages','IDX_75EA56E0FB7336F0','2022-12-29 09:47:09','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('doctrineorm','messenger_messages','IDX_75EA56E0FB7336F0','2022-12-29 09:47:09','size',1,NULL,'Number of pages in the index'),('doctrineorm','messenger_messages','PRIMARY','2022-12-29 09:47:09','n_diff_pfx01',0,1,'id'),('doctrineorm','messenger_messages','PRIMARY','2022-12-29 09:47:09','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('doctrineorm','messenger_messages','PRIMARY','2022-12-29 09:47:09','size',1,NULL,'Number of pages in the index'),('doctrineorm','product','IDX_D34A04ADA23B42D','2022-12-29 09:47:09','n_diff_pfx01',0,1,'manufacturer_id'),('doctrineorm','product','IDX_D34A04ADA23B42D','2022-12-29 09:47:09','n_diff_pfx02',0,1,'manufacturer_id,id'),('doctrineorm','product','IDX_D34A04ADA23B42D','2022-12-29 09:47:09','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('doctrineorm','product','IDX_D34A04ADA23B42D','2022-12-29 09:47:09','size',1,NULL,'Number of pages in the index'),('doctrineorm','product','PRIMARY','2022-12-29 09:47:09','n_diff_pfx01',0,1,'id'),('doctrineorm','product','PRIMARY','2022-12-29 09:47:09','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('doctrineorm','product','PRIMARY','2022-12-29 09:47:09','size',1,NULL,'Number of pages in the index'),('doctrineorm','student','PRIMARY','2022-12-29 20:41:26','n_diff_pfx01',2,1,'id'),('doctrineorm','student','PRIMARY','2022-12-29 20:41:26','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('doctrineorm','student','PRIMARY','2022-12-29 20:41:26','size',1,NULL,'Number of pages in the index'),('doctrineorm','student','UNIQ_B723AF33DB403044','2022-12-29 20:41:26','n_diff_pfx01',1,1,'mentor_id'),('doctrineorm','student','UNIQ_B723AF33DB403044','2022-12-29 20:41:26','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('doctrineorm','student','UNIQ_B723AF33DB403044','2022-12-29 20:41:26','size',1,NULL,'Number of pages in the index'),('doctrineorm','user','IDX_8D93D649F5B7AF75','2022-12-29 16:48:59','n_diff_pfx01',0,1,'address_id'),('doctrineorm','user','IDX_8D93D649F5B7AF75','2022-12-29 16:48:59','n_diff_pfx02',0,1,'address_id,id'),('doctrineorm','user','IDX_8D93D649F5B7AF75','2022-12-29 16:48:59','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('doctrineorm','user','IDX_8D93D649F5B7AF75','2022-12-29 16:48:59','size',1,NULL,'Number of pages in the index'),('doctrineorm','user','PRIMARY','2022-12-29 16:48:59','n_diff_pfx01',0,1,'id'),('doctrineorm','user','PRIMARY','2022-12-29 16:48:59','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('doctrineorm','user','PRIMARY','2022-12-29 16:48:59','size',1,NULL,'Number of pages in the index'),('doctrineorm','users_interest_groups','IDX_31963CA382874C87','2022-12-29 21:35:34','n_diff_pfx01',0,1,'interest_group_id'),('doctrineorm','users_interest_groups','IDX_31963CA382874C87','2022-12-29 21:35:34','n_diff_pfx02',0,1,'interest_group_id,user_id'),('doctrineorm','users_interest_groups','IDX_31963CA382874C87','2022-12-29 21:35:34','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('doctrineorm','users_interest_groups','IDX_31963CA382874C87','2022-12-29 21:35:34','size',1,NULL,'Number of pages in the index'),('doctrineorm','users_interest_groups','IDX_31963CA3A76ED395','2022-12-29 21:35:34','n_diff_pfx01',0,1,'user_id'),('doctrineorm','users_interest_groups','IDX_31963CA3A76ED395','2022-12-29 21:35:34','n_diff_pfx02',0,1,'user_id,interest_group_id'),('doctrineorm','users_interest_groups','IDX_31963CA3A76ED395','2022-12-29 21:35:34','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('doctrineorm','users_interest_groups','IDX_31963CA3A76ED395','2022-12-29 21:35:34','size',1,NULL,'Number of pages in the index'),('doctrineorm','users_interest_groups','PRIMARY','2022-12-29 21:35:34','n_diff_pfx01',0,1,'user_id'),('doctrineorm','users_interest_groups','PRIMARY','2022-12-29 21:35:34','n_diff_pfx02',0,1,'user_id,interest_group_id'),('doctrineorm','users_interest_groups','PRIMARY','2022-12-29 21:35:34','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('doctrineorm','users_interest_groups','PRIMARY','2022-12-29 21:35:34','size',1,NULL,'Number of pages in the index'),('ecommerce_mini_project','users','PRIMARY','2023-01-02 15:02:09','n_diff_pfx01',0,1,'id'),('ecommerce_mini_project','users','PRIMARY','2023-01-02 15:02:09','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('ecommerce_mini_project','users','PRIMARY','2023-01-02 15:02:09','size',1,NULL,'Number of pages in the index'),('eshoprmq','messenger_messages','IDX_75EA56E016BA31DB','2022-12-21 22:43:50','n_diff_pfx01',1,1,'delivered_at'),('eshoprmq','messenger_messages','IDX_75EA56E016BA31DB','2022-12-21 22:43:50','n_diff_pfx02',6,1,'delivered_at,id'),('eshoprmq','messenger_messages','IDX_75EA56E016BA31DB','2022-12-21 22:43:50','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('eshoprmq','messenger_messages','IDX_75EA56E016BA31DB','2022-12-21 22:43:50','size',1,NULL,'Number of pages in the index'),('eshoprmq','messenger_messages','IDX_75EA56E0E3BD61CE','2022-12-21 22:43:50','n_diff_pfx01',6,1,'available_at'),('eshoprmq','messenger_messages','IDX_75EA56E0E3BD61CE','2022-12-21 22:43:50','n_diff_pfx02',6,1,'available_at,id'),('eshoprmq','messenger_messages','IDX_75EA56E0E3BD61CE','2022-12-21 22:43:50','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('eshoprmq','messenger_messages','IDX_75EA56E0E3BD61CE','2022-12-21 22:43:50','size',1,NULL,'Number of pages in the index'),('eshoprmq','messenger_messages','IDX_75EA56E0FB7336F0','2022-12-21 22:43:50','n_diff_pfx01',1,1,'queue_name'),('eshoprmq','messenger_messages','IDX_75EA56E0FB7336F0','2022-12-21 22:43:50','n_diff_pfx02',6,1,'queue_name,id'),('eshoprmq','messenger_messages','IDX_75EA56E0FB7336F0','2022-12-21 22:43:50','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('eshoprmq','messenger_messages','IDX_75EA56E0FB7336F0','2022-12-21 22:43:50','size',1,NULL,'Number of pages in the index'),('eshoprmq','messenger_messages','PRIMARY','2022-12-21 22:43:50','n_diff_pfx01',6,1,'id'),('eshoprmq','messenger_messages','PRIMARY','2022-12-21 22:43:50','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('eshoprmq','messenger_messages','PRIMARY','2022-12-21 22:43:50','size',1,NULL,'Number of pages in the index'),('laracasts_app','posts','PRIMARY','2023-05-18 06:08:58','n_diff_pfx01',2,1,'id'),('laracasts_app','posts','PRIMARY','2023-05-18 06:08:58','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('laracasts_app','posts','PRIMARY','2023-05-18 06:08:58','size',1,NULL,'Number of pages in the index'),('laracasts_app','users','PRIMARY','2023-05-18 15:28:20','n_diff_pfx01',2,1,'id'),('laracasts_app','users','PRIMARY','2023-05-18 15:28:20','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('laracasts_app','users','PRIMARY','2023-05-18 15:28:20','size',1,NULL,'Number of pages in the index'),('lexus','address','PRIMARY','2023-02-27 19:18:14','n_diff_pfx01',8,1,'id'),('lexus','address','PRIMARY','2023-02-27 19:18:14','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('lexus','address','PRIMARY','2023-02-27 19:18:14','size',1,NULL,'Number of pages in the index'),('lexus','demo','PRIMARY','2023-02-28 05:48:40','n_diff_pfx01',0,1,'id'),('lexus','demo','PRIMARY','2023-02-28 05:48:40','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('lexus','demo','PRIMARY','2023-02-28 05:48:40','size',1,NULL,'Number of pages in the index'),('lexus','product','PRIMARY','2023-02-27 19:18:24','n_diff_pfx01',8,1,'id'),('lexus','product','PRIMARY','2023-02-27 19:18:24','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('lexus','product','PRIMARY','2023-02-27 19:18:24','size',1,NULL,'Number of pages in the index'),('lexus','user','PRIMARY','2023-02-27 20:29:39','n_diff_pfx01',10,1,'id'),('lexus','user','PRIMARY','2023-02-27 20:29:39','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('lexus','user','PRIMARY','2023-02-27 20:29:39','size',1,NULL,'Number of pages in the index'),('mysql','component','PRIMARY','2023-05-09 03:14:18','n_diff_pfx01',1,1,'component_id'),('mysql','component','PRIMARY','2023-05-09 03:14:18','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('mysql','component','PRIMARY','2023-05-09 03:14:18','size',1,NULL,'Number of pages in the index'),('products_api','api_token','IDX_7BA2F5EBA76ED395','2022-12-22 20:06:42','n_diff_pfx01',0,1,'user_id'),('products_api','api_token','IDX_7BA2F5EBA76ED395','2022-12-22 20:06:42','n_diff_pfx02',0,1,'user_id,id'),('products_api','api_token','IDX_7BA2F5EBA76ED395','2022-12-22 20:06:42','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('products_api','api_token','IDX_7BA2F5EBA76ED395','2022-12-22 20:06:42','size',1,NULL,'Number of pages in the index'),('products_api','api_token','PRIMARY','2022-12-22 20:06:42','n_diff_pfx01',0,1,'id'),('products_api','api_token','PRIMARY','2022-12-22 20:06:42','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('products_api','api_token','PRIMARY','2022-12-22 20:06:42','size',1,NULL,'Number of pages in the index'),('products_api','doctrine_migration_versions','PRIMARY','2022-12-22 22:17:25','n_diff_pfx01',6,1,'version'),('products_api','doctrine_migration_versions','PRIMARY','2022-12-22 22:17:25','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('products_api','doctrine_migration_versions','PRIMARY','2022-12-22 22:17:25','size',1,NULL,'Number of pages in the index'),('products_api','manufacturer','PRIMARY','2022-12-22 15:37:07','n_diff_pfx01',3,1,'id'),('products_api','manufacturer','PRIMARY','2022-12-22 15:37:07','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('products_api','manufacturer','PRIMARY','2022-12-22 15:37:07','size',1,NULL,'Number of pages in the index'),('products_api','product','IDX_D34A04AD7E3C61F9','2022-12-22 22:17:25','n_diff_pfx01',1,1,'owner_id'),('products_api','product','IDX_D34A04AD7E3C61F9','2022-12-22 22:17:25','n_diff_pfx02',3,1,'owner_id,id'),('products_api','product','IDX_D34A04AD7E3C61F9','2022-12-22 22:17:25','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('products_api','product','IDX_D34A04AD7E3C61F9','2022-12-22 22:17:25','size',1,NULL,'Number of pages in the index'),('products_api','product','IDX_D34A04ADA23B42D','2022-12-22 22:17:25','n_diff_pfx01',2,1,'manufacturer_id'),('products_api','product','IDX_D34A04ADA23B42D','2022-12-22 22:17:25','n_diff_pfx02',3,1,'manufacturer_id,id'),('products_api','product','IDX_D34A04ADA23B42D','2022-12-22 22:17:25','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('products_api','product','IDX_D34A04ADA23B42D','2022-12-22 22:17:25','size',1,NULL,'Number of pages in the index'),('products_api','product','PRIMARY','2022-12-22 22:17:25','n_diff_pfx01',3,1,'id'),('products_api','product','PRIMARY','2022-12-22 22:17:25','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('products_api','product','PRIMARY','2022-12-22 22:17:25','size',1,NULL,'Number of pages in the index'),('products_api','user','PRIMARY','2022-12-22 19:53:11','n_diff_pfx01',2,1,'id'),('products_api','user','PRIMARY','2022-12-22 19:53:11','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('products_api','user','PRIMARY','2022-12-22 19:53:11','size',1,NULL,'Number of pages in the index'),('products_api','user','UNIQ_8D93D649E7927C74','2022-12-22 19:53:11','n_diff_pfx01',2,1,'email'),('products_api','user','UNIQ_8D93D649E7927C74','2022-12-22 19:53:11','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('products_api','user','UNIQ_8D93D649E7927C74','2022-12-22 19:53:11','size',1,NULL,'Number of pages in the index'),('products_api_test','api_token','IDX_7BA2F5EBA76ED395','2022-12-22 21:44:23','n_diff_pfx01',0,1,'user_id'),('products_api_test','api_token','IDX_7BA2F5EBA76ED395','2022-12-22 21:44:23','n_diff_pfx02',0,1,'user_id,id'),('products_api_test','api_token','IDX_7BA2F5EBA76ED395','2022-12-22 21:44:23','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('products_api_test','api_token','IDX_7BA2F5EBA76ED395','2022-12-22 21:44:23','size',1,NULL,'Number of pages in the index'),('products_api_test','api_token','PRIMARY','2022-12-22 21:44:23','n_diff_pfx01',0,1,'id'),('products_api_test','api_token','PRIMARY','2022-12-22 21:44:23','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('products_api_test','api_token','PRIMARY','2022-12-22 21:44:23','size',1,NULL,'Number of pages in the index'),('products_api_test','doctrine_migration_versions','PRIMARY','2022-12-22 22:17:52','n_diff_pfx01',6,1,'version'),('products_api_test','doctrine_migration_versions','PRIMARY','2022-12-22 22:17:52','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('products_api_test','doctrine_migration_versions','PRIMARY','2022-12-22 22:17:52','size',1,NULL,'Number of pages in the index'),('products_api_test','manufacturer','PRIMARY','2022-12-22 21:44:03','n_diff_pfx01',10,1,'id'),('products_api_test','manufacturer','PRIMARY','2022-12-22 21:44:03','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('products_api_test','manufacturer','PRIMARY','2022-12-22 21:44:03','size',1,NULL,'Number of pages in the index'),('products_api_test','product','IDX_D34A04AD7E3C61F9','2022-12-22 22:18:02','n_diff_pfx01',1,1,'owner_id'),('products_api_test','product','IDX_D34A04AD7E3C61F9','2022-12-22 22:18:02','n_diff_pfx02',100,1,'owner_id,id'),('products_api_test','product','IDX_D34A04AD7E3C61F9','2022-12-22 22:18:02','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('products_api_test','product','IDX_D34A04AD7E3C61F9','2022-12-22 22:18:02','size',1,NULL,'Number of pages in the index'),('products_api_test','product','IDX_D34A04ADA23B42D','2022-12-22 22:18:02','n_diff_pfx01',10,1,'manufacturer_id'),('products_api_test','product','IDX_D34A04ADA23B42D','2022-12-22 22:18:02','n_diff_pfx02',100,1,'manufacturer_id,id'),('products_api_test','product','IDX_D34A04ADA23B42D','2022-12-22 22:18:02','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('products_api_test','product','IDX_D34A04ADA23B42D','2022-12-22 22:18:02','size',1,NULL,'Number of pages in the index'),('products_api_test','product','PRIMARY','2022-12-22 22:18:02','n_diff_pfx01',100,1,'id'),('products_api_test','product','PRIMARY','2022-12-22 22:18:02','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('products_api_test','product','PRIMARY','2022-12-22 22:18:02','size',1,NULL,'Number of pages in the index'),('products_api_test','user','PRIMARY','2022-12-22 21:44:13','n_diff_pfx01',0,1,'id'),('products_api_test','user','PRIMARY','2022-12-22 21:44:13','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('products_api_test','user','PRIMARY','2022-12-22 21:44:13','size',1,NULL,'Number of pages in the index'),('products_api_test','user','UNIQ_8D93D649E7927C74','2022-12-22 21:44:13','n_diff_pfx01',0,1,'email'),('products_api_test','user','UNIQ_8D93D649E7927C74','2022-12-22 21:44:13','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('products_api_test','user','UNIQ_8D93D649E7927C74','2022-12-22 21:44:13','size',1,NULL,'Number of pages in the index'),('shop','products','PRIMARY','2022-12-30 23:58:47','n_diff_pfx01',2,1,'id'),('shop','products','PRIMARY','2022-12-30 23:58:47','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('shop','products','PRIMARY','2022-12-30 23:58:47','size',1,NULL,'Number of pages in the index'),('shop','users','PRIMARY','2022-12-30 23:58:47','n_diff_pfx01',2,1,'id'),('shop','users','PRIMARY','2022-12-30 23:58:47','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('shop','users','PRIMARY','2022-12-30 23:58:47','size',1,NULL,'Number of pages in the index'),('specialist_eshop_goods','catalog','PRIMARY','2023-04-21 02:19:29','n_diff_pfx01',4,1,'id'),('specialist_eshop_goods','catalog','PRIMARY','2023-04-21 02:19:29','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('specialist_eshop_goods','catalog','PRIMARY','2023-04-21 02:19:29','size',1,NULL,'Number of pages in the index'),('specialist_eshop_goods','orders','PRIMARY','2023-04-21 01:02:30','n_diff_pfx01',0,1,'id'),('specialist_eshop_goods','orders','PRIMARY','2023-04-21 01:02:30','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('specialist_eshop_goods','orders','PRIMARY','2023-04-21 01:02:30','size',1,NULL,'Number of pages in the index'),('specialist_guestbook','msgs','PRIMARY','2023-04-20 23:58:43','n_diff_pfx01',2,1,'id'),('specialist_guestbook','msgs','PRIMARY','2023-04-20 23:58:43','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('specialist_guestbook','msgs','PRIMARY','2023-04-20 23:58:43','size',1,NULL,'Number of pages in the index'),('specialist_oop_eshop','catalog','PRIMARY','2023-04-13 21:30:58','n_diff_pfx01',6,1,'id'),('specialist_oop_eshop','catalog','PRIMARY','2023-04-13 21:30:58','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('specialist_oop_eshop','catalog','PRIMARY','2023-04-13 21:30:58','size',1,NULL,'Number of pages in the index'),('specialist_oop_eshop','orders','PRIMARY','2023-04-09 19:01:05','n_diff_pfx01',0,1,'id'),('specialist_oop_eshop','orders','PRIMARY','2023-04-09 19:01:05','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('specialist_oop_eshop','orders','PRIMARY','2023-04-09 19:01:05','size',1,NULL,'Number of pages in the index'),('specialist_web','courses','PRIMARY','2023-04-20 22:07:01','n_diff_pfx01',7,1,'id'),('specialist_web','courses','PRIMARY','2023-04-20 22:07:01','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('specialist_web','courses','PRIMARY','2023-04-20 22:07:01','size',1,NULL,'Number of pages in the index'),('specialist_web','lessons','PRIMARY','2023-04-20 22:06:51','n_diff_pfx01',28,1,'id'),('specialist_web','lessons','PRIMARY','2023-04-20 22:06:51','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('specialist_web','lessons','PRIMARY','2023-04-20 22:06:51','size',1,NULL,'Number of pages in the index'),('specialist_web','teachers','PRIMARY','2023-04-20 22:07:11','n_diff_pfx01',5,1,'id'),('specialist_web','teachers','PRIMARY','2023-04-20 22:07:11','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('specialist_web','teachers','PRIMARY','2023-04-20 22:07:11','size',1,NULL,'Number of pages in the index'),('symfony','address','PRIMARY','2023-01-29 12:42:41','n_diff_pfx01',0,1,'id'),('symfony','address','PRIMARY','2023-01-29 12:42:41','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('symfony','address','PRIMARY','2023-01-29 12:42:41','size',1,NULL,'Number of pages in the index'),('symfony','author','PRIMARY','2023-01-29 12:42:41','n_diff_pfx01',0,1,'id'),('symfony','author','PRIMARY','2023-01-29 12:42:41','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('symfony','author','PRIMARY','2023-01-29 12:42:41','size',1,NULL,'Number of pages in the index'),('symfony','doctrine_migration_versions','PRIMARY','2023-01-29 12:42:41','n_diff_pfx01',2,1,'version'),('symfony','doctrine_migration_versions','PRIMARY','2023-01-29 12:42:41','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('symfony','doctrine_migration_versions','PRIMARY','2023-01-29 12:42:41','size',1,NULL,'Number of pages in the index'),('symfony','file','IDX_8C9F3610F675F31B','2023-01-29 12:42:41','n_diff_pfx01',0,1,'author_id'),('symfony','file','IDX_8C9F3610F675F31B','2023-01-29 12:42:41','n_diff_pfx02',0,1,'author_id,id'),('symfony','file','IDX_8C9F3610F675F31B','2023-01-29 12:42:41','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('symfony','file','IDX_8C9F3610F675F31B','2023-01-29 12:42:41','size',1,NULL,'Number of pages in the index'),('symfony','file','PRIMARY','2023-01-29 12:42:41','n_diff_pfx01',0,1,'id'),('symfony','file','PRIMARY','2023-01-29 12:42:41','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('symfony','file','PRIMARY','2023-01-29 12:42:41','size',1,NULL,'Number of pages in the index'),('symfony','pdf_file','PRIMARY','2023-01-29 12:42:41','n_diff_pfx01',0,1,'id'),('symfony','pdf_file','PRIMARY','2023-01-29 12:42:41','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('symfony','pdf_file','PRIMARY','2023-01-29 12:42:41','size',1,NULL,'Number of pages in the index'),('symfony','security_user','PRIMARY','2023-01-30 08:06:34','n_diff_pfx01',4,1,'id'),('symfony','security_user','PRIMARY','2023-01-30 08:06:34','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('symfony','security_user','PRIMARY','2023-01-30 08:06:34','size',1,NULL,'Number of pages in the index'),('symfony','security_user','UNIQ_52825A88E7927C74','2023-01-30 08:06:34','n_diff_pfx01',4,1,'email'),('symfony','security_user','UNIQ_52825A88E7927C74','2023-01-30 08:06:34','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('symfony','security_user','UNIQ_52825A88E7927C74','2023-01-30 08:06:34','size',1,NULL,'Number of pages in the index'),('symfony','user','PRIMARY','2023-01-29 12:42:41','n_diff_pfx01',0,1,'id'),('symfony','user','PRIMARY','2023-01-29 12:42:41','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('symfony','user','PRIMARY','2023-01-29 12:42:41','size',1,NULL,'Number of pages in the index'),('symfony','user','UNIQ_8D93D649F5B7AF75','2023-01-29 12:42:41','n_diff_pfx01',0,1,'address_id'),('symfony','user','UNIQ_8D93D649F5B7AF75','2023-01-29 12:42:41','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('symfony','user','UNIQ_8D93D649F5B7AF75','2023-01-29 12:42:41','size',1,NULL,'Number of pages in the index'),('symfony','user_user','IDX_F7129A80233D34C1','2023-01-29 12:42:41','n_diff_pfx01',0,1,'user_target'),('symfony','user_user','IDX_F7129A80233D34C1','2023-01-29 12:42:41','n_diff_pfx02',0,1,'user_target,user_source'),('symfony','user_user','IDX_F7129A80233D34C1','2023-01-29 12:42:41','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('symfony','user_user','IDX_F7129A80233D34C1','2023-01-29 12:42:41','size',1,NULL,'Number of pages in the index'),('symfony','user_user','IDX_F7129A803AD8644E','2023-01-29 12:42:41','n_diff_pfx01',0,1,'user_source'),('symfony','user_user','IDX_F7129A803AD8644E','2023-01-29 12:42:41','n_diff_pfx02',0,1,'user_source,user_target'),('symfony','user_user','IDX_F7129A803AD8644E','2023-01-29 12:42:41','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('symfony','user_user','IDX_F7129A803AD8644E','2023-01-29 12:42:41','size',1,NULL,'Number of pages in the index'),('symfony','user_user','PRIMARY','2023-01-29 12:42:41','n_diff_pfx01',0,1,'user_source'),('symfony','user_user','PRIMARY','2023-01-29 12:42:41','n_diff_pfx02',0,1,'user_source,user_target'),('symfony','user_user','PRIMARY','2023-01-29 12:42:41','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('symfony','user_user','PRIMARY','2023-01-29 12:42:41','size',1,NULL,'Number of pages in the index'),('symfony','video','IDX_7CC7DA2CA76ED395','2023-01-30 08:06:34','n_diff_pfx01',1,1,'user_id'),('symfony','video','IDX_7CC7DA2CA76ED395','2023-01-30 08:06:34','n_diff_pfx02',5,1,'user_id,id'),('symfony','video','IDX_7CC7DA2CA76ED395','2023-01-30 08:06:34','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('symfony','video','IDX_7CC7DA2CA76ED395','2023-01-30 08:06:34','size',1,NULL,'Number of pages in the index'),('symfony','video','IDX_7CC7DA2CCA85D888','2023-01-30 08:06:34','n_diff_pfx01',1,1,'security_user_id'),('symfony','video','IDX_7CC7DA2CCA85D888','2023-01-30 08:06:34','n_diff_pfx02',5,1,'security_user_id,id'),('symfony','video','IDX_7CC7DA2CCA85D888','2023-01-30 08:06:34','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('symfony','video','IDX_7CC7DA2CCA85D888','2023-01-30 08:06:34','size',1,NULL,'Number of pages in the index'),('symfony','video','PRIMARY','2023-01-30 08:06:34','n_diff_pfx01',5,1,'id'),('symfony','video','PRIMARY','2023-01-30 08:06:34','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('symfony','video','PRIMARY','2023-01-30 08:06:34','size',1,NULL,'Number of pages in the index'),('symfony','video_file','PRIMARY','2023-01-29 12:42:41','n_diff_pfx01',0,1,'id'),('symfony','video_file','PRIMARY','2023-01-29 12:42:41','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('symfony','video_file','PRIMARY','2023-01-29 12:42:41','size',1,NULL,'Number of pages in the index'),('sys','sys_config','PRIMARY','2022-12-11 20:50:04','n_diff_pfx01',2,1,'variable'),('sys','sys_config','PRIMARY','2022-12-11 20:50:04','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sys','sys_config','PRIMARY','2022-12-11 20:50:04','size',1,NULL,'Number of pages in the index'),('videos','categories','IDX_3AF34668727ACA70','2022-12-18 23:20:36','n_diff_pfx01',7,1,'parent_id'),('videos','categories','IDX_3AF34668727ACA70','2022-12-18 23:20:36','n_diff_pfx02',20,1,'parent_id,id'),('videos','categories','IDX_3AF34668727ACA70','2022-12-18 23:20:36','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('videos','categories','IDX_3AF34668727ACA70','2022-12-18 23:20:36','size',1,NULL,'Number of pages in the index'),('videos','categories','PRIMARY','2022-12-18 23:20:36','n_diff_pfx01',20,1,'id'),('videos','categories','PRIMARY','2022-12-18 23:20:36','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('videos','categories','PRIMARY','2022-12-18 23:20:36','size',1,NULL,'Number of pages in the index'),('videos','categories','UNIQ_3AF346685E237E06','2022-12-18 23:20:36','n_diff_pfx01',20,1,'name'),('videos','categories','UNIQ_3AF346685E237E06','2022-12-18 23:20:36','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('videos','categories','UNIQ_3AF346685E237E06','2022-12-18 23:20:36','size',1,NULL,'Number of pages in the index'),('videos','comments','IDX_5F9E962A29C1004E','2022-12-18 23:40:17','n_diff_pfx01',3,1,'video_id'),('videos','comments','IDX_5F9E962A29C1004E','2022-12-18 23:40:17','n_diff_pfx02',7,1,'video_id,id'),('videos','comments','IDX_5F9E962A29C1004E','2022-12-18 23:40:17','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('videos','comments','IDX_5F9E962A29C1004E','2022-12-18 23:40:17','size',1,NULL,'Number of pages in the index'),('videos','comments','IDX_5F9E962AA76ED395','2022-12-18 23:40:17','n_diff_pfx01',3,1,'user_id'),('videos','comments','IDX_5F9E962AA76ED395','2022-12-18 23:40:17','n_diff_pfx02',7,1,'user_id,id'),('videos','comments','IDX_5F9E962AA76ED395','2022-12-18 23:40:17','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('videos','comments','IDX_5F9E962AA76ED395','2022-12-18 23:40:17','size',1,NULL,'Number of pages in the index'),('videos','comments','PRIMARY','2022-12-18 23:40:17','n_diff_pfx01',7,1,'id'),('videos','comments','PRIMARY','2022-12-18 23:40:17','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('videos','comments','PRIMARY','2022-12-18 23:40:17','size',1,NULL,'Number of pages in the index'),('videos','dislikes','IDX_2DF3BE1129C1004E','2022-12-18 23:20:56','n_diff_pfx01',1,1,'video_id'),('videos','dislikes','IDX_2DF3BE1129C1004E','2022-12-18 23:20:56','n_diff_pfx02',3,1,'video_id,user_id'),('videos','dislikes','IDX_2DF3BE1129C1004E','2022-12-18 23:20:56','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('videos','dislikes','IDX_2DF3BE1129C1004E','2022-12-18 23:20:56','size',1,NULL,'Number of pages in the index'),('videos','dislikes','IDX_2DF3BE11A76ED395','2022-12-18 23:20:56','n_diff_pfx01',3,1,'user_id'),('videos','dislikes','IDX_2DF3BE11A76ED395','2022-12-18 23:20:56','n_diff_pfx02',3,1,'user_id,video_id'),('videos','dislikes','IDX_2DF3BE11A76ED395','2022-12-18 23:20:56','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('videos','dislikes','IDX_2DF3BE11A76ED395','2022-12-18 23:20:56','size',1,NULL,'Number of pages in the index'),('videos','dislikes','PRIMARY','2022-12-18 23:20:56','n_diff_pfx01',1,1,'video_id'),('videos','dislikes','PRIMARY','2022-12-18 23:20:56','n_diff_pfx02',3,1,'video_id,user_id'),('videos','dislikes','PRIMARY','2022-12-18 23:20:56','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('videos','dislikes','PRIMARY','2022-12-18 23:20:56','size',1,NULL,'Number of pages in the index'),('videos','doctrine_migration_versions','PRIMARY','2022-12-18 23:20:15','n_diff_pfx01',0,1,'version'),('videos','doctrine_migration_versions','PRIMARY','2022-12-18 23:20:15','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('videos','doctrine_migration_versions','PRIMARY','2022-12-18 23:20:15','size',1,NULL,'Number of pages in the index'),('videos','likes','IDX_49CA4E7D29C1004E','2022-12-18 23:20:46','n_diff_pfx01',4,1,'video_id'),('videos','likes','IDX_49CA4E7D29C1004E','2022-12-18 23:20:46','n_diff_pfx02',10,1,'video_id,user_id'),('videos','likes','IDX_49CA4E7D29C1004E','2022-12-18 23:20:46','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('videos','likes','IDX_49CA4E7D29C1004E','2022-12-18 23:20:46','size',1,NULL,'Number of pages in the index'),('videos','likes','IDX_49CA4E7DA76ED395','2022-12-18 23:20:46','n_diff_pfx01',3,1,'user_id'),('videos','likes','IDX_49CA4E7DA76ED395','2022-12-18 23:20:46','n_diff_pfx02',10,1,'user_id,video_id'),('videos','likes','IDX_49CA4E7DA76ED395','2022-12-18 23:20:46','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('videos','likes','IDX_49CA4E7DA76ED395','2022-12-18 23:20:46','size',1,NULL,'Number of pages in the index'),('videos','likes','PRIMARY','2022-12-18 23:20:46','n_diff_pfx01',4,1,'video_id'),('videos','likes','PRIMARY','2022-12-18 23:20:46','n_diff_pfx02',10,1,'video_id,user_id'),('videos','likes','PRIMARY','2022-12-18 23:20:46','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('videos','likes','PRIMARY','2022-12-18 23:20:46','size',1,NULL,'Number of pages in the index'),('videos','subscriptions','PRIMARY','2022-12-18 23:20:16','n_diff_pfx01',3,1,'id'),('videos','subscriptions','PRIMARY','2022-12-18 23:20:16','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('videos','subscriptions','PRIMARY','2022-12-18 23:20:16','size',1,NULL,'Number of pages in the index'),('videos','users','PRIMARY','2022-12-18 23:21:16','n_diff_pfx01',4,1,'id'),('videos','users','PRIMARY','2022-12-18 23:21:16','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('videos','users','PRIMARY','2022-12-18 23:21:16','size',1,NULL,'Number of pages in the index'),('videos','users','UNIQ_1483A5E99A1887DC','2022-12-18 23:21:16','n_diff_pfx01',4,1,'subscription_id'),('videos','users','UNIQ_1483A5E99A1887DC','2022-12-18 23:21:16','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('videos','users','UNIQ_1483A5E99A1887DC','2022-12-18 23:21:16','size',1,NULL,'Number of pages in the index'),('videos','users','UNIQ_1483A5E9E7927C74','2022-12-18 23:21:16','n_diff_pfx01',4,1,'email'),('videos','users','UNIQ_1483A5E9E7927C74','2022-12-18 23:21:16','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('videos','users','UNIQ_1483A5E9E7927C74','2022-12-18 23:21:16','size',1,NULL,'Number of pages in the index'),('videos','videos','IDX_29AA643212469DE2','2022-12-19 18:43:52','n_diff_pfx01',6,1,'category_id'),('videos','videos','IDX_29AA643212469DE2','2022-12-19 18:43:52','n_diff_pfx02',22,1,'category_id,id'),('videos','videos','IDX_29AA643212469DE2','2022-12-19 18:43:52','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('videos','videos','IDX_29AA643212469DE2','2022-12-19 18:43:52','size',1,NULL,'Number of pages in the index'),('videos','videos','PRIMARY','2022-12-19 18:43:52','n_diff_pfx01',22,1,'id'),('videos','videos','PRIMARY','2022-12-19 18:43:52','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('videos','videos','PRIMARY','2022-12-19 18:43:52','size',1,NULL,'Number of pages in the index'),('videos','videos','title_idx','2022-12-19 18:43:52','n_diff_pfx01',22,1,'title'),('videos','videos','title_idx','2022-12-19 18:43:52','n_diff_pfx02',22,1,'title,id'),('videos','videos','title_idx','2022-12-19 18:43:52','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('videos','videos','title_idx','2022-12-19 18:43:52','size',1,NULL,'Number of pages in the index');
/*!40000 ALTER TABLE `innodb_index_stats` ENABLE KEYS */;

--
-- Dumping data for table `innodb_table_stats`
--

/*!40000 ALTER TABLE `innodb_table_stats` DISABLE KEYS */;
INSERT  IGNORE INTO `innodb_table_stats` VALUES ('api_db','refresh_token','2023-05-05 05:39:13',2,1,1),('api_db','task','2023-05-05 00:30:29',6,1,2),('api_db','user','2023-05-04 23:00:47',3,1,2),('apiplatform','messenger_messages','2022-12-21 15:25:22',0,1,3),('apiplatform','offer','2022-12-21 15:25:22',0,1,0),('apiplatform','product','2022-12-21 15:25:22',0,1,0),('doctrineorm','address','2022-12-29 16:48:59',0,1,0),('doctrineorm','cart','2022-12-29 19:14:26',0,1,1),('doctrineorm','category','2022-12-29 20:15:41',8,1,1),('doctrineorm','customer','2022-12-29 19:14:26',0,1,0),('doctrineorm','doctrine_migration_versions','2022-12-29 20:25:12',5,1,0),('doctrineorm','interest_group','2022-12-29 21:35:34',0,1,0),('doctrineorm','manufacturer','2022-12-29 09:47:09',0,1,0),('doctrineorm','messenger_messages','2022-12-29 09:47:09',0,1,3),('doctrineorm','product','2022-12-29 09:47:09',0,1,1),('doctrineorm','student','2022-12-29 20:41:26',2,1,1),('doctrineorm','user','2022-12-29 16:48:59',0,1,1),('doctrineorm','users_interest_groups','2022-12-29 21:35:34',0,1,2),('ecommerce_mini_project','users','2023-01-02 15:02:09',0,1,0),('eshoprmq','messenger_messages','2022-12-21 22:43:50',6,1,3),('laracasts_app','posts','2023-05-18 06:08:58',2,1,0),('laracasts_app','users','2023-05-18 15:28:20',2,1,0),('lexus','address','2023-02-27 19:18:14',8,1,0),('lexus','demo','2023-02-28 05:48:40',0,1,0),('lexus','product','2023-02-27 19:18:24',8,1,0),('lexus','user','2023-02-27 20:29:39',10,1,0),('mysql','component','2023-05-09 03:14:18',1,1,0),('products_api','api_token','2022-12-22 20:06:42',0,1,1),('products_api','doctrine_migration_versions','2022-12-22 22:17:25',6,1,0),('products_api','manufacturer','2022-12-22 15:37:07',3,1,0),('products_api','product','2022-12-22 22:17:25',3,1,2),('products_api','user','2022-12-22 19:53:11',2,1,1),('products_api_test','api_token','2022-12-22 21:44:23',0,1,1),('products_api_test','doctrine_migration_versions','2022-12-22 22:17:52',6,1,0),('products_api_test','manufacturer','2022-12-22 21:44:03',10,1,0),('products_api_test','product','2022-12-22 22:18:02',100,1,2),('products_api_test','user','2022-12-22 21:44:13',0,1,1),('shop','products','2022-12-30 23:58:47',2,1,0),('shop','users','2022-12-30 23:58:47',2,1,0),('specialist_eshop_goods','catalog','2023-04-21 02:19:29',4,1,0),('specialist_eshop_goods','orders','2023-04-21 01:02:30',0,1,0),('specialist_guestbook','msgs','2023-04-20 23:58:43',2,1,0),('specialist_oop_eshop','catalog','2023-04-13 21:30:58',6,1,0),('specialist_oop_eshop','orders','2023-04-09 19:01:05',0,1,0),('specialist_web','courses','2023-04-20 22:07:01',7,1,0),('specialist_web','lessons','2023-04-20 22:06:51',28,1,0),('specialist_web','teachers','2023-04-20 22:07:11',5,1,0),('symfony','address','2023-01-29 12:42:41',0,1,0),('symfony','author','2023-01-29 12:42:41',0,1,0),('symfony','doctrine_migration_versions','2023-01-29 12:42:41',2,1,0),('symfony','file','2023-01-29 12:42:41',0,1,1),('symfony','pdf_file','2023-01-29 12:42:41',0,1,0),('symfony','security_user','2023-01-30 08:06:34',4,1,1),('symfony','user','2023-01-29 12:42:41',0,1,1),('symfony','user_user','2023-01-29 12:42:41',0,1,2),('symfony','video','2023-01-30 08:06:34',5,1,2),('symfony','video_file','2023-01-29 12:42:41',0,1,0),('sys','sys_config','2022-12-11 20:50:04',2,1,0),('videos','categories','2022-12-18 23:20:36',20,1,2),('videos','comments','2022-12-18 23:40:17',7,1,2),('videos','dislikes','2022-12-18 23:20:56',3,1,2),('videos','doctrine_migration_versions','2022-12-18 23:20:15',0,1,0),('videos','likes','2022-12-18 23:20:46',10,1,2),('videos','subscriptions','2022-12-18 23:20:16',3,1,0),('videos','users','2022-12-18 23:21:16',4,1,2),('videos','videos','2022-12-19 18:43:52',22,1,2);
/*!40000 ALTER TABLE `innodb_table_stats` ENABLE KEYS */;

--
-- Table structure for table `password_history`
--

DROP TABLE IF EXISTS `password_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_history` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Password_timestamp` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Password` text COLLATE utf8mb3_bin,
  PRIMARY KEY (`Host`,`User`,`Password_timestamp` DESC)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Password history for user accounts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_history`
--

LOCK TABLES `password_history` WRITE;
/*!40000 ALTER TABLE `password_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin`
--

DROP TABLE IF EXISTS `plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plugin` (
  `name` varchar(64) NOT NULL DEFAULT '',
  `dl` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='MySQL plugins';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin`
--

LOCK TABLES `plugin` WRITE;
/*!40000 ALTER TABLE `plugin` DISABLE KEYS */;
INSERT INTO `plugin` VALUES ('auth_socket','auth_socket.so');
/*!40000 ALTER TABLE `plugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procs_priv`
--

DROP TABLE IF EXISTS `procs_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `procs_priv` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Routine_name` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `Routine_type` enum('FUNCTION','PROCEDURE') COLLATE utf8mb3_bin NOT NULL,
  `Grantor` varchar(288) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Proc_priv` set('Execute','Alter Routine','Grant') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Host`,`User`,`Db`,`Routine_name`,`Routine_type`),
  KEY `Grantor` (`Grantor`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Procedure privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procs_priv`
--

LOCK TABLES `procs_priv` WRITE;
/*!40000 ALTER TABLE `procs_priv` DISABLE KEYS */;
/*!40000 ALTER TABLE `procs_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proxies_priv`
--

DROP TABLE IF EXISTS `proxies_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proxies_priv` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Proxied_host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Proxied_user` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `With_grant` tinyint(1) NOT NULL DEFAULT '0',
  `Grantor` varchar(288) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Host`,`User`,`Proxied_host`,`Proxied_user`),
  KEY `Grantor` (`Grantor`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='User proxy privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proxies_priv`
--

LOCK TABLES `proxies_priv` WRITE;
/*!40000 ALTER TABLE `proxies_priv` DISABLE KEYS */;
INSERT INTO `proxies_priv` VALUES ('localhost','root','','',1,'boot@','2022-12-11 20:50:03');
/*!40000 ALTER TABLE `proxies_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replication_asynchronous_connection_failover`
--

DROP TABLE IF EXISTS `replication_asynchronous_connection_failover`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `replication_asynchronous_connection_failover` (
  `Channel_name` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'The replication channel name that connects source and replica.',
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL COMMENT 'The source hostname that the replica will attempt to switch over the replication connection to in case of a failure.',
  `Port` int unsigned NOT NULL COMMENT 'The source port that the replica will attempt to switch over the replication connection to in case of a failure.',
  `Network_namespace` char(64) NOT NULL COMMENT 'The source network namespace that the replica will attempt to switch over the replication connection to in case of a failure. If its value is empty, connections use the default (global) namespace.',
  `Weight` tinyint unsigned NOT NULL COMMENT 'The order in which the replica shall try to switch the connection over to when there are failures. Weight can be set to a number between 1 and 100, where 100 is the highest weight and 1 the lowest.',
  `Managed_name` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT 'The name of the group which this server belongs to.',
  PRIMARY KEY (`Channel_name`,`Host`,`Port`,`Network_namespace`,`Managed_name`),
  KEY `Channel_name` (`Channel_name`,`Managed_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='The source configuration details';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replication_asynchronous_connection_failover`
--

LOCK TABLES `replication_asynchronous_connection_failover` WRITE;
/*!40000 ALTER TABLE `replication_asynchronous_connection_failover` DISABLE KEYS */;
/*!40000 ALTER TABLE `replication_asynchronous_connection_failover` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replication_asynchronous_connection_failover_managed`
--

DROP TABLE IF EXISTS `replication_asynchronous_connection_failover_managed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `replication_asynchronous_connection_failover_managed` (
  `Channel_name` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'The replication channel name that connects source and replica.',
  `Managed_name` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT 'The name of the source which needs to be managed.',
  `Managed_type` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT 'Determines the managed type.',
  `Configuration` json DEFAULT NULL COMMENT 'The data to help manage group. For Managed_type = GroupReplication, Configuration value should contain {"Primary_weight": 80, "Secondary_weight": 60}, so that it assigns weight=80 to PRIMARY of the group, and weight=60 for rest of the members in mysql.replication_asynchronous_connection_failover table.',
  PRIMARY KEY (`Channel_name`,`Managed_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='The managed source configuration details';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replication_asynchronous_connection_failover_managed`
--

LOCK TABLES `replication_asynchronous_connection_failover_managed` WRITE;
/*!40000 ALTER TABLE `replication_asynchronous_connection_failover_managed` DISABLE KEYS */;
/*!40000 ALTER TABLE `replication_asynchronous_connection_failover_managed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replication_group_configuration_version`
--

DROP TABLE IF EXISTS `replication_group_configuration_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `replication_group_configuration_version` (
  `name` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL COMMENT 'The configuration name.',
  `version` bigint unsigned NOT NULL COMMENT 'The version of the configuration name.',
  PRIMARY KEY (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='The group configuration version.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replication_group_configuration_version`
--

LOCK TABLES `replication_group_configuration_version` WRITE;
/*!40000 ALTER TABLE `replication_group_configuration_version` DISABLE KEYS */;
INSERT INTO `replication_group_configuration_version` VALUES ('replication_group_member_actions',1);
/*!40000 ALTER TABLE `replication_group_configuration_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replication_group_member_actions`
--

DROP TABLE IF EXISTS `replication_group_member_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `replication_group_member_actions` (
  `name` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL COMMENT 'The action name.',
  `event` char(64) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL COMMENT 'The event that will trigger the action.',
  `enabled` tinyint(1) NOT NULL COMMENT 'Whether the action is enabled.',
  `type` char(64) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL COMMENT 'The action type.',
  `priority` tinyint unsigned NOT NULL COMMENT 'The order on which the action will be run, value between 1 and 100, lower values first.',
  `error_handling` char(64) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL COMMENT 'On errors during the action will be handled: IGNORE, CRITICAL.',
  PRIMARY KEY (`name`,`event`),
  KEY `event` (`event`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='The member actions configuration.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replication_group_member_actions`
--

LOCK TABLES `replication_group_member_actions` WRITE;
/*!40000 ALTER TABLE `replication_group_member_actions` DISABLE KEYS */;
INSERT INTO `replication_group_member_actions` VALUES ('mysql_disable_super_read_only_if_primary','AFTER_PRIMARY_ELECTION',1,'INTERNAL',1,'IGNORE'),('mysql_start_failover_channels_if_primary','AFTER_PRIMARY_ELECTION',1,'INTERNAL',10,'CRITICAL');
/*!40000 ALTER TABLE `replication_group_member_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_edges`
--

DROP TABLE IF EXISTS `role_edges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_edges` (
  `FROM_HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `FROM_USER` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `TO_HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `TO_USER` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `WITH_ADMIN_OPTION` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`FROM_HOST`,`FROM_USER`,`TO_HOST`,`TO_USER`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Role hierarchy and role grants';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_edges`
--

LOCK TABLES `role_edges` WRITE;
/*!40000 ALTER TABLE `role_edges` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_edges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_cost`
--

DROP TABLE IF EXISTS `server_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `server_cost` (
  `cost_name` varchar(64) NOT NULL,
  `cost_value` float DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comment` varchar(1024) DEFAULT NULL,
  `default_value` float GENERATED ALWAYS AS ((case `cost_name` when _utf8mb3'disk_temptable_create_cost' then 20.0 when _utf8mb3'disk_temptable_row_cost' then 0.5 when _utf8mb3'key_compare_cost' then 0.05 when _utf8mb3'memory_temptable_create_cost' then 1.0 when _utf8mb3'memory_temptable_row_cost' then 0.1 when _utf8mb3'row_evaluate_cost' then 0.1 else NULL end)) VIRTUAL,
  PRIMARY KEY (`cost_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_cost`
--

LOCK TABLES `server_cost` WRITE;
/*!40000 ALTER TABLE `server_cost` DISABLE KEYS */;
INSERT INTO `server_cost` (`cost_name`, `cost_value`, `last_update`, `comment`) VALUES ('disk_temptable_create_cost',NULL,'2022-12-11 20:50:03',NULL),('disk_temptable_row_cost',NULL,'2022-12-11 20:50:03',NULL),('key_compare_cost',NULL,'2022-12-11 20:50:03',NULL),('memory_temptable_create_cost',NULL,'2022-12-11 20:50:03',NULL),('memory_temptable_row_cost',NULL,'2022-12-11 20:50:03',NULL),('row_evaluate_cost',NULL,'2022-12-11 20:50:03',NULL);
/*!40000 ALTER TABLE `server_cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servers`
--

DROP TABLE IF EXISTS `servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servers` (
  `Server_name` char(64) NOT NULL DEFAULT '',
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) NOT NULL DEFAULT '',
  `Username` char(64) NOT NULL DEFAULT '',
  `Password` char(64) NOT NULL DEFAULT '',
  `Port` int NOT NULL DEFAULT '0',
  `Socket` char(64) NOT NULL DEFAULT '',
  `Wrapper` char(64) NOT NULL DEFAULT '',
  `Owner` char(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`Server_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='MySQL Foreign Servers table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servers`
--

LOCK TABLES `servers` WRITE;
/*!40000 ALTER TABLE `servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slave_master_info`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `slave_master_info` (
  `Number_of_lines` int unsigned NOT NULL COMMENT 'Number of lines in the file.',
  `Master_log_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT 'The name of the master binary log currently being read from the master.',
  `Master_log_pos` bigint unsigned NOT NULL COMMENT 'The master log position of the last read event.',
  `Host` varchar(255) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL COMMENT 'The host name of the source.',
  `User_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The user name used to connect to the master.',
  `User_password` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The password used to connect to the master.',
  `Port` int unsigned NOT NULL COMMENT 'The network port used to connect to the master.',
  `Connect_retry` int unsigned NOT NULL COMMENT 'The period (in seconds) that the slave will wait before trying to reconnect to the master.',
  `Enabled_ssl` tinyint(1) NOT NULL COMMENT 'Indicates whether the server supports SSL connections.',
  `Ssl_ca` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The file used for the Certificate Authority (CA) certificate.',
  `Ssl_capath` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The path to the Certificate Authority (CA) certificates.',
  `Ssl_cert` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The name of the SSL certificate file.',
  `Ssl_cipher` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The name of the cipher in use for the SSL connection.',
  `Ssl_key` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The name of the SSL key file.',
  `Ssl_verify_server_cert` tinyint(1) NOT NULL COMMENT 'Whether to verify the server certificate.',
  `Heartbeat` float NOT NULL,
  `Bind` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'Displays which interface is employed when connecting to the MySQL server',
  `Ignored_server_ids` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The number of server IDs to be ignored, followed by the actual server IDs',
  `Uuid` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The master server uuid.',
  `Retry_count` bigint unsigned NOT NULL COMMENT 'Number of reconnect attempts, to the master, before giving up.',
  `Ssl_crl` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The file used for the Certificate Revocation List (CRL)',
  `Ssl_crlpath` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The path used for Certificate Revocation List (CRL) files',
  `Enabled_auto_position` tinyint(1) NOT NULL COMMENT 'Indicates whether GTIDs will be used to retrieve events from the master.',
  `Channel_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'The channel on which the replica is connected to a source. Used in Multisource Replication',
  `Tls_version` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'Tls version',
  `Public_key_path` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The file containing public key of master server.',
  `Get_public_key` tinyint(1) NOT NULL COMMENT 'Preference to get public key from master.',
  `Network_namespace` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'Network namespace used for communication with the master server.',
  `Master_compression_algorithm` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT 'Compression algorithm supported for data transfer between source and replica.',
  `Master_zstd_compression_level` int unsigned NOT NULL COMMENT 'Compression level associated with zstd compression algorithm.',
  `Tls_ciphersuites` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'Ciphersuites used for TLS 1.3 communication with the master server.',
  `Source_connection_auto_failover` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Indicates whether the channel connection failover is enabled.',
  `Gtid_only` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Indicates if this channel only uses GTIDs and does not persist positions.',
  PRIMARY KEY (`Channel_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Master Information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `slave_relay_log_info`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `slave_relay_log_info` (
  `Number_of_lines` int unsigned NOT NULL COMMENT 'Number of lines in the file or rows in the table. Used to version table definitions.',
  `Relay_log_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The name of the current relay log file.',
  `Relay_log_pos` bigint unsigned DEFAULT NULL COMMENT 'The relay log position of the last executed event.',
  `Master_log_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The name of the master binary log file from which the events in the relay log file were read.',
  `Master_log_pos` bigint unsigned DEFAULT NULL COMMENT 'The master log position of the last executed event.',
  `Sql_delay` int DEFAULT NULL COMMENT 'The number of seconds that the slave must lag behind the master.',
  `Number_of_workers` int unsigned DEFAULT NULL,
  `Id` int unsigned DEFAULT NULL COMMENT 'Internal Id that uniquely identifies this record.',
  `Channel_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'The channel on which the replica is connected to a source. Used in Multisource Replication',
  `Privilege_checks_username` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT 'Username part of PRIVILEGE_CHECKS_USER.',
  `Privilege_checks_hostname` varchar(255) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL COMMENT 'Hostname part of PRIVILEGE_CHECKS_USER.',
  `Require_row_format` tinyint(1) NOT NULL COMMENT 'Indicates whether the channel shall only accept row based events.',
  `Require_table_primary_key_check` enum('STREAM','ON','OFF','GENERATE') NOT NULL DEFAULT 'STREAM' COMMENT 'Indicates what is the channel policy regarding tables without primary keys on create and alter table queries',
  `Assign_gtids_to_anonymous_transactions_type` enum('OFF','LOCAL','UUID') NOT NULL DEFAULT 'OFF' COMMENT 'Indicates whether the channel will generate a new GTID for anonymous transactions. OFF means that anonymous transactions will remain anonymous. LOCAL means that anonymous transactions will be assigned a newly generated GTID based on server_uuid. UUID indicates that anonymous transactions will be assigned a newly generated GTID based on Assign_gtids_to_anonymous_transactions_value',
  `Assign_gtids_to_anonymous_transactions_value` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'Indicates the UUID used while generating GTIDs for anonymous transactions',
  PRIMARY KEY (`Channel_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Relay Log Information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `slave_worker_info`
--

DROP TABLE IF EXISTS `slave_worker_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slave_worker_info` (
  `Id` int unsigned NOT NULL,
  `Relay_log_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `Relay_log_pos` bigint unsigned NOT NULL,
  `Master_log_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `Master_log_pos` bigint unsigned NOT NULL,
  `Checkpoint_relay_log_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `Checkpoint_relay_log_pos` bigint unsigned NOT NULL,
  `Checkpoint_master_log_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `Checkpoint_master_log_pos` bigint unsigned NOT NULL,
  `Checkpoint_seqno` int unsigned NOT NULL,
  `Checkpoint_group_size` int unsigned NOT NULL,
  `Checkpoint_group_bitmap` blob NOT NULL,
  `Channel_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'The channel on which the replica is connected to a source. Used in Multisource Replication',
  PRIMARY KEY (`Channel_name`,`Id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Worker Information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slave_worker_info`
--

LOCK TABLES `slave_worker_info` WRITE;
/*!40000 ALTER TABLE `slave_worker_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `slave_worker_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tables_priv`
--

DROP TABLE IF EXISTS `tables_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tables_priv` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Table_name` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Grantor` varchar(288) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Table_priv` set('Select','Insert','Update','Delete','Create','Drop','Grant','References','Index','Alter','Create View','Show view','Trigger') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`Host`,`User`,`Db`,`Table_name`),
  KEY `Grantor` (`Grantor`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Table privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tables_priv`
--

LOCK TABLES `tables_priv` WRITE;
/*!40000 ALTER TABLE `tables_priv` DISABLE KEYS */;
INSERT INTO `tables_priv` VALUES ('localhost','mysql','mysql.session','user','boot@','2022-12-11 20:50:04','Select',''),('localhost','sys','mysql.sys','sys_config','root@localhost','2022-12-11 20:50:04','Select','');
/*!40000 ALTER TABLE `tables_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone`
--

DROP TABLE IF EXISTS `time_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone` (
  `Time_zone_id` int unsigned NOT NULL AUTO_INCREMENT,
  `Use_leap_seconds` enum('Y','N') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Time_zone_id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Time zones';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone`
--

LOCK TABLES `time_zone` WRITE;
/*!40000 ALTER TABLE `time_zone` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_leap_second`
--

DROP TABLE IF EXISTS `time_zone_leap_second`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone_leap_second` (
  `Transition_time` bigint NOT NULL,
  `Correction` int NOT NULL,
  PRIMARY KEY (`Transition_time`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Leap seconds information for time zones';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_leap_second`
--

LOCK TABLES `time_zone_leap_second` WRITE;
/*!40000 ALTER TABLE `time_zone_leap_second` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_leap_second` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_name`
--

DROP TABLE IF EXISTS `time_zone_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone_name` (
  `Name` char(64) NOT NULL,
  `Time_zone_id` int unsigned NOT NULL,
  PRIMARY KEY (`Name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Time zone names';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_name`
--

LOCK TABLES `time_zone_name` WRITE;
/*!40000 ALTER TABLE `time_zone_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_transition`
--

DROP TABLE IF EXISTS `time_zone_transition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone_transition` (
  `Time_zone_id` int unsigned NOT NULL,
  `Transition_time` bigint NOT NULL,
  `Transition_type_id` int unsigned NOT NULL,
  PRIMARY KEY (`Time_zone_id`,`Transition_time`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Time zone transitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_transition`
--

LOCK TABLES `time_zone_transition` WRITE;
/*!40000 ALTER TABLE `time_zone_transition` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_transition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_transition_type`
--

DROP TABLE IF EXISTS `time_zone_transition_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone_transition_type` (
  `Time_zone_id` int unsigned NOT NULL,
  `Transition_type_id` int unsigned NOT NULL,
  `Offset` int NOT NULL DEFAULT '0',
  `Is_DST` tinyint unsigned NOT NULL DEFAULT '0',
  `Abbreviation` char(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`Time_zone_id`,`Transition_type_id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Time zone transition types';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_transition_type`
--

LOCK TABLES `time_zone_transition_type` WRITE;
/*!40000 ALTER TABLE `time_zone_transition_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_transition_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Reload_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Shutdown_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Process_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `File_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Show_db_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Super_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Repl_slave_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Repl_client_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_user_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Event_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_tablespace_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `ssl_type` enum('','ANY','X509','SPECIFIED') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `ssl_cipher` blob NOT NULL,
  `x509_issuer` blob NOT NULL,
  `x509_subject` blob NOT NULL,
  `max_questions` int unsigned NOT NULL DEFAULT '0',
  `max_updates` int unsigned NOT NULL DEFAULT '0',
  `max_connections` int unsigned NOT NULL DEFAULT '0',
  `max_user_connections` int unsigned NOT NULL DEFAULT '0',
  `plugin` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT 'caching_sha2_password',
  `authentication_string` text COLLATE utf8mb3_bin,
  `password_expired` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `password_last_changed` timestamp NULL DEFAULT NULL,
  `password_lifetime` smallint unsigned DEFAULT NULL,
  `account_locked` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_role_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Drop_role_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Password_reuse_history` smallint unsigned DEFAULT NULL,
  `Password_reuse_time` smallint unsigned DEFAULT NULL,
  `Password_require_current` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `User_attributes` json DEFAULT NULL,
  PRIMARY KEY (`Host`,`User`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Users and global privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('localhost','brown','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','','','','',0,0,0,0,'caching_sha2_password','$A$005$wAE=x%&~NEuo@%	jNbBSg5sP5Zr8HKdE5r0SBmowJdifcbHiR75f4wbemsLA','N','2022-12-11 21:01:56',NULL,'N','Y','Y',NULL,NULL,NULL,NULL),('localhost','debian-sys-maint','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','','','','',0,0,0,0,'caching_sha2_password','$A$005$\'\ZGc	Bz!.%e?(U@IRyPtMzD2iEZQO7QHVgDclApsARjnNaWx7zXXz/leE.','N','2022-12-11 20:50:04',NULL,'N','Y','Y',NULL,NULL,NULL,NULL),('localhost','mysql.infoschema','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'caching_sha2_password','$A$005$THISISACOMBINATIONOFINVALIDSALTANDPASSWORDTHATMUSTNEVERBRBEUSED','N','2022-12-11 20:50:04',NULL,'Y','N','N',NULL,NULL,NULL,NULL),('localhost','mysql.session','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'caching_sha2_password','$A$005$THISISACOMBINATIONOFINVALIDSALTANDPASSWORDTHATMUSTNEVERBRBEUSED','N','2022-12-11 20:50:04',NULL,'Y','N','N',NULL,NULL,NULL,NULL),('localhost','mysql.sys','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'caching_sha2_password','$A$005$THISISACOMBINATIONOFINVALIDSALTANDPASSWORDTHATMUSTNEVERBRBEUSED','N','2022-12-11 20:50:04',NULL,'Y','N','N',NULL,NULL,NULL,NULL),('localhost','root','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','','','','',0,0,0,0,'mysql_native_password','*77E779F64C593BA1B1184FBF579B6D2080EEAC40','N','2023-04-20 21:27:55',NULL,'N','Y','Y',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `general_log` (
  `event_time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `user_host` mediumtext NOT NULL,
  `thread_id` bigint unsigned NOT NULL,
  `server_id` int unsigned NOT NULL,
  `command_type` varchar(64) NOT NULL,
  `argument` mediumblob NOT NULL
) ENGINE=CSV DEFAULT CHARSET=utf8mb3 COMMENT='General log';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `slow_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `slow_log` (
  `start_time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `user_host` mediumtext NOT NULL,
  `query_time` time(6) NOT NULL,
  `lock_time` time(6) NOT NULL,
  `rows_sent` int NOT NULL,
  `rows_examined` int NOT NULL,
  `db` varchar(512) NOT NULL,
  `last_insert_id` int NOT NULL,
  `insert_id` int NOT NULL,
  `server_id` int unsigned NOT NULL,
  `sql_text` mediumblob NOT NULL,
  `thread_id` bigint unsigned NOT NULL
) ENGINE=CSV DEFAULT CHARSET=utf8mb3 COMMENT='Slow log';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Current Database: `api_db`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `api_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `api_db`;

--
-- Table structure for table `refresh_token`
--

DROP TABLE IF EXISTS `refresh_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `refresh_token` (
  `token_hash` varchar(64) NOT NULL,
  `expires_at` int unsigned NOT NULL,
  PRIMARY KEY (`token_hash`),
  KEY `expires_at` (`expires_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refresh_token`
--

LOCK TABLES `refresh_token` WRITE;
/*!40000 ALTER TABLE `refresh_token` DISABLE KEYS */;
INSERT INTO `refresh_token` VALUES ('14ff5d65f78929dbc81006f46b1c074bdf18302e53d90952a21b5d4273908d7b',1683696403),('ad1946853353b6b179775a5dd38035c512c2bc00022a2536e42309e641e199d5',1683696407);
/*!40000 ALTER TABLE `refresh_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `priority` int DEFAULT NULL,
  `is_completed` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `task_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES (1,'Buy news shoes',1,1,1),(2,'Renew passport',2,0,1),(3,'Paint wall',NULL,1,3),(4,'Changed 2ddd',8,0,3),(6,'Task 3',NULL,0,1),(7,'Study for exam',NULL,0,2);
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `api_key` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `api_key` (`api_key`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Dave','dave','$2y$10$IKNro3wCRonRjv3cNuMlROBteah1H6Ip0STnIOMN9MgArw1b6s412','cdd34f392f5aa263a54d869a852ae19e'),(2,'Mary','mary','$2y$10$enbLiP6sUcxxBo53WRj5neQtM3Ht5UfNSRZQZdB05DB8Y9d4svFO2','3aa584a5d8ace91442f09d50c9b548bf'),(3,'Demo','demo','$2y$10$Tcbdmtm7Jz8GD5dJTq01D.REr8al6lKsvOzsY/BWnKSSIfhnSFIK.','7aa9526785fb1c6efd0bf155cefd738b');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `apiplatform`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `apiplatform` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `apiplatform`;

--
-- Table structure for table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messenger_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messenger_messages`
--

LOCK TABLES `messenger_messages` WRITE;
/*!40000 ALTER TABLE `messenger_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messenger_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offer`
--

DROP TABLE IF EXISTS `offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `url` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_currency` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offer`
--

LOCK TABLES `offer` WRITE;
/*!40000 ALTER TABLE `offer` DISABLE KEYS */;
/*!40000 ALTER TABLE `offer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `demo`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `demo` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `demo`;

--
-- Current Database: `doctrineorm`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `doctrineorm` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `doctrineorm`;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `number` int NOT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,22,'Acacia Avenue');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_BA388B79395C3F3` (`customer_id`),
  CONSTRAINT `FK_BA388B79395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,1);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_id` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_64C19C1727ACA70` (`parent_id`),
  CONSTRAINT `FK_64C19C1727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,NULL,'Parent'),(2,1,'Child 1'),(3,NULL,'Parent 2'),(4,3,'Child 2'),(5,NULL,'Parent 2'),(6,5,'Child 2'),(7,NULL,'Parent 2'),(8,7,'Child 2');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` VALUES ('DoctrineMigrations\\Version20221229094636','2022-12-29 12:47:09',94),('DoctrineMigrations\\Version20221229164445','2022-12-29 19:48:59',129),('DoctrineMigrations\\Version20221229174103','2022-12-29 20:42:02',100),('DoctrineMigrations\\Version20221229191421','2022-12-29 22:14:26',96),('DoctrineMigrations\\Version20221229202443','2022-12-29 23:25:12',175),('DoctrineMigrations\\Version20221229212855','2022-12-30 00:35:34',140);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interest_group`
--

DROP TABLE IF EXISTS `interest_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interest_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interest_group`
--

LOCK TABLES `interest_group` WRITE;
/*!40000 ALTER TABLE `interest_group` DISABLE KEYS */;
INSERT INTO `interest_group` VALUES (1,'NYC Kung Fu group');
/*!40000 ALTER TABLE `interest_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturer`
--

DROP TABLE IF EXISTS `manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manufacturer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturer`
--

LOCK TABLES `manufacturer` WRITE;
/*!40000 ALTER TABLE `manufacturer` DISABLE KEYS */;
INSERT INTO `manufacturer` VALUES (1,'ACME');
/*!40000 ALTER TABLE `manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messenger_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messenger_messages`
--

LOCK TABLES `messenger_messages` WRITE;
/*!40000 ALTER TABLE `messenger_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messenger_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `manufacturer_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D34A04ADA23B42D` (`manufacturer_id`),
  CONSTRAINT `FK_D34A04ADA23B42D` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mentor_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B723AF33DB403044` (`mentor_id`),
  CONSTRAINT `FK_B723AF33DB403044` FOREIGN KEY (`mentor_id`) REFERENCES `student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,NULL),(2,2);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `address_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8D93D649F5B7AF75` (`address_id`),
  CONSTRAINT `FK_8D93D649F5B7AF75` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,NULL),(1,1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_interest_groups`
--

DROP TABLE IF EXISTS `users_interest_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_interest_groups` (
  `user_id` int NOT NULL,
  `interest_group_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`interest_group_id`),
  KEY `IDX_31963CA3A76ED395` (`user_id`),
  KEY `IDX_31963CA382874C87` (`interest_group_id`),
  CONSTRAINT `FK_31963CA382874C87` FOREIGN KEY (`interest_group_id`) REFERENCES `interest_group` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_31963CA3A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_interest_groups`
--

LOCK TABLES `users_interest_groups` WRITE;
/*!40000 ALTER TABLE `users_interest_groups` DISABLE KEYS */;
INSERT INTO `users_interest_groups` VALUES (2,1);
/*!40000 ALTER TABLE `users_interest_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `ecommerce_mini_project`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ecommerce_mini_project` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `ecommerce_mini_project`;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'@demo123','$2y$10$I12ytn4cEnONRoNR4.MM1e/Jp/Yk9oWJpWP.V.zR0g7Xa5a0mKZiu','2023-01-02 18:27:05');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `eshoprmq`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `eshoprmq` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `eshoprmq`;

--
-- Table structure for table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messenger_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messenger_messages`
--

LOCK TABLES `messenger_messages` WRITE;
/*!40000 ALTER TABLE `messenger_messages` DISABLE KEYS */;
INSERT INTO `messenger_messages` VALUES (9,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:37:\\\"App\\\\Message\\\\Command\\\\Order\\\\CreateOrder\\\":2:{s:12:\\\"\\0*\\0productId\\\";i:243;s:16:\\\"\\0*\\0productAmount\\\";i:2;}}','[]','default','2022-12-22 01:39:24','2022-12-22 01:39:24',NULL),(10,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:37:\\\"App\\\\Message\\\\Command\\\\Order\\\\CreateOrder\\\":2:{s:12:\\\"\\0*\\0productId\\\";i:243;s:16:\\\"\\0*\\0productAmount\\\";i:2;}}','[]','default','2022-12-22 01:40:12','2022-12-22 01:40:12',NULL),(11,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:33:\\\"App\\\\Message\\\\Command\\\\Sms\\\\SignupSms\\\":1:{s:14:\\\"\\0*\\0phoneNumber\\\";s:11:\\\"111 222 333\\\";}}','[]','default','2022-12-22 01:40:23','2022-12-22 01:40:23',NULL),(12,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:37:\\\"App\\\\Message\\\\Command\\\\Order\\\\CreateOrder\\\":2:{s:12:\\\"\\0*\\0productId\\\";i:243;s:16:\\\"\\0*\\0productAmount\\\";i:2;}}','[]','default','2022-12-22 01:40:38','2022-12-22 01:40:38',NULL),(13,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:37:\\\"App\\\\Message\\\\Command\\\\Order\\\\CreateOrder\\\":2:{s:12:\\\"\\0*\\0productId\\\";i:243;s:16:\\\"\\0*\\0productAmount\\\";i:2;}}','[]','default','2022-12-22 01:43:29','2022-12-22 01:43:29',NULL),(14,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:37:\\\"App\\\\Message\\\\Command\\\\Order\\\\CreateOrder\\\":2:{s:12:\\\"\\0*\\0productId\\\";i:243;s:16:\\\"\\0*\\0productAmount\\\";i:2;}}','[]','default','2022-12-22 01:43:50','2022-12-22 01:43:50',NULL);
/*!40000 ALTER TABLE `messenger_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `laracasts_app`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `laracasts_app` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `laracasts_app`;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'My First Blog Post'),(2,'My Second Blog Post');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `admin` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'JeffreyWay',1),(2,'JohnDoe',0),(3,'Jane',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `lexus`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `lexus` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `lexus`;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `city` varchar(255) NOT NULL,
  `street` text,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'Moscow','Golovinskoe shosse, dom 8 k 2a',NULL),(2,'Moscow','Golovinskoe shosse, dom 8 k 2a',NULL),(3,'Moscow','Golovinskoe shosse, dom 8 k 2a',NULL),(4,'Moscow','Golovinskoe shosse, dom 8 k 2a',NULL),(5,'Moscow','Golovinskoe shosse, dom 8 k 2a',NULL),(6,'Moscow','Golovinskoe shosse, dom 8 k 2a',NULL),(7,'Moscow','Golovinskoe shosse, dom 8 k 2a',NULL),(8,'Moscow','Golovinskoe shosse, dom 8 k 2a',NULL);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demo`
--

DROP TABLE IF EXISTS `demo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `phone` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demo`
--

LOCK TABLES `demo` WRITE;
/*!40000 ALTER TABLE `demo` DISABLE KEYS */;
/*!40000 ALTER TABLE `demo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text,
  `brochure` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Product 1','Some description 1',NULL,NULL),(2,'Product 1','Some description 1',NULL,NULL),(3,'Product 1','Some description 1',NULL,NULL),(4,'Product 1','Some description 1',NULL,NULL),(5,'Product 1','Some description 1',NULL,NULL),(6,'Product 1','Some description 1',NULL,NULL),(7,'Product 1','Some description 1',NULL,NULL),(8,'Product 1','Some description 1',NULL,NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'demo1','344444444','2023-02-27 21:02:21'),(3,'demo2','344444444','2023-02-27 21:04:37'),(4,'demo3','344444444','2023-02-27 21:04:37'),(6,'demo5','344444444','2023-02-27 21:04:37'),(7,'demo','344444444','2023-02-27 21:26:30'),(8,'demo','344444444','2023-02-27 21:26:30'),(9,'demo','344444444','2023-02-27 21:26:30'),(10,'demo','344444444','2023-02-27 21:26:30'),(11,'demo','344444444','2023-02-27 22:18:04');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `products_api`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `products_api` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `products_api`;

--
-- Table structure for table `api_token`
--

DROP TABLE IF EXISTS `api_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_token` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_7BA2F5EBA76ED395` (`user_id`),
  CONSTRAINT `FK_7BA2F5EBA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_token`
--

LOCK TABLES `api_token` WRITE;
/*!40000 ALTER TABLE `api_token` DISABLE KEYS */;
INSERT INTO `api_token` VALUES (1,1,'bc8ece17a3e486f5a015be164b73b4f8739bc54dfb1a47c48b1e5dbce3db6e42a8c617946d75cfdd5601f10709ad550b9756cc0287fda24325321729');
/*!40000 ALTER TABLE `api_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` VALUES ('DoctrineMigrations\\Version20221222112400','2022-12-22 14:26:03',31),('DoctrineMigrations\\Version20221222122913','2022-12-22 15:30:31',74),('DoctrineMigrations\\Version20221222190721','2022-12-22 22:07:30',33),('DoctrineMigrations\\Version20221222194850','2022-12-22 22:50:06',32),('DoctrineMigrations\\Version20221222200532','2022-12-22 23:06:42',49),('DoctrineMigrations\\Version20221222221538','2022-12-23 01:17:25',123);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturer`
--

DROP TABLE IF EXISTS `manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manufacturer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `listed_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturer`
--

LOCK TABLES `manufacturer` WRITE;
/*!40000 ALTER TABLE `manufacturer` DISABLE KEYS */;
INSERT INTO `manufacturer` VALUES (1,'ACME Pro','Lorem ipsum — классический текст-«рыба». Является искажённым отрывком из философского трактата Марка Туллия Цицерона «О пределах добра и зла», написанного в 45 году до н. э. на латинском языке, обнаружение сходства приписывается Ричарду Макклинтоку.','RU','2022-12-22 11:34:41'),(2,'','Random description','UK','2022-12-22 00:00:00'),(3,'A New Manufacturer','A New Manufacturer','FR','2022-12-22 00:00:00');
/*!40000 ALTER TABLE `manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `manufacturer_id` int DEFAULT NULL,
  `mpn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `issue_date` datetime NOT NULL,
  `owner_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D34A04ADA23B42D` (`manufacturer_id`),
  KEY `IDX_D34A04AD7E3C61F9` (`owner_id`),
  CONSTRAINT `FK_D34A04AD7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_D34A04ADA23B42D` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,1,'Wtwywwgswe','Rocket power something like blabla ...','let to skate at unlimited speed','2022-12-22 12:42:19',NULL),(2,2,'kxnah485743','Another new product','RAnother new product','2022-12-22 00:00:00',NULL),(3,2,'Eexnah485743','Eyedrops','RAnother new product skate','2022-12-22 00:00:00',NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'info@akademycity.ru','[]','asasqqwqwqadamnssywuweiwey'),(2,'example@akademycity.ru','[]','lanasbgfasrwqqeqqweqwrqwtrqw');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `products_api_test`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `products_api_test` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `products_api_test`;

--
-- Table structure for table `api_token`
--

DROP TABLE IF EXISTS `api_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_token` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_7BA2F5EBA76ED395` (`user_id`),
  CONSTRAINT `FK_7BA2F5EBA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_token`
--

LOCK TABLES `api_token` WRITE;
/*!40000 ALTER TABLE `api_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` VALUES ('DoctrineMigrations\\Version20221222112400','2022-12-22 21:06:29',38),('DoctrineMigrations\\Version20221222122913','2022-12-22 21:06:29',32),('DoctrineMigrations\\Version20221222190721','2022-12-22 22:09:31',30),('DoctrineMigrations\\Version20221222194850','2022-12-23 00:14:15',34),('DoctrineMigrations\\Version20221222200532','2022-12-23 00:14:15',27),('DoctrineMigrations\\Version20221222221538','2022-12-23 01:17:42',78);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturer`
--

DROP TABLE IF EXISTS `manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manufacturer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `listed_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturer`
--

LOCK TABLES `manufacturer` WRITE;
/*!40000 ALTER TABLE `manufacturer` DISABLE KEYS */;
INSERT INTO `manufacturer` VALUES (1,'Hagenes LLC','Eius similique dolore consequatur et ipsam. Saepe dolor in perspiciatis sit consectetur temporibus voluptate.','RO','1980-11-12 14:39:30'),(2,'Bernhard Inc','Nisi recusandae eaque molestias. Id labore similique ut voluptatem. Perferendis eveniet quam vero fuga corrupti. Temporibus maxime sint suscipit laudantium quod magni.','ER','1990-07-31 11:16:04'),(3,'Larson-McClure','Laudantium omnis et aut laborum cupiditate corporis. Aut cumque consequuntur non qui est.','TJ','2015-09-14 10:05:44'),(4,'Weber-Kohler','Dolorem delectus enim ipsum inventore sed libero et velit. Suscipit a deserunt laudantium quibusdam enim nostrum. Qui ipsam non ipsum velit reiciendis aperiam. Fuga doloribus nisi placeat cumque.','MU','2015-04-29 17:17:46'),(5,'Russel, Abbott and Cruickshank','Esse repudiandae pariatur reprehenderit assumenda error consequatur fugit. Iste minus ullam quidem quo. Soluta nostrum ea dolores doloremque fuga labore qui.','AX','1970-10-10 20:04:31'),(6,'Beatty-Runolfsson','Nam et sint autem inventore aut officia aut aut. Et ducimus eos odit amet et. Ut eum nisi molestiae quidem ut sunt. Quidem est accusamus aut nemo.','DJ','2000-05-23 01:41:04'),(7,'Bogan-Runolfsdottir','Reiciendis qui architecto fugiat nemo omnis. Recusandae qui cupiditate eos. Veritatis vel optio provident non incidunt magnam molestias. Quibusdam et ab quo voluptatum.','BH','2001-01-11 19:13:01'),(8,'Mayert-Rodriguez','Similique aut est dolores. Odio facere odio modi consequatur. Ipsa temporibus sit facere cupiditate. Odio ad asperiores quaerat. Accusamus sint dolorem earum ut.','VA','2016-03-28 01:49:03'),(9,'Will, Lesch and Roob','Voluptatem at qui eaque nihil. Eos fugit natus quaerat quibusdam alias. Accusamus aut dolores perspiciatis itaque doloribus qui. Eligendi quae recusandae facere quo.','HU','1978-07-02 00:13:58'),(10,'Koepp-Halvorson','Dignissimos et dolorem doloremque quam quia. Quibusdam ad in maiores nisi eius. Sapiente quia recusandae aut numquam laboriosam sint enim. Quod ullam at ut non eos sed amet sunt.','MV','2007-05-21 04:14:59');
/*!40000 ALTER TABLE `manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `manufacturer_id` int DEFAULT NULL,
  `mpn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `issue_date` datetime NOT NULL,
  `owner_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D34A04ADA23B42D` (`manufacturer_id`),
  KEY `IDX_D34A04AD7E3C61F9` (`owner_id`),
  CONSTRAINT `FK_D34A04AD7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_D34A04ADA23B42D` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,4,'5794390905','Adaptive non-volatile systemengine','Accusamus nihil repellat vero omnis voluptates id amet et.','2004-07-14 01:24:49',NULL),(2,6,'9565356583','Persevering optimal encoding','Saepe provident esse hic eligendi.','1996-02-14 03:55:23',NULL),(3,7,'7019365345','Vision-oriented contextually-based function','Cum culpa rem aut rerum.','1985-07-15 13:44:30',NULL),(4,7,'570066657X','Versatile logistical knowledgeuser','Reiciendis sit et nihil ut porro.','1979-12-10 18:04:33',NULL),(5,2,'3878606451','Managed systemic core','Molestiae iste in dolores harum.','2020-01-11 05:11:17',NULL),(6,4,'7563353909','Automated foreground throughput','Odio sed vitae maiores ex beatae reprehenderit exercitationem corrupti.','1978-11-05 07:56:02',NULL),(7,1,'9716251343','Monitored intermediate systemengine','Sint consequatur est qui doloremque aperiam qui rerum.','2016-02-05 01:11:31',NULL),(8,10,'6980572482','Compatible systemic workforce','Quod tempore totam iste quidem eum labore.','1991-10-06 18:00:03',NULL),(9,4,'0796260818','Reverse-engineered zerodefect alliance','Veniam vel eos officiis et.','2006-06-21 01:01:43',NULL),(10,7,'4350209336','Digitized clear-thinking info-mediaries','Aut nisi non omnis voluptatem velit.','1978-04-25 19:10:17',NULL),(11,5,'1392800498','Universal interactive support','Incidunt omnis aut enim nihil repellat ut culpa.','1983-02-16 11:13:52',NULL),(12,5,'150989893X','Future-proofed directional projection','Voluptas et tempora repellat corporis excepturi.','2018-08-03 20:27:41',NULL),(13,7,'2598449053','Configurable eco-centric focusgroup','Natus voluptatem ut explicabo.','1986-01-17 12:44:15',NULL),(14,10,'2360251910','Versatile well-modulated toolset','Quidem explicabo optio amet velit.','2021-08-21 03:49:13',NULL),(15,8,'3871333034','Operative 24hour workforce','Deserunt omnis inventore mollitia unde id in.','2008-12-08 16:06:36',NULL),(16,1,'5375631237','Implemented interactive extranet','Quod alias iste similique aut tempore pariatur et.','2005-07-05 19:14:01',NULL),(17,4,'2062691335','Operative executive algorithm','Voluptatem tempora beatae neque eum est molestiae.','1973-06-18 11:54:51',NULL),(18,2,'1794421335','Configurable radical framework','Similique quia quas beatae et nam itaque.','1978-05-05 05:16:45',NULL),(19,3,'3610174706','Ameliorated regional parallelism','Est et et cum eius.','2010-07-31 15:53:50',NULL),(20,5,'3356402439','Profit-focused exuding superstructure','Quia recusandae qui eligendi quo.','2010-07-27 12:53:12',NULL),(21,9,'9955685719','Balanced web-enabled adapter','Reiciendis cum accusamus ut et nobis iste accusantium quaerat.','1985-06-22 06:00:17',NULL),(22,10,'0757139035','Object-based even-keeled knowledgebase','Nisi fuga dolores aut velit illo.','2013-03-31 12:11:50',NULL),(23,3,'328504909X','User-friendly 4thgeneration software','Qui neque minus eos.','1976-01-26 07:03:58',NULL),(24,2,'5289094628','Object-based responsive application','Reiciendis excepturi enim velit qui.','2005-03-18 19:59:40',NULL),(25,5,'9281238217','Ergonomic explicit application','Et et omnis eaque pariatur.','1998-01-21 17:16:43',NULL),(26,2,'3813227677','Optional value-added archive','Quam suscipit qui accusamus.','2017-08-03 08:27:02',NULL),(27,7,'2624426949','Profit-focused local time-frame','Sit aliquam provident et voluptatem eveniet consequatur sit impedit.','1997-06-03 11:48:11',NULL),(28,9,'0131363549','Advanced mission-critical customerloyalty','Nemo possimus qui totam iste perspiciatis harum animi et.','1984-08-22 20:36:49',NULL),(29,5,'0155818856','Streamlined uniform pricingstructure','Et quod velit velit ut rem repellendus ut.','1971-01-04 00:32:32',NULL),(30,6,'1262461642','Team-oriented systemic knowledgebase','Ut est in reprehenderit reiciendis accusamus facilis.','1976-05-25 05:22:13',NULL),(31,1,'5974098056','Multi-layered secondary emulation','Minima aut molestiae sapiente.','2006-05-20 23:41:52',NULL),(32,4,'2149928108','Progressive local focusgroup','Consequatur facere dolorum doloremque quasi vero nobis error.','2002-12-25 09:46:47',NULL),(33,9,'5461721680','Function-based analyzing circuit','Ad sunt est impedit itaque.','2007-01-27 04:49:59',NULL),(34,7,'2661394516','Implemented non-volatile protocol','Voluptatem magnam nostrum ea corrupti voluptatem molestiae cupiditate rerum.','1977-09-21 06:44:46',NULL),(35,9,'7846454420','Monitored static adapter','Ipsa eius repellat adipisci.','2021-11-11 00:31:35',NULL),(36,3,'0306580179','Inverse regional hierarchy','Placeat harum voluptatem at.','1984-05-16 11:42:01',NULL),(37,10,'3288641518','Future-proofed clear-thinking support','Provident natus ipsam fugiat est ipsam quia.','1990-10-26 02:26:52',NULL),(38,4,'5971646842','Diverse optimizing hierarchy','Delectus ad iusto molestias iusto.','1989-10-28 20:28:04',NULL),(39,7,'8444130915','User-centric context-sensitive workforce','Reprehenderit harum voluptatem sit nihil laboriosam sed.','2019-07-13 08:22:07',NULL),(40,2,'9497352123','Team-oriented well-modulated middleware','Cupiditate aut consequatur aut ullam qui.','1988-12-08 05:47:22',NULL),(41,10,'1117010708','Progressive assymetric emulation','Maiores non omnis aut quos ut ad est quidem.','1990-04-16 04:11:28',NULL),(42,10,'9105556503','Fundamental executive paradigm','Eos enim non aut quas sunt.','2006-08-17 00:47:21',NULL),(43,3,'6280201546','Profound modular task-force','Veniam enim quae voluptas.','2010-09-28 14:46:27',NULL),(44,7,'0930160495','Future-proofed web-enabled access','Et aut beatae nam.','2005-10-30 16:25:00',NULL),(45,9,'0297839241','Implemented attitude-oriented functionalities','Praesentium cupiditate iste repellat.','1998-04-16 19:10:34',NULL),(46,8,'8773729469','Future-proofed didactic alliance','Nihil voluptatem magnam odio impedit.','2019-07-16 06:33:30',NULL),(47,4,'8082387610','Triple-buffered regional strategy','Reprehenderit non ut rem esse magnam.','1990-06-19 23:30:55',NULL),(48,6,'5369468885','Distributed attitude-oriented processimprovement','Cupiditate culpa nisi eos cupiditate quibusdam eveniet eveniet.','1998-02-02 09:22:41',NULL),(49,9,'7611570056','Expanded bandwidth-monitored neural-net','Id quo aut voluptates est deleniti et accusantium nesciunt.','1987-06-01 00:29:01',NULL),(50,2,'1093721189','Organized zeroadministration groupware','Molestiae eum et eos fugiat voluptas.','1978-01-07 06:30:10',NULL),(51,9,'2925514383','Organized logistical policy','Quae dignissimos sunt atque aut unde.','2010-02-09 16:46:51',NULL),(52,7,'9194468338','User-centric tertiary info-mediaries','Ratione minima aut ut reiciendis ut saepe.','1981-05-17 05:33:51',NULL),(53,9,'5818202550','Distributed grid-enabled installation','A cumque ut et rerum dolore consectetur et beatae.','1994-10-02 16:41:06',NULL),(54,10,'7191953284','Enterprise-wide tertiary intranet','Voluptates unde optio accusamus.','1983-05-16 09:17:19',NULL),(55,10,'1446166244','Fully-configurable fresh-thinking encoding','Autem sapiente id consequuntur quo dolore qui.','1991-02-21 12:15:48',NULL),(56,3,'0693328894','Enterprise-wide value-added forecast','Aut itaque nesciunt sit quidem fugit sapiente ullam.','2017-08-21 14:28:39',NULL),(57,3,'0583435599','Distributed interactive workforce','Vitae iure voluptatibus dolorem totam laboriosam.','1979-08-17 13:36:17',NULL),(58,6,'1930592485','Universal fresh-thinking structure','Quia modi ducimus odio fuga vitae expedita vitae.','2015-07-07 10:02:40',NULL),(59,3,'8323771723','Front-line bi-directional projection','Et necessitatibus quasi qui sit rem consequatur.','2020-04-11 22:05:17',NULL),(60,10,'6302237939','Organized context-sensitive knowledgebase','Mollitia id repudiandae ipsa doloremque.','2009-09-28 12:33:55',NULL),(61,5,'4138352678','Centralized scalable budgetarymanagement','Commodi corrupti cum ratione animi maxime enim.','2006-07-04 19:35:45',NULL),(62,4,'5321726655','Sharable web-enabled workforce','Ipsa dolorum optio odio aspernatur qui dolor.','1994-03-04 22:01:30',NULL),(63,1,'1719868166','Facetoface clear-thinking pricingstructure','Qui molestiae quia voluptatem quisquam.','1998-06-14 05:49:34',NULL),(64,2,'2056184028','Organized systematic time-frame','Quasi corporis rerum quo ut accusantium omnis quibusdam.','1979-02-27 08:30:47',NULL),(65,2,'5815074349','Networked coherent policy','Quisquam aut cupiditate aperiam.','1997-07-16 22:07:37',NULL),(66,7,'0623378094','Sharable eco-centric adapter','Sed modi odit excepturi accusamus vel quae.','2002-07-02 23:42:44',NULL),(67,7,'2853645444','Optimized grid-enabled approach','Consequatur accusantium quia porro minus voluptates dignissimos est.','2016-04-21 09:08:33',NULL),(68,7,'912900649X','Phased human-resource hardware','Sed ipsum omnis maiores.','1992-01-29 03:39:37',NULL),(69,3,'5438847584','Balanced 3rdgeneration infrastructure','Nisi quaerat numquam voluptatem harum.','1998-06-16 23:45:31',NULL),(70,6,'6175034600','Grass-roots clear-thinking firmware','Totam provident sunt dolores est tempora qui.','2008-10-03 06:41:10',NULL),(71,1,'2857813600','Cross-platform transitional systemengine','Minima eveniet repudiandae laborum.','1979-07-17 15:32:58',NULL),(72,7,'4661716949','Re-contextualized dynamic hardware','Inventore molestias amet aut qui nihil.','2017-12-05 01:39:10',NULL),(73,10,'1970910348','Innovative bandwidth-monitored budgetarymanagement','Et accusamus veniam et adipisci libero qui.','2000-11-25 11:36:35',NULL),(74,5,'7716734865','Monitored global customerloyalty','Soluta aliquam saepe aspernatur quasi et sit enim.','2010-05-09 15:43:43',NULL),(75,4,'0576630691','Self-enabling methodical help-desk','Doloribus ad labore quos.','2017-05-11 20:52:34',NULL),(76,7,'3236890975','Optimized human-resource knowledgebase','Saepe eos et ab velit.','1974-09-30 12:30:20',NULL),(77,6,'7580856859','Function-based high-level synergy','Aut culpa reiciendis dolorum eaque accusantium exercitationem animi.','2013-06-10 16:46:28',NULL),(78,10,'0434531871','Programmable explicit productivity','Officia et dolorem impedit et.','2007-01-29 04:31:24',NULL),(79,9,'3957103606','Optimized upward-trending intranet','Voluptatem eligendi provident sed sint.','1976-10-30 03:48:19',NULL),(80,1,'9156753667','Networked scalable project','Sit quod est qui dolor.','1990-10-17 12:43:36',NULL),(81,8,'921352286X','Organic nextgeneration architecture','Nobis recusandae qui voluptas rerum.','1980-12-21 01:19:34',NULL),(82,9,'6323355051','Seamless demand-driven moratorium','Repellat rerum voluptas dolore.','1974-11-28 22:49:34',NULL),(83,4,'9107567804','Cross-group system-worthy archive','Libero sit ducimus minima.','2014-09-18 13:32:15',NULL),(84,8,'7371991451','Progressive zerodefect task-force','Deleniti tenetur itaque illo sunt possimus esse.','1996-06-11 01:22:12',NULL),(85,8,'3667381956','Multi-lateral actuating core','Nesciunt reiciendis sit optio consequatur aliquid quis.','2018-06-27 11:29:19',NULL),(86,10,'4545436021','Fundamental zerodefect orchestration','Qui pariatur cumque hic sunt harum alias omnis.','2012-02-28 01:30:42',NULL),(87,2,'3496382791','Monitored modular productivity','Omnis sit saepe corrupti vitae.','1980-01-18 16:19:20',NULL),(88,1,'9351598624','Quality-focused exuding product','Asperiores vitae neque optio quod et consectetur ut expedita.','1977-10-07 16:29:50',NULL),(89,1,'1445568888','Diverse contextually-based support','Sit asperiores eum et nisi cumque et quod.','2020-05-22 22:53:23',NULL),(90,5,'8459286282','De-engineered object-oriented blockchain','Iusto rerum officia et neque pariatur.','1990-03-04 04:47:08',NULL),(91,1,'6274797858','Polarised directional blockchain','Ad in et fugit eius facilis dolor.','2014-01-22 20:36:02',NULL),(92,5,'898690490X','Function-based needs-based adapter','Rerum architecto commodi est omnis distinctio eum sit.','2020-05-02 21:17:32',NULL),(93,7,'3699391728','Synergized responsive customerloyalty','Vel debitis qui ipsum perferendis.','2017-09-22 05:08:24',NULL),(94,9,'513776860X','Multi-tiered bottom-line function','Atque aut consequuntur ipsum dolores in.','2011-05-07 16:48:33',NULL),(95,1,'8202786584','Multi-tiered upward-trending systemengine','Quia repellat expedita laudantium ducimus qui.','1975-08-27 21:42:17',NULL),(96,2,'1204661782','Balanced directional circuit','Necessitatibus accusamus sed iure voluptatum excepturi sit.','1996-01-03 22:35:52',NULL),(97,6,'2158500174','Mandatory eco-centric approach','Modi consequuntur eveniet est.','1983-11-22 18:19:19',NULL),(98,6,'4962095382','Horizontal asynchronous instructionset','Nihil vel aut aliquid libero quis sit.','2013-06-06 11:18:03',NULL),(99,8,'424915839X','Proactive exuding algorithm','Est qui inventore voluptate quos.','2020-10-08 05:59:51',NULL),(100,5,'4939151492','Multi-lateral non-volatile project','Suscipit quo consequatur ipsa repellendus.','2014-08-09 23:49:39',NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `shop`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `shop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `shop`;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Acme Radio',100),(2,'Blue Yeti Microphone',150);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'garycharketech','Gary Clarke'),(2,'janedoe','Joe Doe');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `specialist_eshop_goods`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `specialist_eshop_goods` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `specialist_eshop_goods`;

--
-- Table structure for table `catalog`
--

DROP TABLE IF EXISTS `catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT 'Без названия',
  `author` varchar(255) DEFAULT NULL,
  `pubyear` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalog`
--

LOCK TABLES `catalog` WRITE;
/*!40000 ALTER TABLE `catalog` DISABLE KEYS */;
INSERT INTO `catalog` VALUES (1,'PHP7 Pro','John Smith',2016,780),(2,'PHP and XML','Mike Dow',2014,620),(3,'ASP.Net','Ivan Petrov',2012,350),(4,'HTML and CSS','Vasya Pupkin',2001,190);
/*!40000 ALTER TABLE `catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `author` varchar(255) NOT NULL DEFAULT '',
  `pubyear` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `orderid` varchar(50) NOT NULL DEFAULT '',
  `datetime` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `specialist_guestbook`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `specialist_guestbook` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `specialist_guestbook`;

--
-- Table structure for table `msgs`
--

DROP TABLE IF EXISTS `msgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `msgs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `msg` text,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `msgs`
--

LOCK TABLES `msgs` WRITE;
/*!40000 ALTER TABLE `msgs` DISABLE KEYS */;
INSERT INTO `msgs` VALUES (4,'Иван Петров','ivan@petrov.ru','Привет, всем!','2023-04-20 23:17:43'),(5,'Вася пупкин','vasya@pupkin.ru','Аффтар жжот %))))))))) Пеши!!!!','2023-04-20 23:19:50');
/*!40000 ALTER TABLE `msgs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `specialist_oop_eshop`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `specialist_oop_eshop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `specialist_oop_eshop`;

--
-- Table structure for table `catalog`
--

DROP TABLE IF EXISTS `catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT 'Без названия',
  `author` varchar(255) DEFAULT NULL,
  `pubyear` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalog`
--

LOCK TABLES `catalog` WRITE;
/*!40000 ALTER TABLE `catalog` DISABLE KEYS */;
INSERT INTO `catalog` VALUES (1,'PHP8: объекты, шаблоны проектирования',NULL,NULL,2643),(2,'Golang',NULL,NULL,2700),(3,'Java',NULL,NULL,2490),(4,'aasas',NULL,NULL,230),(5,'sss',NULL,NULL,234),(6,'Laravel 8',NULL,NULL,1807),(7,'Python',NULL,NULL,3700);
/*!40000 ALTER TABLE `catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `author` varchar(255) NOT NULL DEFAULT '',
  `pubyear` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `orderid` varchar(50) NOT NULL DEFAULT '',
  `datetime` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `specialist_web`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `specialist_web` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `specialist_web`;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '',
  `length` int NOT NULL DEFAULT '4',
  `description` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'Web-мастеринг. Основы серверного программирования',32,'Данный курс посвящен технологиям Веб-мастеринга. В курсе рассматриваются основные, базовые понятия, которые необходимы веб-мастеру для успешного создания решений на базе веб-серверов. Слушатели приобретают навыки администрирования веб-серверов, использования баз данных на веб-серверах, узнают основные характеристики и возможности наиболее часто используемых веб-серверов.\r\n\r\nКурс также будет полезен тем, кто обладает знаниями в объёме программы, но хочет их систематизировать, а также повысить свою эффективность за счёт новых приёмов и методов работы.'),(2,'Основы PHP программирования',32,'Вы научитесь профессионально создавать Web-сайты и Web-приложения при помощи языка PHP. Вы получите полное представление о возможностях применения технологии PHP – от настройки для совместной работы с серверами Apache и MySQL до создания профессиональных Web-интерфейсов к базам данных в Интернет и написания форума.\r\nВ курсе рассмотрено больше количество примеров и готовых наработок, что позволит слушателям практически сразу после окончания приступить к реальной работе с PHP.\r\n\r\nКурс также будет полезен тем, кто обладает знаниями в объёме программы, но хочет их систематизировать, а также повысить свою эффективность за счёт новых приёмов и методов работы.'),(3,'Профессиональное программирование на PHP 5',32,'Вы изучите профессиональные приёмы программирования на PHP, сможете использовать полученные навыки для построения сложных, эффективных и безопасных Web-приложений.\r\n\r\nКурс также будет полезен тем, кто обладает знаниями в объёме программы, но хочет их систематизировать, а также повысить свою эффективность за счёт новых приёмов и методов работы.'),(4,'Сервер MySQL 5',32,'Сервер MySQL очень распространен и часто используется в Веб–технологиях. На этом сервере базируются большинство сайтов и решений в Интернете. На курсе «Сервер MySQL 5» рассматриваются основные приемы и методы эффективной работы с сервером MySQL 5. Данный курс предназначен для разработчиков, которые планируют использовать сервер MySQL в своей практике. Особенно курс будет интересен Веб– разработчикам, использующимм PHP и Perl.\r\n\r\nКурс также будет полезен тем, кто обладает знаниями в объёме программы, но хочет их систематизировать, а также повысить свою эффективность за счёт новых приёмов и методов работы.'),(5,'Современные XML технологии',32,'Вы научитесь применять XML-технологии в процессе создания сайтов и других Интернет-решений. В современном мире эти технологии активно используются при решении самых разнообразных задач, и, изучив их, Вы будете идти в ногу со временем.\r\n\r\nКурс также будет полезен тем, кто обладает знаниями в объёме программы, но хочет их систематизировать, а также повысить свою эффективность за счёт новых приёмов и методов работы.'),(6,'Web-маркетинг',20,'Сегодня специалист по Интернет-технологиям должен не только владеть техническими навыками, но и понимать значение своей работы для бизнеса заказчика. Никому не нужен сайт (каким бы хорошим он ни был!), который не посещается целевой аудиторией.\r\nУспешно пройдя обучение на этом уникальном авторском курсе, Вы научитесь привлекать максимальное количество заинтересованных пользователей, проводить эффективную электронную рекламу, привлекать внимание к представленной на сайте информации.\r\n\r\nКурс также будет полезен тем, кто обладает знаниями в объёме программы, но хочет их систематизировать, а также повысить свою эффективность за счёт новых приёмов и методов работы.'),(7,'2310 Разработка Web-приложений ASP .NET',40,'Этот курс обеспечивает студентов знаниями и навыками, которые необходимы для разработки Web приложений на базе Microsoft Visual Studio .NET и Microsoft ASP .NET.\r\n\r\nКурс также будет полезен тем, кто обладает знаниями в объёме программы, но хочет их систематизировать, а также повысить свою эффективность за счёт новых приёмов и методов работы.');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lessons`
--

DROP TABLE IF EXISTS `lessons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lessons` (
  `id` int NOT NULL AUTO_INCREMENT,
  `teacher` int DEFAULT NULL,
  `course` int DEFAULT NULL,
  `room` varchar(10) DEFAULT NULL,
  `lesson_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lessons`
--

LOCK TABLES `lessons` WRITE;
/*!40000 ALTER TABLE `lessons` DISABLE KEYS */;
INSERT INTO `lessons` VALUES (1,1,1,'БК-1','2006-09-15 00:00:00'),(2,2,2,'БК-2','2006-09-16 00:00:00'),(3,3,3,'БК-3','2006-09-17 00:00:00'),(4,4,4,'БК-4','2006-09-18 00:00:00'),(5,5,5,'БК-5','2006-09-19 00:00:00'),(6,1,6,'БК-6','2006-09-20 00:00:00'),(7,2,7,'БК-7','2006-09-21 00:00:00'),(8,3,1,'БК-8','2006-09-22 00:00:00'),(9,4,2,'БК-9','2006-09-23 00:00:00'),(10,5,3,'БК-10','2006-09-24 00:00:00'),(11,1,4,'БК-11','2006-09-25 00:00:00'),(12,2,5,'БК-12','2006-09-26 00:00:00'),(13,3,6,'БК-14','2006-09-27 00:00:00'),(14,4,7,'БК-15','2006-09-28 00:00:00'),(15,5,1,'БК-16','2006-09-29 00:00:00'),(16,1,2,'БК-17','2006-09-30 00:00:00'),(17,2,3,'БК-18','2006-10-01 00:00:00'),(18,3,4,'БК-19','2006-10-02 00:00:00'),(19,4,5,'БК-1','2006-10-03 00:00:00'),(20,5,6,'БК-12','2006-10-04 00:00:00'),(21,1,7,'БК-14','2006-10-05 00:00:00'),(22,2,1,'БК-15','2006-10-06 00:00:00'),(23,3,2,'БК-16','2006-10-07 00:00:00'),(24,4,3,'БК-17','2006-10-08 00:00:00'),(25,5,4,'БК-18','2006-10-09 00:00:00'),(26,1,5,'БК-19','2006-10-10 00:00:00'),(27,2,6,'БК-20','2006-10-11 00:00:00'),(28,3,7,'БК-1','2006-10-12 00:00:00');
/*!40000 ALTER TABLE `lessons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teachers` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `addr` varchar(255) NOT NULL DEFAULT '',
  `phone` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES (1,'Иванов Иван Иванович','Москва, Бакунинская, 71','123-45-67'),(2,'Петров Петр Петрович','Москва, Госпитальный пер. 4/5','765-43-21'),(3,'Сидоров Сидор Сидорович','Москва, Цветной бульвар, 19','987-65-43'),(4,'Пупкин Василий Иванович','Щелково, Комарова, 21','456-23-12'),(5,'Сумкин Федор Михайлович','Королев, проспект Космонавтов, 15','543-43-23');
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `symfony`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `symfony` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `symfony`;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `author` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` VALUES ('DoctrineMigrations\\Version20230128204515','2023-01-29 15:42:41',219),('DoctrineMigrations\\Version20230129123759','2023-01-29 15:42:41',8),('DoctrineMigrations\\Version20230130013852','2023-01-30 04:40:26',91);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `file`
--

DROP TABLE IF EXISTS `file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `file` (
  `id` int NOT NULL AUTO_INCREMENT,
  `author_id` int DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `typeOfFile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8C9F3610F675F31B` (`author_id`),
  CONSTRAINT `FK_8C9F3610F675F31B` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file`
--

LOCK TABLES `file` WRITE;
/*!40000 ALTER TABLE `file` DISABLE KEYS */;
/*!40000 ALTER TABLE `file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pdf_file`
--

DROP TABLE IF EXISTS `pdf_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pdf_file` (
  `id` int NOT NULL,
  `pages_number` int NOT NULL,
  `orientation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_7FBE7B5EBF396750` FOREIGN KEY (`id`) REFERENCES `file` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pdf_file`
--

LOCK TABLES `pdf_file` WRITE;
/*!40000 ALTER TABLE `pdf_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `pdf_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_user`
--

DROP TABLE IF EXISTS `security_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `security_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_52825A88E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_user`
--

LOCK TABLES `security_user` WRITE;
/*!40000 ALTER TABLE `security_user` DISABLE KEYS */;
INSERT INTO `security_user` VALUES (1,'dummy@gmail.com','[]','$argon2id$v=19$m=65536,t=4,p=1$cLhd84/CdWNhN4gYK3kZUg$MsS48BmMQMP3IjXdG3LgmqIipMLLtM6/jFUUz6sgIS0'),(2,'demo@gmail.com','[]','$argon2id$v=19$m=65536,t=4,p=1$9Blsa9Ep+DbjQzixKy1CRA$i3noMhQmAi2gO89Tnjb5WikQGbG4CSO12bGn3sMjPjU'),(3,'user@demo.com','[]','$argon2id$v=19$m=65536,t=4,p=1$RZLpMOt0uST5fdazok1WkA$DTdAjudxSlXvHDXJShMW3ay5dJ4qeAo86fclOPPGq5w'),(7,'admin@demo.com','[\"ROLE_ADMIN\"]','$argon2id$v=19$m=65536,t=4,p=1$PDtITzNK0ueDk9N4Otn/vw$bn4ZFg6CHquzh8jnrmqZv3hikaoq92FrAWD9bCizoRU');
/*!40000 ALTER TABLE `security_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `address_id` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649F5B7AF75` (`address_id`),
  CONSTRAINT `FK_8D93D649F5B7AF75` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_user`
--

DROP TABLE IF EXISTS `user_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_user` (
  `user_source` int NOT NULL,
  `user_target` int NOT NULL,
  PRIMARY KEY (`user_source`,`user_target`),
  KEY `IDX_F7129A803AD8644E` (`user_source`),
  KEY `IDX_F7129A80233D34C1` (`user_target`),
  CONSTRAINT `FK_F7129A80233D34C1` FOREIGN KEY (`user_target`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_F7129A803AD8644E` FOREIGN KEY (`user_source`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_user`
--

LOCK TABLES `user_user` WRITE;
/*!40000 ALTER TABLE `user_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `video` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `security_user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_7CC7DA2CA76ED395` (`user_id`),
  KEY `IDX_7CC7DA2CCA85D888` (`security_user_id`),
  CONSTRAINT `FK_7CC7DA2CA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_7CC7DA2CCA85D888` FOREIGN KEY (`security_user_id`) REFERENCES `security_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` VALUES (1,NULL,'334334','2023-01-29 16:10:12',NULL,NULL,'/tmp/php3SgVyz',NULL),(2,NULL,'asasasasas','2023-01-29 16:34:51',NULL,NULL,'/tmp/phpfVXniS',NULL),(3,NULL,'asasasas','2023-01-29 16:42:01',NULL,NULL,'/tmp/phpGkzYZ6',NULL),(4,NULL,'asasasas','2023-01-29 16:42:27',NULL,NULL,'/tmp/phpez6b9U',NULL),(7,NULL,'video title','2023-01-30 11:06:34',NULL,NULL,'video path',NULL);
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video_file`
--

DROP TABLE IF EXISTS `video_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `video_file` (
  `id` int NOT NULL,
  `format` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` int NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_8B086BCCBF396750` FOREIGN KEY (`id`) REFERENCES `file` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_file`
--

LOCK TABLES `video_file` WRITE;
/*!40000 ALTER TABLE `video_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `video_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `videos`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `videos` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `videos`;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_id` int DEFAULT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_3AF346685E237E06` (`name`),
  KEY `IDX_3AF34668727ACA70` (`parent_id`),
  CONSTRAINT `FK_3AF34668727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,NULL,'Electronics'),(2,NULL,'Toys'),(3,NULL,'Books'),(4,NULL,'Movies'),(5,1,'Cameras'),(6,1,'Computers'),(7,1,'Cell Phones'),(8,6,'Laptops'),(9,6,'Desktops'),(10,8,'Apple'),(11,8,'Asus'),(12,8,'Dell'),(13,8,'Lenovo'),(14,8,'HP'),(15,3,'Children\'s Books'),(16,3,'Kindle eBooks'),(17,4,'Family'),(18,4,'Romance'),(19,18,'Romantic Comedy'),(20,18,'Romantic Drama');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `video_id` int NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_5F9E962AA76ED395` (`user_id`),
  KEY `IDX_5F9E962A29C1004E` (`video_id`),
  CONSTRAINT `FK_5F9E962A29C1004E` FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_5F9E962AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (2,2,10,'Comment 2 Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.','2018-09-08 10:34:45'),(3,3,10,'Comment 3 Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.','2018-08-08 23:34:45'),(5,2,11,'Comment 2 Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.','2018-09-08 15:17:06'),(6,3,11,'Comment 3 Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.','2018-08-08 21:34:45'),(7,3,11,'Comment 4 Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.','2018-08-08 22:34:45'),(8,3,11,'Comment 5 Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.','2018-08-08 23:34:45');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dislikes`
--

DROP TABLE IF EXISTS `dislikes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dislikes` (
  `video_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`video_id`,`user_id`),
  KEY `IDX_2DF3BE1129C1004E` (`video_id`),
  KEY `IDX_2DF3BE11A76ED395` (`user_id`),
  CONSTRAINT `FK_2DF3BE1129C1004E` FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_2DF3BE11A76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dislikes`
--

LOCK TABLES `dislikes` WRITE;
/*!40000 ALTER TABLE `dislikes` DISABLE KEYS */;
INSERT INTO `dislikes` VALUES (10,1),(10,2),(10,3);
/*!40000 ALTER TABLE `dislikes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` VALUES ('DoctrineMigrations\\Version20221218232015','2022-12-19 02:20:15',246);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `video_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`video_id`,`user_id`),
  KEY `IDX_49CA4E7D29C1004E` (`video_id`),
  KEY `IDX_49CA4E7DA76ED395` (`user_id`),
  CONSTRAINT `FK_49CA4E7D29C1004E` FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_49CA4E7DA76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (1,1),(1,2),(1,3),(2,1),(2,2),(11,1),(11,2),(12,1),(12,2),(12,3);
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscriptions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `plan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valid_to` datetime NOT NULL,
  `payment_status` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `free_plan_used` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions`
--

LOCK TABLES `subscriptions` WRITE;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
INSERT INTO `subscriptions` VALUES (1,'enterprise','2122-12-19 02:20:16','paid',0),(2,'free','2023-01-19 02:20:16','paid',1),(3,'pro','2022-12-19 02:21:16','paid',0);
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `subscription_id` int DEFAULT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vimeo_api_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_1483A5E9E7927C74` (`email`),
  UNIQUE KEY `UNIQ_1483A5E99A1887DC` (`subscription_id`),
  CONSTRAINT `FK_1483A5E99A1887DC` FOREIGN KEY (`subscription_id`) REFERENCES `subscriptions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'jw@symf4.loc','[\"ROLE_ADMIN\"]','$argon2id$v=19$m=65536,t=4,p=1$A/ODT80JMnYm1rKdYhPJ0Q$TJ+Bsk7jo8nFH0DHhWzAT33QawqqNC2QcO0wzxsfRRA','John','Wayne','cc9a2765b47db427efdb5f708e52f08d'),(2,NULL,'jw2@symf4.loc','[\"ROLE_ADMIN\"]','$argon2id$v=19$m=65536,t=4,p=1$sg8qzu3j3VDENMf8n6uJ0Q$sCI7Lw6k0Jl5YF6m0sEAV3Hz40xaM4ribIJT//6u4hw','John','Wayne2',NULL),(3,2,'jd@symf4.loc','[\"ROLE_USER\"]','$argon2id$v=19$m=65536,t=4,p=1$FHZwOEdlblyIjmYrDlr5Jg$uNM6zrs9w6ojGmzXLgmYUd0jK+SKwplv9uI24cRYWgs','John','Doe',NULL),(4,3,'tb@symf4.loc','[\"ROLE_USER\"]','$argon2id$v=19$m=65536,t=4,p=1$SVY8S9eshxmO99Yk/wdFHw$1sn5ibddt3TeLb1zc934nJlO2FUcHXd/84roCcxcaD4','Ted','Bundy',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `videos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_29AA643212469DE2` (`category_id`),
  KEY `title_idx` (`title`),
  CONSTRAINT `FK_29AA643212469DE2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos`
--

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
INSERT INTO `videos` VALUES (1,4,'Movies 1','https://player.vimeo.com/video/289729765',70),(2,4,'Movies 2','https://player.vimeo.com/video/238902809',93),(3,4,'Movies 3','https://player.vimeo.com/video/150870038',157),(4,4,'Movies 4','https://player.vimeo.com/video/219727723',201),(5,4,'Movies 5','https://player.vimeo.com/video/289879647',271),(6,4,'Movies 6','https://player.vimeo.com/video/261379936',107),(7,4,'Movies 7','https://player.vimeo.com/video/289029793',276),(8,4,'Movies 8','https://player.vimeo.com/video/60594348',43),(9,4,'Movies 9','https://player.vimeo.com/video/290253648',72),(10,17,'Family 1','https://player.vimeo.com/video/289729765',179),(11,17,'Family 2','https://player.vimeo.com/video/289729765',92),(12,17,'Family 3','https://player.vimeo.com/video/289729765',111),(13,19,'Romantic comedy 1','https://player.vimeo.com/video/289729765',269),(14,19,'Romantic comedy 2','https://player.vimeo.com/video/289729765',129),(15,20,'Romantic drama 1','https://player.vimeo.com/video/289729765',252),(16,2,'Toys  1','https://player.vimeo.com/video/289729765',295),(17,2,'Toys  2','https://player.vimeo.com/video/289729765',102),(18,2,'Toys  3','https://player.vimeo.com/video/289729765',33),(19,2,'Toys  4','https://player.vimeo.com/video/289729765',95),(20,2,'Toys  5','https://player.vimeo.com/video/289729765',169),(21,2,'Toys  6','https://player.vimeo.com/video/289729765',139),(24,NULL,'vimeoreact','/uploads/videos/8598882.mp4',NULL);
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!50606 SET GLOBAL INNODB_STATS_AUTO_RECALC=@OLD_INNODB_STATS_AUTO_RECALC */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-18 19:01:10