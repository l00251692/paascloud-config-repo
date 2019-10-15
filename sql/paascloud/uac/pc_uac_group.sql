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

 Date: 12/10/2019 10:29:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;
SELECT @APP_ID:=param_value from sys_config where param_name = 'APP_ID';

-- ----------------------------
-- Table structure for pc_uac_group
-- ----------------------------
DROP TABLE IF EXISTS `pc_uac_group`;
CREATE TABLE `pc_uac_group`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `version` int(11) NOT NULL DEFAULT 0 COMMENT 'VERSION',
  `group_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '组织编码',
  `group_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '组织名称',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态',
  `type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '组织类型 1：仓库 2：基地',
  `pid` bigint(20) NULL DEFAULT NULL COMMENT '父ID',
  `level` int(32) NULL DEFAULT 1 COMMENT '层级',
  `leaf` int(32) NULL DEFAULT 0 COMMENT '是否叶子节点,1不是0是',
  `contact` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '联系人',
  `group_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '组织地址',
  `province_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '省名称',
  `province_id` bigint(20) NULL DEFAULT NULL COMMENT '省编码',
  `city_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '城市名称',
  `city_id` bigint(20) NULL DEFAULT NULL COMMENT '城市编码',
  `area_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区名称',
  `area_id` bigint(32) NULL DEFAULT NULL COMMENT '区编码',
  `street_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '街道名称',
  `street_id` bigint(20) NULL DEFAULT NULL COMMENT '街道编码',
  `detail_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '详细地址',
  `contact_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '联系人手机号',
  `remark` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `creator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建人',
  `creator_id` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `created_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_operator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最近操作人',
  `last_operator_id` bigint(20) NULL DEFAULT NULL COMMENT '最后操作人ID',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `number` int(11) NULL DEFAULT 0 COMMENT '预留排序字段',
  `app_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'appId',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 387731953983557633 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pc_uac_group
-- ----------------------------
INSERT INTO `pc_uac_group` VALUES (1, 1, 'root', 'paascloud', 0, '1', 0, 1, 0, '刘先生', '北京市北京城区西城区', '北京市', 368100109646176256, '北京城区', 368100109679730688, '西城区', 368100109767811072, NULL, NULL, NULL, '155xxxxxxxx', NULL, 'admin', 1, '2017-12-05 22:45:26', 'admin', 1, '2017-12-05 22:45:26', 0, @APP_ID);
INSERT INTO `pc_uac_group` VALUES (2, 2, 'test', '测试组织', 0, '1', 1, 2, 0, '刘先生', '北京市北京城区西城区', '北京市', 368100109646176256, '北京城区', 368100109679730688, '西城区', 368100109767811072, NULL, NULL, NULL, '155xxxxxxxx', NULL, 'admin', 1, '2017-12-05 22:45:26', 'admin', 1, '2017-12-05 22:45:26', 0, @APP_ID);
INSERT INTO `pc_uac_group` VALUES (305783697070629888, 2, '123132', '32132144', 0, '2', 387731953983557632, 3, 0, '321', '山西省长治市长治县', '山西省', 368100116688412672, '长治市', 368100117644713984, '长治县', 368100117745377280, '', NULL, '32132144', '155xxxxxxxx', '32132144', '超级管理员', 1, '2018-02-26 21:37:37', '超级管理员', 1, '2018-02-26 21:37:57', 0, @APP_ID);
INSERT INTO `pc_uac_group` VALUES (387731868428144640, 2, 'test2', '测试组织2', 0, '1', 1, 2, 0, '刘先生', '北京市北京城区西城区', '北京市', 368100109646176256, '北京城区', 368100109679730688, '西城区', 368100109767811072, NULL, NULL, NULL, '155xxxxxxxx', NULL, 'admin', 1, '2017-12-05 22:45:26', 'admin', 1, '2017-12-05 22:45:26', 0, @APP_ID);
INSERT INTO `pc_uac_group` VALUES (387731953983557632, 3, 'test3', '测试组织3', 0, '1', 1, 2, 0, '刘先生', '北京市北京城区西城区', '北京市', 368100109646176256, '北京城区', 368100109679730688, '西城区', 368100109767811072, NULL, NULL, NULL, '155xxxxxxxx', NULL, 'admin', 1, '2017-12-05 22:45:26', 'admin', 1, '2017-12-05 22:45:26', 0, @APP_ID);

SET FOREIGN_KEY_CHECKS = 1;
