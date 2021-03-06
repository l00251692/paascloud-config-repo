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
-- Records of pc_opt_attachment
-- ----------------------------
INSERT INTO `pc_opt_attachment` VALUES (314167466638974976, '27', 'paascloud-oss-bucket', 'paascloud-oss-bucket', '314167458443304960.jpg', 'paascloud/picture/product/', 'picture', 'jpg', '', 0, '', NULL, '2018-03-10 11:14:37', '超级管理员', 1, '2018-03-10 11:14:49', @APP_ID);
INSERT INTO `pc_opt_attachment` VALUES (314167478794067968, '27', 'paascloud-oss-bucket', 'paascloud-oss-bucket', '314167475623174144.jpg', 'paascloud/picture/product/', 'picture', 'jpg', '', 0, '', NULL, '2018-03-10 11:14:39', '超级管理员', 1, '2018-03-10 11:14:49', @APP_ID);
INSERT INTO `pc_opt_attachment` VALUES (314167500805775360, '27', 'paascloud-oss-bucket', 'paascloud-oss-bucket', '314167496099766272.jpg', 'paascloud/picture/product/', 'picture', 'jpg', '', 0, '', NULL, '2018-03-10 11:14:41', '超级管理员', 1, '2018-03-10 11:14:49', @APP_ID);
INSERT INTO `pc_opt_attachment` VALUES (314168622983421952, '26', 'paascloud-oss-bucket', 'paascloud-oss-bucket', '314168619401486336.jpg', 'paascloud/picture/product/', 'picture', 'jpg', '', 0, '', NULL, '2018-03-10 11:16:55', '超级管理员', 1, '2018-03-10 11:17:16', @APP_ID);
INSERT INTO `pc_opt_attachment` VALUES (314168653241131008, '26', 'paascloud-oss-bucket', 'paascloud-oss-bucket', '314168650615496704.jpg', 'paascloud/picture/product/', 'picture', 'jpg', '', 0, '', NULL, '2018-03-10 11:16:59', '超级管理员', 1, '2018-03-10 11:17:16', @APP_ID);
INSERT INTO `pc_opt_attachment` VALUES (314168677257715712, '26', 'paascloud-oss-bucket', 'paascloud-oss-bucket', '314168675412221952.jpg', 'paascloud/picture/product/', 'picture', 'jpg', '', 0, '', NULL, '2018-03-10 11:17:02', '超级管理员', 1, '2018-03-10 11:17:16', @APP_ID);
INSERT INTO `pc_opt_attachment` VALUES (314168716944220160, '26', 'paascloud-oss-bucket', 'paascloud-oss-bucket', '314168713681051648.jpg', 'paascloud/picture/product/', 'picture', 'jpg', '', 0, '', NULL, '2018-03-10 11:17:06', '超级管理员', 1, '2018-03-10 11:17:16', @APP_ID);
INSERT INTO `pc_opt_attachment` VALUES (314169253622194176, '28', 'paascloud-oss-bucket', 'paascloud-oss-bucket', '314169250627461120.jpg', 'paascloud/picture/product/', 'picture', 'jpg', '', 0, '', NULL, '2018-03-10 11:18:10', '超级管理员', 1, '2018-03-10 11:18:20', @APP_ID);
INSERT INTO `pc_opt_attachment` VALUES (314169275776507904, '28', 'paascloud-oss-bucket', 'paascloud-oss-bucket', '314169272446230528.jpg', 'paascloud/picture/product/', 'picture', 'jpg', '', 0, '', NULL, '2018-03-10 11:18:13', '超级管理员', 1, '2018-03-10 11:18:20', @APP_ID);
INSERT INTO `pc_opt_attachment` VALUES (314169295019974656, '28', 'paascloud-oss-bucket', 'paascloud-oss-bucket', '314169291622588416.jpg', 'paascloud/picture/product/', 'picture', 'jpg', '', 0, '', NULL, '2018-03-10 11:18:15', '超级管理员', 1, '2018-03-10 11:18:20', @APP_ID);
INSERT INTO `pc_opt_attachment` VALUES (314169831807000576, '29', 'paascloud-oss-bucket', 'paascloud-oss-bucket', '314169828216676352.jpg', 'paascloud/picture/product/', 'picture', 'jpg', '', 0, '', NULL, '2018-03-10 11:19:19', '超级管理员', 1, '2018-03-10 11:19:31', @APP_ID);
INSERT INTO `pc_opt_attachment` VALUES (314169860747698176, '29', 'paascloud-oss-bucket', 'paascloud-oss-bucket', '314169850421321728.jpg', 'paascloud/picture/product/', 'picture', 'jpg', '', 0, '', NULL, '2018-03-10 11:19:23', '超级管理员', 1, '2018-03-10 11:19:31', @APP_ID);
INSERT INTO `pc_opt_attachment` VALUES (314169878858702848, '29', 'paascloud-oss-bucket', 'paascloud-oss-bucket', '314169873087340544.jpg', 'paascloud/picture/product/', 'picture', 'jpg', '', 0, '', NULL, '2018-03-10 11:19:25', '超级管理员', 1, '2018-03-10 11:19:31', @APP_ID);
INSERT INTO `pc_opt_attachment` VALUES (314169969338228736, '312426496260057088', 'paascloud-oss-bucket', 'paascloud-oss-bucket', '314169966418993152.jpg', 'paascloud/picture/product/', 'picture', 'jpg', '', 0, '', NULL, '2018-03-10 11:19:36', '超级管理员', 1, '2018-03-10 11:19:43', @APP_ID);
INSERT INTO `pc_opt_attachment` VALUES (314169988875296768, '312426496260057088', 'paascloud-oss-bucket', 'paascloud-oss-bucket', '314169985905729536.jpg', 'paascloud/picture/product/', 'picture', 'jpg', '', 0, '', NULL, '2018-03-10 11:19:38', '超级管理员', 1, '2018-03-10 11:19:43', @APP_ID);
INSERT INTO `pc_opt_attachment` VALUES (314170064850919424, '312415946721470464', 'paascloud-oss-bucket', 'paascloud-oss-bucket', '314170052939096064.jpg', 'paascloud/picture/product/', 'picture', 'jpg', '', 0, '', NULL, '2018-03-10 11:19:47', '超级管理员', 1, '2018-03-11 20:13:06', @APP_ID);
INSERT INTO `pc_opt_attachment` VALUES (315163180122775552, '312415946721470464', 'paascloud-oss-bucket', 'paascloud-oss-bucket', '315163179812397056.jpg', 'paascloud/picture/product/', 'picture', 'jpg', '', 0, '', NULL, '2018-03-11 20:12:58', '超级管理员', 1, '2018-03-11 20:13:06', @APP_ID);
INSERT INTO `pc_opt_attachment` VALUES (638273947707668480, '', 'open-img-bucket', 'open-img-bucket', '638272220879157248.jpg', 'paascloud/file/', 'picture', 'jpg', '', 0, '', NULL, '2019-05-31 15:36:31', '超级管理员', 1, '2019-05-31 15:36:24', @APP_ID);
INSERT INTO `pc_opt_attachment` VALUES (638276644544477184, '', 'open-img-bucket', 'open-img-bucket', '638276639888799744.jpg', 'paascloud/file/', 'picture', 'jpg', '', 0, '', NULL, '2019-05-31 15:41:45', '超级管理员', 1, '2019-05-31 15:41:45', @APP_ID);
INSERT INTO `pc_opt_attachment` VALUES (638289818182252544, '', 'open-img-bucket', 'open-img-bucket', '638289803762235392.jpg', 'paascloud/file/', 'picture', 'jpg', '', 0, '', NULL, '2019-05-31 16:07:56', '超级管理员', 1, '2019-05-31 16:07:56', @APP_ID);
INSERT INTO `pc_opt_attachment` VALUES (638290341941770240, '', 'open-img-bucket', 'open-img-bucket', '638290340758976512.jpg', 'paascloud/file/', 'picture', 'jpg', '', 0, '', NULL, '2019-05-31 16:08:58', '超级管理员', 1, '2019-05-31 16:08:58', @APP_ID);
INSERT INTO `pc_opt_attachment` VALUES (638291286230595584, '', 'open-img-bucket', 'open-img-bucket', '638291282287949824.jpg', 'paascloud/file/', 'picture', 'jpg', '', 0, '', NULL, '2019-05-31 16:10:50', '超级管理员', 1, '2019-05-31 16:10:51', @APP_ID);
INSERT INTO `pc_opt_attachment` VALUES (638292283124381696, '', 'open-img-bucket', 'open-img-bucket', '638292279265622016.jpg', 'paascloud/file/', 'picture', 'jpg', '', 0, '', NULL, '2019-05-31 16:12:49', '超级管理员', 1, '2019-05-31 16:12:50', @APP_ID);
INSERT INTO `pc_opt_attachment` VALUES (638302719425148928, '', 'open-img-bucket', 'open-img-bucket', '638302714735917056.jpg', 'paascloud/file/', 'picture', 'jpg', '', 0, '', NULL, '2019-05-31 16:33:33', '超级管理员', 1, '2019-05-31 16:33:34', @APP_ID);
INSERT INTO `pc_opt_attachment` VALUES (638303131448408064, '', 'open-img-bucket', 'open-img-bucket', '638303130433386496.jpg', 'paascloud/file/', 'picture', 'jpg', '', 0, '', NULL, '2019-05-31 16:34:22', '超级管理员', 1, '2019-05-31 16:34:23', @APP_ID);
INSERT INTO `pc_opt_attachment` VALUES (638304265001007104, '', 'open-img-bucket', 'open-img-bucket', '638304260857034752.jpg', 'paascloud/file/', 'picture', 'jpg', '', 0, '', NULL, '2019-05-31 16:36:37', '超级管理员', 1, '2019-05-31 16:36:38', @APP_ID);
INSERT INTO `pc_opt_attachment` VALUES (648682508656845824, '', 'open-img-bucket', 'open-img-bucket', '648682497005069312.jpg', 'paascloud/file/', 'picture', 'jpg', '', 0, '', NULL, '2019-06-15 00:16:21', '超级管理员', 1, '2019-06-15 00:16:21', @APP_ID);
INSERT INTO `pc_opt_attachment` VALUES (648682700823077888, '', 'open-img-bucket', 'open-img-bucket', '648682699766113280.jpg', 'paascloud/file/', 'picture', 'jpg', '', 0, '', NULL, '2019-06-15 00:16:43', '超级管理员', 1, '2019-06-15 00:16:44', @APP_ID);
INSERT INTO `pc_opt_attachment` VALUES (648728075877491712, '', 'open-img-bucket', 'open-img-bucket', '648728073100862464.jpg', 'paascloud/file/', 'picture', 'jpg', '', 0, '', NULL, '2019-06-15 01:46:53', '超级管理员', 1, '2019-06-15 01:46:53', @APP_ID);
INSERT INTO `pc_opt_attachment` VALUES (648729033705530368, '', 'open-img-bucket', 'open-img-bucket', '648729031860036608.jpg', 'paascloud/file/', 'picture', 'jpg', '', 0, '', NULL, '2019-06-15 01:48:47', '超级管理员', 1, '2019-06-15 01:48:47', @APP_ID);
INSERT INTO `pc_opt_attachment` VALUES (735227661613319168, '', 'open-img-bucket-2', 'open-img-bucket-2', '735227650246755328.jpg', 'paascloud/file/', 'picture', 'jpg', '', 0, '', NULL, '2019-10-12 10:06:07', 'jhcy55', 734627865210960897, '2019-10-12 10:06:07', @APP_ID);
INSERT INTO `pc_opt_attachment` VALUES (735234874968949760, '', 'open-img-bucket-2', 'open-img-bucket-2', '735234855951975424.jpg', 'paascloud/file/', 'picture', 'jpg', '', 0, '', NULL, '2019-10-12 10:20:27', 'jhcy55', 734627865210960897, '2019-10-12 10:20:27', @APP_ID);

SET FOREIGN_KEY_CHECKS = 1;
