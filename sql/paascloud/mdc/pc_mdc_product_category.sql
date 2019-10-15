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

 Date: 12/10/2019 10:43:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;
SELECT @APP_ID:=param_value from sys_config where param_name = 'APP_ID';

-- ----------------------------
-- Table structure for pc_mdc_product_category
-- ----------------------------
DROP TABLE IF EXISTS `pc_mdc_product_category`;
CREATE TABLE `pc_mdc_product_category`  (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `version` int(11) NOT NULL DEFAULT 0 COMMENT '版本号',
  `category_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '类别序列号',
  `img_id` bigint(20) NULL DEFAULT NULL COMMENT '首图的流水号',
  `pid` bigint(20) NULL DEFAULT NULL COMMENT '父类别id当id=0时说明是根节点,一级类别',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类别名称',
  `status` tinyint(1) NULL DEFAULT 1 COMMENT '类别状态1-正常,2-已废弃',
  `sort_order` int(4) NULL DEFAULT NULL COMMENT '排序编号,同类展示顺序,数值相等则自然排序',
  `creator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `creator_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `created_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_operator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最近操作人',
  `last_operator_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最后操作人ID',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `level` int(4) NULL DEFAULT NULL COMMENT '级别，当pid=0时，为一级级别',
  `nav_status` tinyint(1) NULL DEFAULT 0 COMMENT '是否显示在导航栏 0-不显示在导航栏，1-显示',
  `show_status` tinyint(1) NULL DEFAULT 0 COMMENT '是否显示 0-不显示，1-显示',
  `keywords` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关键词',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分类描述',
  `product_unit` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数量单位',
  `app_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'appId',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pc_mdc_product_category
-- ----------------------------
INSERT INTO `pc_mdc_product_category` VALUES (100001, 0, '100001', NULL, 0, '家用电器', 1, 1, 'admin', '1', '2017-07-12 14:01:10', 'admin', '1', '2017-07-12 14:01:10', NULL, 0, 0, NULL, NULL, NULL, @APP_ID);
INSERT INTO `pc_mdc_product_category` VALUES (100002, 0, '100002', NULL, 0, '数码3C', 1, 1, 'admin', '1', '2017-07-12 14:01:10', 'admin', '1', '2017-07-12 14:01:10', NULL, 0, 0, NULL, NULL, NULL, @APP_ID);
INSERT INTO `pc_mdc_product_category` VALUES (100003, 0, '100003', NULL, 0, '服装箱包', 1, 1, 'admin', '1', '2017-07-12 14:01:10', 'admin', '1', '2017-07-12 14:01:10', NULL, 0, 0, NULL, NULL, NULL, @APP_ID);
INSERT INTO `pc_mdc_product_category` VALUES (100004, 0, '100004', NULL, 0, '食品生鲜', 1, 1, 'admin', '1', '2017-07-12 14:01:10', 'admin', '1', '2017-07-12 14:01:10', NULL, 0, 0, NULL, NULL, NULL, @APP_ID);
INSERT INTO `pc_mdc_product_category` VALUES (100005, 3, '100005', 648728075877491712, 0, '酒水饮料', 1, 2, 'admin', '1', '2017-07-12 14:01:10', '超级管理员', '1', '2019-06-15 01:47:12', NULL, 1, 0, '酒水', '酒水', '瓶', @APP_ID);
INSERT INTO `pc_mdc_product_category` VALUES (100006, 0, '100006', NULL, 100001, '冰箱', 1, 2, 'admin', '1', '2017-07-12 14:01:10', '超级管理员', '1', '2018-03-05 23:14:54', NULL, 0, 0, NULL, NULL, NULL, @APP_ID);
INSERT INTO `pc_mdc_product_category` VALUES (100007, 0, '100007', NULL, 100001, '电视', 1, 1, 'admin', '1', '2017-07-12 14:01:10', 'admin', '1', '2017-07-12 14:01:10', NULL, 0, 0, NULL, NULL, NULL, @APP_ID);
INSERT INTO `pc_mdc_product_category` VALUES (100008, 0, '100008', NULL, 100001, '洗衣机', 1, 1, 'admin', '1', '2017-07-12 14:01:10', 'admin', '1', '2017-07-12 14:01:10', NULL, 0, 0, NULL, NULL, NULL, @APP_ID);
INSERT INTO `pc_mdc_product_category` VALUES (100009, 0, '100009', NULL, 100001, '空调', 1, 1, 'admin', '1', '2017-07-12 14:01:10', 'admin', '1', '2017-07-12 14:01:10', NULL, 0, 0, NULL, NULL, NULL, @APP_ID);
INSERT INTO `pc_mdc_product_category` VALUES (100010, 0, '100010', NULL, 100001, '电热水器', 1, 1, 'admin', '1', '2017-07-12 14:01:10', 'admin', '1', '2017-07-12 14:01:10', NULL, 0, 0, NULL, NULL, NULL, @APP_ID);
INSERT INTO `pc_mdc_product_category` VALUES (100011, 0, '100011', NULL, 100002, '电脑', 1, 1, 'admin', '1', '2017-07-12 14:01:10', 'admin', '1', '2017-07-12 14:01:10', NULL, 0, 0, NULL, NULL, NULL, @APP_ID);
INSERT INTO `pc_mdc_product_category` VALUES (100012, 0, '100012', NULL, 100002, '手机', 1, 1, 'admin', '1', '2017-07-12 14:01:10', 'admin', '1', '2017-07-12 14:01:10', NULL, 0, 0, NULL, NULL, NULL, @APP_ID);
INSERT INTO `pc_mdc_product_category` VALUES (100013, 0, '100013', NULL, 100002, '平板电脑', 1, 1, 'admin', '1', '2017-07-12 14:01:10', 'admin', '1', '2017-07-12 14:01:10', NULL, 0, 0, NULL, NULL, NULL, @APP_ID);
INSERT INTO `pc_mdc_product_category` VALUES (100014, 0, '100014', NULL, 100002, '数码相机', 1, 1, 'admin', '1', '2017-07-12 14:01:10', 'admin', '1', '2017-07-12 14:01:10', NULL, 0, 0, NULL, NULL, NULL, @APP_ID);
INSERT INTO `pc_mdc_product_category` VALUES (100015, 0, '100015', NULL, 100002, '3C配件', 1, 1, 'admin', '1', '2017-07-12 14:01:10', 'admin', '1', '2017-07-12 14:01:10', NULL, 0, 0, NULL, NULL, NULL, @APP_ID);
INSERT INTO `pc_mdc_product_category` VALUES (100016, 0, '100016', NULL, 100003, '女装', 1, 1, 'admin', '1', '2017-07-12 14:01:10', 'admin', '1', '2017-07-12 14:01:10', NULL, 0, 0, NULL, NULL, NULL, @APP_ID);
INSERT INTO `pc_mdc_product_category` VALUES (100017, 0, '100017', NULL, 100003, '帽子', 1, 1, 'admin', '1', '2017-07-12 14:01:10', 'admin', '1', '2017-07-12 14:01:10', NULL, 0, 0, NULL, NULL, NULL, @APP_ID);
INSERT INTO `pc_mdc_product_category` VALUES (100018, 0, '100018', NULL, 100003, '旅行箱', 1, 1, 'admin', '1', '2017-07-12 14:01:10', 'admin', '1', '2017-07-12 14:01:10', NULL, 0, 0, NULL, NULL, NULL, @APP_ID);
INSERT INTO `pc_mdc_product_category` VALUES (100019, 0, '100019', NULL, 100003, '手提包', 1, 1, 'admin', '1', '2017-07-12 14:01:10', 'admin', '1', '2017-07-12 14:01:10', NULL, 0, 0, NULL, NULL, NULL, @APP_ID);
INSERT INTO `pc_mdc_product_category` VALUES (100020, 0, '100020', NULL, 100003, '保暖内衣', 1, 1, 'admin', '1', '2017-07-12 14:01:10', 'admin', '1', '2017-07-12 14:01:10', NULL, 0, 0, NULL, NULL, NULL, @APP_ID);
INSERT INTO `pc_mdc_product_category` VALUES (100021, 0, '100021', NULL, 100004, '零食', 1, 1, 'admin', '1', '2017-07-12 14:01:10', 'admin', '1', '2017-07-12 14:01:10', NULL, 0, 0, NULL, NULL, NULL, @APP_ID);
INSERT INTO `pc_mdc_product_category` VALUES (100022, 0, '100022', NULL, 100004, '生鲜', 1, 1, 'admin', '1', '2017-07-12 14:01:10', 'admin', '1', '2017-07-12 14:01:10', NULL, 0, 0, NULL, NULL, NULL, @APP_ID);
INSERT INTO `pc_mdc_product_category` VALUES (100023, 0, '100023', NULL, 100004, '半成品菜', 1, 1, 'admin', '1', '2017-07-12 14:01:10', 'admin', '1', '2017-07-12 14:01:10', NULL, 0, 0, NULL, NULL, NULL, @APP_ID);
INSERT INTO `pc_mdc_product_category` VALUES (100024, 0, '100024', NULL, 100004, '速冻食品', 1, 1, 'admin', '1', '2017-07-12 14:01:10', 'admin', '1', '2017-07-12 14:01:10', NULL, 0, 0, NULL, NULL, NULL, @APP_ID);
INSERT INTO `pc_mdc_product_category` VALUES (100025, 0, '100025', NULL, 100004, '进口食品', 1, 1, 'admin', '1', '2017-07-12 14:01:10', 'admin', '1', '2017-07-12 14:01:10', NULL, 0, 0, NULL, NULL, NULL, @APP_ID);
INSERT INTO `pc_mdc_product_category` VALUES (100026, 2, '100026', NULL, 100005, '白酒', 1, 1, 'admin', '1', '2017-07-12 14:01:10', '超级管理员', '1', '2018-03-05 23:22:59', NULL, 0, 0, NULL, NULL, NULL, @APP_ID);
INSERT INTO `pc_mdc_product_category` VALUES (100027, 2, '100027', NULL, 100005, '红酒', 1, 1, 'admin', '1', '2017-07-12 14:01:10', '超级管理员', '1', '2018-03-05 23:22:59', NULL, 0, 0, NULL, NULL, NULL, @APP_ID);
INSERT INTO `pc_mdc_product_category` VALUES (100028, 5, '100028', NULL, 100005, '饮料', 1, 1, 'admin', '1', '2017-07-12 14:01:10', '超级管理员', '1', '2019-05-28 17:37:29', NULL, 1, 0, NULL, NULL, NULL, @APP_ID);
INSERT INTO `pc_mdc_product_category` VALUES (100029, 2, '100029', NULL, 100005, '调制鸡尾酒', 1, 1, 'admin', '1', '2017-07-12 14:01:10', '超级管理员', '1', '2018-03-05 23:22:59', NULL, 0, 0, NULL, NULL, NULL, @APP_ID);
INSERT INTO `pc_mdc_product_category` VALUES (100030, 2, '100030', NULL, 100005, '进口洋酒', 1, 1, 'admin', '1', '2017-07-12 14:01:10', '超级管理员', '1', '2018-03-05 23:22:59', NULL, 0, 0, NULL, NULL, NULL, @APP_ID);

SET FOREIGN_KEY_CHECKS = 1;
