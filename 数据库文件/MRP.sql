/*
Navicat MySQL Data Transfer

Source Server         : MRP
Source Server Version : 50534
Source Host           : localhost:3306
Source Database       : MRP

Target Server Type    : MYSQL
Target Server Version : 50534
File Encoding         : 65001

Date: 2019-06-17 03:55:23
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

-- ----------------------------
-- Table structure for `t_mrp`
-- ----------------------------
DROP TABLE IF EXISTS `t_mrp`;
CREATE TABLE `t_mrp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `P_No` varchar(255) DEFAULT NULL,
  `LT` int(11) DEFAULT NULL,
  `ST` int(11) DEFAULT NULL,
  `SS` int(11) DEFAULT NULL,
  `OH` varchar(255) DEFAULT NULL,
  `LSR` varchar(255) DEFAULT NULL,
  `LS` int(11) DEFAULT NULL,
  `AL` varchar(255) DEFAULT NULL,
  `GR0` int(11) DEFAULT NULL,
  `GR1` int(11) DEFAULT NULL,
  `GR2` int(11) DEFAULT NULL,
  `GR3` int(11) DEFAULT NULL,
  `GR4` int(11) DEFAULT NULL,
  `GR5` int(11) DEFAULT NULL,
  `GR6` int(11) DEFAULT NULL,
  `GR7` int(11) DEFAULT NULL,
  `GR8` int(11) DEFAULT NULL,
  `GR9` int(11) DEFAULT NULL,
  `GR10` int(11) DEFAULT NULL,
  `GR11` int(11) DEFAULT NULL,
  `GR12` int(11) DEFAULT NULL,
  `SR0` int(11) DEFAULT NULL,
  `SR1` int(11) DEFAULT NULL,
  `SR2` int(11) DEFAULT NULL,
  `SR3` int(11) DEFAULT NULL,
  `SR4` int(11) DEFAULT NULL,
  `SR5` int(11) DEFAULT NULL,
  `SR6` int(11) DEFAULT NULL,
  `SR7` int(11) DEFAULT NULL,
  `SR8` int(11) DEFAULT NULL,
  `SR9` int(11) DEFAULT NULL,
  `SR10` int(11) DEFAULT NULL,
  `SR11` int(11) DEFAULT NULL,
  `SR12` int(11) DEFAULT NULL,
  `POH0` int(11) DEFAULT NULL,
  `POH1` int(11) DEFAULT NULL,
  `POH2` int(11) DEFAULT NULL,
  `POH3` int(11) DEFAULT NULL,
  `POH4` int(11) DEFAULT NULL,
  `POH5` int(11) DEFAULT NULL,
  `POH6` int(11) DEFAULT NULL,
  `POH7` int(11) DEFAULT NULL,
  `POH8` int(11) DEFAULT NULL,
  `POH9` int(11) DEFAULT NULL,
  `POH10` int(11) DEFAULT NULL,
  `POH11` int(11) DEFAULT NULL,
  `POH12` int(11) DEFAULT NULL,
  `PAB0` int(11) DEFAULT NULL,
  `PAB1` int(11) DEFAULT NULL,
  `PAB2` int(11) DEFAULT NULL,
  `PAB3` int(11) DEFAULT NULL,
  `PAB4` int(11) DEFAULT NULL,
  `PAB5` int(11) DEFAULT NULL,
  `PAB6` int(11) DEFAULT NULL,
  `PAB7` int(11) DEFAULT NULL,
  `PAB8` int(11) DEFAULT NULL,
  `PAB9` int(11) DEFAULT NULL,
  `PAB10` int(11) DEFAULT NULL,
  `PAB11` int(11) DEFAULT NULL,
  `PAB12` int(11) DEFAULT NULL,
  `NR0` int(11) DEFAULT NULL,
  `NR1` int(11) DEFAULT NULL,
  `NR2` int(11) DEFAULT NULL,
  `NR3` int(11) DEFAULT NULL,
  `NR4` int(11) DEFAULT NULL,
  `NR5` int(11) DEFAULT NULL,
  `NR6` int(11) DEFAULT NULL,
  `NR7` int(11) DEFAULT NULL,
  `NR8` int(11) DEFAULT NULL,
  `NR9` int(11) DEFAULT NULL,
  `NR10` int(11) DEFAULT NULL,
  `NR11` int(11) DEFAULT NULL,
  `NR12` int(11) DEFAULT NULL,
  `PORcpt0` int(11) DEFAULT NULL,
  `PORcpt1` int(11) DEFAULT NULL,
  `PORcpt2` int(11) DEFAULT NULL,
  `PORcpt3` int(11) DEFAULT NULL,
  `PORcpt4` int(11) DEFAULT NULL,
  `PORcpt5` int(11) DEFAULT NULL,
  `PORcpt6` int(11) DEFAULT NULL,
  `PORcpt7` int(11) DEFAULT NULL,
  `PORcpt8` int(11) DEFAULT NULL,
  `PORcpt9` int(11) DEFAULT NULL,
  `PORcpt10` int(11) DEFAULT NULL,
  `PORcpt11` int(11) DEFAULT NULL,
  `PORcpt12` int(11) DEFAULT NULL,
  `POR0` int(11) DEFAULT NULL,
  `POR1` int(11) DEFAULT NULL,
  `POR2` int(11) DEFAULT NULL,
  `POR3` int(11) DEFAULT NULL,
  `POR4` int(11) DEFAULT NULL,
  `POR5` int(11) DEFAULT NULL,
  `POR6` int(11) DEFAULT NULL,
  `POR7` int(11) DEFAULT NULL,
  `POR8` int(11) DEFAULT NULL,
  `POR9` int(11) DEFAULT NULL,
  `POR10` int(11) DEFAULT NULL,
  `POR11` int(11) DEFAULT NULL,
  `POR12` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_mrp
-- ----------------------------

-- ----------------------------
-- Table structure for `t_tpop`
-- ----------------------------
DROP TABLE IF EXISTS `t_tpop`;
CREATE TABLE `t_tpop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `P_No` varchar(255) DEFAULT NULL,
  `LT` int(11) DEFAULT NULL,
  `ST` int(11) DEFAULT NULL,
  `SS` int(11) DEFAULT NULL,
  `OH` varchar(255) DEFAULT NULL,
  `LSR` varchar(255) DEFAULT NULL,
  `LS` int(11) DEFAULT NULL,
  `AL` varchar(255) DEFAULT NULL,
  `GR0` int(11) DEFAULT NULL,
  `GR1` int(11) DEFAULT NULL,
  `GR2` int(11) DEFAULT NULL,
  `GR3` int(11) DEFAULT NULL,
  `GR4` int(11) DEFAULT NULL,
  `GR5` int(11) DEFAULT NULL,
  `GR6` int(11) DEFAULT NULL,
  `GR7` int(11) DEFAULT NULL,
  `GR8` int(11) DEFAULT NULL,
  `GR9` int(11) DEFAULT NULL,
  `GR10` int(11) DEFAULT NULL,
  `GR11` int(11) DEFAULT NULL,
  `GR12` int(11) DEFAULT NULL,
  `SR0` int(11) DEFAULT NULL,
  `SR1` int(11) DEFAULT NULL,
  `SR2` int(11) DEFAULT NULL,
  `SR3` int(11) DEFAULT NULL,
  `SR4` int(11) DEFAULT NULL,
  `SR5` int(11) DEFAULT NULL,
  `SR6` int(11) DEFAULT NULL,
  `SR7` int(11) DEFAULT NULL,
  `SR8` int(11) DEFAULT NULL,
  `SR9` int(11) DEFAULT NULL,
  `SR10` int(11) DEFAULT NULL,
  `SR11` int(11) DEFAULT NULL,
  `SR12` int(11) DEFAULT NULL,
  `POH0` int(11) DEFAULT NULL,
  `POH1` int(11) DEFAULT NULL,
  `POH2` int(11) DEFAULT NULL,
  `POH3` int(11) DEFAULT NULL,
  `POH4` int(11) DEFAULT NULL,
  `POH5` int(11) DEFAULT NULL,
  `POH6` int(11) DEFAULT NULL,
  `POH7` int(11) DEFAULT NULL,
  `POH8` int(11) DEFAULT NULL,
  `POH9` int(11) DEFAULT NULL,
  `POH10` int(11) DEFAULT NULL,
  `POH11` int(11) DEFAULT NULL,
  `POH12` int(11) DEFAULT NULL,
  `PAB0` int(11) DEFAULT NULL,
  `PAB1` int(11) DEFAULT NULL,
  `PAB2` int(11) DEFAULT NULL,
  `PAB3` int(11) DEFAULT NULL,
  `PAB4` int(11) DEFAULT NULL,
  `PAB5` int(11) DEFAULT NULL,
  `PAB6` int(11) DEFAULT NULL,
  `PAB7` int(11) DEFAULT NULL,
  `PAB8` int(11) DEFAULT NULL,
  `PAB9` int(11) DEFAULT NULL,
  `PAB10` int(11) DEFAULT NULL,
  `PAB11` int(11) DEFAULT NULL,
  `PAB12` int(11) DEFAULT NULL,
  `NR0` int(11) DEFAULT NULL,
  `NR1` int(11) DEFAULT NULL,
  `NR2` int(11) DEFAULT NULL,
  `NR3` int(11) DEFAULT NULL,
  `NR4` int(11) DEFAULT NULL,
  `NR5` int(11) DEFAULT NULL,
  `NR6` int(11) DEFAULT NULL,
  `NR7` int(11) DEFAULT NULL,
  `NR8` int(11) DEFAULT NULL,
  `NR9` int(11) DEFAULT NULL,
  `NR10` int(11) DEFAULT NULL,
  `NR11` int(11) DEFAULT NULL,
  `NR12` int(11) DEFAULT NULL,
  `PORcpt0` int(11) DEFAULT NULL,
  `PORcpt1` int(11) DEFAULT NULL,
  `PORcpt2` int(11) DEFAULT NULL,
  `PORcpt3` int(11) DEFAULT NULL,
  `PORcpt4` int(11) DEFAULT NULL,
  `PORcpt5` int(11) DEFAULT NULL,
  `PORcpt6` int(11) DEFAULT NULL,
  `PORcpt7` int(11) DEFAULT NULL,
  `PORcpt8` int(11) DEFAULT NULL,
  `PORcpt9` int(11) DEFAULT NULL,
  `PORcpt10` int(11) DEFAULT NULL,
  `PORcpt11` int(11) DEFAULT NULL,
  `PORcpt12` int(11) DEFAULT NULL,
  `POR0` int(11) DEFAULT NULL,
  `POR1` int(11) DEFAULT NULL,
  `POR2` int(11) DEFAULT NULL,
  `POR3` int(11) DEFAULT NULL,
  `POR4` int(11) DEFAULT NULL,
  `POR5` int(11) DEFAULT NULL,
  `POR6` int(11) DEFAULT NULL,
  `POR7` int(11) DEFAULT NULL,
  `POR8` int(11) DEFAULT NULL,
  `POR9` int(11) DEFAULT NULL,
  `POR10` int(11) DEFAULT NULL,
  `POR11` int(11) DEFAULT NULL,
  `POR12` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_tpop
-- ----------------------------
INSERT INTO `t_tpop` VALUES ('1', 'A', '1', '0', '25', '20', 'LFL', '1', '0', '0', '80', '50', '100', '60', '100', '70', '100', '60', '100', '50', '100', '50', '0', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '40', '-10', '-75', '-35', '-75', '-45', '-75', '-35', '-75', '-25', '-75', '-25', '-1', '40', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '-1', '0', '35', '100', '60', '100', '70', '100', '60', '100', '50', '100', '50', '0', '0', '35', '100', '60', '100', '70', '100', '60', '100', '50', '100', '50', '0', '35', '100', '60', '100', '70', '100', '60', '100', '50', '100', '50', '0');
INSERT INTO `t_tpop` VALUES ('2', 'B', '1', '0', '20', '40', 'LFL', '1', '0', '0', '70', '100', '50', '90', '60', '110', '60', '100', '50', '100', '50', '100', '0', '50', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '20', '20', '-30', '-70', '-40', '-90', '-40', '-80', '-30', '-80', '-30', '-80', '-1', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '-1', '0', '0', '50', '90', '60', '110', '60', '100', '50', '100', '50', '100', '0', '0', '0', '50', '90', '60', '110', '60', '100', '50', '100', '50', '100', '0', '0', '50', '90', '60', '110', '60', '100', '50', '100', '50', '100', '0');
