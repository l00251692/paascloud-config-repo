/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : localhost:3306
 Source Schema         : paascloud_uac

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 29/07/2019 00:07:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;
SELECT @APP_ID:=param_value from sys_config where param_name = 'APP_ID';

-- ----------------------------
-- Records of pc_omc_order
-- ----------------------------
INSERT INTO `pc_omc_order` VALUES (1, 1, '1', 1, NULL, 123.75, 1, 0, 10, '2019-07-24 21:51:47', NULL, NULL, NULL, '超级管理员', 1, '2019-07-24 21:55:24', '超级管理员', 1, '2019-07-24 21:55:24', 1, NULL, NULL, NULL, @APP_ID);
INSERT INTO `pc_omc_order` VALUES (2, 2, '2', 1, 2, 55.13, 1, 8, 40, '2019-07-16 21:59:17', '2019-07-24 21:59:24', '2019-07-24 21:59:28', '2019-07-24 22:00:27', '超级管理员', 1, '2019-07-24 21:58:39', '超级管理员', 1, '2019-07-24 21:58:39', 1, NULL, NULL, NULL, @APP_ID);

-- ----------------------------
-- Records of pc_ptc_pay_info
-- ----------------------------
INSERT INTO `pc_ptc_pay_info` VALUES (2, 0, 1, '2', 1, '1234567', '1', 'admin', 1, '2019-07-24 22:12:24', 'admin', 1, '2019-07-24 22:12:24', @APP_ID);

-- ----------------------------
-- Records of pc_omc_shipping
-- ----------------------------
INSERT INTO `pc_omc_shipping` VALUES (2, 1, 1, 'xxy', '18061291059', '18061291059', NULL, '江苏', NULL, '南京', '江宁', '', '', '龙挤路', '梅陇雅苑', '222222', 1, 'admin', 1, '2019-07-24 22:09:01', 'admin', 1, '2019-07-24 22:09:01', @APP_ID);
INSERT INTO `pc_omc_shipping` VALUES (4, 0, 1, 'jack', '13800138000', '18688888888', NULL, '北京', NULL, '北京市', '海淀区', '', '', '西二街', '中关村', '100000', 0, 'admin', 1, '2017-07-12 14:01:35', 'admin', 1, '2017-07-12 14:01:35', @APP_ID);
INSERT INTO `pc_omc_shipping` VALUES (7, 0, 1, 'Rosen', '13800138000', '13800138000', NULL, '北京', NULL, '北京', NULL, '', '', '东二街', '中关村', '100000', 1, 'admin', 1, '2017-07-12 14:01:35', 'admin', 1, '2017-07-12 14:01:35', @APP_ID);
INSERT INTO `pc_omc_shipping` VALUES (29, 0, 1, '吉利', '13800138000', '13800138000', NULL, '北京', NULL, '北京', '海淀区', '', '', '背二街', '海淀区中关村', '100000', 1, 'admin', 1, '2017-07-12 14:01:35', 'admin', 1, '2017-07-12 14:01:35', @APP_ID);

-- ----------------------------
-- Records of pc_omc_order_detail
-- ----------------------------
INSERT INTO `pc_omc_order_detail` VALUES (11, 1, '11', 1, '1', 673281828794164224, '自制饮料', '', NULL, 2, 123.74, '超级管理员', 1, '2019-07-24 22:04:13', '超级管理员', 1, '2019-07-24 22:04:13', NULL, @APP_ID);
INSERT INTO `pc_omc_order_detail` VALUES (22, 1, '22', 1, '2', 673281828794164224, '自制饮料', '', NULL, 1, 55.13, '超级管理员', 1, '2019-07-24 22:04:27', '超级管理员', 1, '2019-07-24 22:04:27', NULL, @APP_ID);

SET FOREIGN_KEY_CHECKS = 1;
