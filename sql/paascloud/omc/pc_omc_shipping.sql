/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : localhost:3306
 Source Schema         : paascloud_omc

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 12/10/2019 10:36:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for pc_omc_shipping
-- ----------------------------
DROP TABLE IF EXISTS `pc_omc_shipping`;
CREATE TABLE `pc_omc_shipping`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `version` int(11) NOT NULL DEFAULT 0 COMMENT '版本号',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `receiver_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '收货姓名',
  `receiver_phone_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '收货固定电话',
  `receiver_mobile_no` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '收货移动电话',
  `province_id` bigint(32) NULL DEFAULT NULL COMMENT '收货人省ID',
  `province_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '省份',
  `city_id` bigint(20) NULL DEFAULT NULL COMMENT '收货人城市ID',
  `city_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '收货人城市名称',
  `district_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '区/县',
  `district_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '区/县 编码',
  `street_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '街道ID',
  `street_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '接到名称',
  `detail_address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '详细地址',
  `receiver_zip_code` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '邮编',
  `default_address` int(1) NULL DEFAULT 0 COMMENT '默认地址',
  `creator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建人',
  `creator_id` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `created_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_operator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最近操作人',
  `last_operator_id` bigint(20) NULL DEFAULT NULL COMMENT '最后操作人ID',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `app_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'appId',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '收货人信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pc_omc_shipping
-- ----------------------------
INSERT INTO `pc_omc_shipping` VALUES (2, 1, 1, 'xxy', '18061291059', '18061291059', NULL, '江苏', NULL, '南京', '江宁', '', '', '龙挤路', '梅陇雅苑', '222222', 1, 'admin', 1, '2019-07-24 22:09:01', 'admin', 1, '2019-07-24 22:09:01', NULL);
INSERT INTO `pc_omc_shipping` VALUES (4, 0, 1, 'jack', '13800138000', '18688888888', NULL, '北京', NULL, '北京市', '海淀区', '', '', '西二街', '中关村', '100000', 0, 'admin', 1, '2017-07-12 14:01:35', 'admin', 1, '2017-07-12 14:01:35', NULL);
INSERT INTO `pc_omc_shipping` VALUES (7, 0, 1, 'Rosen', '13800138000', '13800138000', NULL, '北京', NULL, '北京', NULL, '', '', '东二街', '中关村', '100000', 1, 'admin', 1, '2017-07-12 14:01:35', 'admin', 1, '2017-07-12 14:01:35', NULL);
INSERT INTO `pc_omc_shipping` VALUES (29, 0, 1, '吉利', '13800138000', '13800138000', NULL, '北京', NULL, '北京', '海淀区', '', '', '背二街', '海淀区中关村', '100000', 1, 'admin', 1, '2017-07-12 14:01:35', 'admin', 1, '2017-07-12 14:01:35', NULL);

SET FOREIGN_KEY_CHECKS = 1;
