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

 Date: 12/10/2019 10:30:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;
SELECT @APP_ID:=param_value from sys_config where param_name = 'APP_ID';

-- ----------------------------
-- Table structure for pc_uac_role
-- ----------------------------
DROP TABLE IF EXISTS `pc_uac_role`;
CREATE TABLE `pc_uac_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `version` int(11) NULL DEFAULT 0 COMMENT '版本号',
  `role_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '角色编码',
  `role_name` varchar(90) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '角色名称',
  `status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '状态',
  `remark` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  `creator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建人',
  `creator_id` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `created_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_operator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最近操作人',
  `last_operator_id` bigint(20) NULL DEFAULT NULL COMMENT '最后操作人ID',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `app_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'appId',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 396741611725393921 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pc_uac_role
-- ----------------------------
INSERT INTO `pc_uac_role` VALUES (1, 1, 'admin', '超级管理员', 'ENABLE', NULL, 'admin', 1, '2017-12-05 22:45:26', 'admin', 1, '2017-12-05 22:45:26', @APP_ID);
INSERT INTO `pc_uac_role` VALUES (2, 0, 'developer', '开发人员', 'ENABLE', NULL, 'admin', 1, '2017-12-05 22:45:26', 'admin', 1, '2017-12-05 22:45:26', @APP_ID);
INSERT INTO `pc_uac_role` VALUES (3, 0, 'test', '测试人员', 'DISABLE', NULL, 'admin', 1, '2017-12-05 22:45:26', 'admin', 1, '2017-12-05 22:45:26', @APP_ID);
INSERT INTO `pc_uac_role` VALUES (4, 0, 'master', '管理员', 'ENABLE', NULL, 'admin', 1, '2017-12-05 22:45:26', 'admin', 1, '2017-12-05 22:45:26', @APP_ID);
INSERT INTO `pc_uac_role` VALUES (10000, 1, 'visiter', '普通用户', 'ENABLE', '', 'admin', 1, '2017-12-05 22:45:26', '超级管理员', 1, '2017-12-05 22:45:26', @APP_ID);
INSERT INTO `pc_uac_role` VALUES (315998797551379456, 0, '222', '测试', 'ENABLE', '222', '超级管理员', 1, '2017-12-05 22:45:26', '超级管理员', 1, '2017-12-05 22:45:26', @APP_ID);
INSERT INTO `pc_uac_role` VALUES (396740565905051648, 0, '111', '发发', 'ENABLE', '222', '超级管理员', 1, '2017-12-05 22:45:26', '超级管理员', 1, '2017-12-05 22:45:26', @APP_ID);
INSERT INTO `pc_uac_role` VALUES (396741611725393920, 0, '2222', '飞洒分发', 'ENABLE', '1145', '超级管理员', 1, '2017-12-05 22:45:26', 'xxxx', 305120257926767617, '2017-12-05 22:45:26', @APP_ID);

SET FOREIGN_KEY_CHECKS = 1;
