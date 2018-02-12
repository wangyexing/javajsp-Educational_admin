/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : selectcoursedb

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-12-07 21:24:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('admin', 'a123456789');

-- ----------------------------
-- Table structure for t_classinfo
-- ----------------------------
DROP TABLE IF EXISTS `t_classinfo`;
CREATE TABLE `t_classinfo` (
  `classNumber` varchar(20) NOT NULL,
  `className` varchar(20) DEFAULT NULL,
  `classSpecialFieldNumber` varchar(20) DEFAULT NULL,
  `classBirthDate` varchar(10) DEFAULT NULL,
  `classTeacherCharge` varchar(12) DEFAULT NULL,
  `classTelephone` varchar(20) DEFAULT NULL,
  `classMemo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`classNumber`),
  KEY `FK95BB201BA924E03B` (`classSpecialFieldNumber`),
  KEY `FK95BB201BB0D00A14` (`classSpecialFieldNumber`),
  CONSTRAINT `FK95BB201BA924E03B` FOREIGN KEY (`classSpecialFieldNumber`) REFERENCES `t_specialfieldinfo` (`specialFieldNumber`),
  CONSTRAINT `FK95BB201BB0D00A14` FOREIGN KEY (`classSpecialFieldNumber`) REFERENCES `t_specialfieldinfo` (`specialFieldNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_classinfo
-- ----------------------------

-- ----------------------------
-- Table structure for t_collegeinfo
-- ----------------------------
DROP TABLE IF EXISTS `t_collegeinfo`;
CREATE TABLE `t_collegeinfo` (
  `collegeNumber` varchar(20) NOT NULL,
  `collegeName` varchar(20) DEFAULT NULL,
  `collegeBirthDate` varchar(10) DEFAULT NULL,
  `collegeMan` varchar(10) DEFAULT NULL,
  `collegeTelephone` varchar(20) DEFAULT NULL,
  `collegeMemo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`collegeNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_collegeinfo
-- ----------------------------

-- ----------------------------
-- Table structure for t_courseinfo
-- ----------------------------
DROP TABLE IF EXISTS `t_courseinfo`;
CREATE TABLE `t_courseinfo` (
  `courseNumber` varchar(20) NOT NULL,
  `courseName` varchar(20) DEFAULT NULL,
  `courseTeacher` varchar(20) DEFAULT NULL,
  `courseTime` varchar(40) DEFAULT NULL,
  `coursePlace` varchar(40) DEFAULT NULL,
  `courseScore` float DEFAULT NULL,
  `courseMemo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`courseNumber`),
  KEY `FK258A9AAB4FB4E18A` (`courseTeacher`),
  KEY `FKC8A154349BBF07C6` (`courseTeacher`),
  CONSTRAINT `FK258A9AAB4FB4E18A` FOREIGN KEY (`courseTeacher`) REFERENCES `t_teacher` (`teacherNumber`),
  CONSTRAINT `FKC8A154349BBF07C6` FOREIGN KEY (`courseTeacher`) REFERENCES `t_teacher` (`teacherNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_courseinfo
-- ----------------------------

-- ----------------------------
-- Table structure for t_news
-- ----------------------------
DROP TABLE IF EXISTS `t_news`;
CREATE TABLE `t_news` (
  `newsId` int(11) NOT NULL AUTO_INCREMENT,
  `newsTitle` varchar(50) DEFAULT NULL,
  `newsContent` longtext,
  `newsDate` varchar(10) DEFAULT NULL,
  `newsPhoto` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`newsId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_news
-- ----------------------------

-- ----------------------------
-- Table structure for t_scoreinfo
-- ----------------------------
DROP TABLE IF EXISTS `t_scoreinfo`;
CREATE TABLE `t_scoreinfo` (
  `scoreId` int(11) NOT NULL AUTO_INCREMENT,
  `studentNumber` varchar(20) DEFAULT NULL,
  `courseNumber` varchar(20) DEFAULT NULL,
  `scoreValue` float DEFAULT NULL,
  `studentEvaluate` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`scoreId`),
  KEY `FK1534983543F8B840` (`studentNumber`),
  KEY `FK15349835CBB4EC4E` (`courseNumber`),
  KEY `FK15349835CFD69BFC` (`studentNumber`),
  KEY `FK153498352913ECF0` (`courseNumber`),
  CONSTRAINT `FK153498352913ECF0` FOREIGN KEY (`courseNumber`) REFERENCES `t_courseinfo` (`courseNumber`),
  CONSTRAINT `FK1534983543F8B840` FOREIGN KEY (`studentNumber`) REFERENCES `t_student` (`studentNumber`),
  CONSTRAINT `FK15349835CBB4EC4E` FOREIGN KEY (`courseNumber`) REFERENCES `t_courseinfo` (`courseNumber`),
  CONSTRAINT `FK15349835CFD69BFC` FOREIGN KEY (`studentNumber`) REFERENCES `t_student` (`studentNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_scoreinfo
-- ----------------------------

-- ----------------------------
-- Table structure for t_specialfieldinfo
-- ----------------------------
DROP TABLE IF EXISTS `t_specialfieldinfo`;
CREATE TABLE `t_specialfieldinfo` (
  `specialFieldNumber` varchar(20) NOT NULL,
  `specialFieldName` varchar(20) DEFAULT NULL,
  `specialCollegeNumber` varchar(20) DEFAULT NULL,
  `specialBirthDate` varchar(10) DEFAULT NULL,
  `specialMan` varchar(10) DEFAULT NULL,
  `specialTelephone` varchar(20) DEFAULT NULL,
  `specialMemo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`specialFieldNumber`),
  KEY `FK30F0289A6AE335E2` (`specialCollegeNumber`),
  KEY `FK30F0289AECB98869` (`specialCollegeNumber`),
  CONSTRAINT `FK30F0289A6AE335E2` FOREIGN KEY (`specialCollegeNumber`) REFERENCES `t_collegeinfo` (`collegeNumber`),
  CONSTRAINT `FK30F0289AECB98869` FOREIGN KEY (`specialCollegeNumber`) REFERENCES `t_collegeinfo` (`collegeNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_specialfieldinfo
-- ----------------------------

-- ----------------------------
-- Table structure for t_student
-- ----------------------------
DROP TABLE IF EXISTS `t_student`;
CREATE TABLE `t_student` (
  `studentNumber` varchar(20) NOT NULL,
  `studentName` varchar(12) DEFAULT NULL,
  `studentPassword` varchar(30) DEFAULT NULL,
  `studentSex` varchar(2) DEFAULT NULL,
  `studentClassNumber` varchar(20) DEFAULT NULL,
  `studentBirthday` varchar(10) DEFAULT NULL,
  `studentState` varchar(20) DEFAULT NULL,
  `studentPhoto` varchar(50) DEFAULT NULL,
  `studentTelephone` varchar(20) DEFAULT NULL,
  `studentEmail` varchar(30) DEFAULT NULL,
  `studentQQ` varchar(20) DEFAULT NULL,
  `studentAddress` varchar(100) DEFAULT NULL,
  `studentMemo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`studentNumber`),
  KEY `FKA1F0E11B97DC0CE2` (`studentClassNumber`),
  KEY `FKAEC90D509E635529` (`studentClassNumber`),
  CONSTRAINT `FKA1F0E11B97DC0CE2` FOREIGN KEY (`studentClassNumber`) REFERENCES `t_classinfo` (`classNumber`),
  CONSTRAINT `FKAEC90D509E635529` FOREIGN KEY (`studentClassNumber`) REFERENCES `t_classinfo` (`classNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_student
-- ----------------------------

-- ----------------------------
-- Table structure for t_studentselectcourseinfo
-- ----------------------------
DROP TABLE IF EXISTS `t_studentselectcourseinfo`;
CREATE TABLE `t_studentselectcourseinfo` (
  `selectId` int(11) NOT NULL AUTO_INCREMENT,
  `studentNumber` varchar(20) DEFAULT NULL,
  `courseNumber` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`selectId`),
  KEY `FK47DAEAF543F8B840` (`studentNumber`),
  KEY `FK47DAEAF5CBB4EC4E` (`courseNumber`),
  KEY `FK47DAEAF5CFD69BFC` (`studentNumber`),
  KEY `FK47DAEAF52913ECF0` (`courseNumber`),
  CONSTRAINT `FK47DAEAF52913ECF0` FOREIGN KEY (`courseNumber`) REFERENCES `t_courseinfo` (`courseNumber`),
  CONSTRAINT `FK47DAEAF543F8B840` FOREIGN KEY (`studentNumber`) REFERENCES `t_student` (`studentNumber`),
  CONSTRAINT `FK47DAEAF5CBB4EC4E` FOREIGN KEY (`courseNumber`) REFERENCES `t_courseinfo` (`courseNumber`),
  CONSTRAINT `FK47DAEAF5CFD69BFC` FOREIGN KEY (`studentNumber`) REFERENCES `t_student` (`studentNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_studentselectcourseinfo
-- ----------------------------

-- ----------------------------
-- Table structure for t_teacher
-- ----------------------------
DROP TABLE IF EXISTS `t_teacher`;
CREATE TABLE `t_teacher` (
  `teacherNumber` varchar(20) NOT NULL,
  `teacherName` varchar(12) DEFAULT NULL,
  `teacherPassword` varchar(30) DEFAULT NULL,
  `teacherSex` varchar(2) DEFAULT NULL,
  `teacherBirthday` varchar(10) DEFAULT NULL,
  `teacherArriveDate` varchar(10) DEFAULT NULL,
  `teacherCardNumber` varchar(20) DEFAULT NULL,
  `teacherPhone` varchar(20) DEFAULT NULL,
  `teacherPhoto` varchar(50) DEFAULT NULL,
  `teacherAddress` varchar(100) DEFAULT NULL,
  `teacherMemo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`teacherNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_teacher
-- ----------------------------
