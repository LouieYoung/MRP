/*
Navicat MySQL Data Transfer

Source Server         : mrp
Source Server Version : 50534
Source Host           : localhost:3306
Source Database       : mrp

Target Server Type    : MYSQL
Target Server Version : 50534
File Encoding         : 65001

Date: 2019-06-17 03:55:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_inventory`
-- ----------------------------
DROP TABLE IF EXISTS `t_inventory`;
CREATE TABLE `t_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `P_No` varchar(255) DEFAULT NULL,
  `OH` varchar(255) DEFAULT NULL,
  `AL` varchar(255) DEFAULT NULL,
  `OO0` int(11) DEFAULT NULL,
  `OO1` int(11) DEFAULT NULL,
  `OO2` int(11) DEFAULT NULL,
  `OO3` int(11) DEFAULT NULL,
  `OO4` int(11) DEFAULT NULL,
  `OO5` int(11) DEFAULT NULL,
  `OO6` int(11) DEFAULT NULL,
  `OO7` int(11) DEFAULT NULL,
  `OO8` int(11) DEFAULT NULL,
  `OO9` int(11) DEFAULT NULL,
  `OO10` int(11) DEFAULT NULL,
  `OO11` int(11) DEFAULT NULL,
  `OO12` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_inventory
-- ----------------------------
INSERT INTO `t_inventory` VALUES ('1', 'A', '20', '0', '0', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_inventory` VALUES ('2', 'B', '40', '0', '0', '50', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_inventory` VALUES ('3', 'C', '60', '0', '0', '200', '150', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_inventory` VALUES ('4', 'D', '60', '20', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_inventory` VALUES ('5', 'E', '100', '0', '0', '1500', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_inventory` VALUES ('6', 'F', '100', '0', '0', '1000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
