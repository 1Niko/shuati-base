/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50621
 Source Host           : localhost:3306
 Source Schema         : tiku

 Target Server Type    : MySQL
 Target Server Version : 50621
 File Encoding         : 65001

 Date: 25/01/2021 11:00:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单/按钮ID',
  `parent_id` bigint(20) NULL DEFAULT NULL COMMENT '上级菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单/按钮名称',
  `url` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单URL',
  `perms` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '权限标识',
  `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `type` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类型 0菜单 1按钮',
  `order_num` bigint(20) NULL DEFAULT NULL COMMENT '排序',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `modified_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `available` int(11) NULL DEFAULT 1 COMMENT '0：不可用，1：可用',
  `open` int(1) NULL DEFAULT 1 COMMENT '0:不展开，1：展开',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 344 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, 0, '系统管理', '', NULL, 'el-icon-setting', '0', 1, '2020-03-07 17:41:30', '2020-08-19 17:57:20', 1, 0);
INSERT INTO `menu` VALUES (4, 1, '菜单权限', '/menus', NULL, 'el-icon-help', '0', 3, '2020-03-07 18:57:42', '2020-03-20 11:50:46', 1, 0);
INSERT INTO `menu` VALUES (5, 0, '日志管理', '/logs', NULL, 'el-icon-camera', '0', 6, '2020-03-07 18:58:18', '2020-05-07 19:35:19', 1, 0);
INSERT INTO `menu` VALUES (226, 1, '用户管理', '/users', 'users', 'el-icon-user', '0', 2, '2020-03-10 05:27:54', '2020-04-23 20:04:36', 1, 0);
INSERT INTO `menu` VALUES (229, 312, '物资管理', '', 'el-icon-date', 'el-icon-date', '0', 1, '2020-03-10 05:34:08', '2020-04-30 18:29:20', 1, 1);
INSERT INTO `menu` VALUES (230, 229, '物资入库', '/inStocks', 'el-icon-date', 'el-icon-date', '0', 1, '2020-03-10 05:34:28', '2020-08-19 18:40:25', 1, 0);
INSERT INTO `menu` VALUES (234, 226, '用户添加', '', 'user:add', 'el-icon-plus', '1', 1, '2020-03-10 05:50:44', '2020-03-10 07:51:56', 1, 0);
INSERT INTO `menu` VALUES (235, 1, '角色管理', '/roles', '', 'el-icon-postcard', '0', 3, '2020-03-10 05:51:28', '2020-05-16 16:37:58', 1, 0);
INSERT INTO `menu` VALUES (239, 226, '用户删除', '', 'user:delete', 'el-icon-picture', '1', 1, '2020-03-10 06:05:30', '2020-03-10 08:10:19', 1, 0);
INSERT INTO `menu` VALUES (240, 226, '用户编辑', '', 'user:edit', 'el-icon-video-camera-solid', '1', 1, '2020-03-10 06:06:30', '2020-03-10 07:52:28', 1, 0);
INSERT INTO `menu` VALUES (241, 235, '角色编辑', '', 'role:edit', 'el-icon-s-promotion', '1', 2, '2020-03-10 06:11:03', '2020-03-11 11:40:19', 1, 0);
INSERT INTO `menu` VALUES (242, 235, '角色删除', '', 'role:delete', 'el-icon-s-marketing', '1', 3, '2020-03-10 06:15:29', '2020-03-11 11:43:36', 1, 0);
INSERT INTO `menu` VALUES (247, 4, '添加菜单', '', 'menu:add', 'el-icon-s-opportunity', '1', 1, '2020-03-10 07:55:10', '2020-04-27 09:59:43', 1, 0);
INSERT INTO `menu` VALUES (249, 4, '修改菜单', '', 'menu:update', 'el-icon-share', '1', 2, '2020-03-10 07:56:55', '2020-03-15 13:29:29', 1, 0);
INSERT INTO `menu` VALUES (250, 4, '删除菜单', '', 'menu:delete', 'el-icon-folder-opened', '1', 3, '2020-03-10 07:57:38', '2020-03-15 13:29:41', 1, 0);
INSERT INTO `menu` VALUES (251, 235, '分配权限', '', 'role:authority', 'el-icon-document-add', '1', 1, '2020-03-10 08:13:22', '2020-03-11 11:39:30', 1, 0);
INSERT INTO `menu` VALUES (253, 1, '系统首页', '/welcome', 'welcome:view', 'el-icon-star-off', '0', 1, '2020-03-10 08:46:44', '2020-05-29 20:43:12', 1, 0);
INSERT INTO `menu` VALUES (254, 226, '分配角色', '', 'user:assign', 'el-icon-s-tools', '1', 3, '2020-03-11 01:32:29', '2020-04-27 10:58:30', 1, 0);
INSERT INTO `menu` VALUES (255, 235, '添加角色', '', 'role:add', 'el-icon-help', '1', 1, '2020-03-11 01:34:18', '2020-03-11 01:34:18', 1, 0);
INSERT INTO `menu` VALUES (256, 226, '禁用用户', '', 'user:status', 'el-icon-circle-close', '1', 1, '2020-03-11 06:50:04', '2020-03-14 05:05:49', 1, 0);
INSERT INTO `menu` VALUES (258, 226, '用户更新', '', 'user:update', 'el-icon-refresh', '1', 1, '2020-03-11 08:26:54', '2020-03-11 08:26:54', 1, 0);
INSERT INTO `menu` VALUES (259, 235, '角色更新', '', 'role:update', 'el-icon-refresh-left', '1', 1, '2020-03-11 11:45:20', '2020-03-11 11:45:20', 1, 0);
INSERT INTO `menu` VALUES (260, 235, '状态更新', '', 'role:status', 'el-icon-refresh', '1', 1, '2020-03-14 05:07:02', '2020-03-14 05:07:24', 1, 0);
INSERT INTO `menu` VALUES (261, 1, '部门管理', '/departments', '', 'el-icon-s-home', '0', 3, '2020-03-15 06:05:48', '2020-03-22 22:53:42', 1, 0);
INSERT INTO `menu` VALUES (262, 261, '添加部门', '', 'department:add', 'el-icon-plus', '1', 1, '2020-03-15 11:57:42', '2020-03-21 12:37:21', 1, 0);
INSERT INTO `menu` VALUES (263, 261, '编辑院系', '', 'department:edit', 'el-icon-edit', '1', 1, '2020-03-15 11:59:52', '2020-03-15 12:16:36', 1, 0);
INSERT INTO `menu` VALUES (264, 261, '更新院系', '', 'department:update', 'el-icon-refresh', '1', 1, '2020-03-15 12:02:34', '2020-03-15 12:16:32', 1, 0);
INSERT INTO `menu` VALUES (265, 261, '删除院系', NULL, 'department:delete', 'el-icon-delete', '1', 1, '2020-03-15 12:03:21', '2020-03-15 12:03:21', 1, 0);
INSERT INTO `menu` VALUES (267, 229, '物资资料', '/products', '', 'el-icon-goods', '0', 2, '2020-03-16 09:01:02', '2020-04-30 19:11:56', 1, 0);
INSERT INTO `menu` VALUES (268, 229, '物资类别', '/productCategorys', '', 'el-icon-star-off', '0', 2, '2020-03-16 09:01:48', '2020-03-22 22:45:40', 1, 0);
INSERT INTO `menu` VALUES (269, 311, '物资来源', '/suppliers', '', 'el-icon-coordinate', '0', 5, '2020-03-16 12:35:10', '2020-04-11 13:56:16', 1, 0);
INSERT INTO `menu` VALUES (270, 229, '物资发放', '/outStocks', '', 'el-icon-goods', '0', 5, '2020-03-16 13:55:49', '2020-05-10 14:46:53', 1, 1);
INSERT INTO `menu` VALUES (271, 5, '登入日志', '/loginLog', 'login:log', 'el-icon-date', '0', 1, '2020-03-20 10:31:12', '2020-04-04 20:01:02', 1, 0);
INSERT INTO `menu` VALUES (272, 303, '疫情辟谣', '/rumors', NULL, 'el-icon-help', '0', 5, '2020-03-20 19:29:40', '2020-05-01 12:41:01', 1, 0);
INSERT INTO `menu` VALUES (273, 303, '全国疫情', '/map', 'map:view', 'el-icon-s-opportunity', '0', 1, '2020-03-20 11:32:02', '2020-03-20 11:32:02', 1, 1);
INSERT INTO `menu` VALUES (274, 267, '添加物资', '', 'product:add', 'el-icon-s-opportunity', '1', 1, '2020-03-21 02:04:24', '2020-03-21 02:04:24', 1, 0);
INSERT INTO `menu` VALUES (276, 267, '上传图片', NULL, 'upload:image', 'el-icon-finished', '1', 2, '2020-03-21 02:05:21', '2020-03-21 02:05:21', 1, 0);
INSERT INTO `menu` VALUES (277, 267, '更新物资', NULL, 'product:update', 'el-icon-folder', '1', 3, '2020-03-21 02:05:56', '2020-03-21 02:05:56', 1, 0);
INSERT INTO `menu` VALUES (278, 267, '编辑物资', NULL, 'product:edit', 'el-icon-edit', '1', 1, '2020-03-21 02:06:23', '2020-03-21 02:06:23', 1, 0);
INSERT INTO `menu` VALUES (279, 269, '删除来源', '', 'supplier:delete', 'el-icon-document-delete', '1', 1, '2020-03-21 02:17:29', '2020-03-21 12:32:22', 1, 0);
INSERT INTO `menu` VALUES (280, 269, '更新来源', '', 'supplier:update', 'el-icon-paperclip', '1', 1, '2020-03-21 02:18:34', '2020-03-21 12:36:41', 1, 0);
INSERT INTO `menu` VALUES (281, 269, '添加来源', NULL, 'supplier:add', 'el-icon-document-add', '1', 1, '2020-03-21 02:19:02', '2020-03-21 02:19:02', 1, 1);
INSERT INTO `menu` VALUES (282, 269, '编辑来源', NULL, 'supplier:edit', 'el-icon-scissors', '1', 2, '2020-03-21 02:19:36', '2020-03-21 02:19:36', 1, 1);
INSERT INTO `menu` VALUES (283, 268, '添加类别', '', 'productCategory:add', ' el-icon-folder-add', '1', 1, '2020-03-21 02:26:12', '2020-03-21 02:44:22', 1, 0);
INSERT INTO `menu` VALUES (284, 268, '删除类别', NULL, 'productCategory:delete', 'el-icon-delete', '1', 1, '2020-03-21 02:27:05', '2020-03-21 02:28:49', 1, 0);
INSERT INTO `menu` VALUES (285, 268, '编辑类别', NULL, 'productCategory:edit', 'el-icon-scissors', '1', 2, '2020-03-21 02:27:42', '2020-03-21 02:27:42', 1, 0);
INSERT INTO `menu` VALUES (286, 268, '更新类别', NULL, 'productCategory:update', ' el-icon-coordinate', '1', 1, '2020-03-21 02:28:17', '2020-03-21 02:28:17', 1, 0);
INSERT INTO `menu` VALUES (295, 0, '其他管理', '', '', 'el-icon-s-marketing', '0', 5, '2020-03-22 01:21:56', '2020-05-16 16:54:43', 1, 0);
INSERT INTO `menu` VALUES (296, 295, 'swagger文档', '/swagger', NULL, 'el-icon-document', '0', 2, '2020-03-22 01:22:48', '2020-05-07 19:43:42', 1, 0);
INSERT INTO `menu` VALUES (297, 295, '监控管理', '', '', 'el-icon-warning', '0', 1, '2020-03-22 02:47:10', '2020-05-16 16:54:39', 1, 0);
INSERT INTO `menu` VALUES (298, 297, 'SQL监控', '/druid', NULL, 'el-icon-view', '0', 1, '2020-03-22 02:48:05', '2020-03-22 02:49:50', 1, 0);
INSERT INTO `menu` VALUES (299, 271, '删除日志', '', 'loginLog:delete', 'el-icon-delete', '1', 1, '2020-03-22 21:55:44', '2020-03-22 21:55:44', 1, 0);
INSERT INTO `menu` VALUES (300, 271, '批量删除', '', 'loginLog:batchDelete', 'el-icon-delete-solid', '1', 1, '2020-03-22 22:19:26', '2020-03-22 22:19:26', 1, 0);
INSERT INTO `menu` VALUES (301, 4, '编辑菜单', '', 'menu:edit', 'el-icon-edit', '1', 1, '2020-03-22 23:12:25', '2020-03-22 23:12:25', 1, 0);
INSERT INTO `menu` VALUES (303, 0, '健康报备', '', '', 'el-icon-platform-eleme', '0', 3, '2020-03-24 10:11:53', '2020-05-16 11:53:36', 1, 0);
INSERT INTO `menu` VALUES (304, 303, '健康打卡', '/health', '', 'el-icon-s-cooperation', '0', 1, '2020-03-24 10:12:57', '2020-05-06 09:37:51', 1, 0);
INSERT INTO `menu` VALUES (305, 303, '查看情况', NULL, NULL, 'el-icon-c-scale-to-original', '0', 2, '2020-03-24 10:13:49', '2020-03-24 10:16:44', 1, 1);
INSERT INTO `menu` VALUES (307, 5, '操作日志', '/logs', '', 'el-icon-edit', '0', 1, '2020-04-04 19:04:53', '2020-05-16 16:39:18', 1, 1);
INSERT INTO `menu` VALUES (308, 307, '删除日志', '', 'log:delete', 'el-icon-circle-close', '1', 1, '2020-04-04 19:59:20', '2020-04-04 19:59:20', 1, 1);
INSERT INTO `menu` VALUES (309, 307, '批量删除', NULL, 'log:batchDelete', 'el-icon-document-delete', '1', 2, '2020-04-04 19:59:59', '2020-04-04 19:59:59', 1, 0);
INSERT INTO `menu` VALUES (310, 311, '物资去处', '/consumers', '', 'el-icon-edit', '0', 1, '2020-04-05 10:08:21', '2020-04-05 10:08:21', 1, 0);
INSERT INTO `menu` VALUES (311, 312, '物资流向', NULL, NULL, 'el-icon-edit', '0', 3, '2020-04-05 10:16:59', '2020-04-30 18:40:43', 1, 0);
INSERT INTO `menu` VALUES (312, 0, '业务管理', NULL, NULL, 'el-icon-s-goods', '0', 2, '2020-04-05 10:19:07', '2020-08-19 17:57:27', 1, 1);
INSERT INTO `menu` VALUES (316, 229, '物资库存', '/stocks', '', 'el-icon-tickets', '0', 5, '2020-04-16 08:45:08', '2020-05-16 16:56:53', 1, 0);
INSERT INTO `menu` VALUES (317, 226, '导出表格', '', 'user:export', 'el-icon-edit', '1', 1, '2020-04-17 18:02:05', '2020-04-17 18:02:05', 1, 0);
INSERT INTO `menu` VALUES (318, 295, '图标管理', '/icons', '', 'el-icon-star-off', '0', 2, '2020-04-21 12:06:33', '2020-05-16 17:07:35', 1, 1);
INSERT INTO `menu` VALUES (319, 1, '公告管理', '/notices', '', 'el-icon-s-flag', '0', 4, '2020-04-21 12:07:46', '2020-05-29 12:05:22', 0, 0);
INSERT INTO `menu` VALUES (320, 319, '公告发布', '/notices/add', '', 'el-icon-edit', '1', 1, '2020-04-21 12:26:56', '2020-04-21 12:26:56', 1, 1);
INSERT INTO `menu` VALUES (321, 1, '附件管理', '/attachments', '', 'el-icon-picture-outline', '0', 2, '2020-04-25 10:52:17', '2020-04-25 10:52:17', 1, 1);
INSERT INTO `menu` VALUES (322, 310, '添加去处', '', 'consumer:add', 'el-icon-plus', '1', 2, '2020-04-27 16:57:04', '2020-04-27 16:58:21', 1, 1);
INSERT INTO `menu` VALUES (323, 310, '删除去处', NULL, 'consumer:delete', 'el-icon-delete', '1', 1, '2020-04-27 16:57:42', '2020-04-27 16:57:42', 1, 0);
INSERT INTO `menu` VALUES (324, 310, '编辑去处', '', 'consumer:edit', 'el-icon-edit', '1', 1, '2020-04-27 16:59:17', '2020-04-27 16:59:17', 1, 0);
INSERT INTO `menu` VALUES (325, 310, '更新去处', NULL, 'consumer:update', 'el-icon-star-off', '1', 1, '2020-04-27 17:00:18', '2020-04-27 17:00:18', 1, 1);
INSERT INTO `menu` VALUES (326, 230, '添加入库', '', 'inStock:in', 'el-icon-plus', '1', 3, '2020-04-27 17:07:04', '2020-08-19 17:57:15', 1, 1);
INSERT INTO `menu` VALUES (328, 230, '入库明细', NULL, 'inStock:detail', 'el-icon-zoom-in', '1', 2, '2020-04-27 17:08:25', '2020-04-27 17:08:25', 1, 0);
INSERT INTO `menu` VALUES (329, 4, '导出菜单', NULL, 'menu:export', 'el-icon-edit', '1', 1, '2020-04-27 17:26:40', '2020-04-27 17:26:40', 1, 0);
INSERT INTO `menu` VALUES (331, 267, '删除物资', NULL, 'product:delete', 'el-icon-delete', '1', 1, '2020-04-30 18:27:02', '2020-04-30 19:05:31', 1, 0);
INSERT INTO `menu` VALUES (332, 267, '回收物资', '', 'product:remove', 'el-icon-remove', '1', 1, '2020-04-30 18:56:48', '2020-04-30 18:56:48', 1, 1);
INSERT INTO `menu` VALUES (333, 267, '物资审核', NULL, 'product:publish', 'el-icon-edit', '1', 1, '2020-04-30 18:58:38', '2020-04-30 19:05:42', 1, 0);
INSERT INTO `menu` VALUES (336, 267, '物资还原', NULL, 'product:back', 'el-icon-top-left', '1', 1, '2020-04-30 19:06:22', '2020-04-30 19:06:22', 1, 0);
INSERT INTO `menu` VALUES (337, 230, '入库回收', '', 'inStock:remove', 'el-icon-remove', '1', 3, '2020-04-30 19:12:56', '2020-08-19 17:57:55', 1, 1);
INSERT INTO `menu` VALUES (338, 230, '入库审核', NULL, 'inStock:publish', 'el-icon-edit', '1', 2, '2020-04-30 19:13:32', '2020-08-19 17:57:32', 1, 0);
INSERT INTO `menu` VALUES (339, 230, '删除记录', NULL, 'inStock:delete', 'el-icon-delete', '1', 4, '2020-04-30 19:14:03', '2020-08-19 17:57:42', 1, 0);
INSERT INTO `menu` VALUES (340, 230, '入库还原', '', 'inStock:back', 'el-icon-d-arrow-left', '1', 3, '2020-04-30 19:17:27', '2020-08-19 17:57:49', 1, 0);
INSERT INTO `menu` VALUES (341, 295, '个人博客', '/blog', '', 'el-icon-view', '0', 1, '2020-05-07 19:34:31', '2020-05-07 19:34:31', 1, 0);
INSERT INTO `menu` VALUES (343, 304, '健康上报', '', 'health:report', 'el-icon-edit', '1', 1, '2020-05-14 20:21:09', '2020-05-14 20:21:09', 1, 0);

-- ----------------------------
-- Table structure for persistent_logins
-- ----------------------------
DROP TABLE IF EXISTS `persistent_logins`;
CREATE TABLE `persistent_logins`  (
  `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `series` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_used` datetime NOT NULL,
  PRIMARY KEY (`series`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of persistent_logins
-- ----------------------------
INSERT INTO `persistent_logins` VALUES ('xseven', 'BVeZnzjCKdFYO+duxYWQeg==', 'Ztt63AnLQ2vLvewneOs80A==', '2021-01-04 09:26:08');
INSERT INTO `persistent_logins` VALUES ('xseven', 'ftQDPHJI7Z1elAnzdlXJoQ==', 'RMyLt0y/gr9NYYYymokkAQ==', '2021-01-02 19:00:04');
INSERT INTO `persistent_logins` VALUES ('xseven', 'HiL9juEHfCzWsBs1d9Xsdg==', 'Blq8EZQwDEfah5E+428Qxw==', '2021-01-02 19:05:06');
INSERT INTO `persistent_logins` VALUES ('xseven', 'u2FheEJMcHQ68OFgfEMhSw==', 'drGawzixE+rG8g0iR+XXHQ==', '2021-01-02 18:57:48');
INSERT INTO `persistent_logins` VALUES ('xseven', 'VNg7yUUhj+Wlnemvba3Phg==', 'j08BfvqAYSKL6BbY/dPgSw==', '2021-01-02 18:34:44');

-- ----------------------------
-- Table structure for t_fill
-- ----------------------------
DROP TABLE IF EXISTS `t_fill`;
CREATE TABLE `t_fill`  (
  `id` int(11) NOT NULL,
  `questionType` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `topic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `answerA` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `answerB` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `answerC` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `answerD` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `answerE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_fill
-- ----------------------------

-- ----------------------------
-- Table structure for t_judgment
-- ----------------------------
DROP TABLE IF EXISTS `t_judgment`;
CREATE TABLE `t_judgment`  (
  `id` int(11) NOT NULL,
  `questionType` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `topic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `correctAnswer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_judgment
-- ----------------------------

-- ----------------------------
-- Table structure for t_single
-- ----------------------------
DROP TABLE IF EXISTS `t_single`;
CREATE TABLE `t_single`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '题号',
  `questionType` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '题型',
  `topic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '题目',
  `answerA` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `answerB` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `answerC` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `answerD` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `correctAnswer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 470 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_single
-- ----------------------------
INSERT INTO `t_single` VALUES (1, '单选题', '（      ）寻址对于实现程序浮动提供了较好的支持。', '相对寻址', '直接寻址', '间接寻址', '变址寻址', 'A');
INSERT INTO `t_single` VALUES (2, '单选题', '－ 7  的 8  位二进制反码表示为（          ）。', '11111000', '00000111', '10000111', '11111001', 'A');
INSERT INTO `t_single` VALUES (3, '单选题', '冯·诺伊曼计算机结构的核心思想是（   ）。', '存储程序控制', '二进制运算', '有存储信息的功能', '运算速度快', 'A');
INSERT INTO `t_single` VALUES (4, '单选题', '（     ）方式对实现程序浮动提供了支持。', '相对寻址', '变址寻址', '直接寻址', '寄存器间接寻址', 'A');
INSERT INTO `t_single` VALUES (5, '单选题', '（    ） 寻址便于处理数组问题。', '变址寻址', '间接寻址', '相对寻址', '立即寻址', 'A');
INSERT INTO `t_single` VALUES (6, '单选题', '（）是程序运行时的存储位置，包括所需的数据。', '主存', '数据通路', '硬盘', '操作系统', 'A');
INSERT INTO `t_single` VALUES (7, '单选题', '[X] [  补 ]  =X[0]   ．   X[1]X[2]X[3]…X[n]   （   n  为整数），它的模是（                     ）    \n               <span style=\"color:red\">', '2', '2 [n-1]', '2 [n]', '1', 'A');
INSERT INTO `t_single` VALUES (8, '单选题', '[X] [  补 ] =X[0]   ，  X[1]X[2]X[3]…X[n]   （  n   为整数），它的模是（                  ）', '2 [n+1]', '2 [n]', '1', '2', 'A');
INSERT INTO `t_single` VALUES (9, '单选题', '[X] [ 原 ] =1.X[1]X[2]X[3]X[4],  当满足（     ）时，X的绝对值>0.5成立。', 'X  [1]必须为1， X  [2] X  [3] X  [4]至少有一个为1', 'X  [1]必须为0， X  [2] X  [3] X  [4]至少有一个为1', 'X  [1]必须为1， X  [2] X  [3] X  [4]任意', 'X  [1]必须为0， X  [2] X  [3] X  [4]任意', 'A');
INSERT INTO `t_single` VALUES (10, '单选题', '（        ）不是发生中断请求的条件。', '一条指令执行结束', '一次I/O操作结束', '机器内部发生故障', '一次DMA操作结束', 'A');
INSERT INTO `t_single` VALUES (11, '单选题', '（      ）对计算机的产生有重要影响。', '莱布尼兹、布尔、图灵', '巴贝奇、维纳、麦克斯韦', '莱布尼兹、布尔、克雷', '牛顿、维纳、图灵', 'A');
INSERT INTO `t_single` VALUES (12, '单选题', '1946年研制成功的第一台电子数字计算机称为（      ）,1949年研制成功的第一台程序内存的计算机称为（       ）。', 'ENIAC, EDSAC', 'EDVAC, MARKI', 'ENIAC, MARKI', 'ENIAC, UNIVACI', 'A');
INSERT INTO `t_single` VALUES (13, '单选题', '1970年，（         ）公司第一个发明了半导体存储器,从而开始取代磁芯存储器,使计算机的发展走向了一个新的里程碑.', '仙童', '摩托罗拉', '索尼', '英特尔', 'A');
INSERT INTO `t_single` VALUES (14, '单选题', '1971年,英特尔公司开发出世界上第一片4位微处理器首次将（       ）CPU的所有元件都放入同一块芯片之内。', 'Intel 4004', 'Intel 8008', 'Intel 8080', 'Intel 8086', 'A');
INSERT INTO `t_single` VALUES (15, '单选题', '1974年,英特尔公司开发的（      ）是世界上第1片通用8位微处理器。', 'Intel 8080', 'Intel 8086', 'Intel 8088', 'Intel 8008', 'A');
INSERT INTO `t_single` VALUES (16, '单选题', '1978年,英特尔公司开发的（        ）是世界上第1片通用16位微处理器,可寻址存储器容量是（      ）。', 'Intel 8086, 1MB', 'Intel 8088, 16KB', 'Intel 80286, 16MB', 'Intel 80386, 16MB', 'A');
INSERT INTO `t_single` VALUES (17, '单选题', '1985年,英特尔公司推出了32位微处理器（        ）,其可寻址存储器容量为（        ）。', 'Intel 80386, 4GB', 'Intel 80286, 16MB', 'Intel 80486, 4GB', 'Pentium, 4GB', 'A');
INSERT INTO `t_single` VALUES (18, '单选题', '2013年,在国际超级计算机500强排序中,（       ）研制的（          ）位居第1,浮点运算速度达到33.86千万亿次/秒', '中国、天河二号', '美国、泰坦', '美国、红杉', '日本、京', 'A');
INSERT INTO `t_single` VALUES (19, '单选题', '20世纪50年代,为了发挥(     )的效率,提出了(      )技术,从而发展了操作系统,通过它对(         )进行管理和调度。', '硬设备,多道程序,硬软资源', '计算机,操作系统,计算机', '计算,并行,算法', '硬设备,晶体管,计算机', 'A');
INSERT INTO `t_single` VALUES (20, '单选题', '20世纪六七十年代,在美国的(    )州,出现了一个地名叫硅谷。该地主要工业是(    ),它也是(    )的发源地。', '加利福尼亚,微电子工业,微处理机', '马萨诸塞,硅矿产地,通用计算机', '加利福尼亚,微电子工业,通用计算机', '加利福尼亚,硅生产基地,小型计算机和微处理机', 'A');
INSERT INTO `t_single` VALUES (21, '单选题', '32位的个人计算机，一个字节（byte）由  （      ） 位（bit）组成。', '8', '4', '16', '32', 'A');
INSERT INTO `t_single` VALUES (22, '单选题', '4片 74181ALU   和  1   片  74182CLA   相配合，具有（         ）传递功能。', '组内、组间均为并行进位', '串行进位', '组内并行进位，组间串行进位', '组内串行进位，组件并行进位', 'A');
INSERT INTO `t_single` VALUES (23, '单选题', '5  位二进制定点小数，用补码表示时，最小的负数是（          ）。', '1.0000', '0.1111', '1.0001', '1.1111', 'A');
INSERT INTO `t_single` VALUES (24, '单选题', '62个汉字的机内码需要（      ）字节。', '124', '62', '32', '248', 'A');
INSERT INTO `t_single` VALUES (25, '单选题', '8   位补码  10010011   等值扩展为  16  位后，其机器数为（                 ）。', '1111111110010011', '0000000010010011', '1000000010010011', '1111111101101101', 'A');
INSERT INTO `t_single` VALUES (26, '单选题', '8位补码定点整数10010101B右移一位后的值为（        ）。', '11001010B', '10001010B', '01001011B', '01001010B', 'A');
INSERT INTO `t_single` VALUES (27, '单选题', '8位补码整数X的表示范围是（     ）', '-128 ≤X≤127', '-127≤X≤127', '-127<X <128', '0≤ X ≤255', 'A');
INSERT INTO `t_single` VALUES (28, '单选题', '8位反码表示整数的最小值和最大值为（  ）', '-127，+127', '-128，+128', '-256，+256', '-255，+255', 'A');
INSERT INTO `t_single` VALUES (29, '单选题', '9位原码（含一位符号位）能表示的数据个数是（           ）', '511', '10', '9', '512', 'A');
INSERT INTO `t_single` VALUES (30, '单选题', 'ALU属于（       ）部件。', '运算器', '控制器', '存储器', '寄存器', 'A');
INSERT INTO `t_single` VALUES (31, '单选题', 'ALU   属于（       ）。', '组合逻辑电路', '时序电路', '控制器', '寄存器', 'A');
INSERT INTO `t_single` VALUES (32, '单选题', 'ALU的核心部件是（    ）。', '加法器', '移位器', '多路选择器', '寄存器', 'A');
INSERT INTO `t_single` VALUES (33, '单选题', 'ASCII码是对（      ）进行编码的一种方案。', '字符、图形符号', '汉字', '数字', '声音', 'A');
INSERT INTO `t_single` VALUES (34, '单选题', 'Cache的地址映象中（　　　）比较多的采用“按内容寻址”的相联存储器来实现。', '全相联映象', '组相联映象', '所有形式都有', '直接映象', 'A');
INSERT INTO `t_single` VALUES (35, '单选题', 'CD-ROM是（   ）  型光盘', '只读', '重写', '一次', '读/写', 'A');
INSERT INTO `t_single` VALUES (36, '单选题', 'CPU   可以直接访问的存储器是（        ）。', '主存储器', '磁带', '磁盘', '外存', 'A');
INSERT INTO `t_single` VALUES (37, '单选题', 'CPU   组成中不包含（       ）。', '存储器', '运算器', '控制器', '寄存器', 'A');
INSERT INTO `t_single` VALUES (38, '单选题', 'CPU不包括（      ）。', '地址译码器', '指令寄存器IR', '地址寄存器', '通用寄存器', 'A');
INSERT INTO `t_single` VALUES (39, '单选题', 'CPU可以直接访问的存储器是（     ）。', '主存', '光盘', '磁盘', '磁带', 'A');
INSERT INTO `t_single` VALUES (40, '单选题', 'CPU可直接编程访问的存储器是（    ）。', '主存储器', '虚拟存储器', '磁盘存储器', '磁带存储器', 'A');
INSERT INTO `t_single` VALUES (41, '单选题', 'CPU内通用寄存器的位数取决于(    )。', '机器字长', '存储器字长', '指令的长度', 'CPU的管脚数', 'A');
INSERT INTO `t_single` VALUES (42, '单选题', 'CPU取出一条指令并执行该指令的时间被称为（        ）。', '指令周期', '时钟周期', 'CPU周期', '机器周期', 'A');
INSERT INTO `t_single` VALUES (43, '单选题', 'CPU输出数据的速度远远高于打印机的打印速度。为解决这一矛盾，可采用（     ）。', '缓冲技术', '并行技术', '通道技术', '虚拟技术', 'A');
INSERT INTO `t_single` VALUES (44, '单选题', 'CPU响应DMA请求是在（    ）。', '一个总线周期结束时', '一条指令结束时', '一个时钟周期结束时', '一段程序结束时', 'A');
INSERT INTO `t_single` VALUES (45, '单选题', 'CPU响应中断的时间是（）', '执行周期结束', '取指周期结束', '中断源提出请求', '中断返回后', 'A');
INSERT INTO `t_single` VALUES (46, '单选题', 'CPU响应中断的时间是（       ）。', '执行周期结束', '间址周期结束', '中断源提出请求；', '取指周期结束', 'A');
INSERT INTO `t_single` VALUES (47, '单选题', 'CPU响应中断请求是在（     ）。', '一条指令结束时', '一个时钟周期结束时', '一个总线周期结束时', '一段程序结束时', 'A');
INSERT INTO `t_single` VALUES (48, '单选题', 'CPU响应中断时，最先完成的两个步骤是 （     ）和保护现场信息。', '关中断', '开中断', '恢复现场', '不可屏蔽中断', 'A');
INSERT INTO `t_single` VALUES (49, '单选题', 'CPU中控制器的功能是（    ）。', '完成指令操作码译码，并产生操作控制信号', '产生时序信号', '控制从主存取出一条指令', '完成指令操作码译码', 'A');
INSERT INTO `t_single` VALUES (50, '单选题', 'CPU中能进行算术和逻辑运算的最基本运算部件是（      ）。', 'ALU', '移位器', '多路选择器', '加法器', 'A');
INSERT INTO `t_single` VALUES (51, '单选题', 'CRT的分辨率为1024×1024，颜色深度为8位，则刷新存储器的存储容量是（ ）', '1MB', '2MB', '8MB', '1024B', 'A');
INSERT INTO `t_single` VALUES (52, '单选题', 'CRT显示器上构成图像的最小单元称为（    ）。', '像素', '元素', '亮点', '单位', 'A');
INSERT INTO `t_single` VALUES (53, '单选题', 'D/A转换是（     ）。', '把数字量转换为模拟量，把转化结果输出计算机', '把计算机输出的模拟量转化为数字量', '把模拟量转化为数字量，把数字量输入到计算机', '把计算机输出的模拟量转为数字量', 'A');
INSERT INTO `t_single` VALUES (54, '单选题', 'DMA传送通常在（    ）。', '外设与主存之间进行', '外设与CPU之间进行', '外设与主机之间进行', '外设与寄存器之间进行', 'A');
INSERT INTO `t_single` VALUES (55, '单选题', 'DMA方式（      ）。', '不能取代中断方式', '既然能用于高速外围设备的信息传送，也就能代替中断方式', '也能向CPU请求中断处理数据传送', '能取代中断方式', 'A');
INSERT INTO `t_single` VALUES (56, '单选题', 'DMA方式数据的传送是以 （     ）为单位进行的。', '数据块', '字', '位', '字节', 'A');
INSERT INTO `t_single` VALUES (57, '单选题', 'DMA访问主存时，让CPU处于等待状态，等DMA的一批数据访问结束后，CPU再恢复工作，这种情况称作_____。', '停止CPU访问主存', '周期挪用', 'DMA与CPU交替访问', 'DMA', 'A');
INSERT INTO `t_single` VALUES (58, '单选题', 'DMA接口（       ）。', '内有中断机制', '可以用于主存与主存之间的数据交换', '内有中断机制，可以处理异常情况', '内无中断机制', 'A');
INSERT INTO `t_single` VALUES (59, '单选题', 'DRAM的刷新是以（       ）为单位进行的。', '行', '列', '存储矩阵', '存储单元', 'A');
INSERT INTO `t_single` VALUES (60, '单选题', 'EPROM是指（  ）', '可编程的只读存储器', '只读存储器', '读写存储器', '光擦除可编程的只读存储器', 'A');
INSERT INTO `t_single` VALUES (61, '单选题', 'float   类型（  IEEE754   单精度浮点数格式）能表示的最大正整数是（          ）', '2 [128]-2 [104]', '2 [126]-2 [103]', '2 [127]-2 [104]', '2 [127]-2 [103]', 'A');
INSERT INTO `t_single` VALUES (62, '单选题', 'float   型数据通常用  IEEE754   标准中的单精度浮点格式表示。如果编译器将  float  型变量  X   分配在一个  32   位浮点寄存器  FR1  中，且  X=-8.25   ，则  FR1   的内容是（         ）', 'C104 0000H', 'C242 0000H', 'C184 0000H', 'C1C2 0000H', 'A');
INSERT INTO `t_single` VALUES (63, '单选题', 'I/O与主机交换信息的方式中，中断方式的特点是（       ）。', 'CPU与设备并行工作,传送与主程序串行工作', 'CPU与设备串行工作,传送与主程序串行工作', 'CPU与设备并行工作,传送与主程序并行工作', 'CPU与设备串行工作,传送与主程序并行工作', 'A');
INSERT INTO `t_single` VALUES (64, '单选题', 'n+1位二进制正整数的取值范围是（  ）。', '1  ～  2  [n] -1', '0  ～  2 [n] -1', '0  ～  2  [n+1] -1', '1  ～  2  [n+1] -1', 'A');
INSERT INTO `t_single` VALUES (65, '单选题', 'PCI总线的基本传输机制是（   ）', '猝发式传输', 'DMA式传输', '并行传输', '串行传输', 'A');
INSERT INTO `t_single` VALUES (66, '单选题', 'PC寄存器的内容（      ）', '顺序执行时自动增量计数', '发生转移时自动增量计数', '总是自动增量计数', '总是自动减量计数', 'A');
INSERT INTO `t_single` VALUES (67, '单选题', 'PC中存放的是后继指令的地址，故PC的位数和（      ）的位数相同。', '主存地址寄存器MAR', '程序状态字寄存器PSWR', '指令寄存器IR', '指令译码器ID', 'A');
INSERT INTO `t_single` VALUES (68, '单选题', 'Pentium微型计算机中乘除法部件位于（      ）中。', 'CPU', '接口', '专用芯片', '控制器', 'A');
INSERT INTO `t_single` VALUES (69, '单选题', 'SP的内容是（    ）。', '堆栈的顶部', '堆栈的起始地址', '堆栈的底部', '堆栈的最大地址', 'A');
INSERT INTO `t_single` VALUES (70, '单选题', '按 IEEE754  标准规定的 32  位浮点数（单精度浮点数） 41A4C000H  对应的十进制数是（         ）。', '20.59375', '4.59375', '-20.59375', '-4.59375', 'A');
INSERT INTO `t_single` VALUES (71, '单选题', '按照冯诺依曼结构组成计算机，主机的构成是（   ）', 'CPU和内存储器', '运算器和控制器', '运算器和内存储器', '控制器和外设', 'A');
INSERT INTO `t_single` VALUES (72, '单选题', '半导体EPROM中写入的内容，可以通过(    )擦除。', '紫外线照射', '电信号', '口令', 'DOS命令', 'A');
INSERT INTO `t_single` VALUES (73, '单选题', '半导体存储器常采用（      ）。', '随机存取方式', '直接存取方式', '顺序存取方式', '半顺序存取方式', 'A');
INSERT INTO `t_single` VALUES (74, '单选题', '编译程序出现的时期是(    )', '第二代', '第一代', '第三代', '第四代', 'A');
INSERT INTO `t_single` VALUES (75, '单选题', '变址寻址和基址寻址的有效地址形成方式类似，但是（      ）。', '在程序执行过程中，基址寄存器的内容不可变，变址寄存器中的内容可变；', '在程序执行过程中，变址寄存器和基址寄存器和内容都可变的；', '变址寄存器的内容在程序执行过程中是不可变的', '变址寄存器的内容在程序执行过程中是可变的', 'A');
INSERT INTO `t_single` VALUES (76, '单选题', '表示浮点数时，若要求机器零在计算机中的表示为全“ 0”  ，则阶码应采用的编码是（          ）。', '移码', '原码', '反码', '补码', 'A');
INSERT INTO `t_single` VALUES (77, '单选题', '表示一帧彩色图像的颜色数是   。', '2  [24             ]', '2 [3         ]', '2 [8      ]', '2  [512]', 'A');
INSERT INTO `t_single` VALUES (78, '单选题', '表示主存容量，通常以（        ）为单位。', '字节数', '扇区数', '记录项数', '数据块数', 'A');
INSERT INTO `t_single` VALUES (79, '单选题', '并行I/O标准接口SCSI中，一块主适配器可以连接（      ）台具有SCSI接口的设备。', '7～15', '6', '8', '10', 'A');
INSERT INTO `t_single` VALUES (80, '单选题', '补码的加减法是指（          ）', '操作数用补码表示，连同符号位直接相加减，减某数用加某负数的补码代替，结果的符号在运算中形成', '操作数用补码表示，两数相加减，符号位单独处理，减法用加法代替', '操作数用补码表示，符号位和数值位一起参加运算，结果的符号与加减相同', '操作数用补码表示，由数符决定两数的操作，符号位单独处理', 'A');
INSERT INTO `t_single` VALUES (81, '单选题', '补码加法运算是指(     ) ', '操作数用补码表示，连同符号位一起相加 ', '操作数用补码表示，符号位单独处理 ', '操作数用补码表示，将加数变补，然后相加 ', '操作数用补码表示，将被加数变补，然后相加', 'A');
INSERT INTO `t_single` VALUES (82, '单选题', '采用DMA 方式传送数据时，每传送一个数据就要用一个______ 。', '存储周期', '总线周期', '数据周期', '指令周期', 'A');
INSERT INTO `t_single` VALUES (83, '单选题', '采用规格化的浮点数是为了（                 ）', '增加数据的表示精度', '增加数据的表示范围', '方便浮点运算', '防止运算时数据溢出', 'A');
INSERT INTO `t_single` VALUES (84, '单选题', '采用隐式I/O指令，是指用（    ）实现I/O操作。', '传送指令', '通道指令', '硬件自动', 'I/O指令', 'A');
INSERT INTO `t_single` VALUES (85, '单选题', '操作数在CPU中的寻址方式是（      ）', '寄存器寻址', '寄存器间接寻址', '变址寻址', '基址寻址', 'A');
INSERT INTO `t_single` VALUES (86, '单选题', '常用的虚拟存储器寻址系统由（      ）两级存储器组成。', '主存－辅存', '主存—硬盘', 'Cache－辅存；', 'Cache－主存', 'A');
INSERT INTO `t_single` VALUES (87, '单选题', '超标量技术是（     ）。', '在每个时钟周期内同时并发多条指令；', '缩短原来流水线的处理器周期', '把多条能并行操作的指令组合成一条具有多个操作码字段的指令', '以上都不对', 'A');
INSERT INTO `t_single` VALUES (88, '单选题', '程序查询方式 、中断方式和DMA方式的优先级排列次序为(      )。', 'DMA方式、中断方式、程序查询方式', '程序查询方式 、中断方式、DMA方式', '中断方式、程序查询方式 、DMA方式', 'DMA方式、程序查询方式 、中断方式', 'A');
INSERT INTO `t_single` VALUES (89, '单选题', '串行接口是指（    ）。', '接口与外设之间串行传送', '接口的两侧串行传送', '接口的内部串行传送', '接口与系统总线之间串行传送', 'A');
INSERT INTO `t_single` VALUES (90, '单选题', '串行运算器结构简单，其运算规律是（           ）', '由低位到高位逐位运算', '由低位到高位先行进行进位运算', '由低位到高位先行进行借位运算', '由高位到低位逐位运算', 'A');
INSERT INTO `t_single` VALUES (91, '单选题', '串行总线与并行总线相比 （                ）。', '并行总线成本高，速度快', '并行总线成本低，速度慢', '串行总线成本高，速度快', '串行总线成本高，速度慢', 'A');
INSERT INTO `t_single` VALUES (92, '单选题', '磁表面存储器是以（              ） 作为记录信息的载体。', '磁介质', '塑料介质', '材料', '磁头', 'A');
INSERT INTO `t_single` VALUES (93, '单选题', '磁表面存储器所记录的信息（      ）。', '能长期保存', '不能长期保存', '读出后，原存信息即被破坏', '读出若干次后要重写', 'A');
INSERT INTO `t_single` VALUES (94, '单选题', '磁盘常采用（      ）。', '直接存取方式', '随机存取方式', '顺序序存取方式', '只读不写方式', 'A');
INSERT INTO `t_single` VALUES (95, '单选题', '从主存中取回到CPU中的指令存放位置是(    ) ', '指令寄存器 ', '状态寄存器', '程序计数器', '数据寄存器', 'A');
INSERT INTO `t_single` VALUES (96, '单选题', '存储单元是指（      ）。', '存放一个存储字的所有存储元集合', '存放一个字节的所有存储元集合', '存放一个二进制信息位的存储元集合', '存放一条指令的存储元集合', 'A');
INSERT INTO `t_single` VALUES (97, '单选题', '存储字是指（      ）。', '存放在一个存储单元中的二进制代码组合', '存放在一个存储单元中的二进制代码位数', '存储单元的个数', '机器指令的位数', 'A');
INSERT INTO `t_single` VALUES (98, '单选题', '存储字长是指（   ）。', '存放在一个存储单元中的二进制代码位数', '存放在一个存储单元中的二进制代码组合', '存储单元的个数', '机器指令的位数', 'A');
INSERT INTO `t_single` VALUES (99, '单选题', '存取速度最快的是（     ）。', '缓存（Cache）', '磁盘', '主存', '磁带', 'A');
INSERT INTO `t_single` VALUES (100, '单选题', '带有1位奇偶校验位的校验码能检测出（     ）位错误。', '奇数', '偶数', '1', '2', 'A');
INSERT INTO `t_single` VALUES (101, '单选题', '单地址指令（     ）。', '既能对单操作数进行加工处理，也能对双操作数进行运算', '无处理双操作数的功能', '只能对双操作数进行加工处理', '只能对单操作数进行加工处理', 'A');
INSERT INTO `t_single` VALUES (102, '单选题', '单地址指令是指（     ）', '指令隐含提供了所需的其他操作数', '指令所需要的操作数从该地址开始的多个单元', '指令只需要一个操作数', '指令中提供的地址只是用于存放结果', 'A');
INSERT INTO `t_single` VALUES (103, '单选题', '单地址指令中为了完成两个数的算术运算，除地址码指明的一个操作数外，另一个数常需采用 (      )指定。', '隐含寻址方式', '堆栈寻址方式', '立即寻址方式', '间接寻址方式', 'A');
INSERT INTO `t_single` VALUES (104, '单选题', '单地址指令中为了完成两个数的算术运算，除地址码指明的一个操作数外，另一个数常需采用（  ）', '隐含寻址方式', '立即寻址方式', '堆栈寻址方式', '间接寻址方式', 'A');
INSERT INTO `t_single` VALUES (105, '单选题', '单级中断系统中，中断服务程序内的执行顺序是（      ）。\nⅠ、保护现场    Ⅱ、开中断     Ⅲ、关中断    Ⅳ、保存断点   \nⅤ、中断事件处理   Ⅵ、恢复现场   Ⅶ、中断返回', 'Ⅰ→Ⅴ→Ⅵ→Ⅱ→Ⅶ', 'Ⅲ→Ⅰ→Ⅴ→Ⅶ', 'Ⅲ→Ⅳ→Ⅴ→Ⅵ→Ⅶ', 'Ⅳ→Ⅰ→Ⅴ→Ⅵ→Ⅶ', 'A');
INSERT INTO `t_single` VALUES (106, '单选题', '当采用双符号位时，发生溢出的特征是：  双符号位为(    )', '10', '00', '11', '都不是', 'A');
INSERT INTO `t_single` VALUES (107, '单选题', '当定点运算发生溢出时，应（     ）。', '发出出错信息', '向左规格化', '向右规格化', '舍入处理', 'A');
INSERT INTO `t_single` VALUES (108, '单选题', '当定点运算发生溢出时，应进行（                ）。', '发出出错信息', '向左规格化', '向右规格化', '舍入处理', 'A');
INSERT INTO `t_single` VALUES (109, '单选题', '当前设计高性能计算机的重要技术途径是（         ）。', '采用并行处理技术', '提高  CPU   主频', '扩大主存容量', '硬盘  采用非冯·诺依曼结构', 'A');
INSERT INTO `t_single` VALUES (110, '单选题', '地址总线A15(高位)～A0(低位)，用4K×4的存储芯片组成16KB存储器，则加至各存储芯片上的地址线是（      ）。', 'A11～A0', 'A15～A0', 'A9～A0', 'A15～A4', 'A');
INSERT INTO `t_single` VALUES (111, '单选题', '地址总线A15（高位）~A0（低位），用2K×4的存储芯片组成16KB的存储器，则加至各存储芯片上的地址线是（        ）。', 'A10~A0', 'A15~A5', 'A16~A15', 'A9~A0', 'A');
INSERT INTO `t_single` VALUES (112, '单选题', '地址总线A15（高位）~A0（低位），用4K×4的存储芯片组成16KB的存储器，则应由（      ）译码产生片选信号。', 'A13 A12', 'A1 A0', 'A12~A15', 'A0~A5', 'A');
INSERT INTO `t_single` VALUES (113, '单选题', '电子计算机可分为数字计算机、模拟计算机和数模混合计算机，它是按照（         ）。', '信息的形式和处理方式分类', '计算机的用途分类', '计算机的使用方式分类', '计算机的系统规模分类', 'A');
INSERT INTO `t_single` VALUES (114, '单选题', '定点  8   位字长的机器数，采用补码表示，所表示的整数范围是（               ）。', '−  128  ∼  127', '−  129  ∼  128', '−  127  ∼  127', '−  128  ∼  128', 'A');
INSERT INTO `t_single` VALUES (115, '单选题', '定点整数16位，含1位符号位，原码表示，则最大正数为（      ）。', '2 [15]-1', '2 [16]', '2 [15]', '2 [16]-1', 'A');
INSERT INTO `t_single` VALUES (116, '单选题', '动态RAM的特点是（      ）。', '每隔一定时间，需根据原存内容重写一遍', '工作中需要动态地改变访存地址', '工作中存储内容会产生变化', '每次读出后，需根据原存内容重写一次', 'A');
INSERT INTO `t_single` VALUES (117, '单选题', '动态RAM利用（    ）。', '电容存储信息', '触发器存储信息', '门电路存储信息', '寄存器存储信息', 'A');
INSERT INTO `t_single` VALUES (118, '单选题', '堆栈的存取原则是（     ）', '后进先出', '先进先出', '后进后出', '随机存取', 'A');
INSERT INTO `t_single` VALUES (119, '单选题', '堆栈寻址方式中，设A为累加寄存器，SP为堆栈指示器，Msp为SP\n指示器的栈顶单元，如果入栈操作的动作是：（A）→Msp，（SP）－1→SP，那么出栈操作的动作为：', '（SP）+1→SP，（Msp）→A', '（Msp）→A，（SP）+1→SP', '（SP）－1→SP，（Msp）→A', '（Msp）→A，（SP）－1→SP', 'A');
INSERT INTO `t_single` VALUES (120, '单选题', '堆栈指针SP的内容是（      ）。', '栈顶地址', '栈底地址', '栈顶内容', '栈底内容', 'A');
INSERT INTO `t_single` VALUES (121, '单选题', '对于RISC机和CISC机，以下说法错误的是（                 ）。', '对大多数计算任务来说， RISC机程序所用的指令条数比CISC机少', 'RISC机的指令条数比CISC机少', 'RISC机的指令平均字长比CISC机指令平均字长短', 'RISC机和CISC机都在发展', 'A');
INSERT INTO `t_single` VALUES (122, '单选题', '对于二进制数，若小数点左移  1   位，则数值（            ），若小数点右移  1   位，则数值（            ）。', '缩小一半，扩大一倍', '扩大一倍，扩大一倍', '扩大一倍，缩小一半', '缩小一半，缩小一半', 'A');
INSERT INTO `t_single` VALUES (123, '单选题', '对真值  0   表示形式唯一的机器数是（           ）。', '补码和移码', '原码', '反码', '机器码', 'A');
INSERT INTO `t_single` VALUES (124, '单选题', '二进制补码定点小数1.101表示的十进制数是（     ）', '-0.375', '-0.625', '-0.101', '1.625', 'A');
INSERT INTO `t_single` VALUES (125, '单选题', '冯·诺伊曼机工作方式的基本特点是（              ）。', '按地址访问并顺序执行指令', '堆栈操作', '选择存储器地址', '按寄存器方式工作', 'A');
INSERT INTO `t_single` VALUES (126, '单选题', '冯·诺伊曼机工作方式的基本特点是（      ）。', '按地址访问并顺序执行指令', '多指令流单数据流', '堆栈操作', '存储器按内容选择地址', 'A');
INSERT INTO `t_single` VALUES (127, '单选题', '电子计算机技术在半个多世纪中虽有很大的进步，但至今其运行仍遵循着一位科学家提出的基本原理。他就是(   )。', '冯·诺依曼', '爱因斯坦', '爱迪生', '牛顿', 'A');
INSERT INTO `t_single` VALUES (128, '单选题', '浮点数的表示范围和精度取决于 （     ）。', '阶码的位数和尾数的位数', '阶码的位数和尾数采用的编码', '阶码采用的编码和尾数采用的编码', '阶码采用的编码和尾数的位数', 'A');
INSERT INTO `t_single` VALUES (129, '单选题', '浮点数的表示范围和精度取决于（       ） 。', '阶码的位数和尾数的位数', '阶码的机器数形式和尾数的位数；', '阶码的位数和尾数的机器数形式', '阶码的机器数形式和尾数的机器数形式', 'A');
INSERT INTO `t_single` VALUES (130, '单选题', '浮点数加减中的对阶是指（   ）', '将较小的一个阶码调整到与较大的一个阶码相同', '将较大的一个阶码调整到与较小的一个阶码相同', '将被加数的阶码调整到与加数的阶码相同', '将加数的阶码调整到与被加数的阶码相同', 'A');
INSERT INTO `t_single` VALUES (131, '单选题', '负零的补码表示为（      ）。', '0 00…00B', '0 11…11B', '1 00…00B', '1 11…11B', 'A');
INSERT INTO `t_single` VALUES (132, '单选题', '根据连线的数量，总线可分为串行总线和（       ）总线。', '并行', '多', '控制', '地址', 'A');
INSERT INTO `t_single` VALUES (133, '单选题', '关于I/O接口，下列说法错误的是（    ）', 'I/O接口与主存储器相连', 'I/O接口与I/O设备相连', 'I/O接口与系统总线相连', 'I/O设备可以进行信息的转换', 'A');
INSERT INTO `t_single` VALUES (134, '单选题', '关于带符号数的运算，下列说法中正确的是 (       ) 。', '只有带符号数的运算才有可能溢出', '采用变形补码进行加减运算可以避免溢出', '只有定点数运算才有可能溢出，浮点数运算不会产生溢出', '只有将两个正数相加时才有可能产生溢出', 'A');
INSERT INTO `t_single` VALUES (135, '单选题', '关于浮点数在   IEEE754   标准中的规定，下列说法中错误的是（                ）    \n Ⅰ   ．浮点数可以表示正无穷大和负无穷大两个值    \n Ⅱ   ．如果需要，也允许使用非格式化的浮点数    \n Ⅲ   ．对任何形式的浮点数都要求使用隐藏位技术    \n Ⅳ  ．对  32   为浮点数的阶码采用了偏移值为  127  的移码表示，尾数用原码表示', '只有   Ⅲ', 'Ⅰ   ，  Ⅲ', 'Ⅱ   ，  Ⅲ', 'Ⅰ   ，  Ⅲ   ，  Ⅳ', 'A');
INSERT INTO `t_single` VALUES (136, '单选题', '汉字  “   啊  ”   的十进制区位码为  1601  ，则它的十六进制机器内码是（          ）。', 'B0A1H', '1601H', '9081H', 'B081H', 'A');
INSERT INTO `t_single` VALUES (137, '单选题', '一个16*16点阵的汉字，需要（    ）字节的存储空间。', '32.0', '16.0', '256.0', '64.0', 'A');
INSERT INTO `t_single` VALUES (138, '单选题', '和外存储器相比，内存储器的特点是（  ）', '容量小、速度快、成本高', '容量大、速度快、成本低', '容量大、速度慢、成本高', '容量小、速度快、成本低', 'A');
INSERT INTO `t_single` VALUES (139, '单选题', '基址寻址方式中，操作数的有效地址是（        ）。', '基址寄存器内容加上形式地址（位移量）', '程序计数器内容加上形式地址；', '变址寄存器内容加上形式地址；', '寄存器内容加上形式地址。', 'A');
INSERT INTO `t_single` VALUES (140, '单选题', '基准程序A在某计算机上的运行时间100秒，其中90秒为CPU时间，其余时间忽略不计，若CPU速度提高50%，I/O速度不变，则运行基准程序A所耗时间为（    ）', '70.0', '55', '60', '65', 'A');
INSERT INTO `t_single` VALUES (141, '单选题', '计算机操作的最小单位时间是（      ）。', '时钟周期', '指令周期', 'CPU周期', '中断周期', 'A');
INSERT INTO `t_single` VALUES (142, '单选题', '计算机操作的最小时间单位是 (     )。', '时钟周期', '指令周期', 'CPU周期', '微指令周期', 'A');
INSERT INTO `t_single` VALUES (143, '单选题', '计算机从第三代起,与IC电路集成度技术的发展密切相关。描述这种关系的是（   ）', '摩尔', '摩根', '图灵', '冯·诺依曼', 'A');
INSERT INTO `t_single` VALUES (144, '单选题', '计算机的存储器采用分级存储体系的主要目的是（     ）。', '解决存储容量、价格和存取速度之间的矛盾', '便于读/写数据', '减小机箱的体积', '便于系统升级', 'A');
INSERT INTO `t_single` VALUES (145, '单选题', '计算机的存储器系统是指（     ）。', 'Cache  、主存储器和外存储器', 'RAM', '主存储器', 'ROM', 'A');
INSERT INTO `t_single` VALUES (146, '单选题', '计算机的存储系统是指（  ）。', 'cache，主存储器和外存储器', '主存储器', 'ROM', 'RAM', 'A');
INSERT INTO `t_single` VALUES (147, '单选题', '计算机的发展大致经历了五代变化,其中第四代是（      ）年的（      ）计算机为代表。', '1972-1990,大规模和超大规模集成电路', '1946~1957,电子管', '1958~1964,晶体管', '1965~1971,中小规模集成电路', 'A');
INSERT INTO `t_single` VALUES (148, '单选题', '计算机的算术逻辑单元和控制单元合称为（      ）。', 'CPU', 'ALU', 'UP', 'CAD', 'A');
INSERT INTO `t_single` VALUES (149, '单选题', '计算机高级程序语言一般分为编译型和解释型两类,在JAVA、 FORTRAN和C语言中,属于编译型语言的是(    )', 'FORTRAN语言和C语言', '全部', 'FORTRAN语言', 'C语言', 'A');
INSERT INTO `t_single` VALUES (150, '单选题', '目前我们所说的个人台式商用机属于（     ）。', '微型机', '巨型机', '中型机', '小型机', 'A');
INSERT INTO `t_single` VALUES (151, '单选题', '计算机内部的带符号数大多用补码表示，以下是一些关于补码特点的叙述：\n①零的表示是唯一的\n②符号位可以和数值部分一起参加运算\n③和其真值的对应关系简单、直观\n④减法可用加法来实现\n以上叙述中，哪些选项是补码表示的特点？', '①、②、④', '①、②', '①、③', '①、②、③', 'A');
INSERT INTO `t_single` VALUES (152, '单选题', '计算机系统的层次结构通常分为微程序机器层、机器语言层、操作系统层、汇编语言机器层和高级语言机器层。层次之间的依存关系为（  ）。', '上一层实现对下一层的功能扩展，而下一层是上一层的基础', '上下层都无关', '上一层实现对下一层的功能扩展，而下一层与上一层无关', '上一层与下一层无关，，而下一层是上一层的基础', 'A');
INSERT INTO `t_single` VALUES (153, '单选题', '计算机系统的输入输出接口是（     ）之间的交接界面。', '主机与外围设备', 'CPU与存储器', '存储器与外围设备', 'CPU与系统总线', 'A');
INSERT INTO `t_single` VALUES (154, '单选题', '计算机系统中的存储系统是指（      ）。', 'cache   、主存和辅存', 'RAM   存储器', 'ROM   存储器', '主存', 'A');
INSERT INTO `t_single` VALUES (155, '单选题', '计算机要对声音信号进行处理时，必须将它们转换成数字声音信号。最基本的声音信号数字化方法是取样－量化法。若量化后的每个声音样本用 2  个字节表示，则量化分辨率是（          ）。', '1/65536', '1/2', '1/1024', '1/131072', 'A');
INSERT INTO `t_single` VALUES (156, '单选题', '计算机硬件能直接执行的只有(    )', '机器语言', '符号语言', '机器语言和汇编语言', '汇编语音', 'A');
INSERT INTO `t_single` VALUES (157, '单选题', '计算机中，数据处理中心是（      ）。', '运算器', '主机', '控制器', 'I/O   系统', 'A');
INSERT INTO `t_single` VALUES (158, '单选题', '计算机中表示地址时，采用(       ) 。', '无符号数', '原码', '补码', '反码', 'A');
INSERT INTO `t_single` VALUES (159, '单选题', '计算机中表示地址时使用（         ）。', '无符号数', '原码', '反码', '补码', 'A');
INSERT INTO `t_single` VALUES (160, '单选题', '计算机中不能通过编程访问的是（   ）', '暂存器', '变址寄存器', '通用寄存器', '主存储器', 'A');
INSERT INTO `t_single` VALUES (161, '单选题', '计算机中常采用下列几种编码表示数据，其中，± 0  编码相同的是（          ）。      Ⅰ .   原码           Ⅱ .   反码           Ⅲ .   补码           Ⅳ .   移码', 'Ⅲ   和   Ⅳ', 'Ⅰ  和   Ⅲ', 'Ⅱ  和   Ⅲ', 'Ⅰ  和   Ⅳ', 'A');
INSERT INTO `t_single` VALUES (162, '单选题', '计算机中的所有信息都以二进制表示的原因是（    ）。', '物理器件特性所致', '信息处理方便', '运算速度快', '节约元器件', 'A');
INSERT INTO `t_single` VALUES (163, '单选题', '寄存器间接寻址方式的操作数存放在（       ）中。', '存储单元', '程序计数器', '通用寄存器', '堆栈', 'A');
INSERT INTO `t_single` VALUES (164, '单选题', '寄存器中的值有时是地址，有时是数据，它们在形式上没有差别，只有通过(     )才能识别它是数据还是地址。', '指令操作码或寻址方式位', '寄存器编号', '判别程序', '时序信号', 'A');
INSERT INTO `t_single` VALUES (165, '单选题', '加法器采用先行进位的目的是（                 ）。', '加速传递进位信号', '优化加法器的结构', '节省器材', '增强加法器结构', 'A');
INSERT INTO `t_single` VALUES (166, '单选题', '假定基准程序  A  在某计算机上的运行时间为  110  秒，其中  90  秒为  CPU  时间，其余为  I/O  时间。若  CPU  速度提高  50%  ，  I/O  速度不变，则运行基准程序  A  所耗费的时间是（       ）秒。', '80  秒', '65   秒', '70   秒', '75   秒', 'A');
INSERT INTO `t_single` VALUES (167, '单选题', '假定两种浮点数表示格式的位数都是  32   位，但格式  1   的阶码长、尾数短，格式  2  的阶码短、尾数长，其他所有规定都相同。则它们可表示的数的精度和范围为（）', '格式  2   可表示的数的范围小、但精度高', '两者可表示的数的范围和精度都相同', '格式  1   可表示的数的范围小、但精度高', '格式  1   可表示的数的范围大、且精度高', 'A');
INSERT INTO `t_single` VALUES (168, '单选题', '假定下列字符编码中含有奇偶校验位，但没有发生数据错误，那么采用奇校验的字符编码是（   C     ）。', '10110000', '00110101', '01100110', '01010011', 'A');
INSERT INTO `t_single` VALUES (169, '单选题', '假定下列字符码中有奇偶检验位，但没有数据错误，采用奇检验的字符码是（          ）。', '11001011', '11001010', '11010111', '11001100', 'A');
INSERT INTO `t_single` VALUES (170, '单选题', '假定下列字符码中有奇偶校验位，但没有数据错误，采用偶校验的字符码是（  ）', '11001001', '11000001', '11010110', '11001011', 'A');
INSERT INTO `t_single` VALUES (171, '单选题', '假定一次ALU运算用1个时钟周期，移位一次用1个时钟周期，则最快的32位原码一位乘法所需要的时钟周期数大约为（   ）。', '64', '32', '96', '100', 'A');
INSERT INTO `t_single` VALUES (172, '单选题', '假定一个十进制数为  −  66   ，按补码形式存放在一个  8  位寄存器中，该寄存器的内容用十六进制表示为（               ）。', 'BEH', 'C2H', 'BDH', '42H', 'A');
INSERT INTO `t_single` VALUES (173, '单选题', '假定一个同步总线的工作频率为33MHZ，总线中有32位数据线，每个总线时钟传输一次数据，则该总线的最大数据传输率为（      ）。', '132MB/s', '66MB/s', '528MB/s', '1056MB/s', 'A');
INSERT INTO `t_single` VALUES (174, '单选题', '假定用若干16K×1位的存储器芯片组成一个64K×8位的存储器，芯片内各单元连续编址，则地址BFF0H所在的芯片的最小地址为（ C     ）。', '8000H', '4000H', '6000H', 'A000H', 'A');
INSERT INTO `t_single` VALUES (175, '单选题', '假定有N个设备挂接在总线上，采用集中式计数器定时查询方式时需要的总线请求线的条数为（         ）。', '1', '2', 'N', '2N', 'A');
INSERT INTO `t_single` VALUES (176, '单选题', '假定有两个整数用8位补码分别表示为r1=F5H，r2=EEH。若将运算结果存放在一个8位寄存器中，则下列运算中会发生溢出的是（        ）。', 'r1×r2', 'r1／r2', 'r1－r2', 'r1+r2', 'A');
INSERT INTO `t_single` VALUES (177, '单选题', '假定指令地址码给出的是操作数本身，则该操作数采用的是（     ）寻址方式', '立即', '直接', '基址', '相对', 'A');
INSERT INTO `t_single` VALUES (178, '单选题', '假定指令地址码给出的是操作数的存储地址， 则该操作数采用的是（     ）寻址方式。', '直接', '相对', '立即', '基址', 'A');
INSERT INTO `t_single` VALUES (179, '单选题', '假定指令地址码给出的是操作数所在的寄存器的编号，则该操作数采用的是（     ）寻址方式。', '寄存器', '直接', '间接', '寄存器间接', 'A');
INSERT INTO `t_single` VALUES (180, '单选题', '假定主存地址空间大小为1024MB,按字节编址，每次读写操作最多可以一次存取32位。不考虑其他因素，则存储器地址寄存器MAR和存储器数据寄存器MDR的位数至少应分别为（  ）。', '30、32', '30、8', '28、8', '28、32', 'A');
INSERT INTO `t_single` VALUES (181, '单选题', '假设某个需要校验的数据的长度为10位，采用CRC校验，若约定的生成多项式为X3+1，则对应的CRC码的位数是（     ）。', '13', '14', '3', '4', 'A');
INSERT INTO `t_single` VALUES (182, '单选题', '假设某个需要校验的数据信息为01100101B，若约定的生成多项式为G（X）=X4+X+1，则对应的CRC码为（        ）。', '011001010010B', '011001010110B', '011001011110 B', '011001011111B', 'A');
INSERT INTO `t_single` VALUES (183, '单选题', '假设要传送的数据信息为1110001B，若约定的生成多项式为G（X）=X3+1，则对应的CRC码为（       ）。', '1110001110B', '1110001010B', '1110001001B', '1110001101B', 'A');
INSERT INTO `t_single` VALUES (184, '单选题', '假设用Ⅰ表示单总线结构的ALU 运算器，Ⅱ表示双总线结构的ALU 运算器，Ⅲ表示三总线结构的ALU 运算器。若三种运算器都执行定点加法操作，则操作时间快慢的排序是(     )。', 'Ⅲ、Ⅱ、Ⅰ', 'Ⅱ、Ⅰ、Ⅲ', 'Ⅰ、Ⅱ、Ⅲ', 'Ⅲ、Ⅰ、Ⅱ', 'A');
INSERT INTO `t_single` VALUES (185, '单选题', '减少指令中地址个数的办法是采用（     ）。', '隐地址', '寄存器寻址', '寄存器间接寻址', '变址寻址', 'A');
INSERT INTO `t_single` VALUES (186, '单选题', '键盘接口通常采用（   ）。', '中断接口', '直接程序传送接口', 'DMA接口', '程序查询接口', 'A');
INSERT INTO `t_single` VALUES (187, '单选题', '将外围设备与主存统一编址，—般是指（      ）。', '接口中的有关寄存器各占一个地址码', '每个外围接口占一个地址码', '每台设备占一个地址码  ', '每台外设由一个主存单元管理', 'A');
INSERT INTO `t_single` VALUES (188, '单选题', '将有关数据加以分类、统计、分析，以取得有价值的信息，称为         。', '数据处理', '辅助设计', '实时控制', '数值计算', 'A');
INSERT INTO `t_single` VALUES (189, '单选题', '将有关数据加以分类、统计、分析，以取得有价值的信息，我们称为         。', '数据处理', '数值计算', '辅助设计', '实时控制', 'A');
INSERT INTO `t_single` VALUES (190, '单选题', '静态RAM利用（   ）。', '触发器存储信息', '电容存储信息', '门电路存储信息', '读电流存储信息', 'A');
INSERT INTO `t_single` VALUES (191, '单选题', '具有自同步能力的记录方式（      ）。', 'PM', 'RZ', 'NRZ1', 'NRZ', 'A');
INSERT INTO `t_single` VALUES (192, '单选题', '可编程的只读存储器（      ）。', '不一定是可改写的', '一定是可改写的', '一定是不可改写的', '以上都不对', 'A');
INSERT INTO `t_single` VALUES (193, '单选题', '立即寻址是指（     ）', '指令中直接给出操作数', '指令中直接给出操作数地址', '指令中间接给出操作数', '指令中间接给出操作数地址', 'A');
INSERT INTO `t_single` VALUES (194, '单选题', '两个补码数相加，采用  1   位符号位，当（           ）时，表示结果溢出。', '符号位进位和最高位进位异或结果为  1', '符号位有进位', '符号位进位和最高数位进位异或结果为  0', '符号位为  1', 'A');
INSERT INTO `t_single` VALUES (195, '单选题', '列陈述中，正确的是(    )。', '具有专门输入/输出指令的计算机，外设可以单独编址', '统一编址方法下，不可访问外设', '访问存储器的指令，只能访问存储器，一定不能访问外设', '只有输入/输出指令才可以访问外设', 'A');
INSERT INTO `t_single` VALUES (196, '单选题', '零地址运算指令在指令格式中不给出操作数地址，它的操作数来自（     ）。', '栈顶和次栈顶', '累加器', '立即数和栈顶', '暂存器', 'A');
INSERT INTO `t_single` VALUES (197, '单选题', '零地址指令采用(      )。', '堆栈寻址', '间接寻址', '立即寻址', '变址寻址', 'A');
INSERT INTO `t_single` VALUES (198, '单选题', '零地址指令是采用（     ）方式的指令。', '堆栈寻址', '寄存器寻址', '间接寻址', '立即寻址', 'A');
INSERT INTO `t_single` VALUES (199, '单选题', '零的原码可以用以下哪个代码表示（             ）', '10000000', '11111111', '01111111', '11000000', 'A');
INSERT INTO `t_single` VALUES (200, '单选题', '没有外存储器的计算机初始引导程序可以放在（      ）。', 'ROM', 'RAM', 'RAM和ROM', 'CPU', 'A');
INSERT INTO `t_single` VALUES (201, '单选题', '描述Futurebus+总线中基本概念正确的表述是（      ）。', '它是一个与结构、处理器技术有关的开发标准', ' Futurebus+总线是一个高性能的同步总线标准', ' 基本上是一个同步数据定时协议', '数据线的规模不能动态可变', 'A');
INSERT INTO `t_single` VALUES (202, '单选题', '描述多媒体CPU基本概念中正确表述的句子是（       ）。', '多媒体CPU是带有MMX技术的处理器', '多媒体CPU是非流水线结构', 'MMX指令集是一种单指令流单数据流的串行处理指令', '多媒体CPU一定是 CISC机器', 'A');
INSERT INTO `t_single` VALUES (203, '单选题', '某8位计算机中，假定x和y是两个带符号整数变量，用补码表示，x=63 ,y=-31,则x-y的机器数及其相应的溢出标志OF分别是（    ）。', '5EH、0', '5DH、1', '5EH、1', '5DH、0', 'A');
INSERT INTO `t_single` VALUES (204, '单选题', '某DRAM芯片，其存储容量为512K×8位，该芯片的地址线和数据线数目为______ 。', '19，8', '512，8', '8，512', '18，8', 'A');
INSERT INTO `t_single` VALUES (205, '单选题', '某机器字长16位，含一位数符，用补码表示，则定点小数所能表示的最小正数是（  ）。', '2-15', '216', '2-1', '1-2-15', 'A');
INSERT INTO `t_single` VALUES (206, '单选题', '某机器字长16位，主存按字节编址，转移指令采用相对寻址，由两个字节组成，第一字节为操作码字段，第二字节为相对位移量字段。假定取指令时，每取一个字节PC自动加1。若某转移指令所在主存地址为2000H，相对位移量字段的内容为06H，则该转移指令成功转以后的目标地址是', '2008H', '2006H', '2007H', '2009H', 'A');
INSERT INTO `t_single` VALUES (207, '单选题', '某机字长8位，采用补码形式（其中1位为符号位），则机器数所能表示的范围是______。', '-128 ～ +127', '-127 ～ +127', '-128 ～ +128', '-127 ～ +128', 'A');
INSERT INTO `t_single` VALUES (208, '单选题', '某计算机字长32位，存储容量8MB，若按双字编址，它的寻址范围是              。', '0～(1M-1)', '0～(2M-1)', '0～(624K-1)', '0～(720K-1)', 'A');
INSERT INTO `t_single` VALUES (209, '单选题', '某计算机字长是16位，它的存储容量是1MB，按字编址，它的寻址范围是（   ）', '512K', '1M', '512KB', '2M', 'A');
INSERT INTO `t_single` VALUES (210, '单选题', '某计算机字长是16位，它的存储容量是1MB，按字编址，它的寻址范围是______。', '512K', '1M', '512KB', '1MB', 'A');
INSERT INTO `t_single` VALUES (211, '单选题', '某计算机字长是32位，它的存储容量是64KB．按字编址，它的寻址范围是_____。', '16K', '16KB', '32K', '32KB', 'A');
INSERT INTO `t_single` VALUES (212, '单选题', '某计算机字长为8位，其CPU中有一个8位加法器。已知无符号数x=69，y=38，现要在该加法器中完成x-y的运算，此时该加法器的两个输入端信息和输入的低位进位信息分别为（         ）。', '01000101B，11011001B，1', '01000101B，00100110B，0', '01000101B，11011010B，0', '01000101B，11011010B，1', 'A');
INSERT INTO `t_single` VALUES (213, '单选题', '某数码相机内置128MB存储空间，拍摄分辨率设定为1600×1200像素，颜色深度为24位，若不采用压缩存储技术，使用内部存储器最多可以存储的照片数是                                      。', '23', '12', '24', '13', 'A');
INSERT INTO `t_single` VALUES (214, '单选题', '某数在计算机中用  8421BCD码表示为 100110000111，其十进制形式为（       ）', '987', '987H', '2439', '10010000111B', 'A');
INSERT INTO `t_single` VALUES (215, '单选题', '某数在计算机中用 8421码表示为 011110001001，其十进制形式为是（          ）。', '789', '789H', '1929', '11110001001B', 'A');
INSERT INTO `t_single` VALUES (216, '单选题', '某一DRAM芯片其容量为16K×1，除电源线、接地线和刷新线外，该芯片的最小引脚数目应为(      )。', '12', '16', '18', '11', 'A');
INSERT INTO `t_single` VALUES (217, '单选题', '某一SRAM芯片，其容量为1024×8位，除电源端和接地端外，连同片选和读/写信号该芯片引脚的最小数目为（    ）', '20', '17', '23', '19', 'A');
INSERT INTO `t_single` VALUES (218, '单选题', '目前，人们所说的个人计算机属于（）。', '微型机', '巨型机', '中型机', '小型机', 'A');
INSERT INTO `t_single` VALUES (219, '单选题', '目前大多数集成电路生产中,所采用的基本材料为（   ）', '单晶硅', '非晶硅', '锑化钼', '硫化镉', 'A');
INSERT INTO `t_single` VALUES (220, '单选题', '目前的CPU包括 （   ）和cache。', '控制器、运算器', '控制器、逻辑运算器', '控制器、算术运算器', '运算器、算术运算器', 'A');
INSERT INTO `t_single` VALUES (221, '单选题', '目前制约计算机处理速度的主要因素是（   ）', '总线的传输速度', 'CPU的主频', '存储器的工作速度', 'I/O设备的工作速度', 'A');
INSERT INTO `t_single` VALUES (222, '单选题', '奇校验的编码原则是（       ）。', '让编成的校验码为1的个数为奇数', '让待编信息为1的个数为奇数', '让待编信息为0的个数为奇数', '让编成的校验码为0的个数为奇数', 'A');
INSERT INTO `t_single` VALUES (223, '单选题', '迄今为止，计算机中的所有信息仍以二进制方式表示的理由是（        ）。', '物理器件性能所致', '节约元件', '运算速度快', '信息处理方便', 'A');
INSERT INTO `t_single` VALUES (224, '单选题', '任何指令周期的第一步必定是（            ）周期。', '取指令', '取数据', '取状态', '取程序', 'A');
INSERT INTO `t_single` VALUES (225, '单选题', '若  X [ 补 ]=10000000，则十进制真值为（              ）。', '-128', '-0', '-127', '-1', 'A');
INSERT INTO `t_single` VALUES (226, '单选题', '若[x]反=1.1011，则x=（   ）', '-0.0100', '0.1011', '-0.0101', '-0.1011', 'A');
INSERT INTO `t_single` VALUES (227, '单选题', '若CPU的地址线为16根，则能够直接访问的存储区最大容量为（      ）。', '64K', '1M', '640K', '384K', 'A');
INSERT INTO `t_single` VALUES (228, '单选题', '若CPU的地址线为25根，则能够直接访问的存储器的最大寻址空间是（    ）  。', '32M', '1M', '5M', '16M', 'A');
INSERT INTO `t_single` VALUES (229, '单选题', '若SRAM芯片的容量是2M×8位，则该芯片引脚中地址线和数据线的数目之和是（       ）。', '29', '21', '18', '不可估计', 'A');
INSERT INTO `t_single` VALUES (230, '单选题', '若SRAM芯片的容量为1024×4位，则地址和数据引脚的数目分别是（  ）。', '10,4', '5,4', '10,8', '5,8', 'A');
INSERT INTO `t_single` VALUES (231, '单选题', '若变址寄存器编号为X，形式地址为D，则变址寻址方式的有效地址为（       ）。', 'R[X]+D', 'R[X]+ R[D]', 'M[R[X]+D]', 'M[R[X]+ M[D]]', 'A');
INSERT INTO `t_single` VALUES (232, '单选题', '若采用双符号位补码运算，运算结果的符号位为10，则（）。', '产生了负溢出（下溢）', '产生了正溢出（上溢）', '运算结果正确，为负数', '运算结果正确，为正数', 'A');
INSERT INTO `t_single` VALUES (233, '单选题', '若存储体中有1K个存储单元，采用双译码方式时要求译码输出线为（     ）。', '64', '32', '560', '9', 'A');
INSERT INTO `t_single` VALUES (234, '单选题', '若二进制定点小数真值是﹣ 0.1101  ，机器中表示为 1.0010  ，则该数采用的编码方法是（          ）。', '反码', '原码', '补码', '移码', 'A');
INSERT INTO `t_single` VALUES (235, '单选题', '若浮点数结果尾数不是规格化数，将进行结果规格化。结果规格化有左规和右规之分，下列操作中，属于结果规格化的操作是（          ）。      Ⅰ .   尾数左移 1  位，阶码加 1               Ⅱ .   尾数左移 1  位，阶码减 1     Ⅲ .   尾数右移 1  位，阶码加 1               Ⅳ .   尾数右移 1  位，阶码减 1', 'Ⅱ  、   Ⅲ', 'Ⅰ  、   Ⅲ', 'Ⅰ  、   Ⅳ', 'Ⅱ  、   Ⅳ', 'A');
INSERT INTO `t_single` VALUES (236, '单选题', '若浮点数尾数用原码表示，则下列数中为规格化尾数形式的是（    ）', '1.1100000B', '0.0101000B', '0.0111000B', '1.0001000B', 'A');
INSERT INTO `t_single` VALUES (237, '单选题', '若浮点数用补码表示，判断运算结果是否是规格化数的方法是（             ）', '数符与尾数最高有效数位相异', '阶符与数符相同', '阶符与数符相异', '数符与尾数最高有效数位相同', 'A');
INSERT INTO `t_single` VALUES (238, '单选题', '若寄存器内容为  00000000   ，若它等于  -128   ，则寄存器内容为（）码。', '移码', '原码', '补码', '反码', 'A');
INSERT INTO `t_single` VALUES (239, '单选题', '若寄存器内容为  10000000   ，若它等于-  0   ，则寄存器内容为（      ）码   。', '原码', '补码', '反码', '移码', 'A');
INSERT INTO `t_single` VALUES (240, '单选题', '若寄存器内容为  11111111   ，若它等于  +127   ，则寄存器内容为（      ）码。', '移码', '原码', '补码', '反码', 'A');
INSERT INTO `t_single` VALUES (241, '单选题', '若寄存器内容为  11111111   ，若它等于  -1   ，则寄存器内容为（      ）码。', '补码', '原码', '反码', '移码', 'A');
INSERT INTO `t_single` VALUES (242, '单选题', '若十进制数为37.25，则相应的二进制数是（  ）。', '100101.01', '100101.1', '110101.01', '100110.01', 'A');
INSERT INTO `t_single` VALUES (243, '单选题', '若视频图像每帧的数据量6.4MB，帧速度为30帧/秒，则显示10秒的视频信息，则原始数据量是（                          ）。', '1920MB', '64MB', '192MB', '640MB', 'A');
INSERT INTO `t_single` VALUES (244, '单选题', '若一个8比特组成的字符至少需10个比特来传送，这是（      ）传送方式。', '异步', '同步', '并联', '混合', 'A');
INSERT INTO `t_single` VALUES (245, '单选题', '若一台计算机的机器字长为  4  字节  ,   则表明该机器  (        )。', '在  CPU   中能够作为一个整体处理  32  位的二进制代码', '能处理的数值最大为  4   位十进制数', '能处理的数值最多为  4   位二进制数组成', '在  CPU   中运算的结果最大为  2 [32]', 'A');
INSERT INTO `t_single` VALUES (246, '单选题', '若在计算机中表示为1.0011，转换为二进制定点小数真值是-0.1101，则该数采用的编码方法是（  ）。', '补码', '原码', '反码', '移码', 'A');
INSERT INTO `t_single` VALUES (247, '单选题', '三地址指令常用于（    ）中。', '大型机 ', '所有大、小、微机', '小型机 ', '微型机 ', 'A');
INSERT INTO `t_single` VALUES (248, '单选题', '三种集中式总线控制中，（      ）方式对电路故障最敏感。', '串行链接', '计数器定时查询', '独立请求', '以上都不对', 'A');
INSERT INTO `t_single` VALUES (249, '单选题', '设x=-0.1011B，则8位补码[X]补为（         ）。', '1.0101000B', '1.0000101B', '1.0001011B', '1.1011000B', 'A');
INSERT INTO `t_single` VALUES (250, '单选题', '设变址寄存器为X，形式地址为D，某机具有先主存间址后变址的寻址方式，则这种寻址方式的有效地址为（      ）。', 'EA = (X) + （D）', 'EA = X +D', 'EA = ((X) +D)', 'EA = (X) +D', 'A');
INSERT INTO `t_single` VALUES (251, '单选题', '设浮点数阶码的基数是  2   ，下列浮点数尾数（原码表示）中规格化数是（                 ）。', '0.1111000', '1.0011100', '1.0101010', '0.01111011', 'A');
INSERT INTO `t_single` VALUES (252, '单选题', '设机器数采用补码表示（含  1   位符号位），若寄存器的内容为  9BH  ，则对应十进制数为（              ）', '-101', '-27', '-97', '155', 'A');
INSERT INTO `t_single` VALUES (253, '单选题', '设机器字长为32位，存储容量为16MB，若按双字编址，其寻址范围是(   )。', '2M', '4M', '16M', '8M', 'A');
INSERT INTO `t_single` VALUES (254, '单选题', '设寄存器R=1000，地址1000处的值为2000，2000处为3000，PC的值为4000，用相对寻址方式，-2000（PC）的操作数是(      )。', '3000', '4000', '5000', '7000', 'A');
INSERT INTO `t_single` VALUES (255, '单选题', '设寄存器内容为10000000，若它等于0，则为______。', '移码', '反码', '补码', '原码', 'A');
INSERT INTO `t_single` VALUES (256, '单选题', '设寄存器位数为  8   位，机器数采用补码形式（含一位符号位）。对应于十进制数  -27  ，寄存器内容为（           ）。', 'E5H', '27H', '9BH', 'FFH', 'A');
INSERT INTO `t_single` VALUES (257, '单选题', '设寄存器位数为8位，机器数采用补码形式（含一位符号位），则十进制数-26存放在寄存器中的内容为（      ）', 'E6H', '5AH', '9BH', '26H', 'A');
INSERT INTO `t_single` VALUES (258, '单选题', '使用  74LS181 构成一个  16 位组内并行，组间串行的 ALU   ，则需要（          ）片。', '4', '2', '8', '16', 'A');
INSERT INTO `t_single` VALUES (259, '单选题', '使用  74LS181和74182 来构成一个16位组内并行，组间并行的ALU ，则需要使用（          ）片74181和（   ）片74182。', '4、1', '1、4', '4、2', '2、4', 'A');
INSERT INTO `t_single` VALUES (260, '单选题', '输入输出指令的功能是（     ）', '在CPU与I/O端口之间进行数据传送', '在主存与CPU之间进行数据传送', '在主存与I/O端口之间进行数据传送', '在I/O端口与I/O端口之间进行数据传送', 'A');
INSERT INTO `t_single` VALUES (261, '单选题', '数据流通常是（）。', '在运算器和主存之间流动', '从主存流向控制器', '从控制器流向主存', '从控制器流向运算器', 'A');
INSERT INTO `t_single` VALUES (262, '单选题', '双向传输的总线，可分为（                         ）。', '全双工和半双工', '信号和全双工', '信息和半双工', '信息和PC', 'A');
INSERT INTO `t_single` VALUES (263, '单选题', '通常采用行、列地址引脚复用的半导体存储器芯片是（    ）。', 'DRAM', 'SRAM', 'EPROM', 'Flash  Memory', 'A');
INSERT INTO `t_single` VALUES (264, '单选题', '通常划分计算机发展时代是以（    ）为标准的。', '所用的电子器件', '运算速度', '计算机结构', '所有语言', 'A');
INSERT INTO `t_single` VALUES (265, '单选题', '通常将在部件之间进行数据传送的指令称为传送指令。以下有关各类传送指令功能的叙述中，错误的是（        ）。', '寄存器传送指令（Move）完成CPU和寄存器之间的数据传送', '出/入栈指令（Push/Pop）完成CPU和栈顶之间的数据传送', '访存指令（Load/Store）完成CPU和存储单元之间的数据传送', 'I/O指令（In/Out）完成CPU和I/O端口之间的数据传送', 'A');
INSERT INTO `t_single` VALUES (266, '单选题', '通常指令编码的第一个字段是     （     ）', '操作码', '操作', '指令', '控制码', 'A');
INSERT INTO `t_single` VALUES (267, '单选题', '同步控制是(    )。', '由统一时序信号控制的方式', '只适用于CPU控制的方式', '只适用于外部设备控制的方式', '所有指令执行时间都相同的方式', 'A');
INSERT INTO `t_single` VALUES (268, '单选题', '在异步控制方式中，各操作（               ）。', '按需分配时间', '由统一时序信号控制', '由CPU控制', '由设备控制器控制', 'A');
INSERT INTO `t_single` VALUES (269, '单选题', '完整的计算机系统应包括 (        )。', '配套的硬件设备和软件系统', '运算器、存储器、控制器', '外部设备和主机', '主机和实用程序', 'A');
INSERT INTO `t_single` VALUES (270, '单选题', '微程序存放在（     ）。', 'CM中', '主存中', '堆栈中', '磁盘中', 'A');
INSERT INTO `t_single` VALUES (271, '单选题', '微程序放在（                ）中。', '控制存储器', 'RAM', '指令寄存器', '内存储器', 'A');
INSERT INTO `t_single` VALUES (272, '单选题', '微程序入口地址是（            ）根据指令的操作码产生的。', '译码器', '计数器', '计时器', '判断逻辑矩阵', 'A');
INSERT INTO `t_single` VALUES (273, '单选题', '微型机系统中，主机和高速硬盘进行数据交换一般采用 (      )。', '直接存储器存取（DMA）方式', '程序中断控制方式', '程序直接控制方式', '通道控制方式', 'A');
INSERT INTO `t_single` VALUES (274, '单选题', '微型计算机的发展是以（）技术为标志。', '微处理器', '操作系统', '磁盘', '软件', 'A');
INSERT INTO `t_single` VALUES (275, '单选题', '微指令格式分为水平型和垂直型，水平型微指令的位数（          ），用它编写的微程序 （                ）。', '较长，较短', '较多，较长', '较少，较短', '较短，较少', 'A');
INSERT INTO `t_single` VALUES (276, '单选题', '尾数规格化是指（     ）', '尾数的表示范围为1/2≤|M|＜1', '小数点后的第1位数必为1', '小数点后第1位数比为0', '尾数的表示范围为1/2＜|M|＜1', 'A');
INSERT INTO `t_single` VALUES (277, '单选题', '为了实现输入输出操作，指令中（         ）。', '对单独编址方式，可以指明设备号或端口地址。对统一编址方式，可以指明寄存器的总线地址', '必须指明外围接口中寄存器的地址码', '必须指明外围设备的设备号', '必须同时指明外围设备号与接口中寄存器的总线地址', 'A');
INSERT INTO `t_single` VALUES (278, '单选题', '为了缩短指令中某个地址段(或地址码)的位数，有效的方法是采取（    ）。', '寄存器寻址', '间接寻址', '变址寻址', '立即寻址', 'A');
INSERT INTO `t_single` VALUES (279, '单选题', '为协调计算机系统各部分工作，需有一种器件提供统一的时钟标准，这个器件是（               ）。', '时钟发生器', '总线缓冲器', '总线控制器', '操作指令产生器', 'A');
INSERT INTO `t_single` VALUES (280, '单选题', '我国在______ 年研制成功了第一台电子数字计算机，第一台晶体管数字计算机于______ 年完成。', '1959   1965', '1946   1958', '1950   1968', '1958   1961', 'A');
INSERT INTO `t_single` VALUES (281, '单选题', '系统总线是指（  ）。', 'CPU、主存和外围设备之间的信息传送线', '运算器、寄存器和主存之间的信息传送线', '运算器、控制器和寄存器之间的信息传送', '运算器、寄存器和外围设备之间的信息传送线', 'A');
INSERT INTO `t_single` VALUES (282, '单选题', '下列（      ）属于应用软件。', '文本处理', '操作系统', '编译程序', '连接程序', 'A');
INSERT INTO `t_single` VALUES (283, '单选题', '下列编码中，零的表示形式是唯一的编码是（      ）。', '补码', '反码', '原码', '原码和补码', 'A');
INSERT INTO `t_single` VALUES (284, '单选题', '下列陈述中，正确的是(        )。', '在中断响应中，保护断点是由中断响应自动完成的', 'CPU响应中断期间仍执行原程序', '在中断过程中，若又有中断源提出中断，CPU立即响应', '在中断响应中，保护断点、保护现场应由用户编程完成', 'A');
INSERT INTO `t_single` VALUES (285, '单选题', '下列陈述中，正确的是(     )。', '浮点运算可由阶码运算和尾数运算两部分联合实现', '定点补码运算时，其符号位不参加运算。', '浮点数的正负由阶码的正负符号决定', '浮点数的尾数部分只进行乘法和除法运算', 'A');
INSERT INTO `t_single` VALUES (286, '单选题', '下列陈述中，正确的是（    ）。', '程序中断过程是由硬件和中断服务程序共同完成的', '每条指令的执行过程中，每个总线周期要检查一次有无中断请求', '检测有无DMA请求，一般安排在一条指令执行过程的末尾', '中断服务程序的最后一条指令是无条件转移指令', 'A');
INSERT INTO `t_single` VALUES (287, '单选题', '下列关于微处理器的描述中，哪个是正确的？（   ）', '微处理器可以用作微机的CPU', '微处理器就是一台微机', '微处理器是微机系统', '微处理器就是主机', 'A');
INSERT INTO `t_single` VALUES (288, '单选题', '下列几种存储器中，（      ）是易失性存储器。', 'Cache', 'EPROM', 'Flash  Memory', 'CD-ROM', 'A');
INSERT INTO `t_single` VALUES (289, '单选题', '下列寄存器中，对汇编语言程序员不透明的是（       ）。', '程序计数器（PC）', '存储器地址寄存器（MAR）', '存储器数据寄存器（MDR）', '指令寄存器（IR）', 'A');
INSERT INTO `t_single` VALUES (290, '单选题', '下列描述中（       ）是正确的。', '一台计算机包括输入、输出、控制、存储及算逻运算五个单元', '控制器能理解、解释并执行所有的指令及存储结果', '所有的数据运算都在CPU的控制器中完成', '以上答案都正确', 'A');
INSERT INTO `t_single` VALUES (291, '单选题', '下列情况不会发生溢出的是（   ）', '正数与负数相加', '负数与负数相加', '正数减负数', '负数减正数', 'A');
INSERT INTO `t_single` VALUES (292, '单选题', '下列数中，最大的数是（      ）。', '45', '(101001)  [2] 　', '（５２）  [８] 　　　', '（２Ｂ）  [16　] 　　', 'A');
INSERT INTO `t_single` VALUES (293, '单选题', '下列数中，最大的数是（  ）', '45D', '101001B', '52Q', '2BH', 'A');
INSERT INTO `t_single` VALUES (294, '单选题', '下列数中，最小的数是（）', '101001B', '52Q', '2BH', '45D', 'A');
INSERT INTO `t_single` VALUES (295, '单选题', '下列数中最大的数为（         ）', '（  233   ） [ 16 ]', '（  10010101   ） [ 2  ]', '（  227   ） [ 8 ]', '（  101001   ） [ BCD ]', 'A');
INSERT INTO `t_single` VALUES (296, '单选题', '下列数中最小的数是（     ）。', '（00101000）BCD', '（1010010）2', '（512）8', '（235）16', 'A');
INSERT INTO `t_single` VALUES (297, '单选题', '下列数中最小的数是（ ）', '（52）8', '（1101001）2', '（133）8', '（30）16', 'A');
INSERT INTO `t_single` VALUES (298, '单选题', '下列数中最小的数是（      ） 。', '（101001）2', '（52）8', '（2B）16', '（44）10', 'A');
INSERT INTO `t_single` VALUES (299, '单选题', '下列说法中不正确的是（          ）。', '在计算机系统的层次结构中，微程序级属于硬件级，其他四级都是软件级', '任何可以由软件实现的操作也可以由硬件来实现', '固件就功能而言类似于软件，从形态来说又类似于硬件', '面向高级语言的机器是完全可以实现的', 'A');
INSERT INTO `t_single` VALUES (300, '单选题', '下列说法中不正确的是(      )', '在计算机系统的层次结构中,微程序属于硬件级,其他四级都是软件级', '任何可以由软件实现的操作也可以由硬件来实现', '固件就功能而言类似于软件,而从形态来说又类似于硬件', '直接面向高级语言的机器是可以实现的', 'A');
INSERT INTO `t_single` VALUES (301, '单选题', '下列叙述错误的是（    ）', '总线只是一组连线，不包含控制电路', '总线能够被多个部件使用', '多个部件能够在不同的时间使用总线', '并行总线一次可以传送多位二进制信息', 'A');
INSERT INTO `t_single` VALUES (302, '单选题', '下列叙述中（     ）是错误的。', '采用微程序控制器的处理器称为微处理器；', '在微指令编码中，编码效率最低的是直接编码方式', '在各种微地址形成方式中，增量计数器法需要的顺序控制字段较短', '以上都是错的', 'A');
INSERT INTO `t_single` VALUES (303, '单选题', '下列叙述中（     ）是正确的。', '主存可由RAM和ROM组成', '主存只能由ROM组成', '主存只能由RAM组成', '主存只能由SRAM组成', 'A');
INSERT INTO `t_single` VALUES (304, '单选题', '下列选项中，不属于外部中断的事件是（      ）。', '无效操作码', '、打印机缺纸', '键盘缓冲满', '采样定时到', 'A');
INSERT INTO `t_single` VALUES (305, '单选题', '下列选项中，描述浮点数操作速度指标的                   。', 'MFLOPS', 'MIPS', 'CPI', 'IPC', 'A');
INSERT INTO `t_single` VALUES (306, '单选题', '下列选项中，描述浮点数操作速度指标的是（          ）。', 'MFLOPS', 'MIPS', 'CPI', 'IPCS', 'A');
INSERT INTO `t_single` VALUES (307, '单选题', '下列选项中，能缩短程序执行时间的措施是（        ）。    \n   Ⅰ、提高  CPU  时钟频率       Ⅱ、优化数据通路结构        Ⅲ、对程序进行编译优化', 'Ⅰ、Ⅱ和Ⅲ', '仅  Ⅰ和Ⅱ', '仅  Ⅰ和Ⅲ', '仅  Ⅱ和Ⅲ', 'A');
INSERT INTO `t_single` VALUES (308, '单选题', '下列有关控制器各部件功能的描述中，错误的是（       ）。', 'IR称为指令寄存器，用来存放当前指令的操作码', '控制单元是其核心部件，用于对指令操作码译码并生成操作控制信号', 'PC为程序计数器，用于存放将要执行的指令的地址', '通过将PC按当前指令长度增量，可实现指令的按序执行', 'A');
INSERT INTO `t_single` VALUES (309, '单选题', '下列有关数据通路的叙述中，错误的是（    ）。', '通用寄存器属于状态元件，但不包含在数据通路中', '数据通路由若干操作元件和状态元件连接而成', '数据通路的功能由控制部件送出的控制信号决定', 'ALU属于操作元件，用于执行各类算术和逻辑运算', 'A');
INSERT INTO `t_single` VALUES (310, '单选题', '下列有关寻址的说法中，错误的是 (      )。', '堆栈指针SP的内容表示当前堆栈内所存储的数据个数', '变址寻址时，有效数据存放在主存中', '堆栈的工作原则是先进后出', '内存中指令的寻址和数据的寻址是交替进行的', 'A');
INSERT INTO `t_single` VALUES (311, '单选题', '下列有关运算器的描述中（     ）是正确的。', '能暂时存放运算结果', '只作算术运算，不作逻辑运算', '只作加法', '以上答案都不对', 'A');
INSERT INTO `t_single` VALUES (312, '单选题', '下列有关总线的叙述中，错误的是（     ）。', '系统总线始终由CPU控制和管理', '总线是一组共享的信息传输线', '系统总线中有地址、数据和控制3组传输线', '同步总线一定有时钟信号线，用于总线操作的定时', 'A');
INSERT INTO `t_single` VALUES (313, '单选题', '下列元件中存取速度最快的是（     ）。', '寄存器', '内存', '外存', 'cache', 'A');
INSERT INTO `t_single` VALUES (314, '单选题', '下列指令的地址码的有关说法中（      ）是正确的。', '指令的地址码给出存储器地址的加法指令，在执行周期一定访存；', '加法指令的执行周期一定要访存', '加法指令的执行周期一定不访存；', '指令的地址码给出存储器地址的加法指令，在执行周期不一定访存。', 'A');
INSERT INTO `t_single` VALUES (315, '单选题', '下面是关于计算机中存储容量单位的叙述，其中错误的是（       ）', '一台计算机的编址单位、指令字长和数据字长都一样，且是字节的整数倍', '最小的计量单位为位（bit），表示一位“0”或“1”', '最基本的计量单位是字节（Byte），一个字节等于8b', '主存容量为1KB，其含义是主存中能存放1024个字节的二进制信息', 'A');
INSERT INTO `t_single` VALUES (316, '单选题', '下面有关半导体存储器的叙述中，错误的是（     ）。', '半导体存储器都采用随机存取方式进行读写', 'ROM芯片属于半导体随机存储器芯片', 'SRAM是半导体静态随机访问存储器，可用作cache', 'DRAM是半导体动态随机访问存储器，可用作主存', 'A');
INSERT INTO `t_single` VALUES (317, '单选题', '下面有关半导体存储器组织的叙述中，错误的是（       ）。', '同一个存储器中，每个存储单元的宽度可以不同', '存储器的核心部分是存储体，由若干存储单元构成', '存储单元由若干个存放0或1的存储元件构成', '一个存储单元有一个编号，就是存储单元的地址', 'A');
INSERT INTO `t_single` VALUES (318, '单选题', '下面有关机器字长的叙述中，错误的是（     ）', '机器字长对计算机硬件的造价没有影响', '机器字长是指CPU中定点运算数据通路的宽度', '机器字长一般与CPU中寄存器的位数有关', '机器字长决定了数的表示范围和表示精度', 'A');
INSERT INTO `t_single` VALUES (319, '单选题', '下述（    ）种情况会提出中断请求。', '在键盘输入过程中，每按一次键', '产生存储周期“窃取”', '两数相加结果为零', '结果溢出', 'A');
INSERT INTO `t_single` VALUES (320, '单选题', '相对于微程序控制器，组合逻辑控制器的特点是（      ）。', '指令执行速度快，指令功能的修改和扩展难', '指令执行速度慢，指令功能的修改和扩展容易', '指令执行速度慢，指令功能的修改和扩展难', '指令执行速度快，指令功能的修改和扩展容易', 'A');
INSERT INTO `t_single` VALUES (321, '单选题', '相联存储器是按（     ）进行寻址的存储器。', '内容指定方式', '地址指定方式', '堆栈存取方式', '地址指定与堆栈存取方式结合', 'A');
INSERT INTO `t_single` VALUES (322, '单选题', '响应中断请求的条件是（      ）。', '外设工作完成和系统允许时', '外设提出中断', '外设工作完成和中断标记触发器为“1”时', 'CPU提出中断', 'A');
INSERT INTO `t_single` VALUES (323, '单选题', '下列选项中，不属于外部中断的事件是（        ）。', '无效操作码', '采样定时到', '打印机缺纸', '键盘缓冲满', 'A');
INSERT INTO `t_single` VALUES (324, '单选题', '芯片  74181   可完成（           ）。', '16   种算术运算和  16   种逻辑运算', '16   种算术运算', '16   种逻辑运算', '8   种算术运算和  8   种逻辑运算', 'A');
INSERT INTO `t_single` VALUES (325, '单选题', '信息只用一条传输线 ，且采用脉冲传输的方式称为（  ）。', '串行传输', '并行传输', '并串行传输', '分时传输', 'A');
INSERT INTO `t_single` VALUES (326, '单选题', '需要定时刷新的半导体存储器芯片是(      )。', 'DRAM', 'EPROM', 'Flash Memory', 'SRAM', 'A');
INSERT INTO `t_single` VALUES (327, '单选题', '一地址指令是指（     ）', '既能处理单操作数又能处理双操作数', '只能对单操作数进行加工处理', '只能对双操作数进行加工处理', '必须隐含提供另一操作数', 'A');
INSERT INTO `t_single` VALUES (328, '单选题', '一个16K×32位的存储器，其地址线和数据线的总和是（   ）。', '46', '40', '36', '48', 'A');
INSERT INTO `t_single` VALUES (329, '单选题', '一个32K×32位的存储器，其地址线和数据线的总和是______。', '47.0', '48', '36', '32', 'A');
INSERT INTO `t_single` VALUES (330, '单选题', '一个24×24点阵的汉字，需要 （     ）字节的存储空间。', '72', '62', '64', '32', 'A');
INSERT INTO `t_single` VALUES (331, '单选题', '一个8位二进制整数采用补码表示，且由3个“1”和5个“0”组成，则最小值为（    ）。', '-125', '-3', '-127', '-32', 'A');
INSERT INTO `t_single` VALUES (332, '单选题', '一条机器指令中通常包含的信息有(     )', '操作码、地址码 ', '操作码、立即数 ', '操作码、控制码 ', '地址码、寄存器号 ', 'A');
INSERT INTO `t_single` VALUES (333, '单选题', '移码和补码比较，只有（      ）不同，其他都相同。', '符号', '正号', '负号', '标志', 'A');
INSERT INTO `t_single` VALUES (334, '单选题', '已知  [X] [  补 ] =1   ．  X[1]X[2]X[3]X[4]X[5]   ，若要  X>  −  1/2   ，  X[1]X[2]X[3]X[4]X[5]   应满足（              ）', 'X[1]   必须为  1   ，  X[2]X[3]X[4]X[5]   至少有一个  1', 'X[1]   必须为  1   ，  X[2]X[3]X[4]X[5]   任意', 'X[1]   必须为  0   ，  X[2]X[3]X[4]X[5]   至少有一个  1', 'X[1]   必须为  0   ，  X[2]X[3]X[4]X[5]   任意', 'A');
INSERT INTO `t_single` VALUES (335, '单选题', '已知大写英文字母  A   的  ASCII   码为  41H   ，现字母  F  被放在某个存储单元中，若采用偶校验（假设最高位作为校验位），则该存储单元中存放的十六进制数据是（                   ）。', 'C6H', '46H', '47H', 'C7H', 'A');
INSERT INTO `t_single` VALUES (336, '单选题', '已知小写英文字母“ a”  的 ASCII  码值为 61H  ，现字母“ g”  被存放在某个存储单元中，若采用偶校验（假设最高位作为校验位），则该存储单元中存放的十六进制数是（          ）。', 'E7H', '66H', 'E6H', '67H', 'A');
INSERT INTO `t_single` VALUES (337, '单选题', '以下（        ）   表示法主要用来表示浮点数中的阶码', '移码', '原码', '补码', '反码', 'A');
INSERT INTO `t_single` VALUES (338, '单选题', '以下（     ）是错误的。', '中断向量地址就是中断服务程序的入口地址', '中断服务程序可以是操作系统模块', '中断向量法可以提高识别中断源的速度；', '软件查询法和硬件法都能找到中断服务程序的入口地址。', 'A');
INSERT INTO `t_single` VALUES (339, '单选题', '以下BCD码中，（     ） 是无权码。', '格雷码', '8421码', '2421码', '5211码', 'A');
INSERT INTO `t_single` VALUES (340, '单选题', '以下操作中，由硬件完成的是（           ）。', '保护断点', '保护现场', '从I/O接口取数', '设置中断屏蔽字', 'A');
INSERT INTO `t_single` VALUES (341, '单选题', '以下的（             ）不能支持数值处理。 　   　', '输入输出类指令', '算术运算类指令 　', '移位操作类指令 　', '字符串处理类指令', 'A');
INSERT INTO `t_single` VALUES (342, '单选题', '以下关于Booth补码一位乘法算法要点的描述中，错误的是（       ）。', '移位时，将进位位、部分积和乘积部分一起进行算术右移', '符号位和数值位一起参加运算，无须专门的符号生成部件', '通过循环执行“加/减”和“移位”操作得到乘积', '由乘数最低两位决定对部分积和被乘数进行何种运算', 'A');
INSERT INTO `t_single` VALUES (343, '单选题', '以下说法错误的是（       ）。', '计算机中一个字的长度都是  32   位', '计算机的机器字长是指数据存储与运算的基本单位', '寄存器由触发器构成', '磁盘可以永久性存放数据和程序', 'A');
INSERT INTO `t_single` VALUES (344, '单选题', '以下叙述（      ）是错误的。', '一个更高级的中断请求一定可以中断另一个中断处理程序的执行', 'DMA和CPU必须分时使用总线；', 'DMA的数据传送不需CPU控制；', 'DMA中有中断机制', 'A');
INSERT INTO `t_single` VALUES (345, '单选题', '以下叙述中，不符合RISC指令系统特点的是                                        。', '寻址方式种类丰富，指令功能尽量增强', '指令长度固定，指令种类少', '设置大量通用寄存器，访问存储器指令简单', '选取使用频率较高的一些简单指令', 'A');
INSERT INTO `t_single` VALUES (346, '单选题', '以下叙述中（      ）是错误的。', '所有指令的取指令操作都是相同的；', '取指令操作是控制器固有的功能，不需要在操作码控制下完成；', '在指令长度相同的情况下，所有指令的取指操作都是相同的；', '一条指令包含取指、分析、执行三个阶段。', 'A');
INSERT INTO `t_single` VALUES (347, '单选题', '以下叙述中正确的是（）。', '软件和硬件在逻辑功能上是等价的', '寄存器的设置对汇编语言程序员是透明的', '实际应用程序的测试结果能够全面代表计算机的性能', '系列机的基本特征是指令系统向后兼容', 'A');
INSERT INTO `t_single` VALUES (348, '单选题', '以下有关I/O端口的叙述中，错误的是（      ）。', 'I/O接口中命令端口和状态端口不能共用同一个', 'I/O接口中有命令端口、状态端口、数据端口', 'I/O接口中程序可访问的寄存器被称为I/O端口', 'I/O端口可以和主存统一编号，也可以单独编号', 'A');
INSERT INTO `t_single` VALUES (349, '单选题', '以下有关多总线结构系统的叙述中，错误的是（      ）。', '系统中的多个总线不可能同时传输信息', '通常在总线与总线之间用桥接器连接', '通常越靠近CPU的总线传输率越高', 'CPU总线和存储器总线都比I/O总线快', 'A');
INSERT INTO `t_single` VALUES (350, '单选题', '以下有关统一编址方式的描述中，错误的是（       ）。', '必须根据指令类型区分访问主存还是访问I/O端口', 'I/O端口地址和主存地址一定不重号', 'CPU通过执行访存指令来访问I/O端口', '可利用主存的存储保护措施对I/O端口进行存储保护', 'A');
INSERT INTO `t_single` VALUES (351, '单选题', '引入八进制和十六进制的目的是（        ）。', '用于等价地表示二进制，便于阅读和书写', '节约元件', '实现方便', '可以表示更大范围的数', 'A');
INSERT INTO `t_single` VALUES (352, '单选题', '隐地址是指（      ）的地址。', '事先约定，指令中不必给出', '存放在主存单元中', '用寄存器号表示', '存放在寄存器中 ', 'A');
INSERT INTO `t_single` VALUES (353, '单选题', '用存储容量为16K×1位的存储器芯片组成一个64K×8位的存储器，则在字方向和位方向上分别扩展了（     ）倍。', '4和8', '4和2', '2和4', '8和4', 'A');
INSERT INTO `t_single` VALUES (354, '单选题', '用双符号位来表示运算结果时，下列说法不正确的是（     ）', '第2符号位表示结果的符号', '第1符号位表示结果的符号', '两个符号位相同表示没有发生溢出', '两个符号位不相同表示发生了溢出', 'A');
INSERT INTO `t_single` VALUES (355, '单选题', '用移码表示浮点数的阶码，其好处是（    ）。', '便于用比较电路比较阶的大小', '便于求阶差', '提高运算精度', '便于判别溢出', 'A');
INSERT INTO `t_single` VALUES (356, '单选题', '用以指定待执行指令所在地址的是（     ）。', '程序计数器', '累加器', '数据计数器', '指令寄存器', 'A');
INSERT INTO `t_single` VALUES (357, '单选题', '用于笔记本电脑的大容量存储器是（     ）。', '固态盘', '软磁盘', 'U盘', '磁带', 'A');
INSERT INTO `t_single` VALUES (358, '单选题', '对于IEEE754单精度浮点数加减运算，只要对阶时得到的两个阶码之差的绝对值大于等于（     ），就无须继续进行后续处理，此时，运算结果直接取阶大的那个数。', '24.0', '23.0', '126.0', '128.0', 'A');
INSERT INTO `t_single` VALUES (359, '单选题', '用于对某个寄存器中操作数的寻址方式称为（   ）寻址', '寄存器', '寄存器间接', '间接', '直接', 'A');
INSERT INTO `t_single` VALUES (360, '单选题', '由0、1代码组成的语言，称为（      ）。', '机器语言', '汇编语言', '人工语言', '高级语言', 'A');
INSERT INTO `t_single` VALUES (361, '单选题', '由2K×4的芯片组成容量为4KB的存储器需要(    )片这样的存储芯片。', '4', '2', '8', '16', 'A');
INSERT INTO `t_single` VALUES (362, '单选题', '原码加减交替除法又称为不恢复余数法，因此（                 ）。', '仅当最后一步余数为负时，做恢复余数的操作', '当某一步运算不够减时，做恢复余数的操作', '不存在恢复余数的操作', '当某一步余数为负时，做恢复余数的操作', 'A');
INSERT INTO `t_single` VALUES (363, '单选题', '运算器的主要功能是进行（           ）。', '逻辑运算和算术运算', '算术运算', '逻辑运算', '加法运算', 'A');
INSERT INTO `t_single` VALUES (364, '单选题', '74181ALU的功能是（       ）。', '实现16种4位算术和逻辑运算', '实现16种4位算术运算', '实现16种4位逻辑运算', '实现4位乘法运算和4位除法运算', 'A');
INSERT INTO `t_single` VALUES (365, '单选题', '运算器虽有许多部件组成，但核心部分是（         ）', '算术逻辑运算单元', '数据总线', '多路开关', '通用寄存器', 'A');
INSERT INTO `t_single` VALUES (366, '单选题', '在 CPU  的状态寄存器中，若符号标志为“ 1”  ，表示运算结果是（          ）。', '负', '正', '零', '不一定', 'A');
INSERT INTO `t_single` VALUES (367, '单选题', '在 CRC  码中，接收端检查出某位出错后，一般采用的纠正方法是（          ）。', '判断余数值由接收端自行纠正', '请求程序发送', '删除数据', '以上均可', 'A');
INSERT INTO `t_single` VALUES (368, '单选题', '在采用 (        )对设备进行编址情况下，不需要专门的I/O指令组。', '统一编址法', '单独编址法', '两者都是', '两者都不是', 'A');
INSERT INTO `t_single` VALUES (369, '单选题', '在（  ）中，0的表示是唯一的。', '补码', '原码', '反码', '以上三种编码', 'A');
INSERT INTO `t_single` VALUES (370, '单选题', '在（    ） 的微型计算机系统中，外设可以和主存储器单元统一编址，因此可以不用I/O指令。', '单总线', '三总线', '多总线', '双总线', 'A');
INSERT INTO `t_single` VALUES (371, '单选题', '下列陈述中，正确的是(         )。', '具有专门输入/输出指令的计算机，外设可以单独编址', '统一编址方法下，不可访问外设', '访问存储器的指令，只能访问存储器，一定不能访问外设', '只有输入/输出指令才可以访问外设', 'A');
INSERT INTO `t_single` VALUES (372, '单选题', '在CPU的寄存器中，（    ）对用户是完全透明的。', '指令寄存器', '程序计数器', '状态寄存器', '通用寄存器', 'A');
INSERT INTO `t_single` VALUES (373, '单选题', '在CPU中存放当前正在执行指令的的寄存器是 （         ）。', '指令寄存器', '主存地址寄存器', '程序计数器', '程序状态寄存器', 'A');
INSERT INTO `t_single` VALUES (374, '单选题', '在CPU中跟踪指令后继地址的寄存器是(     )', '程序计数器', '指令寄存器', '状态条件寄存器', '主存地址寄存器', 'A');
INSERT INTO `t_single` VALUES (375, '单选题', '在NRZ1制记录方式中，记录1时电流要（        ）。', '从-I→+I，或从+I→-I都可', '从-I→+I', '从0→+I', '从0→-I', 'A');
INSERT INTO `t_single` VALUES (376, '单选题', '在变址寄存器寻址方式中，若变址寄存器的内容是4E3CH，给出的偏移量是63H，则它对应的有效地址是（    ）。', '4E9FH', '4E3CH', '4D9FH', '63H', 'A');
INSERT INTO `t_single` VALUES (377, '单选题', '在表示存储器容量时，1K×8表示（    ）', '有1k个存储器单元，每个单元可存一个字节', '有1000个存储单元，每个单元为8bit', '存储器中有8000个存储器单元', '访问时需要20位地址线', 'A');
INSERT INTO `t_single` VALUES (378, '单选题', '在补码不恢复余数除法中，（     ）。', '余数与除数同号商1', '余数为正商0', '余数为正商1', '余数与除数异号商1', 'A');
INSERT INTO `t_single` VALUES (379, '单选题', '在补码的加减法中，用两位符号位判断溢出，两位符号位为  01   是，表示（        ）。', '结果正溢出', '结果为正数，无溢出', '结果负溢出', '结果为负数，没有溢出', 'A');
INSERT INTO `t_single` VALUES (380, '单选题', '在补码一位乘法中，A补是累加和，X补是被乘数，Y补是乘数，当判断位YnYn+1=01时，执行的运算是(       )。', '1/2（A补+X补）', '1/2（A补+Y补）', '1/2（A补－Y补）', '1/2（A补－X补）', 'A');
INSERT INTO `t_single` VALUES (381, '单选题', '将外围设备与主存统一编址，—般是指（        ）。', '接口中的有关寄存器各占一个地址码', '每台设备占一个地址码', '每个外围接口占一个地址码', '每台外设由一个主存单元管理', 'A');
INSERT INTO `t_single` VALUES (382, '单选题', '在串行传输时，被传输的数据（     ）。', '发送设备进行并行到串行的变换，在接受设备中都是进行串行到并行的变换', '在发送设备和接受设备中都是进行串行到并行的变换', '在发送设备和接受设备中都是进行并行到串行的变换', '发送设备进行串行到并行的变换，在接受设备中都是进行并行到串行的变换', 'A');
INSERT INTO `t_single` VALUES (383, '单选题', '在串行进位的加法器中，影响加法器运算速度的关键因素是（                ）。', '进位传递延迟', '门电路的级延迟', '元器件速度', '各位加法器速度的不同', 'A');
INSERT INTO `t_single` VALUES (384, '单选题', '在磁盘存储器中，查找时间是（      ）。', '使磁头移动到要找的柱面上所需的时间', '在磁道上找到要找的扇区所需的时间', '在扇区中找到要找的数据所需的时间', '都不对', 'A');
INSERT INTO `t_single` VALUES (385, '单选题', '在磁盘接口中（        ）。', '只采用DMA方式', '采用直接程序传送方式（查询等待方式）', '只采用中断方式', '既有DMA方式也有中断方式', 'A');
INSERT INTO `t_single` VALUES (386, '单选题', '在存储器分层体系结构中，存储器速度从最快到最慢的排列顺序是（     ）。', '寄存器—cache—主存—辅存', '寄存器—主存—辅存—cache', '寄存器—主存—cache—辅存', '寄存器—cache—辅存—主存', 'A');
INSERT INTO `t_single` VALUES (387, '单选题', '在大量数据传送中常用且有效的检验法是 （     ）', 'CRC校验', '奇偶校验法', '海明码校验', '判别校验', 'A');
INSERT INTO `t_single` VALUES (388, '单选题', '在大量数据传送中常用且有效的校验法是 (      )。', 'CRC校验', '奇校验', '偶校验', '海明码校验', 'A');
INSERT INTO `t_single` VALUES (389, '单选题', '在调频制记录方式中，不论写1或写0，在两个相邻单元交界处（        ）。', '电流方向都要变化一次', '电流负向变化一次', '电流正向变化一次', '电流方向不变化', 'A');
INSERT INTO `t_single` VALUES (390, '单选题', '在调频制记录方式中，记录0时，写电流（      ）变化一次。', '只在本位单元起始位置处', '只在本位单元中间位置处', '在本位单元起始位置处负向', '在本位单元起始位置和中间位置处', 'A');
INSERT INTO `t_single` VALUES (391, '单选题', '在调频制记录方式中，记录1时，写电流（     ）。', '在本位起始处和位单元中间位置各变化一次', '只在本位起始处正向变化一次', '只在本位起始处变化一次', '只在位单元中间位置变化一次', 'A');
INSERT INTO `t_single` VALUES (392, '单选题', '在调相制记录方式中（      ）。', '当相邻两位数值相同时，交界处变换电流方向', '在相邻位单元交界处必须变换磁化电流方向', '相邻位单元交界处，电流方向不变', '当相邻两位数值不同时，交界处变换电流方向', 'A');
INSERT INTO `t_single` VALUES (393, '单选题', '在定点二进制运算中，减法运算一般通过（    ）来实现。', '补码运算的二进制加法器', '原码运算的二进制减法器', '补码运算的二进制减法器', '补码运算的十进制加法器', 'A');
INSERT INTO `t_single` VALUES (394, '单选题', '在定点机中，下列说法错误的是（                        ）。', '除补码外，原码和反码不能表示  −  1', '+0   的原码不等于  −  0   的原码', '+0   的反码不等于  −  0   的反码', '对于相同的机器字长，补码比原码和反码能多表示一个负数', 'A');
INSERT INTO `t_single` VALUES (395, '单选题', '在定点机中执行算术运算时会产生溢出，其原因是（         ）', '运算结果无法表示', '主存容量不够', '操作数过大', '操作数地址过大', 'A');
INSERT INTO `t_single` VALUES (396, '单选题', '在定点数运算中产生溢出的原因是 (     ) 。', '运算的结果超出了机器的表示范围', '参加运算的操作数超出了机器的表示范围', '运算过程中最高位产生了进位或借位', '寄存器的位数太少，不得不舍弃最低有效位', 'A');
INSERT INTO `t_single` VALUES (397, '单选题', '在定点数运算中产生溢出的原因是（           ）', '寄存器的位数太少，不得不舍弃最低有效位', '运算过程中最高位产生了进位或错位', '参加运算的操作数超出了机器的表示范围', '运算的结果的操作数超出了机器的表示范围', 'A');
INSERT INTO `t_single` VALUES (398, '单选题', '在定点小数的机器中，下列说法正确的是（     ）。', '只有补码能表示-1', '只有原码能表示-1', '只有反码能表示-1', '原码、反码、补码都不能表示-1', 'A');
INSERT INTO `t_single` VALUES (399, '单选题', '在定点运算器中，无论采用双符号位还是采用单符号位，都必须要有溢出判断电路，它一般用（    ）来实现', '异或门', '与非门', '或非门', '与或非门', 'A');
INSERT INTO `t_single` VALUES (400, '单选题', '在独立编址方式下，下面的说法(     )是正确的。', '一个具体地址既可对应输入/输出设备，又可对应内存单元', '一个具体地址只能对应输入/输出设备', '一个具体地址只能对应内存单元', '只对应输入/输出设备或者只对应内存单元', 'A');
INSERT INTO `t_single` VALUES (401, '单选题', '在浮点机中，（          ）是隐藏的。', '基数', '阶码', '数符', '尾数', 'A');
INSERT INTO `t_single` VALUES (402, '单选题', '在浮点加减运算中，对阶的原则是（  ）。', '小阶向大阶对齐', '大阶向小阶对齐', '被加数向加数对齐', '加数向被加数对齐', 'A');
INSERT INTO `t_single` VALUES (403, '单选题', '在浮点数编码表示中，（      ）在机器数中不出现，是隐含的。', '基数', '尾数', '符号', '阶码', 'A');
INSERT INTO `t_single` VALUES (404, '单选题', '在浮点数机器中，判断补码规格化形式的规则是（     ）。', '尾数的符号位与第一位数值位不相同', '尾数的符号位与第一位数值位相同', '尾数的符号位固定，第一位数值位固定', '尾数的符号位和数值位都为1', 'A');
INSERT INTO `t_single` VALUES (405, '单选题', '在浮点数运算中，下溢指的是（）', '运算结果的绝对值小于机器所能表示的最小绝对值', '运算的结果小于机器所能表示的最小负数', '运算的结果小于机器所能表示的最小正数', '运算结果的最低有效位产生的错误', 'A');
INSERT INTO `t_single` VALUES (406, '单选题', '在浮点数中，当绝对值太大，以至于超过机器所能表示的数据时，称为浮点数的（        ）', '上溢', '正上溢', '正溢', '正下溢', 'A');
INSERT INTO `t_single` VALUES (407, '单选题', '在浮点数中，当数据的绝对值太小，以至于小于所能表示的数据时，称为浮点数的（                       ）。', '下溢', '负下溢出', '负溢', '正下溢', 'A');
INSERT INTO `t_single` VALUES (408, '单选题', '在浮点运算中，左规操作是将（     ）。', '尾数增大，阶码减小', '尾数减小，阶码增大', '尾数减小，阶码减小', '尾数增大，阶码增大', 'A');
INSERT INTO `t_single` VALUES (409, '单选题', '在规格化浮点数表示中，保持其他方面不变，将阶码部分的移码表示改成补码表示，将会使数的表示范围（                    ）。', '不变', '增大', '减少', '以上都不对', 'A');
INSERT INTO `t_single` VALUES (410, '单选题', '若浮点数尾数用补码表示，则下列数中为规格化尾数形式的是（       ）。', '1.1000000B', '1.1100000B', '0.0111000B', '0.0101000B', 'A');
INSERT INTO `t_single` VALUES (411, '单选题', '在集中式计数器定时查询方式下，若每次计数都从上次得到响应的设备随后一个设备号开始，则（      ）。', '每个设备的优先级均等', '设备号大的设备优先级高', '设备号小的设备优先级高', '每个设备的优先级随机变化', 'A');
INSERT INTO `t_single` VALUES (412, '单选题', '在集中式总线仲裁中，（   ）  方式响应时间最快。', '独立请求', '三种相同', '链式查询', '计数器定时查询', 'A');
INSERT INTO `t_single` VALUES (413, '单选题', '在寄存器间接寻址方式中，操作数是从（  ）。', '寄存器中读出', '主存储器中读出', '磁盘中读出', 'CPU中读出', 'A');
INSERT INTO `t_single` VALUES (414, '单选题', '在菊花链方式下，越接近控制器的设备优先级（       ）。', '越高', '越低', '越困难', '越容易', 'A');
INSERT INTO `t_single` VALUES (415, '单选题', '在控制器的控制方式中，机器周期内的时钟周期个数可以不相同，这属于（        ）。', '同步控制', '异步控制', '联合控制', '局部控制', 'A');
INSERT INTO `t_single` VALUES (416, '单选题', '在控制器的控制信号中，相容的信号是（     ）的信号。', '可以同时出现', '可以相继出现', '不可以同时出现', '可以相互替代', 'A');
INSERT INTO `t_single` VALUES (417, '单选题', '在取指令之后，程序计数器中存放的是（     ）。', '不转移时下一条指令的地址', '当前指令的地址', '程序中指令的数量', '指令的长度', 'A');
INSERT INTO `t_single` VALUES (418, '单选题', '在三种集中式总线控制中，（      ）方式响应时间最快。', '独立请求', '计数器定时查询', '链式查询', '以上都不是', 'A');
INSERT INTO `t_single` VALUES (419, '单选题', '在统一编址方式下，下面的说法(     )是正确的。', '只对应输入/输出设备或者只对应内存单元', '一个具体地址既可对应输入/输出设备，又可对应内存单元', '一个具体地址只能对应输入/输出设备', '一个具体地址只能对应内存单元', 'A');
INSERT INTO `t_single` VALUES (420, '单选题', '在微程序控制器中，一条机器指令的功能通常由（  ）。', '一段微程序实现', '一条微指令实现', '一个指令码实现', '一个条件码实现', 'A');
INSERT INTO `t_single` VALUES (421, '单选题', '在下列存储器中，（       ）属于磁表面存储器。', '磁盘', '固存（或光盘）', '高速缓存', '主存', 'A');
INSERT INTO `t_single` VALUES (422, '单选题', '在下列存储器中，按随机存取方式工作的存储器是（   ）。', '主存', '光盘', '磁带', '磁盘', 'A');
INSERT INTO `t_single` VALUES (423, '单选题', '在下列存储器中，存取时间的长短与信息所在的位置有关的是（   ）。', '磁带', '高速缓存', '主存', '固存', 'A');
INSERT INTO `t_single` VALUES (424, '单选题', '在下列机器数（  ）中，零的表示形式是唯一的', '补码', '原码', '反码', '原码和反码', 'A');
INSERT INTO `t_single` VALUES (425, '单选题', '在下列有关补码和移码关系的叙述中，错误的是（     ）。', '零的补码和移码表示相同', '相同位数的补码和移码表示具有相同的表数范围', '同一个数的补码和移码表示，其数值部分相同，而符号位相反', '一般用移码表示浮点数的阶，而补码表示定点整数', 'A');
INSERT INTO `t_single` VALUES (426, '单选题', '在下面的结论中，（    ）正确。', '主存可以和外围设备一样，通过单总线被访问', '主存是主机的一部分，不能通过单总线被访问', '主存是主机的一部分，必须通过专用总线进行访问', '主存是主机的一部分，必须通过内总线进行访问', 'A');
INSERT INTO `t_single` VALUES (427, '单选题', '在下述存储器中，允许随机访问的存储器是（    ）。', '半导体存储器', '磁鼓', '磁盘', '磁带', 'A');
INSERT INTO `t_single` VALUES (428, '单选题', '在一地址格式的指令中，下列     是正确的。', '可能有一个操作数，也可能有两个操作数', '一定有两个操作数，另一个是隐含的', '仅有一个操作数，其地址由指令的地址码提供', '指令的地址码字段存放的一定是操作码', 'A');
INSERT INTO `t_single` VALUES (429, '单选题', '在一地址指令格式中，下面论述正确的是（       ）。', '可能有一个操作数，也可能有两个操作数', '仅能有一个操作数，它由地址码提供', '一定有两个操作数，另一个是隐含的', '如果有两个操作数，另一个操作数是本身', 'A');
INSERT INTO `t_single` VALUES (430, '单选题', '在一个按字节编址的计算机系统中，若数据在存储器中以小端方案存放。假设int型变量i的地址为08000000H，i的机器数为01234567H，地址08000000H单元中的内容是（       ）。', '67H', '01H', '23H', '45H', 'A');
INSERT INTO `t_single` VALUES (431, '单选题', '在以下I/O控制方式中，主要由硬件而不是软件实现数据传送的方式是（    ）。', 'DMA方式', '无条件程序控制方式', '程序中断方式', '程序查询方式', 'A');
INSERT INTO `t_single` VALUES (432, '单选题', '在用比较法进行补码一位乘法时，若相邻两位乘数yiyi+1为01时，完成的操作是（  ）。', '原部分积+[X]补 ，右移一位', '无', '原部分积+[-X]补 ，右移一位', '原部分积+[Y]补 ，右移一位', 'A');
INSERT INTO `t_single` VALUES (433, '单选题', '在原码不恢复余数除法中，（  ）。', '余数为正商1', '余数为正商0', '余数与除数同号商0', '余数与除数异号商1', 'A');
INSERT INTO `t_single` VALUES (434, '单选题', '在原码加减交替除法中，符号位单独处理，参加操作的数是（      ）。', '绝对值的补码', '补码', '绝对值', '原码', 'A');
INSERT INTO `t_single` VALUES (435, '单选题', '在运算器中不包含（      ）。', '地址寄存器', '数据总线', '状态寄存器；', 'ALU', 'A');
INSERT INTO `t_single` VALUES (436, '单选题', '在整数定点机中，下述说法正确的是（             ）。', '三种机器均可表示  -1', '原码和反码不能表示  -1   ，补码可以表示  -1', '三种机器均可表示  -1   且三种机器数的表示范围相同', '都不能表示-1', 'A');
INSERT INTO `t_single` VALUES (437, '单选题', '在指令的地址字段中，直接指出操作数本身的寻址方式，称为（  ）', '立即寻址', '隐含寻址', '寄存器寻址', '直接寻址', 'A');
INSERT INTO `t_single` VALUES (438, '单选题', '在中断周期中，将允许中断触发器置“0”的操作由（     ）完成。', '硬件', '关中断指令', '开中断指令', '软件', 'A');
INSERT INTO `t_single` VALUES (439, '单选题', '在主存和CPU之间增加Cache的目的是（     ）。', '解决CPU和主存之间的速度匹配', '扩大主存的容量', '增加CPU中通用寄存器的数量', '代替CPU中寄存器工作', 'A');
INSERT INTO `t_single` VALUES (440, '单选题', '直接寻址的无条件转移指令功能是将指令中的地址码送（     ）。', 'PC', '地址寄存器', '累加器', 'ACC', 'A');
INSERT INTO `t_single` VALUES (441, '单选题', '直接寻址的无条件转移指令功能是将指令中的地址码送入（      ）。', 'PC(程序计数器)', '地址寄存器', '累加器', 'ALU', 'A');
INSERT INTO `t_single` VALUES (442, '单选题', '指令寄存器存放的是（   ）', '正在执行的指令', '下一条要执行的指令', '已执行完的指令', '要转移的指令', 'A');
INSERT INTO `t_single` VALUES (443, '单选题', '指令流通常是（      ）。', '从主存流向控制器', '从控制器流向主存', '从控制器流向控制器', '从主存流向主存', 'A');
INSERT INTO `t_single` VALUES (444, '单选题', '指令是指（    ）。', '发给计算机的一个操作命令', '通常用于构成主存的集成电路', '计算机中一个部件', '完成操作功能的硬件', 'A');
INSERT INTO `t_single` VALUES (445, '单选题', '指令系统中采用不同寻址方式的目的主要是（      ）。', '缩短指令长度，扩大寻址空间，提高编程灵活性', '提供扩展操作码并降低指令译码难度', '可直接访问外存', '实现存储程序和程序控制', 'A');
INSERT INTO `t_single` VALUES (446, '单选题', '指令系统中采用不同寻址方式的目的主要是（     ）。', '缩短指令字长，扩大寻址空间，提高编程灵活性', '可降低指令译码难度', '实现程序控制', '寻找操作数', 'A');
INSERT INTO `t_single` VALUES (447, '单选题', '指令系统中采用不同寻址方式的目的主要是（     ）。', '缩短指令长度，扩大寻址空间，提高编程灵活性', '实现存储程序和程序控制', '提供扩展操作码的可能并降低指令译码难度', '可以直接访问外存', 'A');
INSERT INTO `t_single` VALUES (448, '单选题', '指令执行所需的操作数不会来自(     )。', '控制器', '寄存器 ', '指令本身', '主存', 'A');
INSERT INTO `t_single` VALUES (449, '单选题', '指令中的地址结构是指（        ）。', '指令中给出几个地址', '指令中采用几种寻址方式  ', '指令中如何指明寻址方式 ', '地址段占多少位', 'A');
INSERT INTO `t_single` VALUES (450, '单选题', '至今为止,计算机中的所有信息仍以二进制方式表示的理由是(    )。', '物理器件性能所致', '运算速度快', '节约元件', '信息处理方便', 'A');
INSERT INTO `t_single` VALUES (451, '单选题', '中断系统是由 （     ）实现的。', '软、硬件结合', '仅用软件', '仅用硬件', '以上都不对', 'A');
INSERT INTO `t_single` VALUES (452, '单选题', '中断向量地址是（     ）。', '中断服务子程序入口地址的地址', '子程序入口地址', '中断返回地址', '中断服务子程序出口地址', 'A');
INSERT INTO `t_single` VALUES (453, '单选题', '中断向量可提供（     ）。', '中断服务程序入口地址', '传送数据的起始地址', '被选中设备的地址', '主程序的断点地址。', 'A');
INSERT INTO `t_single` VALUES (454, '单选题', '中央处理器（CPU）包含（   ）。', '运算器、控制器和Cache', '控制器', '运算器', '运算器、控制器和主存储器', 'A');
INSERT INTO `t_single` VALUES (455, '单选题', '主存储器一般（        ）。', '采用奇偶校验', '采用海明码校验', '采用循环码校验', '需同时采用两种校验', 'A');
INSERT INTO `t_single` VALUES (456, '单选题', '主机、外设不能并行工作的方式是 （     ）。', '程序查询方式', '中断方式', 'DMA方式', '通道方式', 'A');
INSERT INTO `t_single` VALUES (457, '单选题', '主机和外设之间的正确连接通路是（      ）。', 'CPU和主存—I/O总线—I/O接口（外设控制器）—通信总线（电缆）—外设', 'CPU和主存—I/O接口（外设控制器）—I/O总线—通信总线（电缆）—外设', 'CPU和主存—I/O总线—通信总线（电缆）—I/O接口（外设控制器）—外设', 'CPU和主存—I/O接口（外设控制器）—通信总线（电缆）—I/O总线—外设', 'A');
INSERT INTO `t_single` VALUES (458, '单选题', '主机中能对指令进行译码的部件（   ）。', '控制器', 'ALU', '运算器', '存储器', 'A');
INSERT INTO `t_single` VALUES (459, '单选题', '主设备通常指（    ）。', '掌握总线权的设备', '发送信息的设备', '接收信息的设备', '主要的设备', 'A');
INSERT INTO `t_single` VALUES (460, '单选题', '字长12位，用定点补码规格化小数表示时，所能表示的正数范围是(       ) 。', '1/2～(1－2-11)', '(1/2+2-11)～(1－2-11)', '2-12～(1－2-12)', '2-11～(1－2-11)', 'A');
INSERT INTO `t_single` VALUES (461, '单选题', '字长16位，用定点补码小数表示时，一个字能表示的范围是（  ）。', '-1  ～（1-2 [-15]）', '0  ～（1-2 [-15]）', '-1  ～+1', '- （1-2  [-15] ）   ～（1-2 [-15]）', 'A');
INSERT INTO `t_single` VALUES (462, '单选题', '字长相同的两种浮点数，第一种阶码位数多，尾数位数少，第二种阶码位数少，尾数位数多，阶的底数都是  2   ，则有（          ）。', '第一种数的范围大，但精度低', '它们表示的数的范围与精度相同', '第二种数的范围大，但精度高', '第一种数的范围大，但精度高', 'A');
INSERT INTO `t_single` VALUES (463, '单选题', '字长相同的两种浮点数，第一种阶码位数多，尾数位数少，第二种阶码位数少，尾数位数多，阶的底数都是 2  ，则（        ）。', '第一种数的范围大，但精度低', '它们表示的数的范围与精度相同', '第一种数的范围大，但精度高', '第二种数的范围大，但精度高', 'A');
INSERT INTO `t_single` VALUES (464, '单选题', '总线（     ）技术可以使不同的信号在同一条信号线上传输，分时使用。', '复用', '分时', '分频', '带宽', 'A');
INSERT INTO `t_single` VALUES (465, '单选题', '总线的异步通信方式（      ）。', '不采用时钟信号，只采用握手信号', '既采用时钟信号，又采用握手信号', '既不采用时钟信号，又不采用握手信号', '采用时钟信号，不采用握手信号', 'A');
INSERT INTO `t_single` VALUES (466, '单选题', '总线控制机构为解决N个部件使用总线时优先次序的裁决，集中式独立请求，需另外增加控制线根数为(      )。', '2N+1', '3', 'N', 'N+2', 'A');
INSERT INTO `t_single` VALUES (467, '单选题', '总线通信中的同步控制是（     ）。', '由统一时序控制的方式', '只适合于外围设备控制的方式', '只适合于CPU控制的方式', '只适合于主存', 'A');
INSERT INTO `t_single` VALUES (468, '单选题', '组成一个运算器需要多个部件，但下列所列（         ）不是组成运算器的部件。', '地址寄存器', '通用寄存器组', '数据总线', 'ALU', 'A');
INSERT INTO `t_single` VALUES (469, '单选题', '组成一个运算器需要若干个部件，但下面所列  不是组成运算器的部件。', '地址寄存器', '数据总线', 'ALU', '状态寄存器', 'A');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enabled` tinyint(4) NULL DEFAULT 1 COMMENT '是否启用',
  `is_deleted` tinyint(4) NULL DEFAULT 0,
  `created_date` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '注册时间',
  `modify_date` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'xseven', '$2a$05$R25SHlkraMJ7GUnaRpSE8eFrwIwsWVX.aOMIvqHiTlwMtE5RRqDwC', 1, 0, '2020-12-29 18:14:03', '2020-12-29 18:14:03');

SET FOREIGN_KEY_CHECKS = 1;
