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
-- Table structure for pc_uac_user
-- ----------------------------
DROP TABLE IF EXISTS `pc_uac_user`;
CREATE TABLE `pc_uac_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `version` int(11) NULL DEFAULT 0 COMMENT '版本号',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录名',
  `login_pwd` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录密码',
  `salt` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '盐,用于shiro加密, 字段停用',
  `user_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '工号',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '姓名',
  `mobile_no` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '手机号',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '邮件地址',
  `status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '状态',
  `user_source` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户来源',
  `type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作员类型（2000伙伴，3000客户，1000运营）',
  `last_login_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最后登录IP地址',
  `last_login_location` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最后登录位置',
  `remark` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '描述',
  `last_login_time` datetime(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  `is_changed_pwd` smallint(6) NULL DEFAULT 0 COMMENT '是否更改过密码',
  `pwd_error_count` smallint(6) NULL DEFAULT 0 COMMENT '连续输错密码次数（连续5次输错就冻结帐号）',
  `pwd_error_time` datetime(0) NULL DEFAULT NULL COMMENT '最后输错密码时间',
  `creator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建人',
  `creator_id` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `created_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_operator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最近操作人',
  `last_operator_id` bigint(20) NULL DEFAULT NULL COMMENT '最后操作人ID',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `app_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'appId',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作员表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pc_uac_user
-- ----------------------------
INSERT INTO `pc_uac_user` VALUES (1, 1, 'admin', '$2a$10$LvlRXYpsKRdqahrB/AxQmuQBKyfzD9svcYWd7WLi5aPTNYx3BzvKG', '380048354543013888', 'admin', '超级管理员', '15522222222', '15522222222@163.com', 'ENABLE', '', '', '127.0.0.1', '北京市', '', '2019-07-28 08:25:40', 1, 1, '2017-06-13 18:52:54', 'admin', 1, '2017-12-05 22:45:26', 'admin1', 1, '2017-12-05 22:45:26', @APP_ID);

SET FOREIGN_KEY_CHECKS = 1;
