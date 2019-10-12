/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : localhost:3306
 Source Schema         : paascloud_mdc

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 12/10/2019 10:41:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for pc_mdc_dict
-- ----------------------------
DROP TABLE IF EXISTS `pc_mdc_dict`;
CREATE TABLE `pc_mdc_dict`  (
  `id` bigint(20) NOT NULL,
  `version` int(11) NULL DEFAULT 0 COMMENT '版本号',
  `type` int(11) NULL DEFAULT 0 COMMENT '字典类型 -0 目录 - 1 文件',
  `dict_key` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '枚举编码',
  `extend_key` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '枚举扩展字段',
  `dict_value` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '枚举值',
  `dict_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典编码',
  `dict_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `pid` bigint(20) NULL DEFAULT NULL COMMENT '父ID',
  `number` int(11) NULL DEFAULT 0 COMMENT '序号',
  `status` int(11) NULL DEFAULT 10 COMMENT '状态 -10 可用 - 20 禁用',
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  `creator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `creator_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `created_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_operator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最近操作人',
  `last_operator_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最后操作人ID',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `app_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'appId',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  UNIQUE INDEX `dist_key`(`dict_key`, `dict_value`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '数据字典表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pc_mdc_dict
-- ----------------------------
INSERT INTO `pc_mdc_dict` VALUES (1, 0, 0, 'uac', '', '用户中心', 'uac', '用户中心', 0, 0, 10, '', '超级管理员', '1', '2018-01-21 18:24:36', '超级管理员', '1', '2018-01-21 18:24:36', NULL);
INSERT INTO `pc_mdc_dict` VALUES (2, 0, 0, 'mdc', '', '数据中心', 'mdc', '数据中心', 0, 0, 10, '', '超级管理员', '1', '2018-01-21 18:24:36', '超级管理员', '1', '2018-01-21 18:24:36', NULL);
INSERT INTO `pc_mdc_dict` VALUES (11, 0, 0, 'USER_STATUS', '1', '用户状态', 'user:status', '用户状态', 1, 0, 10, '1', '', '', '2018-01-21 18:31:54', '超级管理员', '1', '2018-01-21 23:52:33', NULL);
INSERT INTO `pc_mdc_dict` VALUES (111, 5, 0, '10', '', '可用', 'DISABLED', '可用', 11, 0, 20, '', '', '', '2018-01-21 18:32:20', '超级管理员', '1', '2018-02-26 21:45:47', NULL);
INSERT INTO `pc_mdc_dict` VALUES (112, 5, 0, '20', '', '禁用', 'ENABLE', '禁用', 11, 0, 20, '', '', '', '2018-01-21 18:32:30', '超级管理员', '1', '2018-02-26 21:45:51', NULL);

SET FOREIGN_KEY_CHECKS = 1;
