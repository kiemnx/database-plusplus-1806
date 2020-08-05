-- MySQL dump 10.13  Distrib 8.0.20, for Linux (x86_64)
--
-- Host: localhost    Database: thue_xe_cms
-- ------------------------------------------------------
-- Server version	8.0.20-0ubuntu0.19.10.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE SCHEMA IF NOT EXISTS thue_xe_cms DEFAULT CHARACTER SET utf8mb4;
USE thue_xe_cms;

--
-- Table structure for table `DANGKYCUNGCAP`
--

DROP TABLE IF EXISTS `DANGKYCUNGCAP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DANGKYCUNGCAP` (
  `MaDKCC` varchar(7) NOT NULL,
  `NgayBatDauCungCap` datetime NOT NULL,
  `NgayKetThucCungCap` datetime NOT NULL,
  `SoLuongXeDangKy` int DEFAULT NULL,
  `MaNhaCC` varchar(8) NOT NULL,
  `MaLoaiDV` varchar(6) NOT NULL,
  `DongXe` varchar(15) NOT NULL,
  `MaMP` varchar(5) NOT NULL,
  PRIMARY KEY (`MaDKCC`),
  KEY `fk_DANGKYCUNGCAP_NHACUNGCAP_idx` (`MaNhaCC`),
  KEY `fk_DANGKYCUNGCAP_LOAIDICHVU1_idx` (`MaLoaiDV`),
  KEY `fk_DANGKYCUNGCAP_DONGXE1_idx` (`DongXe`),
  KEY `fk_DANGKYCUNGCAP_MUCPHI1_idx` (`MaMP`),
  CONSTRAINT `fk_DANGKYCUNGCAP_DONGXE1` FOREIGN KEY (`DongXe`) REFERENCES `DONGXE` (`DongXe`),
  CONSTRAINT `fk_DANGKYCUNGCAP_LOAIDICHVU1` FOREIGN KEY (`MaLoaiDV`) REFERENCES `LOAIDICHVU` (`MaLoaiDV`),
  CONSTRAINT `fk_DANGKYCUNGCAP_MUCPHI1` FOREIGN KEY (`MaMP`) REFERENCES `MUCPHI` (`MaMP`),
  CONSTRAINT `fk_DANGKYCUNGCAP_NHACUNGCAP` FOREIGN KEY (`MaNhaCC`) REFERENCES `NHACUNGCAP` (`MaNhaCC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DANGKYCUNGCAP`
--

LOCK TABLES `DANGKYCUNGCAP` WRITE;
/*!40000 ALTER TABLE `DANGKYCUNGCAP` DISABLE KEYS */;
INSERT INTO `DANGKYCUNGCAP` VALUES ('DK001','2015-11-20 00:00:00','2016-11-20 00:00:00',NULL,'NCC001','DV01','Hiace','MP01'),('DK002','2015-11-20 00:00:00','2017-11-20 00:00:00',NULL,'NCC002','DV02','Vios','MP02'),('DK003','2017-11-20 00:00:00','2018-11-20 00:00:00',NULL,'NCC003','DV03','Escape','MP03'),('DK004','2015-11-20 00:00:00','2019-11-20 00:00:00',NULL,'NCC005','DV01','Cerato','MP04'),('DK005','2019-11-20 00:00:00','2020-11-20 00:00:00',NULL,'NCC002','DV02','Forte','MP03'),('DK006','2016-11-10 00:00:00','2021-11-20 00:00:00',NULL,'NCC004','DV03','Starex','MP04'),('DK007','2015-11-30 00:00:00','2016-01-25 00:00:00',NULL,'NCC005','DV01','Cerato','MP03'),('DK008','2016-02-28 00:00:00','2016-08-15 00:00:00',NULL,'NCC006','DV01','Vios','MP02'),('DK009','2016-04-27 00:00:00','2017-04-30 00:00:00',NULL,'NCC005','DV03','Grand-i10','MP02'),('DK010','2016-11-21 00:00:00','2016-02-22 00:00:00',NULL,'NCC006','DV01','Forte','MP02'),('DK011','2016-12-25 00:00:00','2017-02-20 00:00:00',NULL,'NCC007','DV01','Forte','MP01'),('DK012','2016-04-14 00:00:00','2017-12-20 00:00:00',NULL,'NCC007','DV03','Cerato','MP01'),('DK013','2015-12-21 00:00:00','2016-12-21 00:00:00',NULL,'NCC003','DV02','Cerato','MP01'),('DK014','2016-05-20 00:00:00','2016-12-30 00:00:00',NULL,'NCC008','DV02','Cerato','MP01'),('DK015','2018-04-24 00:00:00','2019-11-20 00:00:00',NULL,'NCC003','DV01','Hiace','MP02'),('DK016','2016-06-22 00:00:00','2016-12-21 00:00:00',NULL,'NCC001','DV03','Grand-i10','MP02'),('DK017','2016-09-30 00:00:00','2019-09-30 00:00:00',NULL,'NCC002','DV03','Cerato','MP03'),('DK018','2017-12-13 00:00:00','2018-09-30 00:00:00',NULL,'NCC008','DV03','Escape','MP04'),('DK019','2016-01-24 00:00:00','2016-12-30 00:00:00',NULL,'NCC003','DV03','Escape','MP03'),('DK020','2016-05-03 00:00:00','2017-10-21 00:00:00',NULL,'NCC002','DV03','Cerato','MP04'),('DK021','2015-01-30 00:00:00','2016-12-30 00:00:00',NULL,'NCC006','DV01','Forte','MP02'),('DK022','2016-07-25 00:00:00','2017-12-30 00:00:00',NULL,'NCC002','DV02','Cerato','MP04'),('DK023','2017-11-30 00:00:00','2018-05-20 00:00:00',NULL,'NCC002','DV01','Forte','MP03'),('DK024','2017-12-23 00:00:00','2019-11-30 00:00:00',NULL,'NCC003','DV03','Forte','MP04'),('DK025','2016-08-24 00:00:00','2017-10-25 00:00:00',NULL,'NCC003','DV03','Hiace','MP02');
/*!40000 ALTER TABLE `DANGKYCUNGCAP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DONGXE`
--

DROP TABLE IF EXISTS `DONGXE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DONGXE` (
  `DongXe` varchar(15) NOT NULL,
  `HangXe` varchar(10) NOT NULL,
  `SoChoNgoi` int NOT NULL,
  PRIMARY KEY (`DongXe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DONGXE`
--

LOCK TABLES `DONGXE` WRITE;
/*!40000 ALTER TABLE `DONGXE` DISABLE KEYS */;
INSERT INTO `DONGXE` VALUES ('Cerato','KIA',7),('Escape','Ford',5),('Forte','KIA',5),('Grand-i10','Huyndai',7),('Hiace','Toyota',16),('Starex','Huyndai',7),('Vios','Toyota',5);
/*!40000 ALTER TABLE `DONGXE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LOAIDICHVU`
--

DROP TABLE IF EXISTS `LOAIDICHVU`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LOAIDICHVU` (
  `MaLoaiDV` varchar(6) NOT NULL,
  `TenLoaiDV` varchar(50) NOT NULL,
  PRIMARY KEY (`MaLoaiDV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LOAIDICHVU`
--

LOCK TABLES `LOAIDICHVU` WRITE;
/*!40000 ALTER TABLE `LOAIDICHVU` DISABLE KEYS */;
INSERT INTO `LOAIDICHVU` VALUES ('DV01','Dịch vụ xe taxi'),('DV02','Dịch vụ xe buýt công cộng theo tuyến cố định'),('DV03','Dịch vụ cho thuê xe theo hợp đồng');
/*!40000 ALTER TABLE `LOAIDICHVU` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MUCPHI`
--

DROP TABLE IF EXISTS `MUCPHI`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MUCPHI` (
  `MaMP` varchar(5) NOT NULL,
  `DonGia` varchar(7) NOT NULL,
  `MoTa` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`MaMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MUCPHI`
--

LOCK TABLES `MUCPHI` WRITE;
/*!40000 ALTER TABLE `MUCPHI` DISABLE KEYS */;
INSERT INTO `MUCPHI` VALUES ('MP01','10000','Áp dụng từ ngày 1/2015'),('MP02','15000','Áp dụng từ ngày 2/2015'),('MP03','20000','Áp dụng từ ngày 1/2010'),('MP04','25000','Áp dụng từ ngày 2/2011');
/*!40000 ALTER TABLE `MUCPHI` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NHACUNGCAP`
--

DROP TABLE IF EXISTS `NHACUNGCAP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `NHACUNGCAP` (
  `MaNhaCC` varchar(8) NOT NULL,
  `TenNhaCC` varchar(50) NOT NULL,
  `DiaChi` varchar(30) NOT NULL,
  `SoDT` varchar(15) DEFAULT NULL,
  `MaSoThue` varchar(15) NOT NULL,
  PRIMARY KEY (`MaNhaCC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NHACUNGCAP`
--

LOCK TABLES `NHACUNGCAP` WRITE;
/*!40000 ALTER TABLE `NHACUNGCAP` DISABLE KEYS */;
INSERT INTO `NHACUNGCAP` VALUES ('NCC001','Cty TNHH Toàn Phát','Hai Chau','051133999888','568941'),('NCC002','Cty Cổ Phần Đông Du','Lien Chieu','051133999889','456789'),('NCC003','Ông Nguyễn Văn A','Hoa Thuan','051133999890','321456'),('NCC004','Cty Cổ Phần Toàn Cầu Xanh','Hai Chau','05113658945','513364'),('NCC005','Cty TNHH AMA','Thanh Khe','051103875466','546546'),('NCC006','Bà Trần Thị Bích Vân','Lien Chieu','05113587469','524545'),('NCC007','Cty TNHH Phan Thành','Thanh Khe','05113987456','113021'),('NCC008','Ông Phan Đình Nam','Hoa Thuan','05113532456','121230'),('NCC009','Tập đoàn Đông Nam Á','Lien Chieu','05113987121','533654'),('NCC010','Cty Cổ Phần Rạng đông','Lien Chieu','05113569654','187864');
/*!40000 ALTER TABLE `NHACUNGCAP` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-05  9:22:59
