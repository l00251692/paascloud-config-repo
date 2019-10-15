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

 Date: 12/10/2019 10:28:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;
SELECT @APP_ID:=param_value from sys_config where param_name = 'APP_ID';

-- ----------------------------
-- Table structure for pc_uac_action
-- ----------------------------
DROP TABLE IF EXISTS `pc_uac_action`;
CREATE TABLE `pc_uac_action`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `version` int(11) NULL DEFAULT 0 COMMENT '版本号',
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '资源路径',
  `action_name` varchar(90) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '权限名称',
  `action_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '权限',
  `status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  `remark` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  `creator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建人',
  `creator_id` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `created_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_operator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最近操作人',
  `last_operator_id` bigint(20) NULL DEFAULT NULL COMMENT '最后操作人ID',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `app_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'appId',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `system_id`(`action_code`) USING BTREE,
  UNIQUE INDEX `system_id_2`(`action_name`) USING BTREE,
  INDEX `tbl_pms_action_ibfk_2`(`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 387606786523402241 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '权限表' ROW_FORMAT = Compact;

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

SET FOREIGN_KEY_CHECKS = 1;
