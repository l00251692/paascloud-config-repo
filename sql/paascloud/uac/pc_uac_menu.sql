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

 Date: 12/10/2019 10:30:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for pc_uac_menu
-- ----------------------------
DROP TABLE IF EXISTS `pc_uac_menu`;
CREATE TABLE `pc_uac_menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `version` int(11) NULL DEFAULT 0 COMMENT '版本号',
  `menu_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单编码',
  `menu_name` varchar(90) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单名称',
  `status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '状态',
  `url` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单URL',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '图标',
  `pid` bigint(20) NULL DEFAULT NULL COMMENT '父ID',
  `level` int(11) NULL DEFAULT 1 COMMENT '层级(最多三级1,2,3)',
  `leaf` int(11) NULL DEFAULT 0 COMMENT '是否叶子节点,1不是0是',
  `number` int(11) NULL DEFAULT 0 COMMENT '序号',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  `application_id` bigint(20) NULL DEFAULT 1 COMMENT '系统编码',
  `creator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建人',
  `creator_id` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `created_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_operator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最近操作人',
  `last_operator_id` bigint(20) NULL DEFAULT NULL COMMENT '最后操作人ID',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `app_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'appId',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 399624517099589633 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pc_uac_menu
-- ----------------------------
INSERT INTO `pc_uac_menu` VALUES (1, 1, 'root', '运营工作台', 'ENABLE', NULL, 'fa fa-y-combinator', 0, 0, 1, 0, '', 1, '超级管理员', 1, '2017-12-05 22:45:26', '超级管理员', 1, '2017-12-05 22:45:26', NULL);
INSERT INTO `pc_uac_menu` VALUES (11, 3, 'uas', '用户中心', 'ENABLE', '/uas', 'fa fa-bicycle', 1, 1, 1, 1, '', 1, '超级管理员', 1, '2017-12-05 22:45:26', 'admin', 1, '2018-02-26 21:11:21', NULL);
INSERT INTO `pc_uac_menu` VALUES (111, 3, 'xtsz', '系统管理', 'ENABLE', '/yxgl', 'fa fa-desktop', 11, 2, 0, 1, '', 1, '超级管理员', 1, '2017-12-05 22:45:26', 'admin', 1, '2018-02-26 21:11:21', NULL);
INSERT INTO `pc_uac_menu` VALUES (1111, 2, 'uas_role', '角色管理', 'ENABLE', '/uas/role/list', 'fa fa-hand-o-up', 111, 3, 1, 0, '', 1, '超级管理员', 1, '2017-12-05 22:45:26', 'admin', 1, '2018-02-26 21:11:21', NULL);
INSERT INTO `pc_uac_menu` VALUES (1112, 2, 'uas_user', '用户管理', 'ENABLE', '/uas/user/list', 'fa fa-user', 111, 3, 1, 0, '', 1, '超级管理员', 1, '2017-12-05 22:45:26', 'admin', 1, '2018-02-26 21:11:21', NULL);
INSERT INTO `pc_uac_menu` VALUES (1113, 2, 'uas_menu', '菜单管理', 'ENABLE', '/uas/menu/list', 'fa fa-paperclip', 111, 3, 1, 0, '', 1, '超级管理员', 1, '2017-12-05 22:45:26', 'admin', 1, '2018-02-26 21:11:21', NULL);
INSERT INTO `pc_uac_menu` VALUES (1114, 2, 'uas_action', '权限管理', 'ENABLE', '/uas/action/list', 'fa fa-firefox', 111, 3, 1, 0, '', 1, '超级管理员', 1, '2017-12-05 22:45:26', 'admin', 1, '2018-02-26 21:11:21', NULL);
INSERT INTO `pc_uac_menu` VALUES (1115, 2, 'uas_group', '组织管理', 'ENABLE', '/uas/group/list', 'fa fa-group', 111, 3, 1, 0, '', 1, '超级管理员', 1, '2017-12-05 22:45:26', 'admin', 1, '2018-02-26 21:11:21', NULL);
INSERT INTO `pc_uac_menu` VALUES (305766262338757632, 3, 'add1', '服丰富发', 'DISABLE', '/sajdsalj/asda2', 'aa1', 1, 1, 0, 1231, '', 1, '超级管理员', 1, '2018-02-26 21:02:59', 'admin', 1, '2018-02-26 21:05:10', NULL);
INSERT INTO `pc_uac_menu` VALUES (310861539236127744, 0, 'category', '商品分类', 'ENABLE', '/oms/category/list', 'fa fa-print', 386619141710286848, 2, 0, 5, '', 1, '超级管理员', 1, '2018-03-05 21:46:23', '超级管理员', 1, '2018-03-05 21:46:49', NULL);
INSERT INTO `pc_uac_menu` VALUES (314345986317100032, 0, 'exception', '异常日志监控', 'ENABLE', '/uas/monitor/exception', 'fa fa-indent', 389537489083305984, 3, 0, 7, '', 1, '超级管理员', 1, '2018-03-10 17:09:22', '超级管理员', 1, '2018-03-11 19:39:01', NULL);
INSERT INTO `pc_uac_menu` VALUES (314534993634272256, 0, 'message', '消息管理', 'ENABLE', '/message', 'fa fa-envelope-o', 399621965209538560, 2, 1, 2, '', 1, '超级管理员', 1, '2018-03-10 23:24:53', '超级管理员', 1, '2018-03-11 19:34:41', NULL);
INSERT INTO `pc_uac_menu` VALUES (314536915506308096, 0, 'reliable_message', '可靠消息', 'ENABLE', '/mds/message/reliable', 'fa fa-envelope-o', 314534993634272256, 3, 0, 1, '', 1, '超级管理员', 1, '2018-03-10 23:28:42', '超级管理员', 1, '2018-03-11 19:37:26', NULL);
INSERT INTO `pc_uac_menu` VALUES (314537372735775744, 0, 'rpc_message', '消息记录', 'ENABLE', '/mds/message/record', 'fa fa-envelope-o', 314534993634272256, 3, 0, 1, '', 1, '超级管理员', 1, '2018-03-10 23:29:37', '超级管理员', 1, '2018-03-11 19:37:40', NULL);
INSERT INTO `pc_uac_menu` VALUES (386619141710286848, 0, 'oms', '订单中心', 'ENABLE', '/oms', 'fa fa-plug', 1, 1, 1, 2, '订单中心', 1, '超级管理员', 1, '2017-12-05 22:45:26', '超级管理员', 1, '2017-12-05 22:45:26', NULL);
INSERT INTO `pc_uac_menu` VALUES (386619314180067328, 0, 'product', '商品管理', 'ENABLE', '/oms/product/list', 'fa fa-print', 386619141710286848, 2, 0, 0, '', 1, '超级管理员', 1, '2017-12-05 22:45:26', '超级管理员', 1, '2017-12-05 22:45:26', NULL);
INSERT INTO `pc_uac_menu` VALUES (386619554962477056, 0, 'shipping', '收货地址', 'ENABLE', '/oms/shipping/list', 'fa fa-diamond', 386619141710286848, 2, 0, 0, '', 1, '超级管理员', 1, '2017-12-05 22:45:26', '超级管理员', 1, '2017-12-05 22:45:26', NULL);
INSERT INTO `pc_uac_menu` VALUES (386619669785743360, 0, 'order', '订单管理', 'ENABLE', '/oms/order/list', 'fa fa-life-ring', 386619141710286848, 2, 0, 0, '', 1, '超级管理员', 1, '2017-12-05 22:45:26', '超级管理员', 1, '2017-12-05 22:45:26', NULL);
INSERT INTO `pc_uac_menu` VALUES (386619770943967232, 0, 'cart', '购物车管理', 'ENABLE', '/oms/cart/list', '', 386619141710286848, 2, 0, 6, '', 1, '超级管理员', 1, '2018-03-12 11:40:32', '超级管理员', 1, '2018-03-12 11:40:32', NULL);
INSERT INTO `pc_uac_menu` VALUES (389537489083305984, 2, 'uac_monitor', '运营监控', 'ENABLE', '/uas/monitor', 'fa fa-bar-chart', 11, 2, 1, 2, '', 1, '超级管理员', 1, '2017-12-10 22:02:55', '超级管理员', 1, '2018-03-11 19:43:30', NULL);
INSERT INTO `pc_uac_menu` VALUES (389537927648120832, 2, 'monitor_zipkin', '调用链监控', 'ENABLE', '/uas/monitor/zipkin', 'fa fa-gavel', 389537489083305984, 3, 0, 1, '', 1, '超级管理员', 1, '2017-12-10 22:04:39', '超级管理员', 1, '2018-03-11 19:40:00', NULL);
INSERT INTO `pc_uac_menu` VALUES (389538226760716288, 2, 'monitor_swagger_uac', '接口文档', 'ENABLE', '/uas/monitor/swagger', 'fa fa-calculator', 389537489083305984, 3, 0, 1, '', 1, '超级管理员', 1, '2017-12-10 22:05:51', '超级管理员', 1, '2018-03-11 19:42:29', NULL);
INSERT INTO `pc_uac_menu` VALUES (389538504239091712, 2, 'monitor_druid', '数据库监控', 'ENABLE', '/uas/monitor/druid', 'fa fa-bug', 389537489083305984, 3, 0, 1, '', 1, '超级管理员', 1, '2017-12-10 22:06:57', '超级管理员', 1, '2018-03-11 19:42:55', NULL);
INSERT INTO `pc_uac_menu` VALUES (389538784145969152, 2, 'monitor_boot', '监控报警', 'ENABLE', '/uas/monitor/boot', 'fa fa-book', 389537489083305984, 3, 0, 1, '', 1, '超级管理员', 1, '2017-12-10 22:08:03', '超级管理员', 1, '2018-03-11 19:40:44', NULL);
INSERT INTO `pc_uac_menu` VALUES (397128438818934784, 2, 'log', '操作日志监控', 'ENABLE', '/uas/monitor/log', 'fa fa-futbol-o', 389537489083305984, 3, 0, 5, '', 1, '超级管理员', 1, '2017-12-31 20:46:38', 'admin', 1, '2018-02-26 21:11:21', NULL);
INSERT INTO `pc_uac_menu` VALUES (397129746489675776, 2, 'token', '登录密钥监控', 'ENABLE', '/uas/monitor/token', 'fa fa-sort-amount-asc', 389537489083305984, 3, 0, 6, '', 1, '超级管理员', 1, '2017-12-31 20:51:50', 'admin', 1, '2018-02-26 21:11:21', NULL);
INSERT INTO `pc_uac_menu` VALUES (399621965209538560, 0, 'mds', '数据中心', 'ENABLE', '/mds', 'fa fa-tree', 1, 1, 1, 2, '', 1, '超级管理员', 1, '2018-01-07 17:55:01', '超级管理员', 1, '2018-01-07 17:55:01', NULL);
INSERT INTO `pc_uac_menu` VALUES (399622376637206528, 0, 'config', '配置管理', 'ENABLE', '/config', 'fa fa-cog', 399621965209538560, 2, 1, 1, '', 1, '超级管理员', 1, '2018-01-07 17:56:39', '超级管理员', 1, '2018-01-22 16:00:40', NULL);
INSERT INTO `pc_uac_menu` VALUES (399622908055523328, 0, 'topic', 'Topic管理', 'ENABLE', '/mds/topic/list', 'fa fa-bars', 399622376637206528, 3, 0, 1, '', 1, '超级管理员', 1, '2018-01-07 17:58:46', '超级管理员', 1, '2018-01-07 19:17:50', NULL);
INSERT INTO `pc_uac_menu` VALUES (399623029472235520, 0, 'tag', 'Tag管理', 'ENABLE', '/mds/tag/list', 'fa fa-hand-rock-o', 399622376637206528, 3, 0, 2, '', 1, '超级管理员', 1, '2018-01-07 17:59:15', '超级管理员', 1, '2018-01-07 19:18:05', NULL);
INSERT INTO `pc_uac_menu` VALUES (399623393500073984, 0, 'producer', '生产者管理', 'ENABLE', '/mds/producer/list', 'fa fa-hand-o-right', 399622376637206528, 3, 0, 3, '', 1, '超级管理员', 1, '2018-01-07 18:00:42', '超级管理员', 1, '2018-01-07 19:18:10', NULL);
INSERT INTO `pc_uac_menu` VALUES (399623576635969536, 0, 'consumer', '消费者管理', 'ENABLE', '/mds/consumer/list', 'fa fa-hand-pointer-o', 399622376637206528, 3, 0, 4, '', 1, '超级管理员', 1, '2018-01-07 18:01:25', '超级管理员', 1, '2018-01-07 19:18:14', NULL);
INSERT INTO `pc_uac_menu` VALUES (399623736623501312, 0, 'dist', '数据字典', 'ENABLE', '/mds/dict/list', 'fa fa-book', 399622376637206528, 3, 0, 0, '', 1, '超级管理员', 1, '2018-01-07 18:02:03', '超级管理员', 1, '2018-01-22 16:01:33', NULL);
INSERT INTO `pc_uac_menu` VALUES (399624320957157376, 0, 'publish', '发布管理', 'ENABLE', '/mds/publish/list', 'fa fa-hourglass-end', 399622376637206528, 3, 0, 5, '', 1, '超级管理员', 1, '2018-01-07 18:04:23', '超级管理员', 1, '2018-01-07 19:18:20', NULL);
INSERT INTO `pc_uac_menu` VALUES (399624517099589632, 2, 'subscribe', '订阅管理', 'ENABLE', '/mds/subscribe/list', 'fa fa-pencil', 399622376637206528, 3, 1, 6, '', 1, '超级管理员', 1, '2018-01-07 18:05:10', 'admin', 1, '2018-02-26 21:08:32', NULL);

SET FOREIGN_KEY_CHECKS = 1;
