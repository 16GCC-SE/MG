/*
Navicat MySQL Data Transfer

Source Server         : 本地连接
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : db_book_food

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-12-24 11:13:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ib_menu`
-- ----------------------------
DROP TABLE IF EXISTS `ib_menu`;
CREATE TABLE `ib_menu` (
  `menu_id` int(4) NOT NULL AUTO_INCREMENT,
  `menu_name` char(255) NOT NULL,
  `menu_price` int(16) NOT NULL,
  `menu_pic_addr` char(255) NOT NULL,
  `menu_type_id` int(4) NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ib_menu
-- ----------------------------
INSERT INTO `ib_menu` VALUES ('1', '多色圆圆冰淇淋', '10', 'res/pic/4.jpg', '3');
INSERT INTO `ib_menu` VALUES ('2', '牛仔很忙布丁', '12', 'res/pic/bd4.jpg', '5');
INSERT INTO `ib_menu` VALUES ('3', '草莓蛋糕', '10', 'res/pic/dg1.jpeg', '4');
INSERT INTO `ib_menu` VALUES ('4', '树莓巧克力冰淇淋', '12', 'res/pic/2.jpg', '3');
INSERT INTO `ib_menu` VALUES ('5', '高帽小人冰淇淋', '8', 'res/pic/5.jpg', '3');
INSERT INTO `ib_menu` VALUES ('6', '杯子布丁', '12', 'res/pic/bd1.jpeg', '5');
INSERT INTO `ib_menu` VALUES ('7', '水果三剑客班戟', '24', 'res/pic/bj3.jpeg', '6');
INSERT INTO `ib_menu` VALUES ('8', '高贵紫火龙果班戟', '16', 'res/pic/bj2.jpeg', '6');
INSERT INTO `ib_menu` VALUES ('11', '缤纷彩虹冰淇淋', '8', 'res/pic/3.jpg', '3');
INSERT INTO `ib_menu` VALUES ('12', '椰子布丁', '15', 'res/pic/bd2.jpg', '5');
INSERT INTO `ib_menu` VALUES ('13', '蓝草两莓冰淇淋', '12', 'res/pic/1.jpg', '4');
INSERT INTO `ib_menu` VALUES ('14', '蓝草两莓冰淇淋', '10', 'res/pic/1.jpg', '3');
INSERT INTO `ib_menu` VALUES ('15', '芒果班戟', '16', 'res/pic/bj1.jpeg', '6');
INSERT INTO `ib_menu` VALUES ('16', '焦糖布丁', '10', 'res/pic/bd3.jpg', '5');
INSERT INTO `ib_menu` VALUES ('17', '嗡嗡嗡布丁', '10', 'res/pic/bd5.jpg', '5');
INSERT INTO `ib_menu` VALUES ('18', '抹茶班戟', '18', 'res/pic/bj4.jpeg', '6');
INSERT INTO `ib_menu` VALUES ('19', '可爱熊蛋糕', '12', 'res/pic/dg2.jpeg', '4');
INSERT INTO `ib_menu` VALUES ('20', '草莓蛋糕', '12', 'res/pic/dg1.jpeg', '4');
INSERT INTO `ib_menu` VALUES ('21', '芒果多汁千层', '14', 'res/pic/qc2.jpeg', '2');
INSERT INTO `ib_menu` VALUES ('22', '微笑彩虹千层', '14', 'res/pic/qc3.jpeg', '2');
INSERT INTO `ib_menu` VALUES ('23', '巧克力奶油蛋糕', '15', 'res/pic/dg4.jpeg', '4');
INSERT INTO `ib_menu` VALUES ('25', '原味千层', '10', 'res/pic/qc1.jpeg', '2');
INSERT INTO `ib_menu` VALUES ('26', '粒粒多味千层', '12', 'res/pic/qc4.jpeg', '2');
INSERT INTO `ib_menu` VALUES ('27', '抹茶千层', '12', 'res/pic/qc6.jpeg', '2');
INSERT INTO `ib_menu` VALUES ('28', '水果森林千层', '16', 'res/pic/qc7.jpeg', '2');
INSERT INTO `ib_menu` VALUES ('29', '脏脏千层', '16', 'res/pic/qc5.jpeg', '2');
INSERT INTO `ib_menu` VALUES ('30', '草莓蛋糕卷', '6', 'res/pic/dg3.jpeg', '4');

-- ----------------------------
-- Table structure for `ib_menu_type`
-- ----------------------------
DROP TABLE IF EXISTS `ib_menu_type`;
CREATE TABLE `ib_menu_type` (
  `menu_type_id` int(4) NOT NULL AUTO_INCREMENT,
  `menu_type_name` char(255) NOT NULL,
  PRIMARY KEY (`menu_type_id`),
  KEY `menu_type_name` (`menu_type_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ib_menu_type
-- ----------------------------
INSERT INTO `ib_menu_type` VALUES ('3', 'MG冰淇淋');
INSERT INTO `ib_menu_type` VALUES ('2', 'MG千层');
INSERT INTO `ib_menu_type` VALUES ('5', 'MG布丁');
INSERT INTO `ib_menu_type` VALUES ('6', 'MG班戟');
INSERT INTO `ib_menu_type` VALUES ('4', 'MG蛋糕');
INSERT INTO `ib_menu_type` VALUES ('1', '其它');

-- ----------------------------
-- Table structure for `ib_option`
-- ----------------------------
DROP TABLE IF EXISTS `ib_option`;
CREATE TABLE `ib_option` (
  `option_id` int(4) NOT NULL AUTO_INCREMENT,
  `option_name` char(255) NOT NULL,
  `option_value` char(255) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ib_option
-- ----------------------------
INSERT INTO `ib_option` VALUES ('1', 'title', 'MG');
INSERT INTO `ib_option` VALUES ('2', 'idx_menu_lines', '10');
INSERT INTO `ib_option` VALUES ('3', 'tbl_page_lines', '10');

-- ----------------------------
-- Table structure for `ib_order`
-- ----------------------------
DROP TABLE IF EXISTS `ib_order`;
CREATE TABLE `ib_order` (
  `order_id` int(16) NOT NULL AUTO_INCREMENT,
  `order_user_name` char(255) NOT NULL,
  `order_time` datetime NOT NULL,
  `order_admin_name` char(255) NOT NULL,
  `order_accept` int(1) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ib_order
-- ----------------------------
INSERT INTO `ib_order` VALUES ('5', 'weigy', '2015-06-21 16:33:32', 'admin', '1');
INSERT INTO `ib_order` VALUES ('6', 'llqqxf', '2018-06-20 16:23:05', 'admin', '1');
INSERT INTO `ib_order` VALUES ('8', 'llqqxf', '2018-06-21 16:38:42', '', '0');
INSERT INTO `ib_order` VALUES ('9', 'llqqxf', '2018-12-23 19:45:57', '', '0');
INSERT INTO `ib_order` VALUES ('10', 'admin', '2018-12-23 19:59:21', 'admin', '1');
INSERT INTO `ib_order` VALUES ('12', 'aaaaa', '2018-12-24 00:51:49', 'admin', '1');

-- ----------------------------
-- Table structure for `ib_order_detail`
-- ----------------------------
DROP TABLE IF EXISTS `ib_order_detail`;
CREATE TABLE `ib_order_detail` (
  `detail_id` int(16) NOT NULL AUTO_INCREMENT,
  `detail_order_id` int(16) NOT NULL,
  `detail_menu_name` char(255) NOT NULL,
  `detail_menu_price` int(16) NOT NULL,
  `detail_amount` int(16) NOT NULL,
  `detail_remark` char(255) NOT NULL,
  PRIMARY KEY (`detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ib_order_detail
-- ----------------------------
INSERT INTO `ib_order_detail` VALUES ('9', '5', '蒜蓉菠菜', '10', '1', '');
INSERT INTO `ib_order_detail` VALUES ('10', '5', '米饭', '2', '1', '');
INSERT INTO `ib_order_detail` VALUES ('11', '6', '米饭', '2', '1', '多盛点。');
INSERT INTO `ib_order_detail` VALUES ('12', '6', '香芹香干肉丝', '12', '2', '多放肉。');
INSERT INTO `ib_order_detail` VALUES ('13', '6', '蒜蓉菠菜', '10', '1', '');
INSERT INTO `ib_order_detail` VALUES ('14', '6', '青椒牛肉', '16', '1', '');
INSERT INTO `ib_order_detail` VALUES ('18', '8', '馒头', '1', '1', '');
INSERT INTO `ib_order_detail` VALUES ('19', '8', '肉夹馍', '8', '1', '多放点肉');
INSERT INTO `ib_order_detail` VALUES ('20', '8', '圆葱涝汁拌鱼皮', '12', '1', '');
INSERT INTO `ib_order_detail` VALUES ('21', '8', '青瓜凉拌猪舌', '15', '1', '多放点醋');
INSERT INTO `ib_order_detail` VALUES ('22', '8', '剁椒鱼头', '15', '1', '鱼要大');
INSERT INTO `ib_order_detail` VALUES ('23', '9', '剁椒鱼头', '15', '1', '');
INSERT INTO `ib_order_detail` VALUES ('24', '9', '青椒牛肉', '16', '2', '');
INSERT INTO `ib_order_detail` VALUES ('25', '10', '杨洋美食', '100', '2', '');
INSERT INTO `ib_order_detail` VALUES ('27', '12', '抹茶千层', '12', '1', 'rtrgg');
INSERT INTO `ib_order_detail` VALUES ('28', '12', '原味千层', '10', '1', 'seffz');

-- ----------------------------
-- Table structure for `ib_shopping`
-- ----------------------------
DROP TABLE IF EXISTS `ib_shopping`;
CREATE TABLE `ib_shopping` (
  `shopping_id` int(16) NOT NULL AUTO_INCREMENT,
  `shopping_user_name` char(255) NOT NULL,
  `shopping_menu_name` char(255) NOT NULL,
  `shopping_menu_price` int(16) NOT NULL,
  `shopping_amount` int(16) NOT NULL,
  `shopping_remark` char(255) NOT NULL,
  PRIMARY KEY (`shopping_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ib_shopping
-- ----------------------------
INSERT INTO `ib_shopping` VALUES ('6', 'admin', '草莓冰淇淋', '8', '1', '');
INSERT INTO `ib_shopping` VALUES ('7', 'admin', '芒果多汁千层', '14', '1', '');

-- ----------------------------
-- Table structure for `ib_user`
-- ----------------------------
DROP TABLE IF EXISTS `ib_user`;
CREATE TABLE `ib_user` (
  `user_id` int(16) NOT NULL AUTO_INCREMENT,
  `user_name` char(255) NOT NULL,
  `user_passwd` char(255) NOT NULL,
  `user_auth` enum('admin','customer') NOT NULL,
  `user_tel` char(255) NOT NULL,
  `user_addr` char(255) NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `user_name` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ib_user
-- ----------------------------
INSERT INTO `ib_user` VALUES ('1', 'admin', '123456', 'admin', '12345678901', '上海市陆家嘴金融中心');
INSERT INTO `ib_user` VALUES ('32', 'llqqxf', '123456', 'customer', '13656565656', '上海市浦东新区环林东路');
INSERT INTO `ib_user` VALUES ('34', 'llqaqxf', '111111', 'customer', '13565655525', '上海');
INSERT INTO `ib_user` VALUES ('35', 'aaaaa', '123456', 'customer', '13456789098', '广州市广州商学院');
