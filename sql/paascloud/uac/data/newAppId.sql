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
-- Records of pc_uac_user
-- ----------------------------
INSERT INTO `pc_uac_user` VALUES (1, 1, 'admin', '$2a$10$LvlRXYpsKRdqahrB/AxQmuQBKyfzD9svcYWd7WLi5aPTNYx3BzvKG', '380048354543013888', 'admin', '超级管理员', '15522222222', '15522222222@163.com', 'ENABLE', '', '', '127.0.0.1', '北京市', '', '2019-07-28 08:25:40', 1, 1, '2017-06-13 18:52:54', 'admin', 1, '2017-12-05 22:45:26', 'admin1', 1, '2017-12-05 22:45:26', @APP_ID);

-- ----------------------------
-- Records of pc_uac_group
-- ----------------------------
INSERT INTO `pc_uac_group` VALUES (1, 1, 'root', 'paascloud', 0, '1', 0, 1, 0, '刘先生', '北京市北京城区西城区', '北京市', 368100109646176256, '北京城区', 368100109679730688, '西城区', 368100109767811072, NULL, NULL, NULL, '155xxxxxxxx', NULL, 'admin', 1, '2017-12-05 22:45:26', 'admin', 1, '2017-12-05 22:45:26', 0, @APP_ID);
INSERT INTO `pc_uac_group` VALUES (2, 2, 'test', '测试组织', 0, '1', 1, 2, 0, '刘先生', '北京市北京城区西城区', '北京市', 368100109646176256, '北京城区', 368100109679730688, '西城区', 368100109767811072, NULL, NULL, NULL, '155xxxxxxxx', NULL, 'admin', 1, '2017-12-05 22:45:26', 'admin', 1, '2017-12-05 22:45:26', 0, @APP_ID);
INSERT INTO `pc_uac_group` VALUES (305783697070629888, 2, '123132', '32132144', 0, '2', 387731953983557632, 3, 0, '321', '山西省长治市长治县', '山西省', 368100116688412672, '长治市', 368100117644713984, '长治县', 368100117745377280, '', NULL, '32132144', '155xxxxxxxx', '32132144', '超级管理员', 1, '2018-02-26 21:37:37', '超级管理员', 1, '2018-02-26 21:37:57', 0, @APP_ID);
INSERT INTO `pc_uac_group` VALUES (387731868428144640, 2, 'test2', '测试组织2', 0, '1', 1, 2, 0, '刘先生', '北京市北京城区西城区', '北京市', 368100109646176256, '北京城区', 368100109679730688, '西城区', 368100109767811072, NULL, NULL, NULL, '155xxxxxxxx', NULL, 'admin', 1, '2017-12-05 22:45:26', 'admin', 1, '2017-12-05 22:45:26', 0, @APP_ID);
INSERT INTO `pc_uac_group` VALUES (387731953983557632, 3, 'test3', '测试组织3', 0, '1', 1, 2, 0, '刘先生', '北京市北京城区西城区', '北京市', 368100109646176256, '北京城区', 368100109679730688, '西城区', 368100109767811072, NULL, NULL, NULL, '155xxxxxxxx', NULL, 'admin', 1, '2017-12-05 22:45:26', 'admin', 1, '2017-12-05 22:45:26', 0, @APP_ID);

-- ----------------------------
-- Records of pc_uac_menu
-- ----------------------------
INSERT INTO `pc_uac_menu` VALUES (1, 1, 'root', '运营工作台', 'ENABLE', NULL, 'fa fa-y-combinator', 0, 0, 1, 0, '', 1, '超级管理员', 1, '2017-12-05 22:45:26', '超级管理员', 1, '2017-12-05 22:45:26', @APP_ID);
INSERT INTO `pc_uac_menu` VALUES (11, 3, 'uas', '用户中心', 'ENABLE', '/uas', 'fa fa-bicycle', 1, 1, 1, 1, '', 1, '超级管理员', 1, '2017-12-05 22:45:26', 'admin', 1, '2018-02-26 21:11:21', @APP_ID);
INSERT INTO `pc_uac_menu` VALUES (111, 3, 'xtsz', '系统管理', 'ENABLE', '/yxgl', 'fa fa-desktop', 11, 2, 0, 1, '', 1, '超级管理员', 1, '2017-12-05 22:45:26', 'admin', 1, '2018-02-26 21:11:21', @APP_ID);
INSERT INTO `pc_uac_menu` VALUES (1111, 2, 'uas_role', '角色管理', 'ENABLE', '/uas/role/list', 'fa fa-hand-o-up', 111, 3, 1, 0, '', 1, '超级管理员', 1, '2017-12-05 22:45:26', 'admin', 1, '2018-02-26 21:11:21', @APP_ID);
INSERT INTO `pc_uac_menu` VALUES (1112, 2, 'uas_user', '用户管理', 'ENABLE', '/uas/user/list', 'fa fa-user', 111, 3, 1, 0, '', 1, '超级管理员', 1, '2017-12-05 22:45:26', 'admin', 1, '2018-02-26 21:11:21', @APP_ID);
INSERT INTO `pc_uac_menu` VALUES (1113, 2, 'uas_menu', '菜单管理', 'ENABLE', '/uas/menu/list', 'fa fa-paperclip', 111, 3, 1, 0, '', 1, '超级管理员', 1, '2017-12-05 22:45:26', 'admin', 1, '2018-02-26 21:11:21', @APP_ID);
INSERT INTO `pc_uac_menu` VALUES (1114, 2, 'uas_action', '权限管理', 'ENABLE', '/uas/action/list', 'fa fa-firefox', 111, 3, 1, 0, '', 1, '超级管理员', 1, '2017-12-05 22:45:26', 'admin', 1, '2018-02-26 21:11:21', @APP_ID);
INSERT INTO `pc_uac_menu` VALUES (1115, 2, 'uas_group', '组织管理', 'ENABLE', '/uas/group/list', 'fa fa-group', 111, 3, 1, 0, '', 1, '超级管理员', 1, '2017-12-05 22:45:26', 'admin', 1, '2018-02-26 21:11:21', @APP_ID);
INSERT INTO `pc_uac_menu` VALUES (305766262338757632, 3, 'add1', '服丰富发', 'DISABLE', '/sajdsalj/asda2', 'aa1', 1, 1, 0, 1231, '', 1, '超级管理员', 1, '2018-02-26 21:02:59', 'admin', 1, '2018-02-26 21:05:10', @APP_ID);
INSERT INTO `pc_uac_menu` VALUES (310861539236127744, 0, 'category', '商品分类', 'ENABLE', '/oms/category/list', 'fa fa-print', 386619141710286848, 2, 0, 5, '', 1, '超级管理员', 1, '2018-03-05 21:46:23', '超级管理员', 1, '2018-03-05 21:46:49', @APP_ID);
INSERT INTO `pc_uac_menu` VALUES (314345986317100032, 0, 'exception', '异常日志监控', 'ENABLE', '/uas/monitor/exception', 'fa fa-indent', 389537489083305984, 3, 0, 7, '', 1, '超级管理员', 1, '2018-03-10 17:09:22', '超级管理员', 1, '2018-03-11 19:39:01', @APP_ID);
INSERT INTO `pc_uac_menu` VALUES (314534993634272256, 0, 'message', '消息管理', 'ENABLE', '/message', 'fa fa-envelope-o', 399621965209538560, 2, 1, 2, '', 1, '超级管理员', 1, '2018-03-10 23:24:53', '超级管理员', 1, '2018-03-11 19:34:41', @APP_ID);
INSERT INTO `pc_uac_menu` VALUES (314536915506308096, 0, 'reliable_message', '可靠消息', 'ENABLE', '/mds/message/reliable', 'fa fa-envelope-o', 314534993634272256, 3, 0, 1, '', 1, '超级管理员', 1, '2018-03-10 23:28:42', '超级管理员', 1, '2018-03-11 19:37:26', @APP_ID);
INSERT INTO `pc_uac_menu` VALUES (314537372735775744, 0, 'rpc_message', '消息记录', 'ENABLE', '/mds/message/record', 'fa fa-envelope-o', 314534993634272256, 3, 0, 1, '', 1, '超级管理员', 1, '2018-03-10 23:29:37', '超级管理员', 1, '2018-03-11 19:37:40', @APP_ID);
INSERT INTO `pc_uac_menu` VALUES (386619141710286848, 0, 'oms', '订单中心', 'ENABLE', '/oms', 'fa fa-plug', 1, 1, 1, 2, '订单中心', 1, '超级管理员', 1, '2017-12-05 22:45:26', '超级管理员', 1, '2017-12-05 22:45:26', @APP_ID);
INSERT INTO `pc_uac_menu` VALUES (386619314180067328, 0, 'product', '商品管理', 'ENABLE', '/oms/product/list', 'fa fa-print', 386619141710286848, 2, 0, 0, '', 1, '超级管理员', 1, '2017-12-05 22:45:26', '超级管理员', 1, '2017-12-05 22:45:26', @APP_ID);
INSERT INTO `pc_uac_menu` VALUES (386619554962477056, 0, 'shipping', '收货地址', 'ENABLE', '/oms/shipping/list', 'fa fa-diamond', 386619141710286848, 2, 0, 0, '', 1, '超级管理员', 1, '2017-12-05 22:45:26', '超级管理员', 1, '2017-12-05 22:45:26', @APP_ID);
INSERT INTO `pc_uac_menu` VALUES (386619669785743360, 0, 'order', '订单管理', 'ENABLE', '/oms/order/list', 'fa fa-life-ring', 386619141710286848, 2, 0, 0, '', 1, '超级管理员', 1, '2017-12-05 22:45:26', '超级管理员', 1, '2017-12-05 22:45:26', @APP_ID);
INSERT INTO `pc_uac_menu` VALUES (386619770943967232, 0, 'cart', '购物车管理', 'ENABLE', '/oms/cart/list', '', 386619141710286848, 2, 0, 6, '', 1, '超级管理员', 1, '2018-03-12 11:40:32', '超级管理员', 1, '2018-03-12 11:40:32', @APP_ID);
INSERT INTO `pc_uac_menu` VALUES (389537489083305984, 2, 'uac_monitor', '运营监控', 'ENABLE', '/uas/monitor', 'fa fa-bar-chart', 11, 2, 1, 2, '', 1, '超级管理员', 1, '2017-12-10 22:02:55', '超级管理员', 1, '2018-03-11 19:43:30', @APP_ID);
INSERT INTO `pc_uac_menu` VALUES (389537927648120832, 2, 'monitor_zipkin', '调用链监控', 'ENABLE', '/uas/monitor/zipkin', 'fa fa-gavel', 389537489083305984, 3, 0, 1, '', 1, '超级管理员', 1, '2017-12-10 22:04:39', '超级管理员', 1, '2018-03-11 19:40:00', @APP_ID);
INSERT INTO `pc_uac_menu` VALUES (389538226760716288, 2, 'monitor_swagger_uac', '接口文档', 'ENABLE', '/uas/monitor/swagger', 'fa fa-calculator', 389537489083305984, 3, 0, 1, '', 1, '超级管理员', 1, '2017-12-10 22:05:51', '超级管理员', 1, '2018-03-11 19:42:29', @APP_ID);
INSERT INTO `pc_uac_menu` VALUES (389538504239091712, 2, 'monitor_druid', '数据库监控', 'ENABLE', '/uas/monitor/druid', 'fa fa-bug', 389537489083305984, 3, 0, 1, '', 1, '超级管理员', 1, '2017-12-10 22:06:57', '超级管理员', 1, '2018-03-11 19:42:55', @APP_ID);
INSERT INTO `pc_uac_menu` VALUES (389538784145969152, 2, 'monitor_boot', '监控报警', 'ENABLE', '/uas/monitor/boot', 'fa fa-book', 389537489083305984, 3, 0, 1, '', 1, '超级管理员', 1, '2017-12-10 22:08:03', '超级管理员', 1, '2018-03-11 19:40:44', @APP_ID);
INSERT INTO `pc_uac_menu` VALUES (397128438818934784, 2, 'log', '操作日志监控', 'ENABLE', '/uas/monitor/log', 'fa fa-futbol-o', 389537489083305984, 3, 0, 5, '', 1, '超级管理员', 1, '2017-12-31 20:46:38', 'admin', 1, '2018-02-26 21:11:21', @APP_ID);
INSERT INTO `pc_uac_menu` VALUES (397129746489675776, 2, 'token', '登录密钥监控', 'ENABLE', '/uas/monitor/token', 'fa fa-sort-amount-asc', 389537489083305984, 3, 0, 6, '', 1, '超级管理员', 1, '2017-12-31 20:51:50', 'admin', 1, '2018-02-26 21:11:21', @APP_ID);
INSERT INTO `pc_uac_menu` VALUES (399621965209538560, 0, 'mds', '数据中心', 'ENABLE', '/mds', 'fa fa-tree', 1, 1, 1, 2, '', 1, '超级管理员', 1, '2018-01-07 17:55:01', '超级管理员', 1, '2018-01-07 17:55:01', @APP_ID);
INSERT INTO `pc_uac_menu` VALUES (399622376637206528, 0, 'config', '配置管理', 'ENABLE', '/config', 'fa fa-cog', 399621965209538560, 2, 1, 1, '', 1, '超级管理员', 1, '2018-01-07 17:56:39', '超级管理员', 1, '2018-01-22 16:00:40', @APP_ID);
INSERT INTO `pc_uac_menu` VALUES (399622908055523328, 0, 'topic', 'Topic管理', 'ENABLE', '/mds/topic/list', 'fa fa-bars', 399622376637206528, 3, 0, 1, '', 1, '超级管理员', 1, '2018-01-07 17:58:46', '超级管理员', 1, '2018-01-07 19:17:50', @APP_ID);
INSERT INTO `pc_uac_menu` VALUES (399623029472235520, 0, 'tag', 'Tag管理', 'ENABLE', '/mds/tag/list', 'fa fa-hand-rock-o', 399622376637206528, 3, 0, 2, '', 1, '超级管理员', 1, '2018-01-07 17:59:15', '超级管理员', 1, '2018-01-07 19:18:05', @APP_ID);
INSERT INTO `pc_uac_menu` VALUES (399623393500073984, 0, 'producer', '生产者管理', 'ENABLE', '/mds/producer/list', 'fa fa-hand-o-right', 399622376637206528, 3, 0, 3, '', 1, '超级管理员', 1, '2018-01-07 18:00:42', '超级管理员', 1, '2018-01-07 19:18:10', @APP_ID);
INSERT INTO `pc_uac_menu` VALUES (399623576635969536, 0, 'consumer', '消费者管理', 'ENABLE', '/mds/consumer/list', 'fa fa-hand-pointer-o', 399622376637206528, 3, 0, 4, '', 1, '超级管理员', 1, '2018-01-07 18:01:25', '超级管理员', 1, '2018-01-07 19:18:14', @APP_ID);
INSERT INTO `pc_uac_menu` VALUES (399623736623501312, 0, 'dist', '数据字典', 'ENABLE', '/mds/dict/list', 'fa fa-book', 399622376637206528, 3, 0, 0, '', 1, '超级管理员', 1, '2018-01-07 18:02:03', '超级管理员', 1, '2018-01-22 16:01:33', @APP_ID);
INSERT INTO `pc_uac_menu` VALUES (399624320957157376, 0, 'publish', '发布管理', 'ENABLE', '/mds/publish/list', 'fa fa-hourglass-end', 399622376637206528, 3, 0, 5, '', 1, '超级管理员', 1, '2018-01-07 18:04:23', '超级管理员', 1, '2018-01-07 19:18:20', @APP_ID);
INSERT INTO `pc_uac_menu` VALUES (399624517099589632, 2, 'subscribe', '订阅管理', 'ENABLE', '/mds/subscribe/list', 'fa fa-pencil', 399622376637206528, 3, 1, 6, '', 1, '超级管理员', 1, '2018-01-07 18:05:10', 'admin', 1, '2018-02-26 21:08:32', @APP_ID);

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

-- ----------------------------
-- Records of pc_uac_action
-- ----------------------------
INSERT INTO `pc_uac_action` VALUES (100001, 0, '/user/save', '编辑用户', 'uac:user:save', 'ENABLE', NULL, 1112, 'admin', 1, '2017-12-05 22:45:26', '超级管理员', 1, '2018-03-04 22:46:50', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (100005, 0, '/role/save', '编辑角色', 'add:role', 'ENABLE', NULL, 1111, 'admin', 1, '2017-12-05 22:45:26', '超级管理员', 1, '2018-02-26 21:13:48', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (305772209559839744, 0, '/uac/role/queryList', '查看角色', 'uca:role:view', 'ENABLE', '', 1111, '超级管理员', 1, '2018-02-26 21:14:48', '超级管理员', 1, '2018-02-26 21:15:01', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (308015564217918464, 0, '/order/createOrderDoc/*', '创建订单', 'omc:order:createOrderDoc', 'ENABLE', '', 386619669785743360, '超级管理员', 1, '2018-03-01 23:31:57', '超级管理员', 1, '2018-03-01 23:31:57', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (308015817025397760, 0, '/order/cancelOrderDoc/*', '取消订单', 'cancelOrderDoc', 'ENABLE', '', 386619669785743360, '超级管理员', 1, '2018-03-01 23:32:27', '超级管理员', 1, '2018-03-01 23:32:27', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (308016353694983168, 0, '/shipping/addShipping', '增加收货人地址', 'omc:shipping:addShipping', 'ENABLE', '', 386619554962477056, '超级管理员', 1, '2018-03-01 23:33:31', '超级管理员', 1, '2018-03-01 23:33:31', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (308016771179226112, 0, '/shipping/deleteShipping/*', '删除收货地址', 'omc:shiping:deleteShipping', 'ENABLE', '', 386619554962477056, '超级管理员', 1, '2018-03-01 23:34:20', '超级管理员', 1, '2018-03-01 23:34:20', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (308017000884478976, 0, '/shipping/updateShipping/*', '更新收货地址', 'omc:shipping:updateShipping', 'ENABLE', '', 386619554962477056, '超级管理员', 1, '2018-03-01 23:34:48', '超级管理员', 1, '2018-03-01 23:34:48', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (308017290090128384, 0, '/shipping/setDefaultAddress/*', '设置默认地址', 'omc:shiping:setDefaultAddress', 'ENABLE', '', 386619554962477056, '超级管理员', 1, '2018-03-01 23:35:22', '超级管理员', 1, '2018-03-01 23:35:22', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (308017803162559488, 0, '/pay/createQrCodeImage/*', '生成支付二维码', 'omc:pay:createQrCodeImage', 'ENABLE', '', 386619669785743360, '超级管理员', 1, '2018-03-01 23:36:23', '超级管理员', 1, '2018-03-01 23:36:23', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (308018047321383936, 0, '/pay/alipayCallback', '支付宝支付回调', 'omc:pay:callback', 'ENABLE', '', 386619669785743360, '超级管理员', 1, '2018-03-01 23:36:53', '超级管理员', 1, '2018-03-01 23:36:53', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (308027485310690304, 0, '/cart/addProduct/**', '向购物车添加商品', 'omc:cart:addProduct', 'ENABLE', '', 386619770943967232, '超级管理员', 1, '2018-03-01 23:55:38', '超级管理员', 1, '2018-03-01 23:55:38', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (308027702659523584, 0, '/cart/updateProduct/**', '更新购物车商品', 'omc:cart:updateProduct', 'ENABLE', '', 386619770943967232, '超级管理员', 1, '2018-03-01 23:56:04', '超级管理员', 1, '2018-03-01 23:56:04', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (308027958889554944, 0, '/cart/deleteProduct/*', '删除购物车商品', 'omc:cart:deleteProduct', 'ENABLE', '', 386619770943967232, '超级管理员', 1, '2018-03-01 23:56:34', '超级管理员', 1, '2018-03-01 23:56:34', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (308028183234487296, 0, '/cart/selectAllProduct', '勾选全部购物车商品', 'omc:cart:selectAllProduct', 'ENABLE', '', 386619770943967232, '超级管理员', 1, '2018-03-01 23:57:01', '超级管理员', 1, '2018-03-01 23:57:01', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (308028362683589632, 0, '/cart/unSelectAllProduct', '取消勾选全部购物车商品', 'omc:cart:unSelectAllProduct', 'ENABLE', '', 386619770943967232, '超级管理员', 1, '2018-03-01 23:57:22', '超级管理员', 1, '2018-03-01 23:57:22', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (308028500382589952, 0, '/cart/selectProduct/*', '勾选购车商品', 'selectProduct', 'ENABLE', '', 386619770943967232, '超级管理员', 1, '2018-03-01 23:57:39', '超级管理员', 1, '2018-03-01 23:57:39', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (308028676685964288, 0, '/cart/unSelectProduct/*', '取消勾选购物车商品', 'omc:cart:unSelectProduct', 'ENABLE', '', 386619770943967232, '超级管理员', 1, '2018-03-01 23:58:00', '超级管理员', 1, '2018-03-01 23:58:00', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (308029015392789504, 0, '/cart/updateInformation', '更新用户信息', 'omc:cart:updateInformation', 'ENABLE', '', 386619770943967232, '超级管理员', 1, '2018-03-01 23:58:40', '超级管理员', 1, '2018-03-01 23:58:40', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (308699944489853952, 0, '/email/sendRestEmailCode', '发送邮箱验证码', 'omc:emal:sendRestEmailCode', 'ENABLE', '', 386619669785743360, '超级管理员', 1, '2018-03-02 22:11:41', '超级管理员', 1, '2018-03-02 22:11:41', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (310162739551020032, 0, '/role/modifyRoleStatusById', '修改角色状态', 'uac:role:modifyRoleStatusById', 'ENABLE', '', 1111, '超级管理员', 1, '2018-03-04 22:38:00', '超级管理员', 1, '2018-03-04 22:38:00', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (310163207442408448, 0, '/role/bindUser', '角色绑定用户', 'uac:role:', 'ENABLE', '', 1111, '超级管理员', 1, '2018-03-04 22:38:56', '超级管理员', 1, '2018-03-04 22:38:56', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (310164279170966528, 0, '/role/bindMenu', '角色绑定菜单', 'uac:role:bindMenu', 'ENABLE', '', 1111, '超级管理员', 1, '2018-03-04 22:41:03', '超级管理员', 1, '2018-03-04 22:41:03', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (310165004122858496, 0, '/role/bindAction', '角色绑定权限', 'uac:role:bindAction', 'ENABLE', '', 1111, '超级管理员', 1, '2018-03-04 22:42:30', '超级管理员', 1, '2018-03-04 22:42:30', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (310165760708191232, 0, '/role/deleteRoleById/*', '删除角色', 'uac:role:delete', 'ENABLE', '', 1111, '超级管理员', 1, '2018-03-04 22:44:00', '超级管理员', 1, '2018-03-04 22:45:33', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (310166199331726336, 0, '/role/batchDeleteByIdList', '批量删除角色信息', 'uac:role:batchDelete', 'ENABLE', '', 1111, '超级管理员', 1, '2018-03-04 22:44:52', '超级管理员', 1, '2018-03-04 22:44:52', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (310169052272141312, 0, '/user/bindRole', '用户绑定角色', 'uac:user:bindRole', 'ENABLE', '', 1112, '超级管理员', 1, '2018-03-04 22:50:32', '超级管理员', 1, '2018-03-04 22:50:32', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (310169425665860608, 0, '/user/resetLoginPwd', '重置密码', 'uac:role:resetLoginPwd', 'ENABLE', '', 1112, '超级管理员', 1, '2018-03-04 22:51:17', '超级管理员', 1, '2018-03-04 22:51:17', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (310170375616996352, 0, '/user/modifyUserStatusById', '修改用户状态', 'uac:user:modifyUserStatusById', 'ENABLE', '', 1112, '超级管理员', 1, '2018-03-04 22:53:10', '超级管理员', 1, '2018-03-04 22:53:10', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (310170756283638784, 0, '/menu/save', '编辑菜单', 'uac:menu:save', 'ENABLE', '', 1113, '超级管理员', 1, '2018-03-04 22:53:55', '超级管理员', 1, '2018-03-04 22:53:55', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (310171036865799168, 0, '/menu/deleteById/*', '删除菜单', 'uac:menu:deleteById', 'ENABLE', '', 1113, '超级管理员', 1, '2018-03-04 22:54:29', '超级管理员', 1, '2018-03-04 22:54:29', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (310171256882209792, 0, '/menu/modifyStatus', '修改菜单状态', 'uac:menu:modifyStatus', 'ENABLE', '', 1113, '超级管理员', 1, '2018-03-04 22:54:55', '超级管理员', 1, '2018-03-04 22:54:55', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (310173131350221824, 0, '/group/save', '编辑组织', 'uac:group:save', 'ENABLE', '', 1115, '超级管理员', 1, '2018-03-04 22:58:39', '超级管理员', 1, '2018-03-04 22:58:39', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (310173627720934400, 0, '/group/deleteById/*', '删除组织', 'uac:group:deleteById', 'ENABLE', '', 1115, '超级管理员', 1, '2018-03-04 22:59:38', '超级管理员', 1, '2018-03-04 22:59:38', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (310173991090267136, 0, '/group/modifyStatus', '修改组织状态', 'uac:group:modifyStatus', 'ENABLE', '', 1115, '超级管理员', 1, '2018-03-04 23:00:21', '超级管理员', 1, '2018-03-04 23:00:21', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (310174242538791936, 0, '/group/bindUser', '组织绑定用户', 'uac:group:bindUser', 'ENABLE', '', 1115, '超级管理员', 1, '2018-03-04 23:00:51', '超级管理员', 1, '2018-03-04 23:00:51', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (310175462569550848, 0, '/dict/modifyStatus', '修改数据字典状态', 'mdc:dict:modifyStatus', 'ENABLE', '', 399623736623501312, '超级管理员', 1, '2018-03-04 23:03:17', '超级管理员', 1, '2018-03-04 23:03:17', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (310175718698918912, 0, '/dict/save', '编辑数据字典', 'mdc:dict:save', 'ENABLE', '', 399623736623501312, '超级管理员', 1, '2018-03-04 23:03:47', '超级管理员', 1, '2018-03-04 23:03:47', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (310176044730557440, 0, '/dict/deleteById/*', '删除数据字典', 'mdc:dict:deleteById', 'ENABLE', '', 399623736623501312, '超级管理员', 1, '2018-03-04 23:04:26', '超级管理员', 1, '2018-03-04 23:04:26', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (314332667841618944, 0, '/omc/product/save', '编辑商品', 'omc:product:save', 'ENABLE', '', 386619314180067328, '超级管理员', 1, '2018-03-10 16:42:54', '超级管理员', 1, '2018-03-10 16:42:54', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (314333003402716160, 0, '/omc/product/deleteProductById/*', '删除商品', 'omc:product:delete', 'ENABLE', '', 386619314180067328, '超级管理员', 1, '2018-03-10 16:43:34', '超级管理员', 1, '2018-03-10 16:43:34', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (314334349447144448, 0, '/omc/category/modifyStatus', '修改商品分类状态', 'omc:category:modifyStatus', 'ENABLE', '', 310861539236127744, '超级管理员', 1, '2018-03-10 16:46:14', '超级管理员', 1, '2018-03-10 16:48:02', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (314334713135244288, 0, '/omc/category/deleteById/*', '删除商品分类', 'omc:category:deleteById', 'ENABLE', '', 310861539236127744, '超级管理员', 1, '2018-03-10 16:46:58', '超级管理员', 1, '2018-03-10 16:47:51', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (314335013246084096, 0, '/omc/category/save', '编辑商品分类', 'omc:category:save', 'ENABLE', '', 310861539236127744, '超级管理员', 1, '2018-03-10 16:47:34', '超级管理员', 1, '2018-03-10 16:47:34', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (387558460746764288, 0, '/action/queryListWithPage', '查询权限列表', 'uac:action:list', 'ENABLE', '查询权限列表', 1114, 'admin', 1, '2017-12-05 22:45:26', 'admin', 1, '2017-12-05 22:45:26', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (387560278130298880, 0, '/action/save', '保存权限', 'uac:action:add', 'ENABLE', '新增或者修改权限', 1114, 'admin', 1, '2017-12-05 22:45:26', 'admin', 1, '2017-12-05 22:45:26', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (387560564760645632, 0, '/action/deleteActionById/*', '删除权限', 'uac:action:delete', 'ENABLE', '删除权限', 1114, 'admin', 1, '2017-12-05 22:45:26', 'admin', 1, '2017-12-05 22:45:26', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (387561185391808512, 0, '/action/modifyStatus', '修改状态', 'uac:action:status', 'ENABLE', '启用/禁用权限', 1114, 'admin', 1, '2017-12-05 22:45:26', 'admin', 1, '2017-12-05 22:45:26', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (387561493782204416, 0, '/action/batchDeleteByIdList', '批量删除权限', 'uac:action:batch', 'ENABLE', NULL, 1114, 'admin', 1, '2017-12-05 22:45:26', 'admin', 1, '2017-12-05 22:45:26', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (387606417693085696, 0, '/action/checkActionCode', '检测权限编码是否已存在', 'uac:action:checkActionCode', 'ENABLE', '检测权限编码是否已存在', 1114, 'admin', 1, '2017-12-05 22:45:26', 'admin', 1, '2017-12-05 22:45:26', @APP_ID);
INSERT INTO `pc_uac_action` VALUES (387606786523402240, 0, '/action/checkUrl', '检测权限地址唯一性', 'uac:action:checkUrl', 'ENABLE', '检测权限URL唯一性', 1114, 'admin', 1, '2017-12-05 22:45:26', 'admin', 1, '2017-12-05 22:45:26', @APP_ID);

-- ----------------------------
-- Records of pc_uac_application
-- ----------------------------
INSERT INTO `pc_uac_application` VALUES (1, 1, 'admin', 'admin', 'ENABLE', NULL, 'admin', 1, '2017-12-05 22:45:26', 'admin', 1, '2017-12-05 22:45:26', @APP_ID);

SET FOREIGN_KEY_CHECKS = 1;
