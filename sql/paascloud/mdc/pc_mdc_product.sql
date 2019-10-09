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

 Date: 29/07/2019 00:07:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for pc_mdc_product
-- ----------------------------
DROP TABLE IF EXISTS `pc_mdc_product`;
CREATE TABLE `pc_mdc_product`  (
  `id` bigint(32) NOT NULL COMMENT 'ID',
  `version` int(11) NOT NULL DEFAULT 0 COMMENT '版本号',
  `product_sn` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品货号',
  `category_id` bigint(32) NOT NULL COMMENT '分类id',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品名称',
  `subtitle` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品副标题',
  `main_image` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品主图,url相对地址',
  `sub_images` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片地址,json格式,扩展用',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '商品详情',
  `price` decimal(20, 2) NOT NULL COMMENT '价格,单位-元保留两位小数',
  `stock` int(11) NOT NULL COMMENT '库存数量',
  `status` int(6) NULL DEFAULT 1 COMMENT '商品状态.1-在售 2-下架 3-删除',
  `creator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `creator_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `created_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_operator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最近操作人',
  `last_operator_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最后操作人ID',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `original_price` decimal(20, 2) NULL DEFAULT NULL COMMENT '市场价',
  `unit` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '计量单位',
  `weight` decimal(20, 2) NULL DEFAULT NULL COMMENT '商品重量',
  `sort` int(10) NULL DEFAULT NULL COMMENT '排序',
  `publish_status` tinyint(6) NULL DEFAULT 0 COMMENT '上架.0-否 1-是',
  `new_status` tinyint(6) NULL DEFAULT 0 COMMENT '新品。0-否  1-是',
  `recommend_status` tinyint(6) NULL DEFAULT 0 COMMENT '推荐。0-否 1-是',
  `detail_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '详情页标题',
  `detail_desc` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '详细页描述',
  `service_guarantee` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '服务保证。1：无忧退货；2：快速退款；3：免费包邮',
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '商品备注',
  `preview_status` tinyint(6) NULL DEFAULT 0 COMMENT '预告商品.0-否 1-是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pc_mdc_product
-- ----------------------------
INSERT INTO `pc_mdc_product` VALUES (26, 0, '26', 100002, 'Apple iPhone 7 Plus (A1661) 128G 玫瑰金色 移动联通电信4G手机', 'iPhone 7，现更以红色呈现。', '648728075877491712', '314168622983421952,314168653241131008,314168677257715712,314168716944220160', '<p><img alt=\"10000.jpg\" src=\"http://img.happymmall.com/00bce8d4-e9af-4c8d-b205-e6c75c7e252b.jpg\" width=\"790\" height=\"553\"><br></p><p><img alt=\"20000.jpg\" src=\"http://img.happymmall.com/4a70b4b4-01ee-46af-9468-31e67d0995b8.jpg\" width=\"790\" height=\"525\"><br></p><p><img alt=\"30000.jpg\" src=\"http://img.happymmall.com/0570e033-12d7-49b2-88f3-7a5d84157223.jpg\" width=\"790\" height=\"365\"><br></p><p><img alt=\"40000.jpg\" src=\"http://img.happymmall.com/50515c02-3255-44b9-a829-9e141a28c08a.jpg\" width=\"790\" height=\"525\"><br></p><p><img alt=\"50000.jpg\" src=\"http://img.happymmall.com/c138fc56-5843-4287-a029-91cf3732d034.jpg\" width=\"790\" height=\"525\"><br></p><p><img alt=\"60000.jpg\" src=\"http://img.happymmall.com/c92d1f8a-9827-453f-9d37-b10a3287e894.jpg\" width=\"790\" height=\"525\"><br></p><p><br></p><p><img alt=\"TB24p51hgFkpuFjSspnXXb4qFXa-1776456424.jpg\" src=\"http://img.happymmall.com/bb1511fc-3483-471f-80e5-c7c81fa5e1dd.jpg\" width=\"790\" height=\"375\"><br></p><p><br></p><p><img alt=\"shouhou.jpg\" src=\"http://img.happymmall.com/698e6fbe-97ea-478b-8170-008ad24030f7.jpg\" width=\"750\" height=\"150\"><br></p><p><img alt=\"999.jpg\" src=\"http://img.happymmall.com/ee276fe6-5d79-45aa-8393-ba1d210f9c89.jpg\" width=\"790\" height=\"351\"><br></p>', 6999.00, 9987, 1, '超级管理员', '1', '2017-07-12 14:01:30', '超级管理员', '1', '2018-03-10 11:17:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pc_mdc_product` VALUES (27, 0, '27', 100006, 'Midea/美的 BCD-535WKZM(E)冰箱双开门对开门风冷无霜智能电家用', '送品牌烤箱，五一大促', '314167466638974976', '314167466638974976,314167478794067968,314167500805775360', '<p><img alt=\"miaoshu.jpg\" src=\"http://img.happymmall.com/9c5c74e6-6615-4aa0-b1fc-c17a1eff6027.jpg\" width=\"790\" height=\"444\"><br></p><p><img alt=\"miaoshu2.jpg\" src=\"http://img.happymmall.com/31dc1a94-f354-48b8-a170-1a1a6de8751b.jpg\" width=\"790\" height=\"1441\"><img alt=\"miaoshu3.jpg\" src=\"http://img.happymmall.com/7862594b-3063-4b52-b7d4-cea980c604e0.jpg\" width=\"790\" height=\"1442\"><img alt=\"miaoshu4.jpg\" src=\"http://img.happymmall.com/9a650563-dc85-44d6-b174-d6960cfb1d6a.jpg\" width=\"790\" height=\"1441\"><br></p>', 3299.00, 8848, 1, '超级管理员', '1', '2017-07-12 14:01:30', '超级管理员', '1', '2018-03-10 11:14:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pc_mdc_product` VALUES (28, 0, '28', 100012, '4+64G送手环/Huawei/华为 nova 手机P9/P10plus青春', 'NOVA青春版1999元', '314169253622194176', '314169253622194176,314169275776507904,314169295019974656', '<p><img alt=\"11TB2fKK3cl0kpuFjSsziXXa.oVXa_!!1777180618.jpg\" src=\"http://img.happymmall.com/5c2d1c6d-9e09-48ce-bbdb-e833b42ff664.jpg\" width=\"790\" height=\"966\"><img alt=\"22TB2YP3AkEhnpuFjSZFpXXcpuXXa_!!1777180618.jpg\" src=\"http://img.happymmall.com/9a10b877-818f-4a27-b6f7-62887f3fb39d.jpg\" width=\"790\" height=\"1344\"><img alt=\"33TB2Yyshk.hnpuFjSZFpXXcpuXXa_!!1777180618.jpg\" src=\"http://img.happymmall.com/7d7fbd69-a3cb-4efe-8765-423bf8276e3e.jpg\" width=\"790\" height=\"700\"><img alt=\"TB2diyziB8kpuFjSspeXXc7IpXa_!!1777180618.jpg\" src=\"http://img.happymmall.com/1d7160d2-9dba-422f-b2a0-e92847ba6ce9.jpg\" width=\"790\" height=\"393\"><br></p>', 1999.00, 9981, 1, '超级管理员', '1', '2017-07-12 14:01:30', '超级管理员', '1', '2018-03-10 11:18:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pc_mdc_product` VALUES (29, 0, '29', 100008, 'Haier/海尔HJ100-1HU1 10公斤滚筒洗衣机全自动带烘干家用大容量 洗烘一体', '门店机型 德邦送货', '314169831807000576', '314169831807000576,314169860747698176,314169878858702848', '<p><img alt=\"1TB2WLZrcIaK.eBjSspjXXXL.XXa_!!2114960396.jpg\" src=\"http://img.happymmall.com/ffcce953-81bd-463c-acd1-d690b263d6df.jpg\" width=\"790\" height=\"920\"><img alt=\"2TB2zhOFbZCO.eBjSZFzXXaRiVXa_!!2114960396.jpg\" src=\"http://img.happymmall.com/58a7bd25-c3e7-4248-9dba-158ef2a90e70.jpg\" width=\"790\" height=\"1052\"><img alt=\"3TB27mCtb7WM.eBjSZFhXXbdWpXa_!!2114960396.jpg\" src=\"http://img.happymmall.com/2edbe9b3-28be-4a8b-a9c3-82e40703f22f.jpg\" width=\"790\" height=\"820\"><br></p>', 4299.00, 9993, 1, '超级管理员', '1', '2017-07-12 14:01:30', '超级管理员', '1', '2018-03-10 11:19:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pc_mdc_product` VALUES (312415946738247680, 0, '312415946721470464', 100006, '1', '2', '314170064850919424', '314170064850919424,315163180122775552', '<p><br></p>', 3.00, 3, 1, '超级管理员', '1', '2018-03-08 01:14:43', '超级管理员', '1', '2019-07-16 23:18:22', NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pc_mdc_product` VALUES (312426496268445696, 0, '312426496260057088', 100006, '这就是一个商品', '商品的描述', '314169969338228736', '314169969338228736,314169988875296768', '<p><img src=\"http://img.paascloud.net/paascloud/picture/wangEditor/312426781187514368.png\" style=\"max-width:100%;\"><br></p>', 1.00, 1, 2, '超级管理员', '1', '2018-03-08 01:35:41', '超级管理员', '1', '2019-07-16 23:18:22', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pc_mdc_product` VALUES (673281828794164224, 0, '555', 100028, '自制饮料', 'div饮料', '314169969338228736', '314169969338228736', '薛雨阳的自制饮料', 44.00, 999, 0, '超级管理员', '1', '2019-07-18 22:48:55', '超级管理员', '1', '2019-07-18 22:58:39', 55.00, '瓶', 500.00, 1, 0, 1, 1, '详细页标', '详细页描', '1,3', '商品备注', 1);

SET FOREIGN_KEY_CHECKS = 1;
