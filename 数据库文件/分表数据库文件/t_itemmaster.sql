/*
Navicat MySQL Data Transfer

Source Server         : mrp
Source Server Version : 50534
Source Host           : localhost:3306
Source Database       : mrp

Target Server Type    : MYSQL
Target Server Version : 50534
File Encoding         : 65001

Date: 2019-06-17 03:55:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_itemmaster`
-- ----------------------------
DROP TABLE IF EXISTS `t_itemmaster`;
CREATE TABLE `t_itemmaster` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `P_No` varchar(255) DEFAULT NULL,
  `LT` int(11) DEFAULT NULL,
  `ST` int(11) DEFAULT NULL,
  `SS` int(11) DEFAULT NULL,
  `LLC` int(11) DEFAULT NULL,
  `LSR` varchar(255) DEFAULT NULL,
  `LS` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_itemmaster
-- ----------------------------
INSERT INTO `t_itemmaster` VALUES ('1', 'A', '1', '0', '25', '0', 'LFL', '1');
INSERT INTO `t_itemmaster` VALUES ('2', 'B', '1', '0', '20', '0', 'LFL', '1');
INSERT INTO `t_itemmaster` VALUES ('3', 'C', '1', '0', '5', '2', 'FOQ', '500');
INSERT INTO `t_itemmaster` VALUES ('4', 'D', '1', '0', '5', '1', 'FOQ', '200');
INSERT INTO `t_itemmaster` VALUES ('5', 'E', '2', '0', '50', '3', 'LFL', '3');
INSERT INTO `t_itemmaster` VALUES ('6', 'F', '2', '1', '100', '3', 'LFL', '2');
