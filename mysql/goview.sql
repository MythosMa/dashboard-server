-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: goview
-- ------------------------------------------------------
-- Server version	8.4.0

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
-- Table structure for table `t_goview_project`
--

DROP TABLE IF EXISTS `t_goview_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_goview_project` (
  `id` varchar(255) NOT NULL,
  `project_name` text,
  `state` int DEFAULT NULL,
  `create_time` text,
  `create_user_id` text,
  `is_delete` int DEFAULT NULL,
  `index_image` text,
  `remarks` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_goview_project`
--

LOCK TABLES `t_goview_project` WRITE;
/*!40000 ALTER TABLE `t_goview_project` DISABLE KEYS */;
INSERT INTO `t_goview_project` VALUES ('1971757289870045186','id_1fxloatct33400',1,'2025-09-27 10:02:25',NULL,NULL,'http://127.0.0.1:8083/oss/2025-09-27/1131765162185986048.png',NULL);
/*!40000 ALTER TABLE `t_goview_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_goview_project_data`
--

DROP TABLE IF EXISTS `t_goview_project_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_goview_project_data` (
  `id` varchar(255) NOT NULL,
  `project_id` text,
  `create_time` text,
  `create_user_id` text,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_goview_project_data`
--

LOCK TABLES `t_goview_project_data` WRITE;
/*!40000 ALTER TABLE `t_goview_project_data` DISABLE KEYS */;
INSERT INTO `t_goview_project_data` VALUES ('1971757645567995905','1971757289870045186',NULL,NULL,'{\r\n  \"editCanvasConfig\": {\r\n    \"projectName\": \"id_1fxloatct33400\",\r\n    \"width\": 1920,\r\n    \"height\": 1080,\r\n    \"filterShow\": false,\r\n    \"hueRotate\": 0,\r\n    \"saturate\": 1,\r\n    \"contrast\": 1,\r\n    \"brightness\": 1,\r\n    \"opacity\": 1,\r\n    \"rotateZ\": 0,\r\n    \"rotateX\": 0,\r\n    \"rotateY\": 0,\r\n    \"skewX\": 0,\r\n    \"skewY\": 0,\r\n    \"blendMode\": \"normal\",\r\n    \"background\": null,\r\n    \"backgroundImage\": null,\r\n    \"selectColor\": true,\r\n    \"chartThemeColor\": \"dark\",\r\n    \"chartCustomThemeColorInfo\": null,\r\n    \"chartThemeSetting\": {\r\n      \"title\": {\r\n        \"show\": true,\r\n        \"textStyle\": {\r\n          \"color\": \"#BFBFBF\",\r\n          \"fontSize\": 18\r\n        },\r\n        \"subtextStyle\": {\r\n          \"color\": \"#A2A2A2\",\r\n          \"fontSize\": 14\r\n        }\r\n      },\r\n      \"xAxis\": {\r\n        \"show\": true,\r\n        \"name\": \"\",\r\n        \"nameGap\": 15,\r\n        \"nameTextStyle\": {\r\n          \"color\": \"#B9B8CE\",\r\n          \"fontSize\": 12\r\n        },\r\n        \"inverse\": false,\r\n        \"axisLabel\": {\r\n          \"show\": true,\r\n          \"fontSize\": 12,\r\n          \"color\": \"#B9B8CE\",\r\n          \"rotate\": 0\r\n        },\r\n        \"position\": \"bottom\",\r\n        \"axisLine\": {\r\n          \"show\": true,\r\n          \"lineStyle\": {\r\n            \"color\": \"#B9B8CE\",\r\n            \"width\": 1\r\n          },\r\n          \"onZero\": true\r\n        },\r\n        \"axisTick\": {\r\n          \"show\": true,\r\n          \"length\": 5\r\n        },\r\n        \"splitLine\": {\r\n          \"show\": false,\r\n          \"lineStyle\": {\r\n            \"color\": \"#484753\",\r\n            \"width\": 1,\r\n            \"type\": \"solid\"\r\n          }\r\n        }\r\n      },\r\n      \"yAxis\": {\r\n        \"show\": true,\r\n        \"name\": \"\",\r\n        \"nameGap\": 15,\r\n        \"nameTextStyle\": {\r\n          \"color\": \"#B9B8CE\",\r\n          \"fontSize\": 12\r\n        },\r\n        \"inverse\": false,\r\n        \"axisLabel\": {\r\n          \"show\": true,\r\n          \"fontSize\": 12,\r\n          \"color\": \"#B9B8CE\",\r\n          \"rotate\": 0\r\n        },\r\n        \"position\": \"left\",\r\n        \"axisLine\": {\r\n          \"show\": true,\r\n          \"lineStyle\": {\r\n            \"color\": \"#B9B8CE\",\r\n            \"width\": 1\r\n          },\r\n          \"onZero\": true\r\n        },\r\n        \"axisTick\": {\r\n          \"show\": true,\r\n          \"length\": 5\r\n        },\r\n        \"splitLine\": {\r\n          \"show\": true,\r\n          \"lineStyle\": {\r\n            \"color\": \"#484753\",\r\n            \"width\": 1,\r\n            \"type\": \"solid\"\r\n          }\r\n        }\r\n      },\r\n      \"legend\": {\r\n        \"show\": false,\r\n        \"type\": \"scroll\",\r\n        \"x\": \"center\",\r\n        \"y\": \"top\",\r\n        \"icon\": \"circle\",\r\n        \"orient\": \"horizontal\",\r\n        \"textStyle\": {\r\n          \"color\": \"#B9B8CE\",\r\n          \"fontSize\": 18\r\n        },\r\n        \"itemHeight\": 15,\r\n        \"itemWidth\": 15,\r\n        \"pageTextStyle\": {\r\n          \"color\": \"#B9B8CE\"\r\n        }\r\n      },\r\n      \"grid\": {\r\n        \"show\": false,\r\n        \"left\": \"10%\",\r\n        \"top\": \"60\",\r\n        \"right\": \"10%\",\r\n        \"bottom\": \"60\"\r\n      },\r\n      \"dataset\": null,\r\n      \"renderer\": \"canvas\"\r\n    },\r\n    \"vChartThemeName\": \"vScreenVolcanoBlue\",\r\n    \"previewScaleType\": \"fit\"\r\n  },\r\n  \"componentList\": [\r\n    {\r\n      \"id\": \"id_n0x4pcivb9c00\",\r\n      \"isGroup\": false,\r\n      \"attr\": {\r\n        \"x\": 70,\r\n        \"y\": 163,\r\n        \"w\": 500,\r\n        \"h\": 300,\r\n        \"offsetX\": 0,\r\n        \"offsetY\": 0,\r\n        \"zIndex\": -1\r\n      },\r\n      \"styles\": {\r\n        \"filterShow\": false,\r\n        \"hueRotate\": 0,\r\n        \"saturate\": 1,\r\n        \"contrast\": 1,\r\n        \"brightness\": 1,\r\n        \"opacity\": 1,\r\n        \"rotateZ\": 0,\r\n        \"rotateX\": 0,\r\n        \"rotateY\": 0,\r\n        \"skewX\": 0,\r\n        \"skewY\": 0,\r\n        \"blendMode\": \"normal\",\r\n        \"animations\": []\r\n      },\r\n      \"preview\": {\r\n        \"overFlowHidden\": false\r\n      },\r\n      \"status\": {\r\n        \"lock\": false,\r\n        \"hide\": false\r\n      },\r\n      \"request\": {\r\n        \"requestDataType\": 0,\r\n        \"requestHttpType\": \"get\",\r\n        \"requestUrl\": \"\",\r\n        \"requestInterval\": null,\r\n        \"requestIntervalUnit\": \"second\",\r\n        \"requestContentType\": 0,\r\n        \"requestParamsBodyType\": \"none\",\r\n        \"requestSQLContent\": {\r\n          \"sql\": \"select * from  where\"\r\n        },\r\n        \"requestParams\": {\r\n          \"Body\": {\r\n            \"form-data\": {},\r\n            \"x-www-form-urlencoded\": {},\r\n            \"json\": \"\",\r\n            \"xml\": \"\"\r\n          },\r\n          \"Header\": {},\r\n          \"Params\": {}\r\n        }\r\n      },\r\n      \"filter\": null,\r\n      \"events\": {\r\n        \"baseEvent\": {\r\n          \"click\": null,\r\n          \"dblclick\": null,\r\n          \"mouseenter\": null,\r\n          \"mouseleave\": null\r\n        },\r\n        \"advancedEvents\": {\r\n          \"vnodeMounted\": null,\r\n          \"vnodeBeforeMount\": null\r\n        },\r\n        \"interactEvents\": []\r\n      },\r\n      \"key\": \"Border03\",\r\n      \"chartConfig\": {\r\n        \"key\": \"Border03\",\r\n        \"chartKey\": \"VBorder03\",\r\n        \"conKey\": \"VCBorder03\",\r\n        \"title\": \"边框-03\",\r\n        \"category\": \"Borders\",\r\n        \"categoryName\": \"边框\",\r\n        \"package\": \"Decorates\",\r\n        \"chartFrame\": \"static\",\r\n        \"image\": \"border03.png\"\r\n      },\r\n      \"option\": {\r\n        \"colors\": [\r\n          \"#6586ec\",\r\n          \"#2cf7fe\"\r\n        ],\r\n        \"backgroundColor\": \"#00000000\"\r\n      }\r\n    },\r\n    {\r\n      \"id\": \"id_3uzeske942s000\",\r\n      \"isGroup\": false,\r\n      \"attr\": {\r\n        \"x\": 668,\r\n        \"y\": 156,\r\n        \"w\": 500,\r\n        \"h\": 300,\r\n        \"offsetX\": 0,\r\n        \"offsetY\": 0,\r\n        \"zIndex\": -1\r\n      },\r\n      \"styles\": {\r\n        \"filterShow\": false,\r\n        \"hueRotate\": 0,\r\n        \"saturate\": 1,\r\n        \"contrast\": 1,\r\n        \"brightness\": 1,\r\n        \"opacity\": 1,\r\n        \"rotateZ\": 0,\r\n        \"rotateX\": 0,\r\n        \"rotateY\": 0,\r\n        \"skewX\": 0,\r\n        \"skewY\": 0,\r\n        \"blendMode\": \"normal\",\r\n        \"animations\": []\r\n      },\r\n      \"preview\": {\r\n        \"overFlowHidden\": false\r\n      },\r\n      \"status\": {\r\n        \"lock\": false,\r\n        \"hide\": false\r\n      },\r\n      \"request\": {\r\n        \"requestDataType\": 1,\r\n        \"requestHttpType\": \"get\",\r\n        \"requestUrl\": \"/wms/report/inventoryReport/getInventoryAgeStat\",\r\n        \"requestInterval\": 10,\r\n        \"requestIntervalUnit\": \"second\",\r\n        \"requestContentType\": 0,\r\n        \"requestParamsBodyType\": \"none\",\r\n        \"requestSQLContent\": {\r\n          \"sql\": \"select * from  where\"\r\n        },\r\n        \"requestParams\": {\r\n          \"Body\": {\r\n            \"form-data\": {},\r\n            \"x-www-form-urlencoded\": {},\r\n            \"json\": \"\",\r\n            \"xml\": \"\"\r\n          },\r\n          \"Header\": {},\r\n          \"Params\": {\r\n            \"wid\": \"164\"\r\n          }\r\n        }\r\n      },\r\n      \"filter\": \"return {\\r\\n  \\\"dimensions\\\": [\\r\\n    \\\"name\\\",\\r\\n    \\\"value\\\"\\r\\n  ],\\r\\n  \\\"source\\\": [\\r\\n    { \\\"value\\\": data.sevenDayQty, \\\"name\\\": \'一周内\' },\\r\\n    { \\\"value\\\": data.oneMonthQty, \\\"name\\\": \'一个月内\' },\\r\\n    { \\\"value\\\": data.lessThreeMonthQty, \\\"name\\\": \'三个月内\' },\\r\\n    { \\\"value\\\": data.moreThreeMonthQty, \\\"name\\\": \'三个月外\' },\\r\\n  ]\\r\\n}\",\r\n      \"events\": {\r\n        \"baseEvent\": {\r\n          \"click\": null,\r\n          \"dblclick\": null,\r\n          \"mouseenter\": null,\r\n          \"mouseleave\": null\r\n        },\r\n        \"advancedEvents\": {\r\n          \"vnodeMounted\": null,\r\n          \"vnodeBeforeMount\": null\r\n        },\r\n        \"interactEvents\": []\r\n      },\r\n      \"key\": \"PieCommon\",\r\n      \"chartConfig\": {\r\n        \"key\": \"PieCommon\",\r\n        \"chartKey\": \"VPieCommon\",\r\n        \"conKey\": \"VCPieCommon\",\r\n        \"title\": \"饼图\",\r\n        \"category\": \"Pies\",\r\n        \"categoryName\": \"饼图\",\r\n        \"package\": \"Charts\",\r\n        \"chartFrame\": \"echarts\",\r\n        \"image\": \"pie.png\"\r\n      },\r\n      \"option\": {\r\n        \"legend\": {\r\n          \"show\": false,\r\n          \"type\": \"scroll\",\r\n          \"x\": \"center\",\r\n          \"y\": \"top\",\r\n          \"icon\": \"circle\",\r\n          \"orient\": \"horizontal\",\r\n          \"textStyle\": {\r\n            \"color\": \"#B9B8CE\",\r\n            \"fontSize\": 18\r\n          },\r\n          \"itemHeight\": 15,\r\n          \"itemWidth\": 15,\r\n          \"pageTextStyle\": {\r\n            \"color\": \"#B9B8CE\"\r\n          }\r\n        },\r\n        \"isCarousel\": false,\r\n        \"type\": \"ring\",\r\n        \"tooltip\": {\r\n          \"show\": true,\r\n          \"trigger\": \"item\"\r\n        },\r\n        \"dataset\": {\r\n          \"dimensions\": [\r\n            \"name\",\r\n            \"value\"\r\n          ],\r\n          \"source\": [\r\n            {\r\n              \"value\": 100019,\r\n              \"name\": \"一周内\"\r\n            },\r\n            {\r\n              \"value\": 223157,\r\n              \"name\": \"一个月内\"\r\n            },\r\n            {\r\n              \"value\": 51680,\r\n              \"name\": \"三个月内\"\r\n            },\r\n            {\r\n              \"value\": 17023,\r\n              \"name\": \"三个月外\"\r\n            }\r\n          ]\r\n        },\r\n        \"series\": [\r\n          {\r\n            \"type\": \"pie\",\r\n            \"radius\": [\r\n              \"50%\",\r\n              \"60%\"\r\n            ],\r\n            \"center\": [\r\n              \"50%\",\r\n              \"60%\"\r\n            ],\r\n            \"roseType\": false,\r\n            \"avoidLabelOverlap\": false,\r\n            \"itemStyle\": {\r\n              \"show\": true,\r\n              \"borderRadius\": 15,\r\n              \"borderColor\": \"#fff\",\r\n              \"borderWidth\": 2\r\n            },\r\n            \"label\": {\r\n              \"show\": false,\r\n              \"position\": \"outside\",\r\n              \"formatter\": \"{b}\",\r\n              \"fontWeight\": \"normal\",\r\n              \"fontSize\": 14,\r\n              \"color\": \"#454E54\",\r\n              \"textBorderColor\": \"#ffffff\",\r\n              \"textBorderWidth\": 1\r\n            },\r\n            \"emphasis\": {\r\n              \"label\": {\r\n                \"show\": true,\r\n                \"fontSize\": 40,\r\n                \"fontWeight\": \"bold\"\r\n              }\r\n            },\r\n            \"labelLine\": {\r\n              \"show\": false\r\n            }\r\n          }\r\n        ],\r\n        \"backgroundColor\": \"rgba(0,0,0,0)\"\r\n      }\r\n    }\r\n  ],\r\n  \"requestGlobalConfig\": {\r\n    \"requestDataPond\": [\r\n      {\r\n        \"dataPondId\": \"id_3ltjx82o41c00\",\r\n        \"dataPondName\": \"库存库龄\",\r\n        \"dataPondRequestConfig\": {\r\n          \"requestDataType\": 2,\r\n          \"requestHttpType\": \"get\",\r\n          \"requestUrl\": \"/wms/report/inventoryReport/getInventoryAgeStat\",\r\n          \"requestInterval\": null,\r\n          \"requestIntervalUnit\": \"second\",\r\n          \"requestContentType\": 0,\r\n          \"requestParamsBodyType\": \"none\",\r\n          \"requestSQLContent\": {\r\n            \"sql\": \"select * from  where\"\r\n          },\r\n          \"requestParams\": {\r\n            \"Body\": {\r\n              \"form-data\": {},\r\n              \"x-www-form-urlencoded\": {},\r\n              \"json\": \"\",\r\n              \"xml\": \"\"\r\n            },\r\n            \"Header\": {},\r\n            \"Params\": {\r\n              \"wid\": \"164\"\r\n            }\r\n          }\r\n        }\r\n      }\r\n    ],\r\n    \"requestOriginUrl\": \"http://172.16.1.53:9100\",\r\n    \"requestInterval\": 10,\r\n    \"requestIntervalUnit\": \"second\",\r\n    \"requestParams\": {\r\n      \"Body\": {\r\n        \"form-data\": {},\r\n        \"x-www-form-urlencoded\": {},\r\n        \"json\": \"\",\r\n        \"xml\": \"\"\r\n      },\r\n      \"Header\": {},\r\n      \"Params\": {}\r\n    }\r\n  }\r\n}');
/*!40000 ALTER TABLE `t_goview_project_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sys_file`
--

DROP TABLE IF EXISTS `t_sys_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_sys_file` (
  `id` varchar(255) NOT NULL,
  `file_name` text,
  `file_size` int DEFAULT NULL,
  `file_suffix` text,
  `create_time` text,
  `md5` text,
  `virtual_key` text,
  `relative_path` text,
  `absolute_path` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sys_file`
--

LOCK TABLES `t_sys_file` WRITE;
/*!40000 ALTER TABLE `t_sys_file` DISABLE KEYS */;
INSERT INTO `t_sys_file` VALUES ('1131736551475253249','1131736551475253248.png',34007,'.png','2025-09-27 10:03:50',NULL,'oss','2025-09-27','E:/workroom/project/dashboardscreen/go-view-upload/'),('1131737809317662721','1131737809317662720.png',34007,'.png','2025-09-27 10:08:50',NULL,'oss','2025-09-27','E:/workroom/project/dashboardscreen/go-view-upload/'),('1131743124369051649','1131743124369051648.png',33058,'.png','2025-09-27 10:29:57',NULL,'oss','2025-09-27','E:/workroom/project/dashboardscreen/go-view-upload/'),('1131743136314429441','1131743136314429440.png',34816,'.png','2025-09-27 10:30:00',NULL,'oss','2025-09-27','E:/workroom/project/dashboardscreen/go-view-upload/'),('1131743148993810433','1131743148993810432.png',33058,'.png','2025-09-27 10:30:03',NULL,'oss','2025-09-27','E:/workroom/project/dashboardscreen/go-view-upload/'),('1131743551965761537','1131743551965761536.png',53469,'.png','2025-09-27 10:31:39',NULL,'oss','2025-09-27','E:/workroom/project/dashboardscreen/go-view-upload/'),('1131743659553853441','1131743659553853440.png',326636,'.png','2025-09-27 10:32:05',NULL,'oss','2025-09-27','E:/workroom/project/dashboardscreen/go-view-upload/'),('1131754955963764737','1131754955963764736.png',33831,'.png','2025-09-27 11:16:58',NULL,'oss','2025-09-27','E:/workroom/project/dashboardscreen/go-view-upload/'),('1131755122494410753','1131755122494410752.png',26069,'.png','2025-09-27 11:17:38',NULL,'oss','2025-09-27','E:/workroom/project/dashboardscreen/go-view-upload/'),('1131758201335844865','1131758201335844864.png',26162,'.png','2025-09-27 11:29:52',NULL,'oss','2025-09-27','E:/workroom/project/dashboardscreen/go-view-upload/'),('1131758213197336577','1131758213197336576.png',26162,'.png','2025-09-27 11:29:55',NULL,'oss','2025-09-27','E:/workroom/project/dashboardscreen/go-view-upload/'),('1131758582128316417','1131758582128316416.png',16610,'.png','2025-09-27 11:31:23',NULL,'oss','2025-09-27','E:/workroom/project/dashboardscreen/go-view-upload/'),('1131758588155531265','1131758588155531264.png',16610,'.png','2025-09-27 11:31:24',NULL,'oss','2025-09-27','E:/workroom/project/dashboardscreen/go-view-upload/'),('1131758794741780481','1131758794741780480.png',16610,'.png','2025-09-27 11:32:13',NULL,'oss','2025-09-27','E:/workroom/project/dashboardscreen/go-view-upload/'),('1131759076825501697','1131759076825501696.png',15541,'.png','2025-09-27 11:33:21',NULL,'oss','2025-09-27','E:/workroom/project/dashboardscreen/go-view-upload/'),('1131759407475068929','1131759407475068928.png',23598,'.png','2025-09-27 11:34:40',NULL,'oss','2025-09-27','E:/workroom/project/dashboardscreen/go-view-upload/'),('1131761640585433089','1131761640585433088.png',28017,'.png','2025-09-27 11:43:32',NULL,'oss','2025-09-27','E:/workroom/project/dashboardscreen/go-view-upload/'),('1131762151040618497','1131762151040618496.png',26341,'.png','2025-09-27 11:45:34',NULL,'oss','2025-09-27','E:/workroom/project/dashboardscreen/go-view-upload/'),('1131765162185986049','1131765162185986048.png',27295,'.png','2025-09-27 11:57:32',NULL,'oss','2025-09-27','E:/workroom/project/dashboardscreen/go-view-upload/'),('812620543957274625','812620543957274624.jpg',37456,'.jpg','2023-04-30 19:50:45',NULL,'oss','2023-04-30','D:/upload/'),('812620993632800769','812620993632800768.jpg',37456,'.jpg','2023-04-30 19:52:32',NULL,'oss','2023-04-30','D:/upload/'),('812678745642110977','812678745642110976.jpg',37456,'.jpg','2023-04-30 23:42:02',NULL,'oss','2023-04-30','D:/upload/'),('812682747884736512','812678745642110976.jpg',37456,'.jpg','2023-04-30 23:57:56',NULL,'oss','/2023-04-30','D:/upload/');
/*!40000 ALTER TABLE `t_sys_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sys_user`
--

DROP TABLE IF EXISTS `t_sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_sys_user` (
  `id` varchar(255) NOT NULL,
  `username` text,
  `password` text,
  `nickname` text,
  `dep_id` int DEFAULT NULL,
  `pos_id` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sys_user`
--

LOCK TABLES `t_sys_user` WRITE;
/*!40000 ALTER TABLE `t_sys_user` DISABLE KEYS */;
INSERT INTO `t_sys_user` VALUES ('1','admin','21232f297a57a5a743894a0e4a801fc3','管理员',2,'410792368778907648'),('433236479427350528','fuce','21232f297a57a5a743894a0e4a801fc3','付册',2,'410792443127140352'),('665776667645579264','999','fa246d0262c3925617b0c72bb20eeb1d','9999',1,'410792368778907648');
/*!40000 ALTER TABLE `t_sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'goview'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-27 15:33:50
