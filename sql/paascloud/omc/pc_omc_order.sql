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

 Date: 12/10/2019 10:35:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for pc_omc_order
-- ----------------------------
DROP TABLE IF EXISTS `pc_omc_order`;
CREATE TABLE `pc_omc_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `version` int(11) NOT NULL DEFAULT 0 COMMENT '版本号',
  `order_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '订单号',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户ID',
  `shipping_id` bigint(20) NULL DEFAULT NULL COMMENT '收货人ID',
  `payment` decimal(20, 2) NULL DEFAULT NULL COMMENT '实际付款金额,单位是元,保留两位小数',
  `payment_type` int(4) NOT NULL DEFAULT 1 COMMENT '支付类型,1-在线支付',
  `postage` int(10) NULL DEFAULT 0 COMMENT '运费,单位是元',
  `status` int(10) NULL DEFAULT 10 COMMENT '订单状态:0-已取消-10-未付款，20-已付款，40-已发货，50-交易成功，60-交易关闭',
  `payment_time` datetime(0) NULL DEFAULT NULL COMMENT '支付时间',
  `send_time` datetime(0) NULL DEFAULT NULL COMMENT '发货时间',
  `end_time` datetime(0) NULL DEFAULT NULL COMMENT '交易完成时间',
  `close_time` datetime(0) NULL DEFAULT NULL COMMENT '交易关闭时间',
  `creator` varchar(20) CHARACTER SET utf32 COLLATE utf32_general_ci NULL DEFAULT '' COMMENT '创建人',
  `creator_id` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `created_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_operator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最近操作人',
  `last_operator_id` bigint(20) NULL DEFAULT NULL COMMENT '最后操作人ID',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `source_type` tinyint(4) NULL DEFAULT NULL COMMENT '订单来源 0-pc订单，1-app订单',
  `order_type` tinyint(4) NULL DEFAULT NULL COMMENT '订单类型  0-正常订单，1-秒杀订单',
  `receive_time` datetime(0) NULL DEFAULT NULL COMMENT '收货时间',
  `adjust_amount` decimal(20, 0) UNSIGNED ZEROFILL NULL DEFAULT NULL COMMENT '调整金额',
  `app_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'appId',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `order_no_index`(`order_no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '订单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pc_omc_order
-- ----------------------------
INSERT INTO `pc_omc_order` VALUES (1, 1, '1', 1, NULL, 123.75, 1, 0, 10, '2019-07-24 21:51:47', NULL, NULL, NULL, '超级管理员', 1, '2019-07-24 21:55:24', '超级管理员', 1, '2019-07-24 21:55:24', 1, NULL, NULL, NULL, NULL);
INSERT INTO `pc_omc_order` VALUES (2, 2, '2', 1, 2, 55.13, 1, 8, 40, '2019-07-16 21:59:17', '2019-07-24 21:59:24', '2019-07-24 21:59:28', '2019-07-24 22:00:27', '超级管理员', 1, '2019-07-24 21:58:39', '超级管理员', 1, '2019-07-24 21:58:39', 1, NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
