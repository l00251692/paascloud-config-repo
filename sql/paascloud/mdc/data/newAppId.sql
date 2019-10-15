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
-- Records of pc_mdc_dict
-- ----------------------------
INSERT INTO `pc_mdc_dict` VALUES (1, 0, 0, 'uac', '', '用户中心', 'uac', '用户中心', 0, 0, 10, '', '超级管理员', '1', '2018-01-21 18:24:36', '超级管理员', '1', '2018-01-21 18:24:36', @APP_ID);
INSERT INTO `pc_mdc_dict` VALUES (2, 0, 0, 'mdc', '', '数据中心', 'mdc', '数据中心', 0, 0, 10, '', '超级管理员', '1', '2018-01-21 18:24:36', '超级管理员', '1', '2018-01-21 18:24:36', @APP_ID);
INSERT INTO `pc_mdc_dict` VALUES (11, 0, 0, 'USER_STATUS', '1', '用户状态', 'user:status', '用户状态', 1, 0, 10, '1', '', '', '2018-01-21 18:31:54', '超级管理员', '1', '2018-01-21 23:52:33', @APP_ID);
INSERT INTO `pc_mdc_dict` VALUES (111, 5, 0, '10', '', '可用', 'DISABLED', '可用', 11, 0, 20, '', '', '', '2018-01-21 18:32:20', '超级管理员', '1', '2018-02-26 21:45:47', @APP_ID);
INSERT INTO `pc_mdc_dict` VALUES (112, 5, 0, '20', '', '禁用', 'ENABLE', '禁用', 11, 0, 20, '', '', '', '2018-01-21 18:32:30', '超级管理员', '1', '2018-02-26 21:45:51', @APP_ID);

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

-- ----------------------------
-- Records of pc_mdc_product
-- ----------------------------
INSERT INTO `pc_mdc_product` VALUES (26, 0, '26', 100002, 'Apple iPhone 7 Plus (A1661) 128G 玫瑰金色 移动联通电信4G手机', 'iPhone 7，现更以红色呈现。', '648728075877491712', '314168622983421952,314168653241131008,314168677257715712,314168716944220160', '<p><img alt=\"10000.jpg\" src=\"http://img.happymmall.com/00bce8d4-e9af-4c8d-b205-e6c75c7e252b.jpg\" width=\"790\" height=\"553\"><br></p><p><img alt=\"20000.jpg\" src=\"http://img.happymmall.com/4a70b4b4-01ee-46af-9468-31e67d0995b8.jpg\" width=\"790\" height=\"525\"><br></p><p><img alt=\"30000.jpg\" src=\"http://img.happymmall.com/0570e033-12d7-49b2-88f3-7a5d84157223.jpg\" width=\"790\" height=\"365\"><br></p><p><img alt=\"40000.jpg\" src=\"http://img.happymmall.com/50515c02-3255-44b9-a829-9e141a28c08a.jpg\" width=\"790\" height=\"525\"><br></p><p><img alt=\"50000.jpg\" src=\"http://img.happymmall.com/c138fc56-5843-4287-a029-91cf3732d034.jpg\" width=\"790\" height=\"525\"><br></p><p><img alt=\"60000.jpg\" src=\"http://img.happymmall.com/c92d1f8a-9827-453f-9d37-b10a3287e894.jpg\" width=\"790\" height=\"525\"><br></p><p><br></p><p><img alt=\"TB24p51hgFkpuFjSspnXXb4qFXa-1776456424.jpg\" src=\"http://img.happymmall.com/bb1511fc-3483-471f-80e5-c7c81fa5e1dd.jpg\" width=\"790\" height=\"375\"><br></p><p><br></p><p><img alt=\"shouhou.jpg\" src=\"http://img.happymmall.com/698e6fbe-97ea-478b-8170-008ad24030f7.jpg\" width=\"750\" height=\"150\"><br></p><p><img alt=\"999.jpg\" src=\"http://img.happymmall.com/ee276fe6-5d79-45aa-8393-ba1d210f9c89.jpg\" width=\"790\" height=\"351\"><br></p>', 6999.00, 9987, 1, '超级管理员', '1', '2017-07-12 14:01:30', '超级管理员', '1', '2018-03-10 11:17:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, @APP_ID);
INSERT INTO `pc_mdc_product` VALUES (27, 0, '27', 100006, 'Midea/美的 BCD-535WKZM(E)冰箱双开门对开门风冷无霜智能电家用', '送品牌烤箱，五一大促', '314167466638974976', '314167466638974976,314167478794067968,314167500805775360', '<p><img alt=\"miaoshu.jpg\" src=\"http://img.happymmall.com/9c5c74e6-6615-4aa0-b1fc-c17a1eff6027.jpg\" width=\"790\" height=\"444\"><br></p><p><img alt=\"miaoshu2.jpg\" src=\"http://img.happymmall.com/31dc1a94-f354-48b8-a170-1a1a6de8751b.jpg\" width=\"790\" height=\"1441\"><img alt=\"miaoshu3.jpg\" src=\"http://img.happymmall.com/7862594b-3063-4b52-b7d4-cea980c604e0.jpg\" width=\"790\" height=\"1442\"><img alt=\"miaoshu4.jpg\" src=\"http://img.happymmall.com/9a650563-dc85-44d6-b174-d6960cfb1d6a.jpg\" width=\"790\" height=\"1441\"><br></p>', 3299.00, 8848, 1, '超级管理员', '1', '2017-07-12 14:01:30', '超级管理员', '1', '2018-03-10 11:14:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, @APP_ID);
INSERT INTO `pc_mdc_product` VALUES (28, 0, '28', 100012, '4+64G送手环/Huawei/华为 nova 手机P9/P10plus青春', 'NOVA青春版1999元', '314169253622194176', '314169253622194176,314169275776507904,314169295019974656', '<p><img alt=\"11TB2fKK3cl0kpuFjSsziXXa.oVXa_!!1777180618.jpg\" src=\"http://img.happymmall.com/5c2d1c6d-9e09-48ce-bbdb-e833b42ff664.jpg\" width=\"790\" height=\"966\"><img alt=\"22TB2YP3AkEhnpuFjSZFpXXcpuXXa_!!1777180618.jpg\" src=\"http://img.happymmall.com/9a10b877-818f-4a27-b6f7-62887f3fb39d.jpg\" width=\"790\" height=\"1344\"><img alt=\"33TB2Yyshk.hnpuFjSZFpXXcpuXXa_!!1777180618.jpg\" src=\"http://img.happymmall.com/7d7fbd69-a3cb-4efe-8765-423bf8276e3e.jpg\" width=\"790\" height=\"700\"><img alt=\"TB2diyziB8kpuFjSspeXXc7IpXa_!!1777180618.jpg\" src=\"http://img.happymmall.com/1d7160d2-9dba-422f-b2a0-e92847ba6ce9.jpg\" width=\"790\" height=\"393\"><br></p>', 1999.00, 9981, 1, '超级管理员', '1', '2017-07-12 14:01:30', '超级管理员', '1', '2018-03-10 11:18:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, @APP_ID);
INSERT INTO `pc_mdc_product` VALUES (29, 0, '29', 100008, 'Haier/海尔HJ100-1HU1 10公斤滚筒洗衣机全自动带烘干家用大容量 洗烘一体', '门店机型 德邦送货', '314169831807000576', '314169831807000576,314169860747698176,314169878858702848', '<p><img alt=\"1TB2WLZrcIaK.eBjSspjXXXL.XXa_!!2114960396.jpg\" src=\"http://img.happymmall.com/ffcce953-81bd-463c-acd1-d690b263d6df.jpg\" width=\"790\" height=\"920\"><img alt=\"2TB2zhOFbZCO.eBjSZFzXXaRiVXa_!!2114960396.jpg\" src=\"http://img.happymmall.com/58a7bd25-c3e7-4248-9dba-158ef2a90e70.jpg\" width=\"790\" height=\"1052\"><img alt=\"3TB27mCtb7WM.eBjSZFhXXbdWpXa_!!2114960396.jpg\" src=\"http://img.happymmall.com/2edbe9b3-28be-4a8b-a9c3-82e40703f22f.jpg\" width=\"790\" height=\"820\"><br></p>', 4299.00, 9993, 1, '超级管理员', '1', '2017-07-12 14:01:30', '超级管理员', '1', '2018-03-10 11:19:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, @APP_ID);
INSERT INTO `pc_mdc_product` VALUES (312415946738247680, 0, '312415946721470464', 100006, '1', '2', '314170064850919424', '314170064850919424,315163180122775552', '<p><br></p>', 3.00, 3, 1, '超级管理员', '1', '2018-03-08 01:14:43', '超级管理员', '1', '2019-07-16 23:18:22', NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, @APP_ID);
INSERT INTO `pc_mdc_product` VALUES (312426496268445696, 0, '312426496260057088', 100006, '这就是一个商品', '商品的描述', '314169969338228736', '314169969338228736,314169988875296768', '<p><img src=\"http://img.paascloud.net/paascloud/picture/wangEditor/312426781187514368.png\" style=\"max-width:100%;\"><br></p>', 1.00, 1, 2, '超级管理员', '1', '2018-03-08 01:35:41', '超级管理员', '1', '2019-07-16 23:18:22', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, @APP_ID);
INSERT INTO `pc_mdc_product` VALUES (673281828794164224, 0, '555', 100028, '自制饮料', 'div饮料', '314169969338228736', '314169969338228736', '薛雨阳的自制饮料', 44.00, 999, 0, '超级管理员', '1', '2019-07-18 22:48:55', '超级管理员', '1', '2019-07-18 22:58:39', 55.00, '瓶', 500.00, 1, 0, 1, 1, '详细页标', '详细页描', '1,3', '商品备注', 1, @APP_ID);
INSERT INTO `pc_mdc_product` VALUES (734671341873055744, 0, '734671340379883520', 734670377367685120, 'adidas上衣-jhcy55', 'asdfasd', '314169969338228736', '314169969338228736', 'asdfdsf ', 0.00, 0, 0, 'jhcy55', '734627865210960897', '2019-10-11 15:40:49', 'jhcy55', '734627865210960897', '2019-10-11 15:40:49', 0.00, '', 0.00, 0, 1, 1, 1, '', '', '1,2,3', '', 1, 'exampleId5555');

SET FOREIGN_KEY_CHECKS = 1;
