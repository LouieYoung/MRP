/*
Navicat MySQL Data Transfer

Source Server         : mrp
Source Server Version : 50534
Source Host           : localhost:3306
Source Database       : mrp

Target Server Type    : MYSQL
Target Server Version : 50534
File Encoding         : 65001

Date: 2019-06-17 03:55:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_bom`
-- ----------------------------
DROP TABLE IF EXISTS `t_bom`;
CREATE TABLE `t_bom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` varchar(255) DEFAULT NULL,
  `comp` varchar(255) DEFAULT NULL,
  `Q_P` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_bom
-- ----------------------------
INSERT INTO `t_bom` VALUES ('1', 'A', 'C', '2');
INSERT INTO `t_bom` VALUES ('2', 'A', 'D', '1');
INSERT INTO `t_bom` VALUES ('3', 'D', 'E', '2');
INSERT INTO `t_bom` VALUES ('4', 'D', 'C', '1');
INSERT INTO `t_bom` VALUES ('5', 'C', 'E', '1');
INSERT INTO `t_bom` VALUES ('6', 'C', 'F', '1');
INSERT INTO `t_bom` VALUES ('7', 'B', 'E', '1');
INSERT INTO `t_bom` VALUES ('8', 'B', 'C', '1');
