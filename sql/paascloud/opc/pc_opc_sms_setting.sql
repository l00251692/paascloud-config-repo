/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : localhost:3306
 Source Schema         : paascloud_opc

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 12/10/2019 10:33:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;
SELECT @APP_ID:=param_value from sys_config where param_name = 'APP_ID';

-- ----------------------------
-- Table structure for pc_opc_sms_setting
-- ----------------------------
DROP TABLE IF EXISTS `pc_opc_sms_setting`;
CREATE TABLE `pc_opc_sms_setting`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `version` int(4) NOT NULL DEFAULT 0 COMMENT '版本号',
  `again_send_time` int(4) NULL DEFAULT NULL COMMENT '可再次发送时间（毫秒）',
  `invalid_time` int(4) NULL DEFAULT NULL COMMENT '失效时间（分钟）',
  `type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '短信类型',
  `type_desc` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '类型描述',
  `templet_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '模板code',
  `templet_content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '模板内容',
  `send_max_num` int(4) NULL DEFAULT NULL COMMENT '一天中可发送的最大数量',
  `ip_send_max_num` int(4) NULL DEFAULT NULL COMMENT '一个IP一天中可发送的最大数量',
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  `creator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建人',
  `creator_id` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `created_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_operator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最近操作人',
  `last_operator_id` bigint(20) NULL DEFAULT NULL COMMENT '最后操作人ID',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `yn` int(11) NULL DEFAULT 0 COMMENT '删除标识(1-已删除；0-未删除)',
  `app_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'appId',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `un_type`(`type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '短信模板设置表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
