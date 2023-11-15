-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `content` longtext NOT NULL,
  `author_name` varchar(50) NOT NULL,
  `modify_date` datetime(6) NOT NULL,
  `create_date` date NOT NULL,
  `article_photo` varchar(200) NOT NULL,
  `article_category_id` bigint(20) NOT NULL,
  `small_content` longtext NOT NULL DEFAULT (_utf8mb3''),
  PRIMARY KEY (`id`),
  KEY `article_article_category_id_365a0c8c_fk_article_category_id` (`article_category_id`),
  CONSTRAINT `article_article_category_id_365a0c8c_fk_article_category_id` FOREIGN KEY (`article_category_id`) REFERENCES `article_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'Honda CB 1000','承蒙所有騎士對Neo Sports Cafe車系的喜愛，台灣本田今年度再次延續車系高階車款CB1000R之銷售，更帶來外觀黑化、更具跑格的CB1000R+，融合古典元素以及現代科技，動靜皆美的車格設計以更熱血的姿態面世。\r\n\r\n以CB1000R備受喜愛的Neo Sports Cafe車格為基礎，CB1000R+以全車黑化的外觀突顯不凡的氣勢，CB1000R+標配原廠小風鏡、單座蓋等外觀配件，並且以黑色呈現氣勢十足的車格。切削表面處理的17吋輪框更具質感，並配置TFT全彩儀錶以及Honda 智慧語音車聯系統。為突顯其跑格，CB1000R+亦配備原廠進、退檔快排，讓騎士換檔操作更順暢，更大大增添操駕樂趣。\r\n\r\n作為Neo Sports Cafe高階機種，CB1000R以具質感的外觀備受喜愛。本次改款更是配置了TFT全彩儀錶以及Honda 智慧語音車聯系統，增添了現代車款所需要的科技配備，並融合全車的古典元素外觀，重新設計的LED頭燈組，具金屬質感的水箱側罩，以及更美型的17吋輪圈，每一個細節都充滿了職人吹毛求疵的細膩工藝。','王宥翔','2023-11-04 11:03:23.114735','2023-11-04','article_photo/cb1000.jpg',4,'承蒙所有騎士對Neo Sports Cafe車系的喜愛，台灣本田今年度再次延續車系高階車款CB1000R之銷售，更帶來外觀黑化、更具跑格的CB1000R+，融合古典元素以及現代科技，動靜皆美的車格設計以更熱血的姿態面世。'),(2,'Honda Rebel 500 S ABS','低座高、好駕馭、特立獨行的外觀，使Rebel 500成為不論是周間通勤或是假日出遊的第一首選，2023 Rebel 500 推出兩款新車色 : 糖果柴油紅、消光金屬黑，並配有滑離式離合器、檔位顯示及全車LED燈具，Rebel 500 S 除了延續延續一般版配備之外，額外標配專屬大燈罩、菱格紋前、後皮革椅墊，全新特仕金屬鈦色，透露出與眾不同的強烈風格。\r\n\r\n2023 Rebel 1100車系在外型方面，除了洗鍊的標準車型之外，更新增了裝載能力更佳且風格強烈的Touring版本，兩款車型此次同時引進，並在變速箱規格上具有傳統往復式六檔(MT)與DCT雙離合器系統給顧客選擇，提供更多不同的騎行樂趣。\r\n\r\n作為新世代的Bobber風格代表，復古的外型加上LED燈具及數位儀錶，展示了特立獨行的個性，不僅在外觀具有高度的存在感，安全配備上更標配ABS、防舉頭模式、可選式扭矩控制系統等，更擁有豐富的電控系統，其中包含4種騎乘模式可選擇並配上1,084c.c.排氣量所具備的充沛扭力與加速表現，配合輔助滑動式離合器減少騎行中的頓挫，不論是長途巡航或是刁鑽的蜿蜒道路，都能讓騎士對應更多的使用環境，成為兼容並蓄的潮流代表車款。\r\n\r\nRebel 1100所代表的桀驁不馴態度，洗鍊的外觀配上Honda技研所開發的1,084c.c.水冷雙汽缸引擎做為動力本體，同時兼具悠遊放鬆的巡航姿態及快活的操駕性能，Rebel 1100不僅劍指經典，更是與騎士征服道路的絕佳夥伴。\r\n\r\nRebel 1100車系新增了專為旅行而生的Touring版本，在原先的架構下，Rebel 1100T配上寬闊且具空氣力學的頭罩，除了展現自我強烈的風格之外，同時兼具高防風性能，不論是在城市或是開闊的道路提供舒適的巡航姿態，此外，標配硬殼烤漆質感側箱採用頂部開口設計，總共35公升(右:16公升、左:19公升)的裝載容量為騎士的長途冒險增添更佳的便利性，霸氣沉穩的風格以及絕佳的操控性，Rebel 1100T不僅在於外觀，更在於對高功能性的追求。','Alan','2023-11-04 20:51:33.308473','2023-11-04','article_photo/hondarebel.jpg',4,'低座高、好駕馭、特立獨行的外觀，使Rebel 500成為不論是周間通勤或是假日出遊的第一首選，2023 Rebel 500 推出兩款新車色 : 糖果柴油紅、消光金屬黑，並配有滑離式離合器、檔位顯示及全車LED燈具，Rebel 500 S 除了延續延續一般版配備之外，額外標配專屬大燈罩、菱格紋前、後皮革椅墊，全新特仕金屬鈦色，透露出與眾不同的強烈風格。'),(3,'Kawasaki Ninja 400 ABS','Ninja這個車名在Kawasaki陣營裡就和Z同等重要，不過有別於過去一系列的Ninja車款，Kawasaki忍者傳奇在車界打響名號，就如同日本忍者來去皆無影的速度感，集結了Kawasaki品牌在1970年代硬漢風格，其獨家風格的仿賽整流罩流線、霸氣與速度取向更是當代之最，足以與其他三大日本品牌抗衡的實力。\r\n\r\n在1995年之後，Ninja車系的造型逐漸擴張曲線，導入與其他車廠相仿的球狀元素，而漸漸失去以往被視為經典優雅的線條，但是新的設計也逐漸帶起新世代跑車的有機體元素，除了更佳運動化是無庸置疑之外，增添的科技感也讓Ninja車系在仿賽市場中佔有一席之地。Ninja國內引進有ZX-10R/400/650/1000 SX等車款！\r\n\r\n身為殿堂級賽事WSBK的常勝軍6冠王Ninja ZX-10R，除了 空力、塗裝、配備進化以外，引擎也通過EU5的排廢氣規範，成為國內目前少數可合法掛牌的公升級仿賽超跑。作為WSBK的常勝軍，ZX-10R搭載豐富的川崎電控科技，以車輛動態管理系統(KCMF)為主，負責監控包括：高階的運動循跡控制系統(SKTRC)、起步控制系統(KLCM)、智能煞車管理系統(KIBS)、引擎煞車控制系統(KEBC)，另一方面所搭載的高級軟件Bosch IMU(Inertial Measurement Unit)則為SKTRC、KLCM、KIBS提供更精準的車身動態參數。除上述豐富的主動安全配備外，ZX-10R為豐富騎士日常生活，新增電子巡航控制系統、與TFT 全彩液晶儀錶板，並可透過藍牙與智慧型手機互相串聯，隨時掌握車輛狀況。','Louis','2023-11-04 20:53:56.042582','2023-11-04','article_photo/Ninja400.jpeg',4,'Ninja這個車名在Kawasaki陣營裡就和Z同等重要，不過有別於過去一系列的Ninja車款，Kawasaki忍者傳奇在車界打響名號，就如同日本忍者來去皆無影的速度感，集結了Kawasaki品牌在1970年代硬漢風格，其獨家風格的仿賽整流罩流線、霸氣與速度取向更是當代之最，足以與其他三大日本品牌抗衡的實力。'),(4,'Kawasaki Z 400 ABS','Z車系旗下最新力作Z400，在SpuerNaked精髓的挹注之下震撼登場，和Ninja 400同為孿生車種，同樣的針對了引擎進行高性能的優化、在車體結構上也提供了高強度且輕量的進化。與前一代車型Z300相比，嶄新的Z400有著更輕巧的手感與操控、以及在各轉速區間都能獲得充沛動力的諸多優點之下，使Z400充滿力量、靈活的特性能在一般道路上有所發揮，並且讓騎乘者在日常生活中就獲得極大的駕駛樂趣。國內Z系列目前共導入有Z400、Z650、Z650 RS、Z900、Z900 RS和Z H2等車款。Z900除了帶來更具侵略性的頭燈外觀與全車LED燈具，並新增了KTRC（Kawasaki Traction Control）循跡控制系統、Power Mode動力可調模式，同時換上全新4.3吋的TFT （thin-film transistor）全彩儀錶，整體也更具吸引力。\r\n\r\n2017米蘭車展Kawasaki推出劃時代作品Z1的復刻車款Z900 RS，同時發表了擁有Cafe Racer靈魂的Z900 RS Cafe，兩者都採用948c.c.水冷直列四缸引擎、豐富的電控科技與現代化配備；不同的是Z900 RS Cafe致力營造Cafe Racer的精神：如經典的頭燈整流罩、類單人式座位與低手把而營造出低趴的騎士三角等，充分達到復古與現代的完美結合。\r\n\r\nKawasaki為滿足中排量市場車迷朋友的期待，再推出新古典家族的第二部車款-Z650 RS。不同於Z900 RS的是，更短小精悍的車身、瘦長的油箱、以及精緻的車尾，使其有著易於操控和友善的駕馭特性。Z650 RS的車體結構也經過重新調整，187kg車身輕量化的關鍵原因來自於13.5kg的車架主結構，而為其創造的1,405mm短軸距、2.6m的轉彎半徑，都是其操控靈巧的原因之一，至於車身後半部的車體角度小於Z650的設計，則有利於其車尾平整化，有著更加舒適的乘坐表現。\r\n\r\n搭載機械增壓引擎的超級街車-Z H2，在SUGOMI的設計理念下獲得更前衛的進化，俯臥下垂的掠食者風貌，透過Ram Air進氣口不對稱的車頭所打造出的乖張造型、與車頭上代表川崎重工的川字印記，展現其兇猛、不好招惹的本性。而在極簡主義的概念下，車身緊湊不至於龐大令人生畏、各式機件都以畫龍點睛的方式呈現，強大的動能卻又不失靈活的操控、滿載的電控與安全配備，奠定了Z H2在Z家族的領導地位，透過川崎重工各部門科技結晶的共同開發下，成就了Z家族新一代的篇章。','Bruce','2023-11-04 20:55:38.365858','2023-11-04','article_photo/Kawasaki_Z_400_ABS.jpeg',4,'Z車系旗下最新力作Z400，在SpuerNaked精髓的挹注之下震撼登場，和Ninja 400同為孿生車種，同樣的針對了引擎進行高性能的優化、在車體結構上也提供了高強度且輕量的進化。'),(5,'Kawasaki Z H2 ABS','Z車系旗下最新力作Z400，在SpuerNaked精髓的挹注之下震撼登場，和Ninja 400同為孿生車種，同樣的針對了引擎進行高性能的優化、在車體結構上也提供了高強度且輕量的進化。與前一代車型Z300相比，嶄新的Z400有著更輕巧的手感與操控、以及在各轉速區間都能獲得充沛動力的諸多優點之下，使Z400充滿力量、靈活的特性能在一般道路上有所發揮，並且讓騎乘者在日常生活中就獲得極大的駕駛樂趣。國內Z系列目前共導入有Z400、Z650、Z650 RS、Z900、Z900 RS和Z H2等車款。Z900除了帶來更具侵略性的頭燈外觀與全車LED燈具，並新增了KTRC（Kawasaki Traction Control）循跡控制系統、Power Mode動力可調模式，同時換上全新4.3吋的TFT （thin-film transistor）全彩儀錶，整體也更具吸引力。\r\n\r\n2017米蘭車展Kawasaki推出劃時代作品Z1的復刻車款Z900 RS，同時發表了擁有Cafe Racer靈魂的Z900 RS Cafe，兩者都採用948c.c.水冷直列四缸引擎、豐富的電控科技與現代化配備；不同的是Z900 RS Cafe致力營造Cafe Racer的精神：如經典的頭燈整流罩、類單人式座位與低手把而營造出低趴的騎士三角等，充分達到復古與現代的完美結合。\r\n\r\nKawasaki為滿足中排量市場車迷朋友的期待，再推出新古典家族的第二部車款-Z650 RS。不同於Z900 RS的是，更短小精悍的車身、瘦長的油箱、以及精緻的車尾，使其有著易於操控和友善的駕馭特性。Z650 RS的車體結構也經過重新調整，187kg車身輕量化的關鍵原因來自於13.5kg的車架主結構，而為其創造的1,405mm短軸距、2.6m的轉彎半徑，都是其操控靈巧的原因之一，至於車身後半部的車體角度小於Z650的設計，則有利於其車尾平整化，有著更加舒適的乘坐表現。\r\n\r\n搭載機械增壓引擎的超級街車-Z H2，在SUGOMI的設計理念下獲得更前衛的進化，俯臥下垂的掠食者風貌，透過Ram Air進氣口不對稱的車頭所打造出的乖張造型、與車頭上代表川崎重工的川字印記，展現其兇猛、不好招惹的本性。而在極簡主義的概念下，車身緊湊不至於龐大令人生畏、各式機件都以畫龍點睛的方式呈現，強大的動能卻又不失靈活的操控、滿載的電控與安全配備，奠定了Z H2在Z家族的領導地位，透過川崎重工各部門科技結晶的共同開發下，成就了Z家族新一代的篇章。','Brain','2023-11-04 20:57:56.523753','2023-11-04','article_photo/Kawasaki_Z_H2_ABS.jpeg',4,'Z車系旗下最新力作Z400，在SpuerNaked精髓的挹注之下震撼登場，和Ninja 400同為孿生車種，同樣的針對了引擎進行高性能的優化、在車體結構上也提供了高強度且輕量的進化。與前一代車型Z300相比，嶄新的Z400有著更輕巧的手感與操控'),(6,'BMW S Series 1000 RR ABS標準版','S Series代表的是BMW旗下高性能的跑車級距，搭載著BMW新研發的直列四缸引擎，其代表作品S 1000 RR更是驚豔四方，出色的性能不僅受到消費者好評，在賽道中也獲得優異成績而有著極高知名度。\r\n\r\n此具排汽量1001cc的水冷直列四缸四行程汽油引擎，具備210hp最大馬力與11.52kgm動力輸出。不僅於S 1000 RR上獲得出色表現，兼具街車分身的S 1000 R與ADV訴求的S 1000 XR也同樣犀利，雖然動力有所調降，但仍展現出不可一世的運動魂。\r\n\r\n2023年式S 1000 RR具有BMW ShiftCam技術加持，並優化了標準版的Shift Assistant Pro，同時搭載6段可調整的DTC系統、新型轉向角度感知器，煞車滑行輔助和滑行控制，相對有更好的性能與絕佳的運動體驗！','John','2023-11-04 21:00:30.848105','2023-11-04','article_photo/BMW_S_Series_1000_RR_ABS標準版.jpeg',4,'S Series代表的是BMW旗下高性能的跑車級距，搭載著BMW新研發的直列四缸引擎，其代表作品S 1000 RR更是驚豔四方，出色的性能不僅受到消費者好評，在賽道中也獲得優異成績而有著極高知名度。'),(7,'電競螢幕','跑的超級快','Louis','2023-11-07 19:58:05.151858','2023-11-07','article_photo/3C.webp',3,'跑超快');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_category`
--

DROP TABLE IF EXISTS `article_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `article_category` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_category`
--

LOCK TABLES `article_category` WRITE;
/*!40000 ALTER TABLE `article_category` DISABLE KEYS */;
INSERT INTO `article_category` VALUES (1,'3C'),(2,'生活'),(3,'螢幕'),(4,'大型重型機車');
/*!40000 ALTER TABLE `article_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add member models',7,'add_membermodels'),(26,'Can change member models',7,'change_membermodels'),(27,'Can delete member models',7,'delete_membermodels'),(28,'Can view member models',7,'view_membermodels'),(29,'Can add article',8,'add_article'),(30,'Can change article',8,'change_article'),(31,'Can delete article',8,'delete_article'),(32,'Can view article',8,'view_article'),(33,'Can add article category',9,'add_articlecategory'),(34,'Can change article category',9,'change_articlecategory'),(35,'Can delete article category',9,'delete_articlecategory'),(36,'Can view article category',9,'view_articlecategory'),(37,'Can add product',10,'add_product'),(38,'Can change product',10,'change_product'),(39,'Can delete product',10,'delete_product'),(40,'Can view product',10,'view_product'),(41,'Can add category',11,'add_category'),(42,'Can change category',11,'change_category'),(43,'Can delete category',11,'delete_category'),(44,'Can view category',11,'view_category'),(45,'Can add product photo',12,'add_productphoto'),(46,'Can change product photo',12,'change_productphoto'),(47,'Can delete product photo',12,'delete_productphoto'),(48,'Can view product photo',12,'view_productphoto'),(49,'Can add order',13,'add_order'),(50,'Can change order',13,'change_order'),(51,'Can delete order',13,'delete_order'),(52,'Can view order',13,'view_order'),(53,'Can add order item',14,'add_orderitem'),(54,'Can change order item',14,'change_orderitem'),(55,'Can delete order item',14,'delete_orderitem'),(56,'Can view order item',14,'view_orderitem'),(57,'Can add banner model',15,'add_bannermodel'),(58,'Can change banner model',15,'change_bannermodel'),(59,'Can delete banner model',15,'delete_bannermodel'),(60,'Can view banner model',15,'view_bannermodel'),(61,'Can add contact models',16,'add_contactmodels'),(62,'Can change contact models',16,'change_contactmodels'),(63,'Can delete contact models',16,'delete_contactmodels'),(64,'Can view contact models',16,'view_contactmodels'),(65,'Can add PayPal IPN',17,'add_paypalipn'),(66,'Can change PayPal IPN',17,'change_paypalipn'),(67,'Can delete PayPal IPN',17,'delete_paypalipn'),(68,'Can view PayPal IPN',17,'view_paypalipn'),(69,'Can add 常見問題',18,'add_faqmodels'),(70,'Can change 常見問題',18,'change_faqmodels'),(71,'Can delete 常見問題',18,'delete_faqmodels'),(72,'Can view 常見問題',18,'view_faqmodels');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$bhtEPFEUWZn6HmmaJVzbVi$+ovypcceMGXfoZ5dydikckzo+fi5yacGMo3DfDpguDM=','2023-11-13 09:34:05.231104',1,'admin','','','admin@gmail.com',1,1,'2023-11-04 10:22:07.924655');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
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
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banner` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `banner` varchar(255) NOT NULL,
  `c_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner`
--

LOCK TABLES `banner` WRITE;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` VALUES (3,'banner/slider-1.jpg','2023-11-07'),(5,'banner/1111-2800x845_1903x700_crop_center.webp','2023-11-07'),(9,'banner/iphone15banner.jpg','2023-11-11'),(12,'banner/watch.jpg','2023-11-11');
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(200) NOT NULL,
  `category_photo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'大型重機機車','category_photo/motor_categpry.jpeg'),(2,'3C','category_photo/tech.jpg'),(3,'生活','category_photo/live.jpg'),(4,'日常','category_photo/normallife.jpg');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` longtext NOT NULL,
  `create_date` datetime(6) NOT NULL,
  `modify_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,'王宥翔','aaaa@gmail.com','你的網站棒極了','我覺得你的網站可以再多一點功能，會更好~~加油','2023-11-08 19:20:00.947478','2023-11-08 19:20:00.947478'),(2,'王宥翔','aaaa@gmail.com','你的網站棒極了','我覺得你的網站棒極了 可以再做多一點內容','2023-11-08 19:22:44.473876','2023-11-08 19:22:44.473876'),(3,'林姵吟','h546w3664@gmail.com','你的網站棒極了','商品不足','2023-11-12 10:25:14.989407','2023-11-12 10:25:14.989407');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-11-04 10:22:27.580619','1','3C',1,'[{\"added\": {}}]',9,1),(2,'2023-11-04 10:22:30.734383','2','g/ cji6',1,'[{\"added\": {}}]',9,1),(3,'2023-11-04 10:22:35.901820','2','生活',2,'[{\"changed\": {\"fields\": [\"\\u6587\\u7ae0\\u985e\\u5225\"]}}]',9,1),(4,'2023-11-04 10:22:53.433571','3','螢幕',1,'[{\"added\": {}}]',9,1),(5,'2023-11-04 10:24:12.139161','4','大型重型機車',1,'[{\"added\": {}}]',9,1),(6,'2023-11-04 10:26:26.768484','1','Honda CB 1000',1,'[{\"added\": {}}]',8,1),(7,'2023-11-04 11:03:23.115743','1','Honda CB 1000',2,'[{\"changed\": {\"fields\": [\"\\u6587\\u7ae0\\u5927\\u7db1\"]}}]',8,1),(8,'2023-11-04 20:51:33.329899','2','Honda Rebel 500 S ABS',1,'[{\"added\": {}}]',8,1),(9,'2023-11-04 20:53:56.058095','3','Kawasaki Ninja 400 ABS',1,'[{\"added\": {}}]',8,1),(10,'2023-11-04 20:55:05.144805','4','Kawasaki Z 400 ABS',1,'[{\"added\": {}}]',8,1),(11,'2023-11-04 20:55:38.374865','4','Kawasaki Z 400 ABS',2,'[{\"changed\": {\"fields\": [\"\\u6587\\u7ae0\\u5927\\u7db1\"]}}]',8,1),(12,'2023-11-04 20:57:56.552398','5','Kawasaki Z H2 ABS',1,'[{\"added\": {}}]',8,1),(13,'2023-11-04 21:00:30.856061','6','BMW S Series 1000 RR ABS標準版',1,'[{\"added\": {}}]',8,1),(14,'2023-11-05 10:36:08.185835','1','大型重機',1,'[{\"added\": {}}]',11,1),(15,'2023-11-05 10:36:13.712590','1','大型重機機車',2,'[{\"changed\": {\"fields\": [\"\\u985e\\u5225\\u540d\\u7a31\"]}}]',11,1),(16,'2023-11-05 10:36:16.375946','2','3C',1,'[{\"added\": {}}]',11,1),(17,'2023-11-05 10:36:25.627054','3','生活',1,'[{\"added\": {}}]',11,1),(18,'2023-11-05 10:36:30.247062','4','日常',1,'[{\"added\": {}}]',11,1),(19,'2023-11-05 10:37:22.474636','1','BMW S Series 1000 RR ABS標準版',1,'[{\"added\": {}}]',10,1),(20,'2023-11-05 11:36:21.213585','5','ProductPhoto object (5)',1,'[{\"added\": {}}]',12,1),(21,'2023-11-05 11:40:05.483647','1','BMW S Series 1000 RR ABS標準版',2,'[]',10,1),(22,'2023-11-05 19:36:54.116642','2','Kawasaki Ninja 400 ABS',1,'[{\"added\": {}}]',10,1),(23,'2023-11-05 19:37:14.604363','6','ProductPhoto object (6)',1,'[{\"added\": {}}]',12,1),(24,'2023-11-05 20:33:14.767424','7','ProductPhoto object (7)',1,'[{\"added\": {}}]',12,1),(25,'2023-11-05 20:33:18.753419','8','ProductPhoto object (8)',1,'[{\"added\": {}}]',12,1),(26,'2023-11-05 20:33:27.869567','9','ProductPhoto object (9)',1,'[{\"added\": {}}]',12,1),(27,'2023-11-05 20:33:40.611827','9','ProductPhoto object (9)',3,'',12,1),(28,'2023-11-05 20:33:53.866695','10','ProductPhoto object (10)',1,'[{\"added\": {}}]',12,1),(29,'2023-11-05 20:33:58.342735','11','ProductPhoto object (11)',1,'[{\"added\": {}}]',12,1),(30,'2023-11-05 20:34:03.246415','12','ProductPhoto object (12)',1,'[{\"added\": {}}]',12,1),(31,'2023-11-05 23:08:30.900876','2','Kawasaki Ninja 400 ABS',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',10,1),(32,'2023-11-05 23:12:58.613467','1','BMW S Series 1000 RR ABS標準版',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',10,1),(33,'2023-11-05 23:13:02.237064','2','Kawasaki Ninja 400 ABS',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',10,1),(34,'2023-11-05 23:37:42.751920','1','大型重機機車',2,'[{\"changed\": {\"fields\": [\"\\u985e\\u5225\\u5716\\u7247\"]}}]',11,1),(35,'2023-11-05 23:47:09.173559','2','3C',2,'[{\"changed\": {\"fields\": [\"\\u985e\\u5225\\u5716\\u7247\"]}}]',11,1),(36,'2023-11-05 23:47:15.632038','3','生活',2,'[{\"changed\": {\"fields\": [\"\\u985e\\u5225\\u5716\\u7247\"]}}]',11,1),(37,'2023-11-05 23:47:19.416921','4','日常',2,'[{\"changed\": {\"fields\": [\"\\u985e\\u5225\\u5716\\u7247\"]}}]',11,1),(38,'2023-11-06 20:04:42.622984','1','BMW S Series 1000 RR ABS標準版',2,'[{\"changed\": {\"fields\": [\"\\u7522\\u54c1\\u5716\\u7247\"]}}]',10,1),(39,'2023-11-06 20:21:32.342529','2','Kawasaki Ninja 400 ABS',2,'[{\"changed\": {\"fields\": [\"\\u7522\\u54c1\\u5716\\u7247\"]}}]',10,1),(40,'2023-11-06 23:48:56.032021','3','電勁筆電',1,'[{\"added\": {}}]',10,1),(41,'2023-11-06 23:49:37.233811','13','ProductPhoto object (13)',1,'[{\"added\": {}}]',12,1),(42,'2023-11-07 19:58:05.168964','7','電競螢幕',1,'[{\"added\": {}}]',8,1),(43,'2023-11-07 21:21:07.032594','3','生活',2,'[{\"changed\": {\"fields\": [\"\\u985e\\u5225\\u5716\\u7247\"]}}]',11,1),(44,'2023-11-07 21:22:10.367160','2','3C',2,'[{\"changed\": {\"fields\": [\"\\u985e\\u5225\\u5716\\u7247\"]}}]',11,1),(45,'2023-11-07 21:22:56.115444','4','日常',2,'[{\"changed\": {\"fields\": [\"\\u985e\\u5225\\u5716\\u7247\"]}}]',11,1),(46,'2023-11-07 22:50:08.036026','1','王宥翔',3,'',7,1),(47,'2023-11-07 22:50:15.912775','2','王宥翔',3,'',7,1),(48,'2023-11-07 22:55:16.775919','3','BannerModel object (3)',1,'[{\"added\": {}}]',15,1),(49,'2023-11-07 22:56:50.801473','4','BannerModel object (4)',1,'[{\"added\": {}}]',15,1),(50,'2023-11-07 22:57:01.643120','4','BannerModel object (4)',3,'',15,1),(51,'2023-11-07 22:58:02.781418','5','BannerModel object (5)',1,'[{\"added\": {}}]',15,1),(52,'2023-11-11 19:13:41.885923','6','BannerModel object (6)',1,'[{\"added\": {}}]',15,1),(53,'2023-11-11 19:14:41.028011','6','BannerModel object (6)',3,'',15,1),(54,'2023-11-11 19:14:46.027182','7','BannerModel object (7)',1,'[{\"added\": {}}]',15,1),(55,'2023-11-11 19:19:27.774821','7','BannerModel object (7)',3,'',15,1),(56,'2023-11-11 19:19:33.442145','8','BannerModel object (8)',1,'[{\"added\": {}}]',15,1),(57,'2023-11-11 19:20:44.707305','8','BannerModel object (8)',3,'',15,1),(58,'2023-11-11 19:20:52.750583','9','BannerModel object (9)',1,'[{\"added\": {}}]',15,1),(59,'2023-11-11 19:22:31.845664','10','BannerModel object (10)',1,'[{\"added\": {}}]',15,1),(60,'2023-11-11 19:23:56.297207','10','BannerModel object (10)',3,'',15,1),(61,'2023-11-11 19:24:01.729600','11','BannerModel object (11)',1,'[{\"added\": {}}]',15,1),(62,'2023-11-11 19:24:46.775819','11','BannerModel object (11)',3,'',15,1),(63,'2023-11-11 19:24:51.513812','12','BannerModel object (12)',1,'[{\"added\": {}}]',15,1),(64,'2023-11-11 19:48:23.164893','14','Order:14',2,'[{\"changed\": {\"fields\": [\"\\u4ed8\\u6b3e\\u72c0\\u614b\"]}}]',13,1),(65,'2023-11-11 20:24:33.700484','1','FAQModels object (1)',1,'[{\"added\": {}}]',18,1),(66,'2023-11-12 13:56:45.337139','4','2023 Honda ADV 350 ABS',1,'[{\"added\": {}}]',10,1),(67,'2023-11-12 13:57:06.102814','14','ProductPhoto object (14)',1,'[{\"added\": {}}]',12,1),(68,'2023-11-12 14:38:48.502647','15','ProductPhoto object (15)',1,'[{\"added\": {}}]',12,1),(69,'2023-11-12 14:38:56.005552','16','ProductPhoto object (16)',1,'[{\"added\": {}}]',12,1),(70,'2023-11-12 14:39:04.106311','17','ProductPhoto object (17)',1,'[{\"added\": {}}]',12,1),(71,'2023-11-12 19:46:52.017692','5','Honda CB1000 R ABS',1,'[{\"added\": {}}]',10,1),(72,'2023-11-12 19:47:04.854392','18','ProductPhoto object (18)',1,'[{\"added\": {}}]',12,1),(73,'2023-11-12 19:50:06.110313','6','Iphone 14',1,'[{\"added\": {}}]',10,1),(74,'2023-11-12 19:50:14.020876','19','ProductPhoto object (19)',1,'[{\"added\": {}}]',12,1),(75,'2023-11-12 19:50:36.683510','20','ProductPhoto object (20)',1,'[{\"added\": {}}]',12,1),(76,'2023-11-12 19:51:10.243138','21','ProductPhoto object (21)',1,'[{\"added\": {}}]',12,1),(77,'2023-11-12 19:51:15.157482','22','ProductPhoto object (22)',1,'[{\"added\": {}}]',12,1),(78,'2023-11-12 19:58:35.722273','7','GeForce RTX 4070 GAMING X SLIM WHITE 12G',1,'[{\"added\": {}}]',10,1),(79,'2023-11-12 19:58:43.498925','23','ProductPhoto object (23)',1,'[{\"added\": {}}]',12,1),(80,'2023-11-12 19:58:49.583552','24','ProductPhoto object (24)',1,'[{\"added\": {}}]',12,1),(81,'2023-11-12 19:58:55.623960','25','ProductPhoto object (25)',1,'[{\"added\": {}}]',12,1),(82,'2023-11-12 19:59:03.611983','26','ProductPhoto object (26)',1,'[{\"added\": {}}]',12,1),(83,'2023-11-12 19:59:14.198677','27','ProductPhoto object (27)',1,'[{\"added\": {}}]',12,1),(84,'2023-11-12 20:18:02.203366','8','GeForce RTX 4090 SUPRIM X 24G 顯示卡',1,'[{\"added\": {}}]',10,1),(85,'2023-11-12 20:18:43.815463','28','ProductPhoto object (28)',1,'[{\"added\": {}}]',12,1),(86,'2023-11-12 20:18:50.335293','29','ProductPhoto object (29)',1,'[{\"added\": {}}]',12,1),(87,'2023-11-12 20:18:55.037280','30','ProductPhoto object (30)',1,'[{\"added\": {}}]',12,1),(88,'2023-11-12 20:18:59.585758','31','ProductPhoto object (31)',1,'[{\"added\": {}}]',12,1),(89,'2023-11-12 20:23:09.959252','9','????最低價 精鋼加粗實心????不銹鋼衣架 45cm 42cm 32cm 不鏽鋼曬衣架 衣架 白鐵衣架',1,'[{\"added\": {}}]',10,1),(90,'2023-11-12 20:23:29.046508','9','????最低價 精鋼加粗實心????不銹鋼衣架 45cm 42cm 32cm 不鏽鋼曬衣架 衣架 白鐵衣架',3,'',10,1),(91,'2023-11-12 20:25:25.288003','10','二代★真正台灣製造 全台最亮最低價《CNS國家認證》高光效LED燈泡 護眼無藍光保護家人眼睛10W 13W 16W超節能',1,'[{\"added\": {}}]',10,1),(92,'2023-11-12 20:25:41.279042','10','二代★真正台灣製造 全台最亮最低價《CNS國家認證》高光效LED燈泡 護眼無藍光保護家人眼睛10W 13W 16W超節能',3,'',10,1),(93,'2023-11-12 20:35:11.315948','11','VERMICULAR琺瑯鑄鐵平底鍋24cm(黑胡桃木)',1,'[{\"added\": {}}]',10,1),(94,'2023-11-12 20:35:25.380976','32','ProductPhoto object (32)',1,'[{\"added\": {}}]',12,1),(95,'2023-11-12 20:35:30.651693','33','ProductPhoto object (33)',1,'[{\"added\": {}}]',12,1),(96,'2023-11-12 20:35:34.652088','34','ProductPhoto object (34)',1,'[{\"added\": {}}]',12,1),(97,'2023-11-12 20:35:39.289222','35','ProductPhoto object (35)',1,'[{\"added\": {}}]',12,1),(98,'2023-11-12 20:39:01.861254','12','舒潔清新綠茶拉拉抽取式衛生紙 (100抽x8包x8串/箱)',1,'[{\"added\": {}}]',10,1),(99,'2023-11-12 20:39:11.890625','36','ProductPhoto object (36)',1,'[{\"added\": {}}]',12,1),(100,'2023-11-12 20:39:16.018202','37','ProductPhoto object (37)',1,'[{\"added\": {}}]',12,1),(101,'2023-11-12 20:39:19.463415','38','ProductPhoto object (38)',1,'[{\"added\": {}}]',12,1),(102,'2023-11-12 20:39:22.993986','39','ProductPhoto object (39)',1,'[{\"added\": {}}]',12,1),(103,'2023-11-12 20:39:26.222083','40','ProductPhoto object (40)',1,'[{\"added\": {}}]',12,1),(104,'2023-11-12 21:12:09.513697','13','PRO DP180 13-086TW( Windows 11 Home - MSI 推薦 Windows 11 Pro for business/ i5-13400/ 1TB)',1,'[{\"added\": {}}]',10,1),(105,'2023-11-12 21:12:18.862971','41','ProductPhoto object (41)',1,'[{\"added\": {}}]',12,1),(106,'2023-11-12 21:12:22.553135','42','ProductPhoto object (42)',1,'[{\"added\": {}}]',12,1),(107,'2023-11-12 21:56:20.535360','14','2023 Yamaha YZF-R 7 ABS',1,'[{\"added\": {}}]',10,1),(108,'2023-11-12 21:56:37.561777','43','ProductPhoto object (43)',1,'[{\"added\": {}}]',12,1),(109,'2023-11-13 09:34:44.952415','13','PRO DP180 13-086TW( Windows 11 Home - MSI 推薦 Windows 11 Pro for business/ i5-13400/ 1TB)',3,'',10,1),(110,'2023-11-13 09:34:45.007318','8','GeForce RTX 4090 SUPRIM X 24G 顯示卡',3,'',10,1),(111,'2023-11-13 09:35:37.933979','13','PRO DP180 13-086TW( Windows 11 Home - MSI 推薦 Windows 11 Pro for business/ i5-13400/ 1TB)',3,'',10,1),(112,'2023-11-13 09:45:27.277749','15','RTX4090',1,'[{\"added\": {}}]',10,1),(113,'2023-11-13 09:46:53.297598','16','透氣機能雙面脖圍',1,'[{\"added\": {}}]',10,1),(114,'2023-11-13 09:47:00.925361','44','ProductPhoto object (44)',1,'[{\"added\": {}}]',12,1),(115,'2023-11-13 09:48:35.386557','17','【皇室羽毛工房】進階款羽絨被95%-冬被雙人',1,'[{\"added\": {}}]',10,1),(116,'2023-11-13 09:48:41.851349','45','ProductPhoto object (45)',1,'[{\"added\": {}}]',12,1),(117,'2023-11-13 09:49:30.061369','18','德國BRITA》Model ONE 瞬熱 UVC 滅菌開飲機(白)+6入去水垢專家濾芯+隨身濾水瓶(藍)_共7芯',1,'[{\"added\": {}}]',10,1),(118,'2023-11-13 09:49:39.326353','46','ProductPhoto object (46)',1,'[{\"added\": {}}]',12,1),(119,'2023-11-13 09:50:09.959489','47','ProductPhoto object (47)',1,'[{\"added\": {}}]',12,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(8,'blog','article'),(9,'blog','articlecategory'),(16,'contact','contactmodels'),(5,'contenttypes','contenttype'),(15,'django_shop','bannermodel'),(18,'faq','faqmodels'),(17,'ipn','paypalipn'),(7,'member','membermodels'),(13,'order','order'),(14,'order','orderitem'),(6,'sessions','session'),(11,'shop','category'),(10,'shop','product'),(12,'shop','productphoto');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-11-04 09:24:07.848827'),(2,'auth','0001_initial','2023-11-04 09:24:31.184493'),(3,'admin','0001_initial','2023-11-04 09:24:42.571327'),(4,'admin','0002_logentry_remove_auto_add','2023-11-04 09:24:42.821198'),(5,'admin','0003_logentry_add_action_flag_choices','2023-11-04 09:24:43.197396'),(6,'contenttypes','0002_remove_content_type_name','2023-11-04 09:24:45.496364'),(7,'auth','0002_alter_permission_name_max_length','2023-11-04 09:24:47.160041'),(8,'auth','0003_alter_user_email_max_length','2023-11-04 09:24:47.419497'),(9,'auth','0004_alter_user_username_opts','2023-11-04 09:24:47.480110'),(10,'auth','0005_alter_user_last_login_null','2023-11-04 09:24:48.713190'),(11,'auth','0006_require_contenttypes_0002','2023-11-04 09:24:49.033680'),(12,'auth','0007_alter_validators_add_error_messages','2023-11-04 09:24:49.312995'),(13,'auth','0008_alter_user_username_max_length','2023-11-04 09:24:54.375884'),(14,'auth','0009_alter_user_last_name_max_length','2023-11-04 09:24:59.240667'),(15,'auth','0010_alter_group_name_max_length','2023-11-04 09:24:59.489856'),(16,'auth','0011_update_proxy_permissions','2023-11-04 09:24:59.552951'),(17,'auth','0012_alter_user_first_name_max_length','2023-11-04 09:25:01.222014'),(18,'member','0001_initial','2023-11-04 09:25:01.694024'),(19,'sessions','0001_initial','2023-11-04 09:25:02.664291'),(20,'blog','0001_initial','2023-11-04 10:21:19.657940'),(21,'blog','0002_article_small_content','2023-11-04 11:03:07.560110'),(22,'shop','0001_initial','2023-11-05 10:35:13.231292'),(23,'shop','0002_alter_product_options_alter_productphoto_options_and_more','2023-11-05 11:38:31.783112'),(24,'shop','0003_product_is_onsale_alter_product_available','2023-11-05 11:39:50.541294'),(25,'shop','0004_product_image','2023-11-05 23:06:46.879541'),(26,'shop','0005_remove_product_image','2023-11-05 23:20:45.351005'),(27,'shop','0006_category_category_photo','2023-11-05 23:36:38.609098'),(28,'shop','0007_product_product_photo','2023-11-06 20:04:07.121725'),(29,'shop','0008_rename_product_photo_product_image','2023-11-06 20:08:38.147464'),(30,'order','0001_initial','2023-11-06 21:04:55.093145'),(31,'order','0002_remove_order_county_order_address','2023-11-06 21:09:39.445548'),(32,'django_shop','0001_initial','2023-11-07 22:49:36.467287'),(33,'order','0003_alter_orderitem_order_alter_orderitem_product_and_more','2023-11-07 22:49:36.599715'),(34,'contact','0001_initial','2023-11-08 19:18:28.080933'),(35,'ipn','0001_initial','2023-11-08 20:19:00.310586'),(36,'ipn','0002_paypalipn_mp_id','2023-11-08 20:19:01.141083'),(37,'ipn','0003_auto_20141117_1647','2023-11-08 20:19:04.284961'),(38,'ipn','0004_auto_20150612_1826','2023-11-08 20:20:04.201999'),(39,'ipn','0005_auto_20151217_0948','2023-11-08 20:20:05.867906'),(40,'ipn','0006_auto_20160108_1112','2023-11-08 20:20:07.816038'),(41,'ipn','0007_auto_20160219_1135','2023-11-08 20:20:07.866133'),(42,'ipn','0008_auto_20181128_1032','2023-11-08 20:20:07.924700'),(43,'ipn','0009_alter_paypalipn_id','2023-11-08 20:20:09.894191'),(44,'member','0002_membermodels_user_img','2023-11-11 09:13:54.861054'),(45,'blog','0003_alter_article_options_alter_articlecategory_options','2023-11-11 20:18:42.124004'),(46,'contact','0002_alter_contactmodels_options','2023-11-11 20:18:42.194213'),(47,'django_shop','0002_alter_bannermodel_options','2023-11-11 20:18:42.263208'),(48,'faq','0001_initial','2023-11-11 20:18:43.377905'),(49,'member','0003_alter_membermodels_options','2023-11-11 20:18:43.430418'),(50,'order','0004_alter_order_options_alter_orderitem_options','2023-11-11 20:18:43.573780'),(51,'shop','0009_alter_category_options_alter_product_options_and_more','2023-11-11 20:18:43.859838'),(52,'faq','0002_alter_faqmodels_order_status_alter_faqmodels_payment_and_more','2023-11-11 20:21:22.810794'),(53,'shop','0010_alter_product_description','2023-11-12 14:18:41.242925');
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
INSERT INTO `django_session` VALUES ('6pdp46h3ud6rj9i4lxuyhrrxsmun1tvr','.eJxVjDsOgzAQRO_iOrLM-gOmTJ8zWGvvOpBEIGFTIe4ekCiSbjTz5m0i4FqHsBZewkiiF424_XYR05unc6AXTs9ZpnmqyxjlichrLfIxE3_uF_snGLAMx1urrjUOrcNI0VvvVQOZswGDxkPWnpXC6I4ImpJtqXM2kyENGpjZHtKESxX9tu9fCrY6-A:1qzfZR:h3s2O06vHafMHQA2GggwFZj5AGpFxWuB8l6HBKklckI','2023-11-20 00:01:53.970436'),('8p1xt7eme9vtsy4s2m16al44b891wxb4','.eJw9jsEKwjAMhl9l5Fy2OqeMnpzgSfDiA0joyoi23exaRcbe3baClyT8-f8vWUCi8yAWqFMJs3LUg7BBawaTG_sg_S0pNQOLRoGAM75xxgcVF7J3LBrOi-54BQbPgNaT_4DYpCzJ5K63Lec8bsngkITKqJ6w-rOTXGVUJJX3SQ2wrix_kg_vf_PJIOkY906pttk1hyEJpRxNYs-dplekexcUg06jjdbc1i8GzUh-:1r0l3t:SrQe1Lk20XTUOSGRT8g7ddjXXbF-m7wC__f0EniQDqk','2023-11-23 00:05:49.314833'),('aoft2g0xpchycg41hx07ckp7723uzn2w','.eJyNTztvgzAQ_ivWSd5QCCYiNlNAYqraAYYukawTWMgpEAq4ryj_vWdSZWtVD-fz5_sed4EapwXSC0S-uNlMtoF0cF0XwDidG1cv2iNRAAP2BlLIH59ZxSoaNDOLttstK0uW5dXRJRgpqkYlR7cXOwkBvDocFrt8rgLjZGuv4El06Nv22Hok7E1jMbwbejgkI13pm5H2HF2Wmox4kfBMcqV8k2dcJbzYc6m4lFpsTqNp4RqA-Hsfcd_nAd9xxhfLnuxwQrajhcjkt-wilv-IvkqR0k8aiuOTrMbxrS96tB3Rvz7qSMSH1j839bn3ynPW2TfSXiZnAsg6HGhwva7fALeFCw:1r16My:vMB7r5SUpxSiQpxsQdSnhD4xtS12MJ62p-pELdYKih8','2023-11-23 22:50:56.494568'),('az7qugw855aqm9jzhtiu8bbn668d0lbk','.eJxVjs0KgzAQhN8lZxHNn8ZTLfTYZ5BNsta0_oDGUiq-e2MrBU87u_PtMAsxMHpSLGtEKph9U80TjpWzpCApOdw0mAf2m2Hv0N-G2Ay9H52ONyTe3Sm-Dhbb884eAhqYmvDNkjzjEoQEbbUSSiUprbHmlANXtGYKkwS0DJIya0Rmcylqyy2jjCKiCKH_juynLx24NkS_Xyal7HTb1lCvC6ibytY9kRR-nDEiZQt9AL9j_QD0eFIU:1r17Zc:9ByT8Mx_xBzZZqOD5Iq8StGV-HsCepat44AsIIrcPm4','2023-11-24 00:08:04.443904'),('bdt3h9hyy8cg724y1gb6phn71d97tq1r','eyJjYXJ0Ijp7fX0:1r1RfC:CrPGHspt2BOScTiZVU4nG74_CfS7SkWhSFD2lc40scI','2023-11-24 21:35:10.376822'),('bjg83w7cpvrktp02lsejs83wq0opxo7c','.eJyNTztvgzAQ_ivWSd5QwA4CzFSQmKp2gKFLJOtELOQUSAq4ryj_vWdSpepS1cP59N19jztDi9MC-RmEL242k91DPrq-D-A0HfeuXbRHRAAjDgZyKB-eWMMaWjQzE1EUsbpmRdnsXIJCUTUq2blUxhkE8OJwXOzyAbn0erb1Cp5Ej8Z2wM4j4WD2FsOboYdDMtKNvhppz9F1rcmIVwkvMq6Ub8qCq4RXKc8UzzItN4eT6eASgPz7Hnm75x7fcMZnyx7teEAW00Fk8iu7-Mkut9k_oq9SpPSdhuL4JKtxeu2rAW1P9M93EYlom8R3nUc27XHw4nPR21eSXyZnAih6HGl3_S5fefWFdg:1r1ndV:TZbxxuY9MrrAh0-eoOGF6aQ_jnvZRK5wTlfO0Ak6sgE','2023-11-25 21:02:53.334106'),('br3ntby8y7ie8xixw3gttsi20yuzbqm2','eyJjYXJ0Ijp7fX0:1r0OHG:6GxpIjJG_XnKSXQkv9HFQ5lBT1nuDtVHW18eyma-sX8','2023-11-21 23:46:06.940485'),('czsihgzepcl05z0frfys46b37usvwawb','.eJyrVkpOLCpRsqqu1VEqLU4tis9MUbIyhrBdcxMzc5SslKoqkg2NjB3SQVy95PxcJR2lzGLHnMyyVCWrkqLSVB0lx5zEPKBCMFULAIXiGzU:1r1QY0:AaoQRzl7yWSYnraAvBZ5fXYUyR9yqMvRL5mTDEZd7Sk','2023-11-24 20:23:40.396797'),('h8lj5jn9wr5d57a80fcw9fvmlq3y3ut2','eyJjYXJ0Ijp7fX0:1r2MgG:fnQ4snoLSkVYHI4OB0VY-hJis-CSBUgOMd5b751ZkNU','2023-11-27 10:28:04.793201'),('niz4xao221wxj61xo9wz8pc0akqjhq74','eyJjYXJ0Ijp7fX0:1r1Rhl:kZvcSUYfrkWNmNAESo6unGRkm0bbLj4PaQHe6dMW4dU','2023-11-24 21:37:49.714527'),('uhs2stdrm9ez1u72tn1pvk34ulibnm9c','.eJxVjDsOgzAQRO-ydWQZ_8CU6XMGtPauA0lkSxgqxN0DEg3daN6b2SDivEC_7Q8YcF3GYa08DxNBDw3cuoDxy_kE9MH8LiKWvMxTEKciLlrFqxD_npd7Oxixjsday641Dq3DQMFb72WjEiejDBqvkvYsJQZ3RKUp2pY6ZxMZ0korZraw_wEWeDr4:1r021t:Sat3up_zFm8E8hKVQCL-lanU1rr3n42TkApxSfSX0oA','2023-11-21 00:00:45.090169'),('vh6eldzgigeg6jixn7atqxdtq5rmu0jr','.eJxVjkFuhDAMRa-CvEYhJIEBdp1t1W56AGQSA2GGQCGoqkbcvQSNKs3Gsv__fvYDNC4eqgeIULaVFmugSmOYl8ls2tdhFDE4HAkqeMcfXPFmo0_rBowU59Hb9Qti-N7Qeet_z_C8WB3SQhac88O1I3ZBSEYyFpN_dpCTE3WQ2DBTB_seQ42b7-vwzHkeUnjRGtQ3csEwA7puYnpyfrENCxH2dFf2MRm6X5_ZF0CPa39sS15cVI5Zjo1pyqwseSpaapVQqErRypI4xyY_WiGNzi6myLPWKCOFFESUwf4HQxhmGw:1r00zE:XcKi8xYZNaqARU7Gij6wGTG059rHNSgIjqK3M7X4cT0','2023-11-20 22:53:56.220429'),('w8bkglughk2ggmxtp2qsyc70mv2wznct','.eJxVjEkOgkAQRe9Sa0KanqBZiYlLz0Cq6UJaGRIGYyTcXVBiwqp-_n_1ZiiwHyGdlwCmgfrcO0jjX7406GtI4f2KWMSElqfb1oRF10AAfshq_yRIx36iALIa25X9ngBynMYq_wshOnYWiwe12-Du2N66VdmOvbfhhoT7OoTXzlF93tmDoMKhWr8FS2KpUWm0zhplDIt4SaXkEqXhpTDEGFq9Ri5coWKXaFU66QQXnIgULB9fL1J-:1r2Axu:4QF8kG1esLOU_DyBb74etjGBjW3V2s6sWin2r7qWQHA','2023-11-26 21:57:30.159862'),('wf6a30w9b1r9y7g8vuv1hseqeaapvmw7','eyJjYXJ0Ijp7fX0:1r1RJI:dfWOwC1Lw9aI50vjOrpfGLmMlVfYTabrNlTlrcSrd14','2023-11-24 21:12:32.277819');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq`
--

DROP TABLE IF EXISTS `faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_status` longtext NOT NULL,
  `shipping_delivery` longtext NOT NULL,
  `payment` longtext NOT NULL,
  `return_exchange` longtext NOT NULL,
  `privacy_policy` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq`
--

LOCK TABLES `faq` WRITE;
/*!40000 ALTER TABLE `faq` DISABLE KEYS */;
INSERT INTO `faq` VALUES (1,'訂單會以最快的方式處理，我們這邊收到款項確認後會來電通知您，確認是否本人','貨物的方式可能會以空降的方式掉到你的住址，有可能會被風吹走要自己拿囉','現在只有使用Paypal而已，如果要其他的您直接匯款給我700-04011000960984','您用過就不可以退貨囉~','沒啥好隱私的 ，上面的商品有些不一定有 ，看你運氣');
/*!40000 ALTER TABLE `faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `birthday` date NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `c_date` date NOT NULL,
  `user_img` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (3,'王小巴','zxc123@gmail.com','96601e9660b4507f7f90b7c026821d0ab6b68c1d6a4414996dc235dfe80922ff','1987-03-09','0963982828','南投縣草屯鎮省府路417巷37號','2023-11-12','user_img/Monday.jpg'),(4,'王宥翔','zxc1234@gmail.com','pbkdf2_sha256$600000$wurYsKSFJ5kR806gvYT6y7$la76mRHYWzkvxvqGRdzTymUSTyQwITZoZQlQFwkj7XA=','1999-12-04','0963982828','省府路417巷37號','2023-11-07',NULL),(5,'Alan','zxc12345@gmail.com','e03fd37917e9dc7944e6f56e4c35897e4a1947619b946505b389b4d17a9198d8','1987-04-03','0485550154','4-4-16 Mochida','2023-11-08',NULL),(6,'王宥翔','zxc123456@gmail.com','082e5b8ae331f568231d78704b1f1bc2cb32e3bc2dd65559b4d1d843cc1cac49','1999-12-06','0963982828','省府路417巷37號','2023-11-08',NULL),(7,'BANANA','zx1010364@gmail.com','8df9c33f29641de7c15853839a6bb78acd73334a8efb782dc9a0f27cb5b801f9','1998-12-04','0988919460','草屯鎮省府路417巷37號','2023-11-12','user_img/Monday_ETc4PC0.jpg'),(8,'林姵吟','h546w3664@gmail.com','35baf17dd284f0d841cd20e231f26cf757620550ca6b69499224406265279d02','2023-11-03','0921594366','草屯鎮省府路417巷37號','2023-11-12','user_img/dog1.jpg'),(9,'王一鑫','wangihsin@gmail.com','5959d0b3efa448bf09f75468cfb83767d557fa8818e0a8df2be376df7d70f749','1999-12-04','0932594366','南投縣草屯鎮省府路417巷37號','2023-11-13','user_img/dog1_9qdMrcO.jpg');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(20) NOT NULL,
  `zip_code` varchar(10) NOT NULL,
  `city` varchar(10) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `create_date` datetime(6) NOT NULL,
  `modify_date` datetime(6) NOT NULL,
  `paid` tinyint(1) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_user_id_e323497c_fk_member_id` (`user_id`),
  CONSTRAINT `order_user_id_e323497c_fk_member_id` FOREIGN KEY (`user_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (8,'王小明','542','草屯鎮','0963982828','2023-11-07 23:42:12.329079','2023-11-07 23:42:12.329079',0,3,'省府路417巷37號'),(9,'王小明','542','草屯鎮','0963982828','2023-11-08 19:56:00.074907','2023-11-08 19:56:00.074907',0,3,'省府路417巷37號'),(10,'王宥翔','542','草屯鎮','0963982828','2023-11-08 20:11:00.913790','2023-11-08 20:11:00.913790',0,3,'省府路417巷37號'),(11,'王宥翔','542','草屯鎮','0963982828','2023-11-08 20:11:36.398329','2023-11-08 20:11:36.398329',0,3,'省府路417巷37號'),(12,'王宥翔','542','草屯鎮','0963982828','2023-11-09 22:51:03.509156','2023-11-09 22:51:03.509156',0,3,'省府路417巷37號'),(13,'王宥翔','542','草屯鎮','0963982828','2023-11-10 00:07:56.251058','2023-11-10 00:07:56.251058',0,3,'省府路417巷37號'),(14,'王宥翔','542','草屯鎮','0963982828','2023-11-10 18:44:00.754312','2023-11-11 19:48:23.150371',1,3,'省府路417巷37號'),(15,'maxwell','777','taipei','096665782140','2023-11-11 20:33:16.428847','2023-11-11 20:33:16.428847',0,7,'ssssssssssssssssssss'),(16,'林姵吟','542','草屯鎮','0963982828','2023-11-12 10:26:11.453082','2023-11-12 10:26:11.453082',0,8,'省府路417巷37號'),(17,'王宥翔','542','草屯鎮','0963982828','2023-11-12 10:44:01.909018','2023-11-12 10:44:01.909018',0,8,'省府路417巷37號'),(18,'maxwell','777','NORTH ','0963982829','2023-11-12 21:17:53.733820','2023-11-12 21:17:53.733820',0,7,'SSSSSSSSSSSSSSS'),(19,'王一鑫','542','草屯鎮','0963982828','2023-11-13 10:03:32.607439','2023-11-13 10:03:32.607439',0,9,'省府路417巷37號');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_orderitem`
--

DROP TABLE IF EXISTS `order_orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_orderitem` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `quantity` int(10) unsigned NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_orderitem_order_id_aba34f44_fk_order_id` (`order_id`),
  KEY `order_orderitem_product_id_c5c6b07a_fk_product_id` (`product_id`),
  CONSTRAINT `order_orderitem_order_id_aba34f44_fk_order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`),
  CONSTRAINT `order_orderitem_product_id_c5c6b07a_fk_product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `order_orderitem_chk_1` CHECK ((`quantity` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_orderitem`
--

LOCK TABLES `order_orderitem` WRITE;
/*!40000 ALTER TABLE `order_orderitem` DISABLE KEYS */;
INSERT INTO `order_orderitem` VALUES (14,1,8,1),(15,1,9,1),(16,1,9,2),(17,1,10,1),(18,1,10,2),(19,1,11,1),(20,1,11,2),(21,1,12,1),(22,1,12,2),(25,1,14,1),(26,1,15,2),(27,1,16,1),(28,1,16,2),(29,2,17,1),(30,1,18,1),(31,1,18,4),(32,1,18,2),(33,1,18,5),(34,1,18,3),(35,1,18,6),(37,1,18,11),(38,1,18,12),(39,1,19,2),(40,1,19,18);
/*!40000 ALTER TABLE `order_orderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paypal_ipn`
--

DROP TABLE IF EXISTS `paypal_ipn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paypal_ipn` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `business` varchar(127) NOT NULL,
  `charset` varchar(255) NOT NULL,
  `custom` varchar(256) NOT NULL,
  `notify_version` decimal(64,2) DEFAULT NULL,
  `parent_txn_id` varchar(19) NOT NULL,
  `receiver_email` varchar(254) NOT NULL,
  `receiver_id` varchar(255) NOT NULL,
  `residence_country` varchar(2) NOT NULL,
  `test_ipn` tinyint(1) NOT NULL,
  `txn_id` varchar(255) NOT NULL,
  `txn_type` varchar(255) NOT NULL,
  `verify_sign` varchar(255) NOT NULL,
  `address_country` varchar(64) NOT NULL,
  `address_city` varchar(40) NOT NULL,
  `address_country_code` varchar(64) NOT NULL,
  `address_name` varchar(128) NOT NULL,
  `address_state` varchar(40) NOT NULL,
  `address_status` varchar(255) NOT NULL,
  `address_street` varchar(200) NOT NULL,
  `address_zip` varchar(20) NOT NULL,
  `contact_phone` varchar(20) NOT NULL,
  `first_name` varchar(64) NOT NULL,
  `last_name` varchar(64) NOT NULL,
  `payer_business_name` varchar(127) NOT NULL,
  `payer_email` varchar(127) NOT NULL,
  `payer_id` varchar(13) NOT NULL,
  `auth_amount` decimal(64,2) DEFAULT NULL,
  `auth_exp` varchar(28) NOT NULL,
  `auth_id` varchar(19) NOT NULL,
  `auth_status` varchar(255) NOT NULL,
  `exchange_rate` decimal(64,16) DEFAULT NULL,
  `invoice` varchar(127) NOT NULL,
  `item_name` varchar(127) NOT NULL,
  `item_number` varchar(127) NOT NULL,
  `mc_currency` varchar(32) NOT NULL,
  `mc_fee` decimal(64,2) DEFAULT NULL,
  `mc_gross` decimal(64,2) DEFAULT NULL,
  `mc_handling` decimal(64,2) DEFAULT NULL,
  `mc_shipping` decimal(64,2) DEFAULT NULL,
  `memo` varchar(255) NOT NULL,
  `num_cart_items` int(11) DEFAULT NULL,
  `option_name1` varchar(64) NOT NULL,
  `option_name2` varchar(64) NOT NULL,
  `payer_status` varchar(255) NOT NULL,
  `payment_date` datetime(6) DEFAULT NULL,
  `payment_gross` decimal(64,2) DEFAULT NULL,
  `payment_status` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `pending_reason` varchar(255) NOT NULL,
  `protection_eligibility` varchar(255) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `reason_code` varchar(255) NOT NULL,
  `remaining_settle` decimal(64,2) DEFAULT NULL,
  `settle_amount` decimal(64,2) DEFAULT NULL,
  `settle_currency` varchar(32) NOT NULL,
  `shipping` decimal(64,2) DEFAULT NULL,
  `shipping_method` varchar(255) NOT NULL,
  `tax` decimal(64,2) DEFAULT NULL,
  `transaction_entity` varchar(255) NOT NULL,
  `auction_buyer_id` varchar(64) NOT NULL,
  `auction_closing_date` datetime(6) DEFAULT NULL,
  `auction_multi_item` int(11) DEFAULT NULL,
  `for_auction` decimal(64,2) DEFAULT NULL,
  `amount` decimal(64,2) DEFAULT NULL,
  `amount_per_cycle` decimal(64,2) DEFAULT NULL,
  `initial_payment_amount` decimal(64,2) DEFAULT NULL,
  `next_payment_date` datetime(6) DEFAULT NULL,
  `outstanding_balance` decimal(64,2) DEFAULT NULL,
  `payment_cycle` varchar(255) NOT NULL,
  `period_type` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_type` varchar(255) NOT NULL,
  `profile_status` varchar(255) NOT NULL,
  `recurring_payment_id` varchar(255) NOT NULL,
  `rp_invoice_id` varchar(127) NOT NULL,
  `time_created` datetime(6) DEFAULT NULL,
  `amount1` decimal(64,2) DEFAULT NULL,
  `amount2` decimal(64,2) DEFAULT NULL,
  `amount3` decimal(64,2) DEFAULT NULL,
  `mc_amount1` decimal(64,2) DEFAULT NULL,
  `mc_amount2` decimal(64,2) DEFAULT NULL,
  `mc_amount3` decimal(64,2) DEFAULT NULL,
  `password` varchar(24) NOT NULL,
  `period1` varchar(255) NOT NULL,
  `period2` varchar(255) NOT NULL,
  `period3` varchar(255) NOT NULL,
  `reattempt` varchar(1) NOT NULL,
  `recur_times` int(11) DEFAULT NULL,
  `recurring` varchar(1) NOT NULL,
  `retry_at` datetime(6) DEFAULT NULL,
  `subscr_date` datetime(6) DEFAULT NULL,
  `subscr_effective` datetime(6) DEFAULT NULL,
  `subscr_id` varchar(19) NOT NULL,
  `username` varchar(64) NOT NULL,
  `case_creation_date` datetime(6) DEFAULT NULL,
  `case_id` varchar(255) NOT NULL,
  `case_type` varchar(255) NOT NULL,
  `receipt_id` varchar(255) NOT NULL,
  `currency_code` varchar(32) NOT NULL,
  `handling_amount` decimal(64,2) DEFAULT NULL,
  `transaction_subject` varchar(256) NOT NULL,
  `ipaddress` char(39) DEFAULT NULL,
  `flag` tinyint(1) NOT NULL,
  `flag_code` varchar(16) NOT NULL,
  `flag_info` longtext NOT NULL,
  `query` longtext NOT NULL,
  `response` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `from_view` varchar(6) DEFAULT NULL,
  `mp_id` varchar(128) DEFAULT NULL,
  `option_selection1` varchar(200) NOT NULL,
  `option_selection2` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `paypal_ipn_txn_id_8fa22c44` (`txn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paypal_ipn`
--

LOCK TABLES `paypal_ipn` WRITE;
/*!40000 ALTER TABLE `paypal_ipn` DISABLE KEYS */;
/*!40000 ALTER TABLE `paypal_ipn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pc_id` varchar(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `small_description` longtext NOT NULL,
  `description` longtext NOT NULL,
  `stock` int(10) unsigned NOT NULL,
  `price` int(11) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `modify_date` datetime(6) NOT NULL,
  `create_date` date NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `is_onsale` tinyint(1) NOT NULL,
  `image` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_category_id_640030a0_fk_category_id` (`category_id`),
  CONSTRAINT `product_category_id_640030a0_fk_category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `product_chk_1` CHECK ((`stock` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'202311051036','BMW S Series 1000 RR ABS標準版','S Series代表的是BMW旗下高性能的跑車級距，搭載著BMW新研發的直列四缸引擎，其代表作品S 1000 RR更是驚豔四方，出色的性能不僅受到消費者好評，在賽道中也獲得優異成績而有著極高知名度。','S Series代表的是BMW旗下高性能的跑車級距，搭載著BMW新研發的直列四缸引擎，其代表作品S 1000 RR更是驚豔四方，出色的性能不僅受到消費者好評，在賽道中也獲得優異成績而有著極高知名度。 此具排汽量1001cc的水冷直列四缸四行程汽油引擎，具備210hp最大馬力與11.52kgm動力輸出。不僅於S 1000 RR上獲得出色表現，兼具街車分身的S 1000 R與ADV訴求的S 1000',100,1000000,1,'2023-11-06 20:04:42.607802','2023-11-05',1,1,'product_image/BMW_S_Series_1000_RR_ABS標準版_2.jpeg'),(2,'202311051935','Kawasaki Ninja 400 ABS','Ninja這個車名在Kawasaki陣營裡就和Z同等重要，不過有別於過去一系列的Ninja車款，Kawasaki忍者傳奇在車界打響名號，就如同日本忍者來去皆無影的速度感，集結了Kawasaki品牌在1','Ninja這個車名在Kawasaki陣營裡就和Z同等重要，不過有別於過去一系列的Ninja車款，Kawasaki忍者傳奇在車界打響名號，就如同日本忍者來去皆無影的速度感，集結了Kawasaki品牌在1970年代硬漢風格，其獨家風格的仿賽整流罩流線、霸氣與速度取向更是當代之最，足以與其他三大日本品牌抗衡的實力。 在1995年之後，Ninja車系的造型逐漸擴張曲線，導入與其他車廠相仿的球狀元素，而漸漸',50,238000,1,'2023-11-06 20:21:32.332016','2023-11-05',1,0,'product_image/Ninja400.jpeg'),(3,'202311062348','電勁筆電','就電勁筆電','跑超快~~~~~~~~~~~~~~',12,1222,1,'2023-11-06 23:48:56.010802','2023-11-06',2,1,'product_image/3C.webp'),(4,'202311121352','2023 Honda ADV 350 ABS','Honda ADV350 / ADV350 RoadSync圍繞「城市跨界冒險」的概念設計，從X-ADV 中汲取靈感，揉合硬派冒險與冷冽科技感，讓ADV350 / ADV350 RoadSync在車陣','Honda ADV350 / ADV350 RoadSync圍繞「城市跨界冒險」的概念設計，從X-ADV 中汲取靈感，揉合硬派冒險與冷冽科技感，讓ADV350 / ADV350 RoadSync在車陣中脫穎而出。在戶外活動盛行的現代，ADV350 / ADV350 RoadSync以跨界定位面世，為探索城市及更遠的彼處而生，ADV350兩種版本皆提供質感銀、消光灰兩色。',500,305000,1,'2023-11-12 13:56:45.308861','2023-11-12',1,0,'product_image/Honda_ADV_350ABS_1.jpeg'),(5,'202311121946','Honda CB1000 R ABS','作為Neo Sports Cafe 家族中的旗艦機種，CB1000R以高質感的外觀配上剽悍的動態表現深受喜愛，2023年式CB1000R 以全新消光黑延續新式古典的美學，每一個細節都充滿了職人吹毛求疵','作為Neo Sports Cafe 家族中的旗艦機種，CB1000R以高質感的外觀配上剽悍的動態表現深受喜愛，2023年式CB1000R 以全新消光黑延續新式古典的美學，每一個細節都充滿了職人吹毛求疵的細膩工藝。傳承來自 Honda 引以為傲的並列四缸引擎，調校成更重視低轉速域的動力輸出，增添日常使用的親切感。騎乘模式的系統讓騎士能依路況自由的調整，包含動力、引擎煞車與 HSTC 循跡控制。\r\n\r\n以CB1000R車格為基礎再增添全車黑化的外觀細節，更配備三段可調整的進、退檔快排，更配備全新導入的手機連動系統(HSVCS)，從街道至山道享受不同層面的帥勁與運動化的騎乘體驗，2023年式CB1000R+以全新消光牛仔藍、亮光黑，重新定義黑暗騎士的魅力。',100,558000,1,'2023-11-12 19:46:52.002660','2023-11-12',1,1,'product_image/Honda_CB1000_R_ABS_1.jpeg'),(6,'202311121948','Iphone 14','6.7 吋超 Retina XDR 顯示器\r\n先進的相機系統，在任何光線環境都能拍攝更出色的照片\r\n電影級模式，現在支援最高可達 30 fps 的 4K 杜比視界','此商品由「廠商出貨」，預計訂單完成付款後3個工作天內出貨(不含週六日及國定假日)；若為「較長備貨」賣場，出貨日以系統呈現為準。\r\n\r\n※此商品僅提供配送台灣本島各縣市，離島地區恕不在此配送範圍內\r\n\r\n※部份商品，偏遠地區無法配送貨或需加收運費，訂購後會有專人與您連繫\r\n\r\n※商品僅配送至收貨地址一樓，無協助搬運上樓。若需送至二樓以上，配送司機將會額外索取搬運費用(現場收取)\r\n\r\n※同筆訂單內若含多個「廠商直送」商品，將可能分批到貨\r\n\r\n※例假日、國定假日訂單，將於下個工作日盡速安排出貨事宜\r\n\r\n※若遇天候等不可抗力之因素，可能延後\r\n\r\n\r\n\r\n◎ iOS 16 作業系統\r\n\r\n◎ 6.1 吋 2,532 x 1,170pixels 解析度超 Retina XDR 顯示器（OLED 螢幕）\r\n\r\n◎ A15 仿生晶片（5 核心 GPU）\r\n\r\n◎ 128GB ROM\r\n\r\n◎ 1,200 萬畫素原深感測相機\r\n\r\n◎ 1,200 萬畫素廣角鏡頭 + 1,200 萬畫素超廣角鏡頭\r\n\r\n◎ 5G 上網、eSIM、Wi-Fi、藍牙、超寬頻、NFC 讀取\r\n\r\n◎ IP68 防水防塵\r\n\r\n◎ 電影級模式、杜比視界錄製、夜間攝影、智慧型 HDR 4 模式、動作模式 (防手震錄影)\r\n\r\n◎ SOS 緊急服務、車禍偵測功能\r\n\r\n◎ Face ID 臉部辨識\r\n\r\n◎ 支援有線快速充電、15W MagSafe 無線充電、7.5W Qi 無線充電\r\n\r\n◎ 採用 Lightning 連接埠\r\n\r\n◎ 盒裝配件：USB-C 對 Lightning 連接線、SIM 卡插針(依實際出貨盒內為準)\r\n\r\n\r\n\r\nNCC:CCAI225G0070T3\r\n\r\n型號:A2882\r\n\r\n\r\n\r\n退換貨須知：\r\n\r\n \r\n\r\n商品到貨隔日享蝦皮15天鑑賞(猶豫)期之權益【鑑賞(猶豫)期非試用期】，辦理退貨商品必須是完好狀態且需以本公司或特約商所使用的外包裝(紙箱或包裝袋)，妥善包裝後交付給前往取件的物流公司；若本公司或特約商的外包裝已經遺失，請您在商品原廠外盒外，再以其他適當的外盒進行包裝，請勿於商品原廠外盒上直接黏貼任何單據或書寫文字，否則將會影響退貨權限，此外也可能依照損毀程度扣除為回復原狀所必要的費用。\r\n\r\n \r\n\r\n●3C相關商品，為一次性包裝商品，請務必確認有購買需求後再拆封。\r\n\r\n●網頁商品會因為使用不同的品牌螢幕以及解析度不同，造成圖片顏色呈現略有不同，請以實品顏色為準。',100,256300,1,'2023-11-12 19:50:06.089774','2023-11-12',2,0,'product_image/Iphone14.webp'),(7,'202311121958','GeForce RTX 4070 GAMING X SLIM WHITE 12G','配備 NVIDIA® GeForce RTX™ 4070，恣意享受一流的遊戲和創作體驗。其採用超高效的NVIDIA Ada Lovelace架構構建。體驗快速光線追踪、使用DLSS 3的AI 加速效能','Boost Clock / Memory Speed\r\n2610 MHz / 21 Gbps\r\n12GB GDDR6X\r\nDisplayPort x 3 (v1.4a)\r\nHDMI™ x 1 (Supports 4K@120Hz HDR, 8K@60Hz HDR, and Variable Refresh Rate as specified in HDMI™ 2.1a)\r\nTRI FROZR 3 散熱設計\r\nTORX Fan 5.0: 由環形弧連接的風扇葉片和風扇罩協同合作，以穩定和保持高壓氣流\r\n鍍鎳銅底座: 捕獲來自GPU和記憶體的熱量，然後迅速將其傳輸到散熱器\r\n導熱管: 方形導熱管經過精密加工，可以最大面積接觸到GPU，並沿著散熱片進行降溫散熱，以達到最佳散熱效果\r\n氣流控制: 不同散熱片部分可阻饒不必要的氣流諧波，達到降噪效果\r\nAfterburner\r\nMSI Afterburner 為世界上最受認可、使用最廣泛的顯示卡超頻軟體，可完全掌控顯示卡\r\nMSI Center\r\n微星獨家MSI Center讓您即時監控、調整和優化MSI產品',400,22990,1,'2023-11-12 19:58:35.704645','2023-11-12',2,0,'product_image/rtx4070_1.webp'),(11,'202311122034','VERMICULAR琺瑯鑄鐵平底鍋24cm(黑胡桃木)','木質鍋柄材質：白橡木/黑胡桃木','木質鍋柄材質：白橡木/黑胡桃木\r\n商品尺寸(cm)：W430 x H110 x D50mm\r\n鍋身直徑(不含把手)：240mm\r\n重量(kg)：1.05 kg\r\n容量：2L\r\n產地：日本\r\n\r\n標準配備',60,3850,1,'2023-11-12 20:35:11.300947','2023-11-12',3,0,'product_image/Pot_2.webp'),(12,'202311122038','舒潔清新綠茶拉拉抽取式衛生紙 (100抽x8包x8串/箱)','舒潔特級舒適抽取衛生紙_綠茶','規格說明\r\n品名：舒潔 清新綠茶拉拉抽取衛生紙\r\n規格：100抽x8包x8串/箱\r\n尺寸：19.8公分x19.2公分(CNS許可差+-5%)',1000,789,1,'2023-11-12 20:39:01.836256','2023-11-12',4,1,'product_image/common_1.webp'),(14,'202311122154','2023 Yamaha YZF-R 7 ABS','「YZF-R7」上市後深得顧客青睞，Yamaha深信在每個人的心中，都潛藏著追求極致操駕、競技感受的「R DNA」。從空氣力學、動力開發至操控體驗，匯聚多項特色的「YZF-R7」，將徹底喚醒您的「R','「YZF-R7」上市後深得顧客青睞，Yamaha深信在每個人的心中，都潛藏著追求極致操駕、競技感受的「R DNA」。從空氣力學、動力開發至操控體驗，匯聚多項特色的「YZF-R7」，將徹底喚醒您的「R DNA」、釋放操駕潛能。\r\n\r\n「YZF-R7」承襲R系列的家族化外觀並具有最新世代的正面造型。搭載41mm全可調倒立式前叉與多連桿式後懸吊，強化部分車架結構，使之擁有快速、靈敏的操控反應。搭配以十字曲軸概念開發，且廣受市場好評，代號CP2的689c.c.直列雙缸引擎，提供駕駛者更恣意的加速感受。\r\n\r\n2023年「YZF-R7」共導入「Team Yamaha Blue 競技藍」、「Performance Black 性能黑」及「Intensity White 極致白」三款車色。「 Team Yamaha Blue 競技藍 」代表「YZF-R」的「Racing Spirit」，採用象徵Yamaha賽事精神的Racing Blue為主體，輔以消光的金屬藍設計，不僅呈現出更強的動感，更打造極高的「R DNA」識別。\r\n\r\n「Performance Black 性能黑」全車以亮光黑為主體，以低調、俐落的風格呈現「YZF-R7」的車身線條。「Intensity White 極致白」全白車身搭配紅色輪框，不管在任何地方，它將成為不可忽視的目光焦點。\r\n\r\n作為Yamaha當家跑車「YZF-R」系列作之一，「YZF-R3」外觀承襲自Yamaha MotoGP廠車 「YZR-M1」，以低風阻的空氣力學設計，搭配競技感騎士三角和37mm倒立式前叉，讓騎士透過過彎時的易操控特性，充分感受Yamaha Racing DNA。\r\n\r\n2023年「YZF-R3」共導入「Team Yamaha Blue 藍深灰(消光)」、「Midnight Black 黑(消光)」及「Phantom Purple 紫深灰」三款車色。「Team Yamaha Blue 藍深灰(消光)」傳承「YZF-R」系列的「Racing Spirit」，以高辨識度的 Yamaha Racing Blue 為基礎，而新一代YZF-R系列配色主軸「藍深灰」的消光部分則呈現在前土除與側整流罩上。\r\n\r\n「Midnight Black 黑(消光)」使用亮面與霧面兩種黑色搭配R3標誌上一縷淺藍點綴，形成層次與神祕感。「Phantom Purple 紫深灰」採用跳脫框架的亮光紫配上桃紅白拉線創造動感線條，滿足新世代騎士對於運動感及奪人目光的期待與追求。',100,408000,1,'2023-11-12 21:56:20.515817','2023-11-12',1,1,'product_image/R7_1.jpeg'),(15,'202311132143','RTX4090','NVIDIA® GeForce RTX® 4090 為終極GeForce GPU。在效能、效率和人工智慧驅動的圖形方面帶來了巨大的躍升。體驗超高效能遊戲、帶有光線追踪功能的極其詳細的虛擬世界、前所未有','NVIDIA® GeForce RTX® 4090 為終極GeForce GPU。在效能、效率和人工智慧驅動的圖形方面帶來了巨大的躍升。體驗超高效能遊戲、帶有光線追踪功能的極其詳細的虛擬世界、前所未有的生產力和新的創作方式。由NVIDIA Ada Lovelace架構支持，並配備24 GB G6X記憶體，為遊戲玩家和創作者提供終極體驗。\r\n \r\n\r\nBoost Clock / Memory Speed\r\n\r\nExtreme Performance: 2640 MHz (MSI Center)\r\nBoost: 2625 MHz (GAMING & SILENT Mode)\r\n21 Gbps\r\n24GB GDDR6X\r\nDisplayPort x 3 (v1.4a)\r\nHDMI™ x 1 (Supports 4K @120Hz HDR, 8K@60Hz HDR, and Variable Refresh Rate as specified in HDMI 2.1a)\r\n \r\n\r\nTRI FROZR 3 散熱設計\r\n\r\nTORX Fan 5.0: 由環形弧連接的風扇葉片和風扇罩協同工作以穩定和保持高壓氣流\r\n蒸氣室: GPU和記憶體覆蓋於蒸汽室，可將熱量快速傳遞至核心導熱管\r\n導熱管：方形導熱管經過精密加工，可以最大面積接觸到GPU，並沿著散熱片進行降溫散熱，以達到最佳散熱效果\r\n氣流控制： 不同散熱片部分可阻饒不必要的氣流諧波，達到降噪效果\r\n \r\n\r\n雙BIOS\r\n\r\n雙BIOS讓您輕鬆選擇確保效能全開的遊戲模式或以低噪為優先的靜音模式\r\n \r\n\r\nMSI Center\r\n\r\n微星獨家MSI Center讓您即時監控、調整和優化MSI產品\r\n \r\n\r\nMystic Light\r\n\r\nMystic Light可讓您完全控制 MSI 產品，同時也可與其他RGB設備進行RGB燈效連動',9,61900,1,'2023-11-13 09:45:27.261968','2023-11-13',2,1,'product_image/rtx4090_1_tOmnzqm.webp'),(16,'202311132146','透氣機能雙面脖圍','彈性柔軟透氣設計，輕膚體感極佳','彈性柔軟透氣設計，輕膚體感極佳\r\n多機能設計，任意變換面罩、頭套、脖圍、頭巾等模式\r\n個性圖騰設計，展現獨有的穿搭品味',50,639,1,'2023-11-13 09:46:53.276050','2023-11-13',3,1,'product_image/1024_cab47e00-5805-4e79-9bad-7445f25c036d_94x75_crop_center.webp'),(17,'202311130948','【皇室羽毛工房】進階款羽絨被95%-冬被雙人','填充升級，舒適加倍','填充升級，舒適加倍\r\n輕柔舒適，物超所值\r\n百貨專櫃人氣商品並榮獲台灣玉山最佳人氣品牌獎',2999,2999,1,'2023-11-13 09:48:35.366048','2023-11-13',3,0,'product_image/000001_1699668452.webp'),(18,'202311132149','德國BRITA》Model ONE 瞬熱 UVC 滅菌開飲機(白)+6入去水垢專家濾芯+隨身濾水瓶(藍)_共7芯','1鍵生飲免安裝，5秒瞬熱智能溫控','1鍵生飲免安裝，5秒瞬熱智能溫控\r\n4段溫度智能溫控與水量，滿足不同飲用需求\r\n小巧美型超時尚! 不占空間，比A4紙還小',15,11888,1,'2023-11-13 09:49:30.045361','2023-11-13',3,1,'product_image/000001_1699839631.webp');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_photo`
--

DROP TABLE IF EXISTS `product_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_photo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_photo` varchar(200) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_photo_product_id_83328935_fk_product_id` (`product_id`),
  CONSTRAINT `product_photo_product_id_83328935_fk_product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_photo`
--

LOCK TABLES `product_photo` WRITE;
/*!40000 ALTER TABLE `product_photo` DISABLE KEYS */;
INSERT INTO `product_photo` VALUES (5,'product_photo/BMW_S_Series_1000_RR_ABS標準版.jpeg',1),(6,'product_photo/Ninja400.jpeg',2),(7,'product_photo/BMW_S_Series_1000_RR_ABS標準版_2.jpeg',1),(8,'product_photo/BMW_S_Series_1000_RR_ABS標準版_3.jpeg',1),(10,'product_photo/BMW_S_Series_1000_RR_ABS標準版_4.jpeg',1),(11,'product_photo/BMW_S_Series_1000_RR_ABS標準版_5.jpeg',1),(12,'product_photo/BMW_S_Series_1000_RR_ABS標準版_6.jpeg',1),(13,'product_photo/3C.webp',3),(14,'product_photo/Honda_ADV_350ABS_1.jpeg',4),(15,'product_photo/Honda_ADV_350ABS_2.jpeg',4),(16,'product_photo/Honda_ADV_350ABS_3.jpeg',4),(17,'product_photo/Honda_ADV_350ABS_4.png',4),(18,'product_photo/Honda_CB1000_R_ABS_1.jpeg',5),(19,'product_photo/Iphone14.webp',6),(20,'product_photo/Iphone14_.jfif',6),(21,'product_photo/Iphone14_1.jfif',6),(22,'product_photo/Iphone14_2.jfif',6),(23,'product_photo/rtx4070_2.webp',7),(24,'product_photo/rtx4070_3.webp',7),(25,'product_photo/rtx4070_4.webp',7),(26,'product_photo/rtx4070_1.webp',7),(27,'product_photo/rtx4070_5.webp',7),(32,'product_photo/Pot_1.webp',11),(33,'product_photo/Pot_2.webp',11),(34,'product_photo/Pot_3.webp',11),(35,'product_photo/Pot_5.webp',11),(36,'product_photo/common_1.webp',12),(37,'product_photo/common_2.webp',12),(38,'product_photo/common_3.webp',12),(39,'product_photo/common_4.webp',12),(40,'product_photo/common_5.webp',12),(43,'product_photo/R7_1.jpeg',14),(44,'product_photo/1024_cab47e00-5805-4e79-9bad-7445f25c036d_94x75_crop_center.webp',16),(45,'product_photo/000001_1699668452.webp',17),(46,'product_photo/000001_1699839631.webp',18),(47,'product_photo/rtx4090_1_FLnvdVk.webp',15);
/*!40000 ALTER TABLE `product_photo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-13 10:39:38
