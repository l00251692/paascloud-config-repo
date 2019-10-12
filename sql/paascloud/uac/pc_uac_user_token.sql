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

 Date: 17/09/2019 23:16:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for pc_uac_user_token
-- ----------------------------
DROP TABLE IF EXISTS `pc_uac_user_token`;
CREATE TABLE `pc_uac_user_token`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `version` int(11) NULL DEFAULT 0 COMMENT '版本号',
  `pid` bigint(20) NULL DEFAULT NULL COMMENT '父ID',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录名',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '姓名',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户ID',
  `os` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `browser` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器',
  `login_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登陆人Ip地址',
  `login_location` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地址',
  `login_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '登录时间',
  `access_token` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '访问token',
  `refresh_token` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '刷新token',
  `token_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'token类型',
  `access_token_validity` int(11) NULL DEFAULT NULL COMMENT '访问token的生效时间(秒)',
  `refresh_token_validity` int(11) NULL DEFAULT NULL COMMENT '刷新token的生效时间(秒)',
  `status` int(11) NULL DEFAULT 0 COMMENT '0 在线 10已刷新 20 离线',
  `group_id` bigint(20) NULL DEFAULT NULL COMMENT '组织ID',
  `group_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '组织名称',
  `creator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建人',
  `creator_id` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `created_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_operator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最近操作人',
  `last_operator_id` bigint(20) NULL DEFAULT NULL COMMENT '最后操作人ID',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `app_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'appId',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 409123705424318465 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户Token统计表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
