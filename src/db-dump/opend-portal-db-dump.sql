CREATE DATABASE  IF NOT EXISTS `openedu-portal` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `openedu-portal`;
-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: openedu-portal
-- ------------------------------------------------------
-- Server version	5.5.44-0ubuntu0.14.04.1

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
-- Table structure for table `Availability`
--

DROP TABLE IF EXISTS `Availability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Availability` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Availability`
--

LOCK TABLES `Availability` WRITE;
/*!40000 ALTER TABLE `Availability` DISABLE KEYS */;
INSERT INTO `Availability` VALUES (1,'Current'),(2,'Soon'),(3,'Self');
/*!40000 ALTER TABLE `Availability` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Category`
--

DROP TABLE IF EXISTS `Category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Category`
--

LOCK TABLES `Category` WRITE;
/*!40000 ALTER TABLE `Category` DISABLE KEYS */;
INSERT INTO `Category` VALUES (1,'人文藝術'),(2,'社會科學'),(3,'自然與應用科學');
/*!40000 ALTER TABLE `Category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Course`
--

DROP TABLE IF EXISTS `Course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Course` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `endData` date DEFAULT NULL,
  `enrollDueDate` date DEFAULT NULL,
  `isMobile` bit(1) NOT NULL,
  `length` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `thumbURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `videoURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` int(11) NOT NULL,
  `availability_id` int(11) NOT NULL,
  `description_id` bigint(20) NOT NULL,
  `level_id` int(11) NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKg1r80siuxg36fslgmgxc08egm` (`availability_id`),
  KEY `FKa3v5ffui4e8q9vmna61ca1bbq` (`description_id`),
  KEY `FKh38cc75ivx0bay0sea8d38ydb` (`level_id`),
  CONSTRAINT `FKa3v5ffui4e8q9vmna61ca1bbq` FOREIGN KEY (`description_id`) REFERENCES `description` (`id`),
  CONSTRAINT `FKg1r80siuxg36fslgmgxc08egm` FOREIGN KEY (`availability_id`) REFERENCES `Availability` (`id`),
  CONSTRAINT `FKh38cc75ivx0bay0sea8d38ydb` FOREIGN KEY (`level_id`) REFERENCES `Level` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Course`
--

LOCK TABLES `Course` WRITE;
/*!40000 ALTER TABLE `Course` DISABLE KEYS */;
INSERT INTO `Course` VALUES (1,'fcux-2015004-201509','2015-12-07',NULL,'\0',0,'空間資訊與智慧生活','2015-10-05','img/courses/thumb/1.jpg','https://www.youtube.com/embed/n6ameLB-8vA',2015,1,1,1,'https://courses.openedu.tw/register?course_id=FCUx%2F2015010%2F201512&enrollment_action=enroll'),(2,'dyux-dyu10401-201511','2016-01-24',NULL,'\0',0,'為公司把把脈','2015-11-16','img/courses/thumb/2.jpg','https://www.youtube.com/embed/-AD4omyV3m8',2015,2,2,1,'https://courses.openedu.tw/register?course_id=DYUx%2Fdyu10401%2F201511&enrollment_action=enroll'),(3,'fcux-2015013-201511','2015-12-27',NULL,'\0',0,'讓老闆不得不重用你 – 正在崛起的「專案管理」','2015-11-02','img/courses/thumb/3.jpg','https://www.youtube.com/embed/GfKqkmSRASY',2015,2,3,1,'https://courses.openedu.tw/register?course_id=course-v1%3AFCUx%2B2015013%2B201511&enrollment_action=enroll'),(4,'fcux-2015012-201509','2015-12-31',NULL,'\0',0,'從車庫到金庫 – 看見台灣企業生命力(逢甲EMBA專班)','2015-09-30','img/courses/thumb/4.jpg','https://www.youtube.com/embed/_AIzpvSP9Qo',2015,1,4,1,'https://courses.openedu.tw/register?course_id=FCUx%2F2015012%2F201509&enrollment_action=enroll'),(5,'fcux-2015s001-201509','2016-01-31',NULL,'\0',0,'創新策略與領導(逢甲專班)','2015-09-14','img/courses/thumb/5.jpg',NULL,2015,1,5,1,'https://courses.openedu.tw/register?course_id=FCUx%2F2015S001%2F201509&enrollment_action=enroll'),(6,'fcux-2015012-201509','2015-12-31',NULL,'\0',0,'從車庫到金庫 – 看見台灣企業生命力','2015-09-30','img/courses/thumb/4.jpg','https://www.youtube.com/embed/_AIzpvSP9Qo',2015,1,6,1,'https://courses.openedu.tw/register?course_id=FCUx%2F2015012%2F201509&enrollment_action=enroll'),(7,'ncux-mo0012-201510','2015-12-26',NULL,'\0',0,'線性代數(一)','2015-10-25','img/courses/thumb/ncux-mo0012-201510-760x590-370x278.jpg','https://www.youtube.com/embed/SMpu5nlaIhM',2015,2,7,1,'https://courses.openedu.tw/register?course_id=NCUx%2FMO0012%2F201510&enrollment_action=enroll'),(8,'ncux-mo0013-201510','2015-12-05',NULL,'\0',0,'普通化學—原子結構與原子間的鍵結','2015-10-25','img/courses/thumb/MO0013-370x278.png','https://www.youtube.com/embed/27RzV6h_H64',2015,2,8,1,'https://courses.openedu.tw/register?course_id=NCUx%2FMO0013%2F201510&enrollment_action=enroll'),(9,'ncux-mo0014-201512','2016-01-17',NULL,'\0',0,'臺灣客家文化導論','2015-12-07','img/courses/thumb/ncux-mo0014-201512-760x590-370x278.png','https://www.youtube.com/embed/VnOh78UwU00',2015,1,9,1,'https://courses.openedu.tw/register?course_id=NCUx%2FMO0014%2F201512&enrollment_action=enroll'),(10,'nkuhtx-tc101-201511','2016-01-15',NULL,'\0',0,'台灣傳統糕餅文化與製作、創新','2015-11-06','img/courses/thumb/10.jpg','https://www.youtube.com/embed/lOR4IxbEP6M',2015,2,10,1,'https://courses.openedu.tw/register?course_id=NKUHTx%2FTC101%2F201511&enrollment_action=enroll'),(11,'yuntechx-yuntech001-201511','2016-01-07',NULL,'\0',0,'大學生的必修學分-情感教育','2015-11-12','img/courses/thumb/YUNTECH001_20151-370x278.jpg','https://www.youtube.com/embed/pXG3WK-CC-g',2015,2,11,1,'https://courses.openedu.tw/register?course_id=YunTechx%2Fyuntech001%2F201511&enrollment_action=enroll'),(12,'fcux-2015004-201509','2016-01-31',NULL,'\0',0,'大學普通物理實驗 – 手作坊','2015-09-28','img/courses/thumb/12.jpg','https://www.youtube.com/embed/Tlcn5eZPFgQ',2015,1,12,1,'https://courses.openedu.tw/register?course_id=FCUx%2F2015004%2F201509&enrollment_action=enroll'),(13,'fcux-2015007-201510','2015-12-10',NULL,'\0',0,'從車庫到金庫 – 看見台灣企業生命力(企業合作課程)','2015-10-22','img/courses/thumb/4.jpg','https://www.youtube.com/embed/_AIzpvSP9Qo',2015,1,13,1,'https://courses.openedu.tw/register?course_id=FCUx%2F2015007%2F201510&enrollment_action=enroll'),(14,'fcux-2015001-201511','2016-01-03',NULL,'\0',0,'創業九宮格','2015-11-23','img/courses/thumb/14.jpg','https://www.youtube.com/embed/RjGffQ40--M',2015,2,14,1,'https://courses.openedu.tw/register?course_id=FCUx%2F2015001%2F201511&enrollment_action=enroll'),(15,'fcux-2015002-201510','2015-11-29',NULL,'\0',0,'併軌 – 發現社會企業','2015-10-19','img/courses/thumb/15.jpg','https://www.youtube.com/embed/kQyi272nigc',2015,1,15,1,'https://courses.openedu.tw/register?course_id=FCUx%2F2015002%2F201510&enrollment_action=enroll'),(16,'fcux-2015003-201511','2015-12-13',NULL,'\0',0,'把智慧嵌入這個大千世界','2015-11-02','img/courses/thumb/16.jpg','https://www.youtube.com/embed/JDm5a4AuoY4',2015,2,16,1,'https://courses.openedu.tw/register?course_id=FCUx%2F2015003%2F201511&enrollment_action=enroll'),(17,'ncux-mo0011-201509','2015-11-01',NULL,'\0',0,'臺灣客家文化導論 – 臺灣的客家話與客家文學','2015-09-21','img/courses/thumb/ncux-mo0011-201509-370x278.png','https://www.youtube.com/embed/VnOh78UwU00',2015,1,17,1,'https://courses.openedu.tw/register?course_id=NCUx%2FMO0011%2F201509&enrollment_action=enroll'),(18,'sp-103003102-104',NULL,NULL,'\0',0,'生活中無所不在的物理',NULL,'img/courses/thumb/18.png','https://www.youtube.com/embed/4CStsYlrknM',2015,3,18,1,'https://courses.openedu.tw/register?course_id=SP%2F103003102%2F104&enrollment_action=enroll'),(19,'sp-103000802-104',NULL,NULL,'\0',0,'演算法基礎與應用',NULL,'img/courses/thumb/19.png','https://www.youtube.com/embed/jon0-ouFtYI',2015,3,19,1,'https://courses.openedu.tw/register?course_id=SP%2F103000802%2F104&enrollment_action=enroll'),(20,'sp-103000805-104',NULL,NULL,'',0,'微積分拾級',NULL,'img/courses/thumb/20.jpg','https://www.youtube.com/embed/XGV-x-DxFqg',2015,3,20,1,'https://courses.openedu.tw/register?course_id=SP%2F103000805%2F104&enrollment_action=enroll'),(21,'sp-103100704-104',NULL,NULL,'\0',0,'I FUN 好聲音 – 玩出屬於你的耳機',NULL,'img/courses/thumb/21.png','https://www.youtube.com/embed/nC_v8T3VAQU',2015,3,21,1,'https://courses.openedu.tw/register?course_id=SP%2F103100704%2F104&enrollment_action=enroll'),(22,'fcux-2015005-201509','2015-11-30',NULL,'\0',0,'從車庫到金庫 – 看見台灣企業生命力(逢甲國貿專班)','2015-09-14','img/courses/thumb/4.jpg','https://www.youtube.com/embed/_AIzpvSP9Qo',2015,1,22,1,'https://courses.openedu.tw/register?course_id=FCUx%2F2015005%2F201509&enrollment_action=enroll');
/*!40000 ALTER TABLE `Course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Course_Category`
--

DROP TABLE IF EXISTS `Course_Category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Course_Category` (
  `Course_id` bigint(20) NOT NULL,
  `category_id` int(11) NOT NULL,
  KEY `FKopobd7ie31w8e7urgirhphq2m` (`category_id`),
  KEY `FK3qpeib385k2h9oq8t89bkx6jy` (`Course_id`),
  CONSTRAINT `FKopobd7ie31w8e7urgirhphq2m` FOREIGN KEY (`category_id`) REFERENCES `Category` (`id`),
  CONSTRAINT `fk_Course_Category_1` FOREIGN KEY (`Course_id`) REFERENCES `Course` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Course_Category`
--

LOCK TABLES `Course_Category` WRITE;
/*!40000 ALTER TABLE `Course_Category` DISABLE KEYS */;
INSERT INTO `Course_Category` VALUES (1,3),(4,2),(5,2),(6,2),(9,1),(13,2),(17,1),(22,2),(2,2),(3,2),(11,2),(14,2),(7,3),(8,3),(10,3),(16,3),(18,3),(19,3),(20,3),(21,3),(12,3),(15,2);
/*!40000 ALTER TABLE `Course_Category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Course_Instructor`
--

DROP TABLE IF EXISTS `Course_Instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Course_Instructor` (
  `Course_id` bigint(20) NOT NULL,
  `instructor_id` bigint(20) NOT NULL,
  KEY `FKfva5051tb0ugq57xqgs6jquv4` (`instructor_id`),
  KEY `FK4slgo5o2ewpiw2jtj6n63rbjn` (`Course_id`),
  CONSTRAINT `FK4slgo5o2ewpiw2jtj6n63rbjn` FOREIGN KEY (`Course_id`) REFERENCES `course` (`id`),
  CONSTRAINT `FKfva5051tb0ugq57xqgs6jquv4` FOREIGN KEY (`instructor_id`) REFERENCES `Instructor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Course_Instructor`
--

LOCK TABLES `Course_Instructor` WRITE;
/*!40000 ALTER TABLE `Course_Instructor` DISABLE KEYS */;
INSERT INTO `Course_Instructor` VALUES (1,3),(2,1),(3,2),(4,5),(3,4),(4,6),(4,7),(4,8),(4,9),(4,10),(4,11),(5,12),(6,5),(6,6),(6,7),(6,8),(6,9),(6,10),(6,11),(7,13),(8,14),(9,15),(9,16),(9,17),(9,18),(10,19),(11,20),(12,21),(12,22),(12,23),(13,5),(13,6),(13,7),(13,8),(13,9),(13,10),(13,11),(14,24),(14,25),(14,26),(15,11),(16,27),(16,28),(16,29),(16,30),(17,16),(17,18),(18,31),(18,32),(18,33),(19,34),(19,35),(19,36),(19,37),(19,38),(19,39),(20,40),(21,41),(21,42),(21,43),(21,44),(21,45),(21,46),(22,5),(22,6),(22,7),(22,8),(22,9),(22,10),(22,11);
/*!40000 ALTER TABLE `Course_Instructor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Course_School`
--

DROP TABLE IF EXISTS `Course_School`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Course_School` (
  `Course_id` bigint(20) NOT NULL,
  `offer_id` int(11) NOT NULL,
  KEY `FKh6mfxgs0inbhnvx4xjymj3pdm` (`offer_id`),
  KEY `FKt0j27cpsetu1w5gphssaq0sq2` (`Course_id`),
  CONSTRAINT `FKh6mfxgs0inbhnvx4xjymj3pdm` FOREIGN KEY (`offer_id`) REFERENCES `School` (`id`),
  CONSTRAINT `FKt0j27cpsetu1w5gphssaq0sq2` FOREIGN KEY (`Course_id`) REFERENCES `course` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Course_School`
--

LOCK TABLES `Course_School` WRITE;
/*!40000 ALTER TABLE `Course_School` DISABLE KEYS */;
INSERT INTO `Course_School` VALUES (1,1),(2,2),(3,1),(4,1),(5,1),(6,1),(7,3),(8,3),(9,3),(10,4),(11,5),(12,1),(13,1),(14,1),(15,1),(16,1),(17,3),(18,6),(19,3),(20,3),(21,1),(22,1);
/*!40000 ALTER TABLE `Course_School` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Course_Subject`
--

DROP TABLE IF EXISTS `Course_Subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Course_Subject` (
  `Course_id` bigint(20) NOT NULL,
  `subject_id` bigint(20) NOT NULL,
  KEY `FKrwu33h9lcurf7s7e8ktxb5d4v` (`subject_id`),
  KEY `FKotopnu641rif82tqrooxmha5d` (`Course_id`),
  CONSTRAINT `FKotopnu641rif82tqrooxmha5d` FOREIGN KEY (`Course_id`) REFERENCES `course` (`id`),
  CONSTRAINT `FKrwu33h9lcurf7s7e8ktxb5d4v` FOREIGN KEY (`subject_id`) REFERENCES `Subject` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Course_Subject`
--

LOCK TABLES `Course_Subject` WRITE;
/*!40000 ALTER TABLE `Course_Subject` DISABLE KEYS */;
/*!40000 ALTER TABLE `Course_Subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Description`
--

DROP TABLE IF EXISTS `Description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Description` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `assessment` varchar(511) COLLATE utf8_unicode_ci DEFAULT NULL,
  `characteristic` varchar(1023) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` varchar(1023) COLLATE utf8_unicode_ci DEFAULT NULL,
  `objective` varchar(1023) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prerequisite` varchar(1023) COLLATE utf8_unicode_ci DEFAULT NULL,
  `schedule` varchar(1023) COLLATE utf8_unicode_ci DEFAULT NULL,
  `target` varchar(511) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Description`
--

LOCK TABLES `Description` WRITE;
/*!40000 ALTER TABLE `Description` DISABLE KEYS */;
INSERT INTO `Description` VALUES (1,'<ul><li>各周單元練習測驗20%</li><li>期中議題心得報告30%</li><li>期末總結心得報告30%</li><li>線上討論20%</li></ul>','運用基本的空間概念作為基礎，結合空間資訊的基礎知識、整合系統與創新應用，分享最新的空間資訊技術，透過環環相扣的單元課程內容，引導學生思考空間資訊在未來的城市規劃與發展，擘劃出智慧生活的美好藍圖。','深入淺出地闡述空間資訊在各行各業中所扮演的重要角色，例如網路發展、能源監控、環境監測、交通管理、智慧城市等案例分析','<ul><li>培養學生具備空間思維的能力。</li><li>培養學生解決空間議題的能力。</li><li>建立學生智慧生活的概念。</li></ul>','具備基礎的空間知識，如方向方位、經緯座標，並有使用智慧行動裝置、電子地圖等經驗者，較易快速融入課程','<ul><li>第一週 課程介紹、認識地圖方位</li><li>第二週 地圖投影(坐標、投影系統)</li><li>第三週 向量式資料與網格式資料</li><li>第四週 遙感探測原理</li><li>第五週 全球定位系統</li><li>第六週 無人飛行載具(UAV)</li><li>第七週 空間資訊於防災應用</li><li>第八週 空間資訊於交通應用</li><li>第九週 空間資訊與智慧城市</li><li>第十週 空間資訊與智慧生活</li></ul>','<ul><li>修習過高一地理資訊課程之高中生</li><li>對空間資訊有興趣之大專學生</li><li>一般民眾</li></ul>'),(2,'<ul><li>課程及格標準: _60_分 滿分：_100_分</li><li>華山論見(議題發表) 每週皆有在討論區中發表議題者得25%</li><li>閱讀與觀看教材 課程閱讀得30%</li><li>武林大會(評量) 線上評量：20%</li><li>作業(2篇) 線上作業：20%(第一份10%；第二份15%)</li></ul>','本課程透過小說情節(天龍八部及射鵰英雄傳)，吸引學習者的注意力後，再說明實務狀況，加深學習者之印象，讓課程內容能深植學習者之腦海。再用中醫的四診法及巴非特的八部曲及降龍十八掌為學習者詳細說明財務報表分析內容。整個學習過程輕鬆活潑有趣，一改傳統財務報表分析課程枯燥無味的刻板印象。','本課程將中醫的「望」、「聞」、「問」、「切」四種看診手法，融入財務報表分析中，以深入淺出之文字引領學習者進入財務報表分析的世界，用學習者自己生活週遭之案例進行解說，輔以影像、繪圖等方式進行解說，讓學習者輕鬆理解財務報表。','<ul><li>財務報表是公司與投資大眾之溝通工具。公司傳達他們的經營績效給公司外部人士，供資訊使用者了解公司的狀況。學會計閱讀財務報表對任何需運用財務資訊做決策的資訊使用者而言是必要之要求。本課程之主要目的在提供容易閱讀財務報表的方法給企業財務資訊之潛在使用者，如投資大眾、債權人、公司員工和其他利害關係人（如供應商，客戶），逐步引導財務報表使用者進入財務報表世界。本課程著重於如何理解公司各項活動造成報表的變化，首先教導財務報表使用者學會「望」字訣，懂外部經濟活動之脈動變化之影響，例如：全球經濟變化。</li><li>第二，引導財務報表使用者學「聞」字訣，讓使用者理解產業變化對財務報表影響。</li><li>第三，指引財務報表使用者學習「問」字訣，可以看到財務報表數字時問自己數字背後代表之意義。</li><li>第四，最後教導財務報表使用者學習「切」字訣，讓財務報表使用者拿到財務報表時，即可理解公司究竟發生什麼事，如何處理這些問題。</li></ul>','本課程適合從來沒學習過或很少接觸財務報表，卻希望增進自己的財務報表相關知識的各行各業學員。學習財務財務報表沒有學術的先修課程要求，只要您肯學習即可輕鬆進入財務報表分析領域。在此一門課程，需不斷地廣泛閱讀財務報表，因此唯一條件要求是數學四則運算之先備知識，若您己具備加、減、乘、除之能力，即歡迎加入本課程一起提升自己對公司財務報表分析之認知。','<ul><li>第一週 蹲馬步~財務報表分析之基本常識介紹</li><li>第二週 「望」診~綜合損益表與營業獲利能力分析之閱讀重點</li><li>第三週 「望」診~資產負債表及現金流量表之閱讀重點</li><li>第四週 「聞」診~經濟環境分析</li><li>第五週 「問」診~產業分析</li><li>第六週 「切」診~分析工具1~巴菲特八部曲~公司內部財務分析</li><li>第七週 「切」診~分析工具2~巴菲特八部曲~公司外部比較分析</li><li>第八週 「切」診~五力分析~降龍十八掌</li><li>第九週 「切」診~分析技巧1~案例說明</li><li>第十週 出具診斷書~整體分析</li></ul>','本課程適合從來沒學習過或很少接觸財務報表，卻希望增進自己的財務報表相關知識的各行各業學員。學習財務財務報表沒有學術的先修課程要求，只要您肯學習即可輕鬆進入財務報表分析領域。在此一門課程，需不斷地廣泛閱讀財務報表，因此唯一條件要求是數學四則運算之先備知識，若您己具備加、減、乘、除之能力，即歡迎加入本課程一起提升自己對公司財務報表分析之認知。'),(3,'<ul>自我練習題演練成績佔總成績40% (共計四次自我練習題演練，每次均有5題單選題)<li>第一次自我練習題出題週數:第二週 ; 岀題範圍:第一週與第二週課程影片內容</li><li>第二次自我練習題出題週數:第四週 ; 岀題範圍:第三週與第四週課程影片內容</li><li>第三次自我練習題出題週數:第五週 ; 岀題範圍:第五週課程影片內容</li><li>第四次自我練習題出題週數:第七週 ; 岀題範圍:第六週與第七週課程影片內容線上測驗分數佔總成績60% (共有20題單選題)</li><li>線上測驗出題週數:第八週 ; 岀題範圍:第一週與到第八週所有課程影片內容</li></ul>','','舉凡與日常生活有關的婚禮、旅遊、露營等，甚至企業的研發與行銷活動、政府的公共工程與政策推動等都合乎專案的定義，足見專案與人類活動的關連性是非常密切的。『專案管理』(或稱為項目管理)乃是將管理知識、技術、工具、方法綜合運用到任何一個專案行為上，使其能符合或超越『專案利害關係者』(如:業主、贊助商、老板、顧客等)需求與期許的一種專門科學，適合各領域的人來學習。本課程導入系統思考，讓學員更有效學習專案管理的核心知識，以及採用實際生活化專案案例的解說來讓學員充分瞭解專案管理工具如何應用，藉以培養其初步運用能力。學習本課程將能擺脫專案趕工、重工、超支的惡性循環，達到如期(時間)、如質(品質)、如預算(成本)的目標。','<ul><li>使學員具備專案管理核心知識。</li><li>培養學員系統思考與解決問題的思維。</li><li>讓學員具體瞭解專案管理工具的實務應用。</li></ul>','本課程強調應用於日常生活與工作執行，適合各領域族群，無須任何先備知識。','<ul><li>第一週 專案管理概論</li><li>第二週 專案管理的系統思考</li><li>第三週 專案起始</li><li>第四週 專案規劃、專案範疇、時程規劃</li><li>第五週 專案品質、採購、風險、成本規劃</li><li>第六週 專案執行</li><li>第七週 專案監督與控制(一)</li><li>第八週 專案監督與控制(二)與專案終結</li></ul>','各領域專案經理、研發專案人員、行銷專案人員、政府專案相關人員、會展企劃人員、活動企劃人員、對管理專案有興趣的社會大眾。'),(4,'<ul><li>作業繳交</li><li>同儕互評</li><li>線上測驗</li><li>教材閱讀</li><li>討論區參與</li></ul>','<ul><li>課程以企業發展歷程為軸心，聚焦探討創業精神與企業社會責任、創新及國際化等影響企業成長的關鍵性議題。</li><li>每堂課邀請學者和產業專家，甚至個案業者現身說法，參與50~60分鐘數位對談，增進產業場域的現場感；而非單方向的觀念傳輸。</li><li>對話教師和產業專家專業領域涵蓋四大單元，可產生互補和多元性觀點。</li></ul>','本課程為進入商管專業領域—創業與企業成長學習的啟發性課程，以個案教學為主，閱讀真實企業個案，藉由教師線上引導和專家意見分享影片，帶領學習小組進行決策問題分析，解決方案發展。以講故事和研討方式引導學習者進入最接近真實世界(real world)的企業決策和營運情境。','<ul><li>啟發同學的創業精神與創業興趣，並與企業社會責任的議題進行連結和省思。</li><li>做為銜接創新管理、行銷管理、策略管理、國際企業管理、管理個案分析等商管進階課程的導論課程。</li><li>協助同學對企業自創業到成長的階段歷程與面對的挑戰有簡要的整體認識，鼓勵同學參與企業競賽或發展創業提案。</li></ul>','本課程適合大學部三、四年級對創業和企業經營管理有興趣同學修習，有管理學背景者佳，但非必要。','<ul><li>第一週 創業:薰衣草森林-創業與維持優勢</li><li>第二週 創業:里仁</li><li>第三週 創業:信義房屋</li><li>第四週 營運模式競爭:台明將</li><li>第五週 創新:太平洋自行車</li><li>第六週 營運模式:春水堂</li><li>第七週 創新品牌:歐都納</li><li>第八週 品牌經營:歐萊德</li><li>第九週 制度化與品牌管理:薰衣草森林-品牌手冊的建立</li></ul>','<ul><li>各學院大學部三、四年級對創業和企業經營管理有興趣同學。</li><li>EMBA在職專班學生。</li><li>企業界在職人士。</li></ul>'),(5,'','','本課程由許士軍老師開課。','了解創新、策略與領導間之關係，以及實務上之應用','經濟學、社會科學導論、有實務經驗尤佳','<ul><li>第一週 緒論</li><li>第二週 競爭策略與競爭優勢來源(一)</li><li>第三週 建立差異化與客製化優勢之競爭策略</li><li>第四週 建立核心能力上之競爭策略</li><li>第五週 企業集團整體策略與成長策略(一)</li><li>第六週 企業集團整體策略與成長策略(二)</li><li>第七週 全球化經營策略</li><li>第八週 產業生命週期及產業轉型</li><li>第九週 創新性組織與組織創新</li><li>第十週 有效之創新領導者(一)</li><li>第十一週 有效之創新領導者(二)</li></ul>','商學院、MBA及EMBA、工學院'),(6,'<ul><li>作業繳交</li><li>同儕互評</li><li>線上測驗</li><li>教材閱讀</li><li>討論區參與</li></ul>','<ul><li>課程以企業發展歷程為軸心，聚焦探討創業精神與企業社會責任、創新及國際化等影響企業成長的關鍵性議題。</li><li>每堂課邀請學者和產業專家，甚至個案業者現身說法，參與50~60分鐘數位對談，增進產業場域的現場感；而非單方向的觀念傳輸。</li><li>對話教師和產業專家專業領域涵蓋四大單元，可產生互補和多元性觀點。</li></ul>','本課程為進入商管專業領域—創業與企業成長學習的啟發性課程，以個案教學為主，閱讀真實企業個案，藉由教師線上引導和專家意見分享影片，帶領學習小組進行決策問題分析，解決方案發展。以講故事和研討方式引導學習者進入最接近真實世界(real world)的企業決策和營運情境。','<ul><li>啟發同學的創業精神與創業興趣，並與企業社會責任的議題進行連結和省思。</li><li>做為銜接創新管理、行銷管理、策略管理、國際企業管理、管理個案分析等商管進階課程的導論課程。</li><li>協助同學對企業自創業到成長的階段歷程與面對的挑戰有簡要的整體認識，鼓勵同學參與企業競賽或發展創業提案。</li></ul>','本課程適合大學部三、四年級對創業和企業經營管理有興趣同學修習，有管理學背景者佳，但非必要。','<ul><li>第一週 創業:薰衣草森林-創業與維持優勢</li><li>第二週 創業:里仁</li><li>第三週 創業:信義房屋</li><li>第四週 營運模式競爭:台明將</li><li>第五週 創新:太平洋自行車</li><li>第六週 營運模式:春水堂</li><li>第七週 創新品牌:歐都納</li><li>第八週 品牌經營:歐萊德</li><li>第九週 制度化與品牌管理:薰衣草森林-品牌手冊的建立</li></ul>','<ul><li>各學院大學部三、四年級對創業和企業經營管理有興趣同學。</li><li>EMBA在職專班學生。</li><li>企業界在職人士。</li></ul>'),(7,'<ul><li>平時成績40%(含作業20%及討論活動參與度20%)</li><li>期中考成績30%</li><li>期末考成績30%</li></ul>','<ul><li>雖然這是一門錄影課程，我仍選擇採取傳統黑板書寫的上課方式，書寫內容以英文為主，佐以中文講解。這樣的模式，最能讓學生在觀看影片時，感受到課堂學習的情境，同時讓學生耳濡目染，逐步對數學理論產生興趣。</li><li>教材的部份，採用經典的路線。由抽象的向量空間切入，輔以許多具體的例子，以矩陣計算做為工具，最後利用向量空間的理論基礎，完整而明確地描述線性方程組的解集合。</li><li>在課程進行中，穿插一些電腦課程，主要是教導學生如何使用數學軟體，例如，Mathematica，來協助產生矩陣運算及解線性方程。希望經由這樣的教學過程，讓學生對數學與現代科技發展之間的連結有所體認，藉此提升學生的學習興趣跟學習動機。</li></ul>','除了「微積分」以外，「線性代數」可以說是理、工、商、管學院的另一門共同必修科目，這充分顯示線性代數的重要性及實用性。現代社會由於科學技術的快速進展與工商活動的頻繁，需要處理大量而複雜的資訊，然而針對這些複雜問題，線性模型最能提供有效的(近似)解答。','線性代數課程除了訓練學生有效地掌握線性代數的基本語言與理論，並熟悉其學習抽象化的方法，以作為學習更深入的數學知識的基礎','高中數學','<h4>本課程內容共含三單元：<ul>第一單元為﹤向量空間﹥(第一至三週)<br>第二單元為﹤線性轉換﹥(第四至六週)<br>第三單元為﹤矩陣與線性方程組﹥(第七至八週)</ul></h4><h4><ul>每週進度如下：<li>第一週 體與向量空間</li><li>第二週 子空間、線性組合及線性獨立</li><li>第三週 向量空間的基底與維度</li><li>第四週 線性轉換</li><li>第五週 線性轉換的矩陣表示</li><li>第六週 矩陣的性質</li><li>第七週 矩陣的秩及基本列運算</li><li>第八週 線性方程組</li><li>第九週 行列式及其應用</li></ul></h4>','大學部一年級學生或高中三年級學生'),(8,'<ul><li>平時作業40％</li><li>期中考成績30％</li><li>期末考成績30％</li></ul>','「普通化學」這門課是很多大學理工科系一年級的必修科目。我們一般觀察到的物質與現象都是「巨觀」的世界，而「化學」所討論的卻是「微觀」（原子、分子角度）的世界，而「巨觀」與「微觀」之間無法清楚連結，往往是學生在學習「化學」遇到最大的困難。希望藉由本課程的設計，讓同學們瞭解這些「微觀」的世界','介紹原子的電子組態與週期性的關係，再漸進推導至分子，介紹分子中原子之間的鍵結，以及產生鍵結的相關理論。','希望藉由本課程的設計，讓同學們瞭解這些「微觀」的世界。','學習過高中一年級化學，對化學已有初步的認識','<ul><li>第一週：能量與物質、原子軌域</li><li>第二週：電子組態與週期性</li><li>第三週：離子鍵</li><li>第四週：共價鍵</li><li>第五週：電子點結構式與分子形狀</li><li>第六週：混成軌域與分子軌域</li></ul>','大學（科大）一年級、高中二、三年級的學生，以及有興趣學習化學的社會人士'),(9,'<ul><li>平時成績50%</li><li>同儕互評50%</li></ul>','「臺灣客家文化導論」課程的特色在於向全世界展現臺灣的特殊性，並作為臺灣客家文化入門的知識。本課程結合中央大學客家學院三個不同領域的老師共同開課，專長分別是客家語言文學、客家社會歷史以及客家產業經濟。','臺灣是一個多元文化的社會，要認識臺灣，就要認識不同族群的文化，客家文化是其中非常有特色的一個。本課程希望能向全世界介紹豐富多元的臺灣客家文化。','本課程的目標在於讓修課的同學了解臺灣客家文化的內涵，從臺灣客家的語言、文學、歷史、社會、政策、產業等主題切入，希望經由課程設計與問題引導，帶領同學們認識並思考「客家文化」在不同時期、不同區域與不同族群互動下所呈現出的多元面貌。','<ul><li>有基本的中文聽、說、讀、寫之能力，並能運用普通中文書寫。</li><li>有基本的投影片製作能力。</li></ul>','<ul><li>第一週：臺灣客家族群的移墾與分布</li><li>第二週：臺灣客家族群的社會與文化</li><li>第三週：臺灣的客家話</li><li>第四週：臺灣客家文學</li><li>第五週：臺灣的客政策</li><li>第六週：臺灣客家產業</li></ul>','本課程開設的對象為所有對臺灣客家語言與文學有興趣的同學，不需具備任何專業基礎。但希望修課的同學：<ul><li>對臺灣客家語言與文學有興趣，並對不同族群的語言與文學充滿好奇。</li><li>樂於聽到臺灣的客家話。</li></ul>'),(10,'各週線上測驗成績均達70分以上，期末總成績成績達75分以上(所有測驗不得缺考)','台灣特色糕餅的技藝做法，其實已面臨失傳的危機，透過本課程進行數位典藏，將老祖先的技藝保存與傳承下去。除了每週提供3道台灣傳統糕餅製作以外，教師每週再提供1道無國界的糕餅創作，融合東西方糕餅做法，以及傳統與現代的新舊衝擊，以及現代養生的健康概念，運用台灣各地農產與西方食材，創造出新型態的全球在地化糕餅。最後，鼓勵與激發學習者加入自己的創意，如同台灣目前多家紅遍兩岸的知名糕餅店，創造新台灣味的糕餅文化與活路。','本課程提供30道最能代表台灣本土文化的傳統糕餅製作方法與典故，以及10道具有原創性與健康概念的創意糕餅製作。教學影片中，透過老師與學生兩個不同世代的觀點，活潑的教學互動與觀念衝突，學習本課程，您會對台灣糕餅將有全新的視野與收獲。','<ul><li>透過磨課師的開放修讀，讓全球認識台灣傳統的糕餅文化與歷史淵源</li><li>民眾在家試做試吃時， 能體會當時台灣人民的生活，培養困境發揮巧思與節約用料的觀念</li><li>將台灣各種不同地區、人文、時期的糕餅傳統做法與文化能透過磨課師，進行數位典藏</li><li>打造本校中餐廚藝的國際品牌，讓全球華人能看到本校在傳統廚藝的傳承，以及創新</li></ul>','<ul><li>具華文聽讀說寫能力</li><li>家用廚房設備的操作具有基本認知</li></ul>','<ul><li>第一週 認識糕餅</li><li>第二週 甜年粿、茯苓糕、肚臍餅、創意糕餅</li><li>第三週 綠豆椪、紅龜粿、胡椒餅、創意糕餅</li><li>第四週 芝麻喜餅、鳳梨酥、歸寧米糕、創意糕餅</li><li>第五週 發粿、太陽餅、方塊酥、創意糕餅</li><li>第六週 牛舌餅、客家糍粑、艾草粿、創意糕餅</li><li>第七週 冰沙餅、黑糖粿、花蓮薯、創意糕餅</li><li>第八週 鳳片龜、大甲奶油酥、鹿港芋頭酥、創意糕餅</li><li>第九週 伍仁月餅、老婆餅、鳳梨餅、創意糕餅</li><li>第十週 客家九層粄、芋蔥粿、繼光餅、創意糕餅</li><li>第十一週 牛肉酥、牛汶水、李鹹糕仔、創意糕餅</li></ul>','<ul><li>限具有華語閱讀聽寫能力之全球民眾</li><li>會使用一般家用廚房設備，如烤箱、瓦斯爐(課程所有範例，無需特殊昂貴設備)</li><li>對台灣傳統糕餅文化與典故有興趣了解者</li><li>想要學習台灣各類糕餅製作，以及想要學習糕餅的創新製作之民眾</li></ul>'),(11,'<ul><li>作業：80%、平時測驗：5%、期末考：15%</li><li>討論區互動事項：<br>依各單元課程內容所提供之議題於學習平台進行互動討論，依議題發表篇數納入成績考評，佔作業成績之20%</li></ul>','透過每講次6-12分鐘的影片內容，以切合時勢的議題帶入情感教育的課程中','本課程涵蓋情感教育之深度與廣度，從情感教育的源頭—自我瞭解切入，探尋個人與情感發展有關價值觀，學習如何擁有的健康情感關係。','讓學員學習如何擁有的健康情感關係','無須先備知識','<ul><li>第一週 認識情感的多元樣貌</li><li>第二週 關係中的自我</li><li>第三週 情感關係的建立</li><li>第四週 情感的溝通與表達</li><li>第五週 情感衝突的處理</li><li>第六週 情感的失落與調適—談分手</li><li>第七週 認識與防治親密暴力</li><li>第八週 流行文化與情感教育</li><li>第九週 愛情關係與法律/我的健康真心關係</li></ul>','關心情感教育議題，並願意投注時間關注之各屆人士皆可'),(12,'<ul><li>本課程滿分為100分，通過分數為70分。</li><li>線上測驗 (單元測驗 40%、期末測驗 60%)</li><li>討論區參與 ( 0% ~ 5% 的額外加分)</li><li>期末成果分享 (參加者 0% ~ 10% 的額外加分)</li></ul>','<ul><li>課程名稱的S、H、M，分別代表School(學校)、Home(家庭)、Museum(博物館)，意指本課程將串起大學的普通物理實驗、可居家動手做的對應實驗、以及國立自然科學博物館科學所展示的大型展示實驗。</li><li>本課程的學習評量形式包括學習者需拍攝其居家小實驗的實驗影片，並利用分析軟體紀錄、討論所得到的實驗數據。學習者可在期末提繳上傳自行設計的新實驗，因此隨著課程實施過程中累積的優良作品，本課程將變成一個能激發實驗創意、能自我提升擴大內容、能發表學習成果的平台。</li></ul>','本課程旨在加強科學實驗所重視之動機形成過程、實驗架構設計、實驗數據擷取與分析，以及實驗誤差的深入探討…等方面的訓練。我們串起大學的普通物理實驗(School)、能居家動手做的對應實驗(Home)、以及國立自然科學博物館所展示的大型展示實驗(Museum)，以彌補一般線上實驗課程無法親自動手，以及演示實驗無法量化分析的缺點。','<ul><li>善於觀察生活周遭物理現象，並提出具體問題的能力。</li><li>針對問題提出適切的實驗構想，並利用簡易、低價的器材設計出可行的實驗步驟。</li><li>從實驗結果的記錄、分析、量化中推演出經驗方程式及物理概念，並找出失敗(或誤差過大)的原因及解決辦法。</li><li>利用網路平台「討論區」的社群力量學習相關物理理論，並分析實驗結果的正確性或意義。</li></ul>','<ul><li>學習者不需具有撰寫程式語言能力，但必須學習使用課程提供的免費電腦軟體。</li><li>具有基本代數能力的學習者可參與部分實驗課程活動，以及課程指派的部份工作。</li><li>具有高中數理能力(包括不錯的代數能力、三角函數的觀念，以及高中物理基礎)的學習者可以了解大部分課程內容。</li><li>若上述學習者額外具有微積分基礎，則可完全理解本計畫課程提供的內容。</li></ul>','<ul>此階段實驗課程包含下列六週三項主題，未來階段課程將陸續加入其它主題。<li>第一週 聲波與聲速(一)</li><li>第二週 聲波與聲速(二)</li><li>第三週 簡諧運動(一)</li><li>第四週 簡諧運動(二)</li><li>第五週 磁場與電磁感應(一)</li><li>第六週 磁場與電磁感應(二)</li></ul>','<ul><li>修習、教授普通物理實驗的華語系地區大學師生。</li><li>對科學展覽競賽有興趣的中學師生。</li><li>人力、空間、儀器..等實驗資源較為欠缺的中學師生。</li><li>擬以線上學習方式補強基礎物理實驗的物理愛好者。</li></ul>'),(13,'<ul><li>作業繳交</li><li>同儕互評</li><li>線上測驗</li><li>教材閱讀</li><li>討論區參與</li></ul>','<ul><li>課程以企業發展歷程為軸心，聚焦探討創業精神與企業社會責任、創新及國際化等影響企業成長的關鍵性議題。</li><li>每堂課邀請學者和產業專家，甚至個案業者現身說法，參與50~60分鐘數位對談，增進產業場域的現場感；而非單方向的觀念傳輸。</li><li>對話教師和產業專家專業領域涵蓋四大單元，可產生互補和多元性觀點。</li></ul>','本課程為進入商管專業領域—創業與企業成長學習的啟發性課程，以個案教學為主，閱讀真實企業個案，藉由教師線上引導和專家意見分享影片，帶領學習小組進行決策問題分析，解決方案發展。以講故事和研討方式引導學習者進入最接近真實世界(real world)的企業決策和營運情境。','<ul><li>啟發同學的創業精神與創業興趣，並與企業社會責任的議題進行連結和省思。</li><li>做為銜接創新管理、行銷管理、策略管理、國際企業管理、管理個案分析等商管進階課程的導論課程。</li><li>協助同學對企業自創業到成長的階段歷程與面對的挑戰有簡要的整體認識，鼓勵同學參與企業競賽或發展創業提案。</li></ul>','本課程適合大學部三、四年級對創業和企業經營管理有興趣同學修習，有管理學背景者佳，但非必要。','<ul><li>第一週 創業:薰衣草森林-創業與維持優勢</li><li>第二週 創業:里仁</li><li>第三週 創業:信義房屋</li><li>第四週 營運模式競爭:台明將</li><li>第五週 創新:太平洋自行車</li><li>第六週 營運模式:春水堂</li><li>第七週 創新品牌:歐都納</li><li>第八週 品牌經營:歐萊德</li><li>第九週 制度化與品牌管理:薰衣草森林-品牌手冊的建立</li></ul>','<ul><li>各學院大學部三、四年級對創業和企業經營管理有興趣同學。</li><li>EMBA在職專班學生。</li><li>企業界在職人士。</li></ul>'),(14,'<ul><li>數位學習教材內容使用情況：包括影音教學影片、文字型講義、相關延伸閱讀資料、其他相關連結網站等，本課程將製成影片與pdf範本提供學習者下載，可應用之數位平台有逢甲大學影音Fliper、Youtube頻道、臉書專頁與逢甲頻道，並將開放給有興趣者下載與聆聽，盼能營造一共善之創業環境。透過瞭解學習者使用情況，衡量其學習成效。</li><li>線上教學評量：包括線上、線上測驗、同儕互評與創業計畫書繳交等，同時也記錄臉書討論的頻率與內容深度。</li><li>教學互動分享：師生可透過平台進行不同主題論壇的討論，進行意見的交流與資訊的分享，讓學習的質量更為提升。包含同儕互評表的使用，成績區分為平時成績(40%)、互評成績(20%)、創業計劃書(40%)。</li></ul>','<ul><li>與過往創業相關課程不同，本次主要課程設計上，以透過參予學員能夠帶入自身創新服務、創新點子、創新構想至討論中，並且以實務角度協助參與學生突破與未來發展之互動課程。</li><li>以Alexander &amp; Yves Pigneur定義之商業模式九宮格架構為基礎，提供課程理論與實務結合之平台。</li><li>以理論性課程為框架，運用磨課師平台特色為基礎，並運用引導討論與課題，透過在平台上的互動與專家解答，有效達到課程與實作並行的目的。</li><li>課程將邀請不同產官學研的專家學者進行跨界經驗分享，讓學習者更清楚創業甘苦談，透過標竿學習更能有效掌握未來創業方向。</li><li>有效協助台灣新創團隊成長，並且協助台灣團隊在過往較多創業失敗的區域中突破與調整，以培養與強化創業生態圈之基礎。</li><li>清楚瞭解市場競爭力與規模，並以品牌的概念投入創業市場，有助於未來市場通路之拓展，讓新事業獲得成長。</li><li>將創業資訊有系統整合，提供創業者在不確定情況能夠進行早期學習和調整點，並在相關業界師資經驗中釐清自我的創業社會途徑。</li><li>透過此課程，讓投入該課程的成員在過程中逐一完善自身產品與項目，並且在過程中製作一份具有效果的創業計劃書。</li></ul>','本課程的設計的核心價值在於培育並激勵在校的學生及參與的學員學習創業家精神與熱情，鼓勵學員在此創業學習平台上進行創業築夢並互動分享。課程主要透過Alexander Osterwalder所定義出的商業(獲利)模式九宮格架構為基礎進行說明，並在課程中導入產業界的專家，盼能系統性引導實務創業項目之運作模式，傳遞創業落實與獲利實踐之可能。','本課程主要透過Alexander Osterwalder所定義出的商業(獲利)模式九宮格架構為基礎，包括價值主張、顧客區隔、行銷通路、顧客關係、關鍵夥伴、關鍵活動、關鍵資源、成本結構、營收模式等，即企業通過各種營收模式來創造財富的方式作為主要的架構，並在課程中導入許多產業界的專家，以他們過往的經驗與實務來告訴大家，如何規劃與強化自己的商業模型。除此之外，在九宮格的內容中將提供許多實務的經驗分享，並結合課程討論區之互動討論模式，以系統性引導實務創業項目之運作模式，傳遞創業落實與獲利實踐之可能。','<ul><li>具有創業構想、產品、服務之人與對創業有意願學生與之般創業學員</li><li>企業之經營管理者</li><li>具創新服務設計之實務經驗者</li><li>其他有興趣之業界人士</li><li>參考書籍：亞歷山大．奧斯瓦爾德等人，(2012)，「獲利世代：自己動手，畫出你的商業模式」，早安財經出版。</li></ul>','<ul><li>第一週 產品與服務定位、顧客區隔(Target Customer Segments, CS)</li><li>第二週 價值主張(Value Proposition, VP)、行銷通路(Channels, CH)</li><li>第三週 顧客關係(Customer Relationships, CR)、營收模式(Revenue Streams, R$)</li><li>第四週 關鍵資源(Key Resources, KR)、關鍵活動(Key Activities, KA)</li><li>第五週 關鍵合作夥伴(Key Partners,KP)、成本結構(Cost Structure, C$)</li><li>第六週 創業營運計劃書、創業小提醒</li></ul>','<ul><li>具有創業構想、產品、服務之人與對創業有意願學生與之般創業學員。</li><li>企業之經營管理者。</li><li>具創新服務設計之實務經驗者。</li><li>其他有興趣之業界人士。</li></ul>'),(15,'<ul><li>作業繳交。</li><li>同儕互評。</li><li>討論區參與及互動分享。</li><li>測驗。</li></ul>','<ul><li>課程以簡馭繁，透過大眾可以理解的語言，將社會企業理論與個案發展設計為相互關聯、循序漸進、理論實務互依的學習模組。</li><li>引用個案均是國內外最重要的社會企業標竿（行政院「社會企業行動方案」表列者），並可將其實務結合研究、教學與參與者。</li><li>在個案探索上，課程部分內容遠赴歐洲實地拍攝社企源起，比較國際標竿個案，產生時空反思效果。</li><li>結合問題導向教學方法，引導學員主動學習發掘問題與克服問題。</li><li>聚焦在社會設計領域的創新議題上，發動對社會與時事問題的討論，讓社會企業在生活實踐的層次上被觀察、參與與反思。</li><li>在作業要求的引導下，透過旅行與各種食衣住行活動，發現個人的三創學習經驗，相互分享並進行反思。</li></ul>','本課程透過大眾可以理解的語言，將社會企業理論與個案發展設計為相互關聯、循序漸進、理論實務互依的學習模組。','<ul><li>理解經濟與社會併軌— 翻轉資本主義的意義。</li><li>探索並認識社會企業之類型與條件。</li><li>認識社會/經濟問題的關聯性，以銜接社會需求與市場機會。</li><li>理解經營社會企業— 壯大外部能量的方法，提出生態構想。</li><li>運用管理社會企業— 培育內部能力的方法，進行創新思考。</li><li>理解社會企業永續發展的影響力，並提出反思建議。</li></ul>','<ul><li>具備基本的學習能力與興趣者。</li></ul>','<ul><li>第一週 「明天過後」的產業生態風險。</li><li>第二週 面對五彩繽紛的新企業世界。</li><li>第三週 跨界尋找社會環境的對話。</li><li>第四週 孤獨的「企業號」與「發現號」。</li><li>第五週 循線探索內在希望的曙光。</li><li>第六週 明天的解答—公益與社會企業。</li></ul>','<ul><li>社會企業相關學門的學生與學者。</li><li>社會企業的經營管理者。</li><li>期待進行社會創業與創新者。</li><li>具政策制定影響力者。</li><li>其他社會企業之利害關係人，如居民、企業社會責任計劃管理人。</li></ul>'),(16,'<ul><li>本課程滿分為100分，通過分數為70分，及格標準者發給課程完課證明</li><li>書面報告成績(30%)</li><li>實作成品經同儕評分成績(40%)</li><li>線上交談討論表現 (30%)</li></ul>','<ul><li>本課程在設計時考慮與研究所相關課程的銜接，將可成為資電領域相關研究所課程的基礎先修課程(如「嵌入式系統設計與實務」)，奠定學生修習進階專業課程的基礎，使後續專業課程能有更佳的學習效果</li></ul>','本課程透過基礎理念的講解與實務範例的解說，利用已有的研發個案以輕鬆務實的講解，引導學習者快速的掌握一個複雜系統的設計重點並熟悉相關設計工具的使用，奠定實務設計的技術基礎。','<ul><li>使一般對現代微處理器嵌入系統科技有認知及學習興趣的人士，能藉此課程建立基本而正確的觀念，並透過本課程的學習，瞭解如何應用現有的相關發展軟硬體工具，完成一個複雜的系統功能設計。</li></ul>','<ul><li>具計算機基本概念與基礎程式語言能力者</li></ul>','<ul><li>第一週 嵌入式系統與人類生活</li><li>第二週 嵌入式系統設計</li><li>第三週 嵌入式系統實務設計(1)：「有耳朵的監視器」核心知識</li><li>第四週 嵌入式系統實務設計(1)：「有耳朵的監視器」實體設計</li><li>第五週 嵌入式系統實務設計(2)：「我的監視器不怕黑」核心知識</li><li>第六週 嵌入式系統實務設計(2)：「我的監視器不怕黑」實體設計</li></ul>','<ul><li>具研究興趣及基本計算機應用經驗的一般社會人士或中學生</li><li>各大專院校理工科系大二以上，具計算機基本概念與程式設計能力之在學學生</li><li>產品研發工程人員</li></ul>'),(17,'<ul><li>平時成績100%</li></ul>','「臺灣客家文化導論」課程的特色在於向全世界展現臺灣的特殊性，並作為臺灣客家文化入門的知識。本課程結合中央大學客家學院三個不同領域的老師共同開課，專長分別是客家語言文學、客家社會歷史以及客家產業經濟。','本課程希望能向全世界介紹豐富多元的臺灣客家文化。','本課程的目標在於讓修課的同學了解臺灣客家文化的內涵，從臺灣客家的語言、文學、歷史、社會、政策、產業等主題切入，希望經由課程設計與問題引導，帶領同學們認識並思考「客家文化」在不同時期、不同區域與不同族群互動下所呈現出的多元面貌。','<ul><li>有基本的中文聽、說、讀、寫之能力，並能運用普通中文書寫。</li><li>有基本的投影片製作能力。</li></ul>','<p>此階段實驗課程包含下列六週三項主題，未來階段課程將陸續加入其它主題。</p><ul><li>第一週：臺灣的客家話</li><li>第二週：臺灣客家文學</li></ul>','<p>本課程開設的對象為所有對臺灣客家語言與文學有興趣的同學，不需具備任何專業基礎。但希望修課的同學：</p><ul><li>對臺灣客家語言與文學有興趣，並對不同族群的語言與文學充滿好奇。</li><li>樂於聽到臺灣的客家話。</li></ul>'),(18,NULL,NULL,'我們每天的生活中，很多都蘊含了許多的科學知識在背後。本課程試著將藏在生活中俯拾可得的物理現象，包括文學作品中描述的物理現象，經由在家中就可以動手做的實驗與觀察，來瞭解許多現象背後的物理。希望學員重視實做，自我觀察，自我歸納，瞭解生活中無所不在的物理，進而成為生活中無所不在的樂趣。','<ul><li>讓物理更親近日常生活：臺灣是科技島，我們也生活在充滿科技產品的環境中。然而一般民眾對於科學是既崇拜又害怕，對於科學常常是無法瞭解又保持距離。這原因有相當大一部份來自於教育過程的考試導向，讓教師、課本無法納入太多與生活相關的內容，而本課程主要從生活中出發，讓學員們瞭解生活經驗中處處可見的物理現象，這樣可以讓學員從不排斥到瞭解物理，瞭解科學。課程中讓學員盡可能的在家中動手做，從做中學物理。</li><li>培養觀察與思考的習慣：長期以來，考試領導教學其中的一個大問題，就是現在市面上幫助學生拿高分的輔助書籍太多，發展解決實際問題能力的書籍太少，學生們也為了爭取高分，都採取最有效率的方法：從書上看知識與獲得答案。然而知道科學是從觀察開始，經由對所見所聞加以思考，最後形成科學。在本課程中，藉由這些有趣的題材來吸引學員們的興趣，並鼓勵與要求學員們動手做，這樣纔有助於真正的瞭解物理。</li><li>由瞭解而破除科學迷信：瞭解到科學有其極限，並非無所不能，而且有很多的事情不可能存在，臺灣現在常陷入理盲的困境。其中一個原因就是大家都以為科技太難，寧可去相信一些他聽得懂的術語，因此，社會上一再出現許多假借科學名義的詐騙案。例如，前幾年的磁能車詐騙案，業者宣稱車子具有神奇的機制，不用電不用油也可以行駛，也因此吸引了很多的民眾投資。然而這只是物理學家早就充分瞭解不可能存在的永動機問題。</li></ul>','熱血的學習態度',NULL,NULL),(19,NULL,NULL,'本課程首先教授演算法基礎知識，包括設計演算法的基本策略，如分治、刪尋、貪婪、支界與動態規劃等策略，也包括演算法分析與問題分類等概念。除了演算法的基礎知識之外，本課程程特別強調演算法在不同科技領域的實際應用，每次課程開放均加入新的演算法應用實例，期待能引發修課學員更強的學習動機並加深學習效果。','<li>演算法的基礎知識外。</li><li>演算法在不同資訊科技領域的實際應用。</li><li>透過線上裁判系統自我訓練撰寫高效率程式，以實作演算法解決問題。</li>','具備程式設計能力',NULL,NULL),(20,NULL,'','用古典的多項式進路，以非常淺白地多項式除法引入切線及導數，具體操作引介極限概念。這條十七世紀的進路使得多項式函數及代數函數的微積分，迴避了極限的障礙，得以迅速進入微積分的實際用途。這門課確實銜接台灣的高中數學課程內容，在代數函數的微積分之後，發展標準指數、自然對數、連續型隨機變數與機率分佈函數等課題。教材與範例的安排，著重於台灣的高中數學課程與大學專業學科所須之數學能力的銜接。 這套教材提舉『數學＋電腦，升級大腦』之概念，將數學軟體切實融入課程，從教材、授課影片、範例、作業到評量，都正式使用數學軟體。此一教學理念與實踐，乃中央大學數學系自從王九逵、華洋、陳弘毅、黃華民等前輩教授，自1980年代起提倡的概念。','能在多項式函數與基本代數函數的技術範疇內，認識微分與積分的典型意涵。能用微分與積分建立典型問題的數學模型，並能操作數學軟體協助處理微積分的計算。','<ul><li>國中數學課程內容：含負數的四則運算，基本的根號運算，解一元二次方程式，解二元一次聯立方程式，配方。</li><li>高中必修數學課程內容：乘法公式，二項式展開，多項式除法原理，函數圖形，基礎幾何，空間概念，基本求和公式，直方圖，機率概念。</li><li>微軟或蘋果作業系統之圖形操作介面，在網際網路搜尋、下載及安裝軟體的能力。</li></ul>',NULL,'<p>具備高中必修數學課程能力者，即能進入這門課。因此，社會組和自然組的高中畢業生皆可適用。對於自然科學、社會科學、財務經濟等專業的學生，可以用這門課作為學習專業學科或更高等之微積分課程的先修課程。對於法商管理、生醫農化等專業的學生，以及部分科技大學的學生，這門課可以滿足一半以上的微積分需求。</p>在一學年8鐘點的大學微積分課程中，本課程大致相當於最前面的六分之一。在一學年6鐘點的大學微積分課程中，本課程大致相當於最前面的四分之一。在一學期3鐘點的大學微積分課程中，本課程大致相當於前面一半。而對於一學期2鐘點的大學微積分課程，本課程已經提供大致所需的內容，教師再補充特殊需求的應用專題即可。'),(21,NULL,'<ul><li>廣泛性：從隨手可得且人手一機的3C產品出發，導入聲學基本理論與產品設計關係。</li><li>需求性：人們對於產品的聲音品質需求日益提升，本學習課程及教導人們如何以主觀聆聽及客觀參數比較，獲得簡易評價產品聲音品質之能力。</li><li>專業性：雖說課程乃以深入淺出的方式進行，但在整體規劃尚不失理論基礎、實務製作、理論實務驗證等專業流程，藉以訓練學員在面對新事物時應有之態度。</li><li>多元性：課程中規劃學員針對各自喜好之電聲產品進行評估，除了本身可獲得特性尚完整的了解，也可以從主題討論中了解其他產品特性。</li><li>實務性：課程中規劃實務學習，利用少許費用即可動手製作組裝相關產品，進行利用本課程開發之使用介面加以評價。</li><li>獨特性：本課程乃藉由本身所擁有符合國際電聲量測法規標準之環境與完整多樣的設備進行測試，除了可獲得特性測試上完整的概念，並可進一步學習如何設計屬於自己的測試平台。</li></ul>','本課程主要以3C視聽娛樂之聲音產品或稱電聲產品為主軸，針對時下年輕潮流中常不離身的音響與耳機(earphone)為課程中心，從設計的角度切入，融合聲音品質的評價方式，客製化屬於自己聽覺感受與偏好之耳機。由於聲學相關課程較不常見於一般課程中，因此，為讓學員有更進一步的認識與學習的機會，課程安排將以聲學的基本知識出發，深入簡出的建立學員對於聲學乃至電聲的認識，並同時了解何謂電聲產品，以及他對於我們生活的重要性。','<ul><li>以深入淺出的方式，從基本的聲學特性出發，聲音對於人們身心理層面上的影響，以及與人們生活週遭相關的電聲產品等方面，建立聲音的基本知識與認識現有的電聲產品。</li><li>本課程將以內耳式耳機作為媒介，針對耳機內的元件與特性影響進行完整的介紹，最後，並以已開發之程式讓學員們進行模擬設計，設計出屬於自己專有聲音特性的耳機。</li></ul>','<ul><li>由於本課程內容乃是規劃屬於電聲入門課程，主要乃著重在隨手可得之電聲產品認識、了解，進而獲得屬於自己評價的參數；因此，在預備知識部分並非有強迫性，唯一的前提乃在於對於開發產品的好聲音有特別的喜好與興趣即可；也相信，在沒有太多專業知識之帶領下，學員對於課程內容學習上並不會有太大的壓力與恐懼。</li></ul>','<ul><li>第一週 聲音的特性 / 劉育成老師授課</li><li>第二週 認識發聲單元-動圈式揚聲器 / 劉育成老師授課</li><li>第三週 電聲應用與實務 / 汪龍飛老師授課</li><li>第四週 淺談卡拉OK音響系統 / 古劍雄老師授課</li><li>第五週 細說微型揚聲器之應用 / 王文弘老師授課</li><li>第六週 電聲換能器設計(I) / 蔡鈺鼎老師授課</li><li>第七週 電聲換能器設計(II) / 蔡鈺鼎老師授課</li></ul>','<ul><li>有意在未來進入電聲領域之學員。</li><li>電聲產業預再進修學員。</li><li>輔進入電聲產業之從業學員。</li><li>電聲相關領域科系之學生。</li><li>預開發屬於自己耳機之學員。</li><li>預了解自己所喜好的聲音品質與類型之學員。</li><li>有興趣了解如何評估電聲產品音質特性之學員。</li><li>愛好音樂以及各式3C電子電聲產品之學員。</li></ul>'),(22,'<ul><li>作業繳交</li><li>同儕互評</li><li>線上測驗</li><li>教材閱讀</li><li>討論區參與</li></ul>','<ul><li>課程以企業發展歷程為軸心，聚焦探討創業精神與企業社會責任、創新及國際化等影響企業成長的關鍵性議題。</li><li>每堂課邀請學者和產業專家，甚至個案業者現身說法，參與50~60分鐘數位對談，增進產業場域的現場感；而非單方向的觀念傳輸。</li><li>對話教師和產業專家專業領域涵蓋四大單元，可產生互補和多元性觀點。</li></ul>','本課程為進入商管專業領域—創業與企業成長學習的啟發性課程，以個案教學為主，閱讀真實企業個案，藉由教師線上引導和專家意見分享影片，帶領學習小組進行決策問題分析，解決方案發展。以講故事和研討方式引導學習者進入最接近真實世界(real world)的企業決策和營運情境。','<ul><li>啟發同學的創業精神與創業興趣，並與企業社會責任的議題進行連結和省思。</li><li>做為銜接創新管理、行銷管理、策略管理、國際企業管理、管理個案分析等商管進階課程的導論課程。</li><li>協助同學對企業自創業到成長的階段歷程與面對的挑戰有簡要的整體認識，鼓勵同學參與企業競賽或發展創業提案。</li></ul>','本課程適合大學部三、四年級對創業和企業經營管理有興趣同學修習，有管理學背景者佳，但非必要。','<ul><li>第一週 營運模式競爭:台明將</li><li>第二週 創新:太平洋自行車</li><li>第三週 品牌經營:歐萊德</li><li>第四週 制度化與品牌管理:薰衣草森林-品牌手冊的建立</li></ul>','<ul><li>各學院大學部三、四年級對創業和企業經營管理有興趣同學。</li><li>EMBA在職專班學生。</li><li>企業界在職人士。</li></ul>');
/*!40000 ALTER TABLE `Description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Instructor`
--

DROP TABLE IF EXISTS `Instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Instructor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pictureURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Instructor`
--

LOCK TABLES `Instructor` WRITE;
/*!40000 ALTER TABLE `Instructor` DISABLE KEYS */;
INSERT INTO `Instructor` VALUES (1,NULL,NULL,'鄭孟玉',NULL,'助理教授'),(2,NULL,NULL,'楊朝仲',NULL,'主任'),(3,NULL,NULL,'周天穎',NULL,'特聘教授'),(4,NULL,NULL,'謝孟勳',NULL,'助理教授'),(5,NULL,NULL,'邱世寬',NULL,'副教授'),(6,NULL,NULL,'李元恕',NULL,'教授'),(7,NULL,NULL,'吳廣文',NULL,'副教授'),(8,NULL,NULL,'高承恕',NULL,'講座教授'),(9,NULL,NULL,'楊明憲',NULL,'教授'),(10,NULL,NULL,'簡士超',NULL,'系主任'),(11,NULL,NULL,'汪浩',NULL,'博士'),(12,NULL,NULL,'許士軍',NULL,'教授'),(13,NULL,NULL,'陳燕美',NULL,'教授'),(14,NULL,NULL,'廖康廩',NULL,'專案助理教授'),(15,NULL,NULL,'周錦宏',NULL,'教授'),(16,NULL,NULL,'黃菊芳',NULL,'助理教授'),(17,NULL,NULL,'賴守誠',NULL,'助理教授'),(18,NULL,NULL,'羅肇錦',NULL,'榮譽教授'),(19,NULL,NULL,'林致信',NULL,'助理教授'),(20,'',NULL,'陳斐娟',NULL,'副教授'),(21,NULL,NULL,'李英德',NULL,'教授'),(22,NULL,NULL,'羅道正',NULL,'講師'),(23,NULL,NULL,'洪耀正',NULL,'助理教授'),(24,NULL,NULL,'顏上詠',NULL,'教授'),(25,NULL,NULL,'翟本瑞',NULL,'教授'),(26,NULL,NULL,'陳淑慧',NULL,'助理教授'),(27,NULL,NULL,'王壘',NULL,'博士'),(28,NULL,NULL,'王益文',NULL,'博士'),(29,NULL,NULL,'陳德生',NULL,'博士'),(30,NULL,NULL,'袁世一',NULL,'博士'),(31,NULL,NULL,'朱達勇',NULL,'講師'),(32,NULL,NULL,'黃朝曦',NULL,'副教授'),(33,NULL,NULL,'谷天心',NULL,'副教授'),(34,NULL,NULL,'江振瑞',NULL,NULL),(35,NULL,NULL,'蔡宗翰',NULL,NULL),(36,NULL,NULL,'張貴雲',NULL,NULL),(37,NULL,NULL,'鄭旭詠',NULL,NULL),(38,NULL,NULL,'何錦文',NULL,NULL),(39,NULL,NULL,'王家慶',NULL,NULL),(40,NULL,NULL,'單維彰',NULL,NULL),(41,NULL,NULL,'黃錦煌',NULL,'博士'),(42,NULL,NULL,'劉育成',NULL,'博士'),(43,NULL,NULL,'蔡鈺鼎',NULL,'博士'),(44,NULL,NULL,'汪龍飛',NULL,'經理'),(45,NULL,NULL,'王文弘',NULL,'經理'),(46,NULL,NULL,'古劍雄',NULL,'顧問');
/*!40000 ALTER TABLE `Instructor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Instructor_School`
--

DROP TABLE IF EXISTS `Instructor_School`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Instructor_School` (
  `Instructor_id` bigint(20) NOT NULL,
  `school_id` int(11) NOT NULL,
  KEY `FKr6k2oivkm71bhty2i8b4152a1` (`school_id`),
  KEY `FK5iunsdwspk1par4ow48hjtqua` (`Instructor_id`),
  CONSTRAINT `FK5iunsdwspk1par4ow48hjtqua` FOREIGN KEY (`Instructor_id`) REFERENCES `Instructor` (`id`),
  CONSTRAINT `FKr6k2oivkm71bhty2i8b4152a1` FOREIGN KEY (`school_id`) REFERENCES `School` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Instructor_School`
--

LOCK TABLES `Instructor_School` WRITE;
/*!40000 ALTER TABLE `Instructor_School` DISABLE KEYS */;
INSERT INTO `Instructor_School` VALUES (3,1),(1,1),(2,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,3),(14,3),(15,3),(16,3),(17,3),(18,3),(19,4),(20,5),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,6),(32,6),(33,6),(34,3),(35,3),(36,3),(37,3),(38,3),(39,3),(40,3),(41,1),(42,1),(43,1),(44,1),(45,7),(46,7);
/*!40000 ALTER TABLE `Instructor_School` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Level`
--

DROP TABLE IF EXISTS `Level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Level`
--

LOCK TABLES `Level` WRITE;
/*!40000 ALTER TABLE `Level` DISABLE KEYS */;
INSERT INTO `Level` VALUES (1,'N/A');
/*!40000 ALTER TABLE `Level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `School`
--

DROP TABLE IF EXISTS `School`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `School` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logoURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `School`
--

LOCK TABLES `School` WRITE;
/*!40000 ALTER TABLE `School` DISABLE KEYS */;
INSERT INTO `School` VALUES (1,NULL,'逢甲大學'),(2,NULL,'大葉大學'),(3,NULL,'國立中央大學'),(4,NULL,'國立高雄餐旅大學'),(5,NULL,'國立雲林科技大學'),(6,NULL,'國立宜蘭大學'),(7,NULL,'校外');
/*!40000 ALTER TABLE `School` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Subject`
--

DROP TABLE IF EXISTS `Subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Subject` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKgn8fsa4w78swvco76g88ow6e9` (`category_id`),
  CONSTRAINT `FKgn8fsa4w78swvco76g88ow6e9` FOREIGN KEY (`category_id`) REFERENCES `Category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Subject`
--

LOCK TABLES `Subject` WRITE;
/*!40000 ALTER TABLE `Subject` DISABLE KEYS */;
/*!40000 ALTER TABLE `Subject` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-25 12:37:34