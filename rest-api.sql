/*
 Navicat Premium Data Transfer

 Source Server         : api
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : 35.240.217.54:4242
 Source Schema         : ptudw

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 23/10/2019 21:05:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_at` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`, `username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'thanhtinh', 'thanhtinh', '$2b$10$0vF8IdjBhhtjfIoTvezBcu1VDescrgL3qOqx1sHG0Rc0WDG.Ryfme', 'thanhtinhpas@gmail.com', '2019-06-21 09:48:04', '2019-06-21 09:48:04');
INSERT INTO `users` VALUES (2, 'quangtrieu', 'subscriber', '$2b$10$3elT0zOG6hF0KIHqN4l1gugHSrw/2Rje.v/LnwKsUvHyc4qxTsG.i', 'thanhtinhpas@gmail.com', '2019-06-22 09:33:44', '2019-06-22 09:42:36');
INSERT INTO `users` VALUES (3, 'thanhtinh', 'writer', '$2b$10$3elT0zOG6hF0KIHqN4l1gugHSrw/2Rje.v/LnwKsUvHyc4qxTsG.i', 'huutien@gmail.com', '2019-06-23 21:12:38', '2019-06-23 21:12:38');
INSERT INTO `users` VALUES (4, 'thanhtinh', 'editor', '$2b$10$3elT0zOG6hF0KIHqN4l1gugHSrw/2Rje.v/LnwKsUvHyc4qxTsG.i', 'hello@gmail.com', '2019-06-21 09:48:05', '2019-06-21 09:48:05');
INSERT INTO `users` VALUES (6, 'thanhtinh', 'admin', '$2b$10$3elT0zOG6hF0KIHqN4l1gugHSrw/2Rje.v/LnwKsUvHyc4qxTsG.i', 'hdbhdh', '2019-06-21 09:57:45', '2019-06-21 09:57:45');
INSERT INTO `users` VALUES (7, 'thanhtinh', 'trieu', '$2b$10$3elT0zOG6hF0KIHqN4l1gugHSrw/2Rje.v/LnwKsUvHyc4qxTsG.i', 'donaldtrieu@gmail.com', '2019-06-04 16:35:10', '2019-06-04 04:54:46');
INSERT INTO `users` VALUES (8, 'thanhtinh', 'awd', '$2b$2b$10$3elT0zOG6hF0KIHqN4l1gugHSrw/2Rje.v/LnwKsUvHyc4qxTsG.i', 'awd@gmail', '2019-06-21 09:48:05', '2019-06-21 09:48:05');
INSERT INTO `users` VALUES (9, 'thanhtinh', 'trieunq', '$2b$10$eYWgcp3twC0jFH/NMHwXROL/pOA0c6mAArAWWWgrr9HFfltX43qSO', 'nguyenquangtrieu02071998@gmail.com', '2019-06-21 09:48:05', '2019-06-21 09:48:05');
INSERT INTO `users` VALUES (10, NULL, 'tinh', '$2b$10$i06K9UBSGYo3pRswk8Mju.XrPF.dMcWsaqw43Jn/BScB/CeYAs9LG', 'thanhtinhpas1@gmail.com', '2019-10-14 10:41:54', '2019-10-14 10:41:54');
INSERT INTO `users` VALUES (11, NULL, 'tinh', '$2b$10$Lmgt0IiFOCCIyAOrm3Ju5uBWIkFBV0SOBGda2q3NeU4uGIjwtqsDq', NULL, '2019-10-14 10:43:17', '2019-10-14 10:43:17');
INSERT INTO `users` VALUES (12, NULL, 'tinh', '$2b$10$DjrtdPyS/KJ3OkFWuGqQv.cPOfDzgrv/mCNpeQvNP7MN1aGjnJnBW', 'thanhtinhpas1@gmail.com', '2019-10-14 10:43:20', '2019-10-14 10:43:20');
INSERT INTO `users` VALUES (13, NULL, 'admin', '$2b$10$KnTEUi3naNbj7GOiffhUh.RqQ8sG24ujkPzRbPViMuys1g6D7/0ze', NULL, '2019-10-18 04:07:43', '2019-10-18 04:07:43');
INSERT INTO `users` VALUES (16, NULL, '', '$2b$10$QC5WYBmX//5r0xfSm/6NWuaa62.ByQ0iLwnviMcglvi3rYUxxWwbW', '', '2019-10-22 10:50:48', '2019-10-22 10:50:48');
INSERT INTO `users` VALUES (17, NULL, '', '$2b$10$syUZH0hW7EG7I7NPGfW88O70OjagQWqeOBnTwunwQldvXBrB6dB9u', '', '2019-10-22 10:51:08', '2019-10-22 10:51:08');
INSERT INTO `users` VALUES (18, NULL, '', '$2b$10$Bd6oNsERUR70pSihOTsBSufsZXo4YI1wBhB78.ub97vreIH9jGxOy', '', '2019-10-22 10:51:18', '2019-10-22 10:51:18');
INSERT INTO `users` VALUES (19, NULL, 'ifuser', '$2b$10$t2K/RRL4wKUzHA.zxFlonO.UGjVhkgD2mdmt.U/DmqajkS55w/rV2', 'ifuser@gmail.com', '2019-10-22 10:51:50', '2019-10-22 10:51:50');
INSERT INTO `users` VALUES (20, NULL, 'thanhtinhpas1', '$2b$10$0DDIimnguxlUPtHgTlE5z.MPJBONZ1OuXQT3ViVSjFQkQ4DODelvy', 't@gmail.com', '2019-10-23 11:51:46', '2019-10-23 11:51:46');
INSERT INTO `users` VALUES (21, NULL, 'thanhtinhpas1', '$2b$10$KBrw6zomU85Vmt5A/lJpn.12jZLon6Cv42OjllTQ6qZr8jZNJUBwy', 't@gmail.com', '2019-10-23 11:51:47', '2019-10-23 11:51:47');
INSERT INTO `users` VALUES (22, NULL, 'ifuser', '$2b$10$.KdXMcXhRdt/AT4YmaIttuTr6g1vu3wWXN6q8pW4mQNGewDZ3SDxK', 'w@gmail.com', '2019-10-23 01:32:46', '2019-10-23 01:32:46');
INSERT INTO `users` VALUES (23, NULL, 'ifuser', '$2b$10$yb4hgjvrSJ/vJSUw5R8C1.BlOHbRCU9nZobrjhHaGnrbW88JPHByS', 'awd@gmail.com', '2019-10-23 01:36:33', '2019-10-23 01:36:33');
INSERT INTO `users` VALUES (24, NULL, 'ifuser', '$2b$10$0kvQqFJTH3CY9OQ0QwqH4u5ufTXM8IHCdFec54yomeBPxu8IIs52.', 'awd@gmail.com', '2019-10-23 01:37:48', '2019-10-23 01:37:48');
INSERT INTO `users` VALUES (25, NULL, 'ifuser', '$2b$10$wAU2Oy..hqxrc7zOW.qwzO8P5WuZTtSUbDtnRGeGnLD6PLlX6k3Em', 'awd@gmail.com', '2019-10-23 01:39:45', '2019-10-23 01:39:45');
INSERT INTO `users` VALUES (26, NULL, 'ifuser', '$2b$10$nqqg9ea5ss/HYcugK/RGnu7F8Rx2CG/1c/uJU4RbCl1lMkTVSbh.u', 'awd@gmail.com', '2019-10-23 01:39:45', '2019-10-23 01:39:45');
INSERT INTO `users` VALUES (27, NULL, 'ifuser', '$2b$10$8HoQwg3ylEmlkpzchTnUQOrk11ui/eCWADnYZi78mI3MszGWxrHIq', 'awd@gmail.com', '2019-10-23 01:41:49', '2019-10-23 01:41:49');
INSERT INTO `users` VALUES (28, NULL, 'abc', '$2b$10$P7IX3ehzxYn735tXQiyucemRK97QSa07ljgttOA3xfTg/p4Ez2X8W', 'awd@gmail.com', '2019-10-23 01:53:03', '2019-10-23 01:53:03');
INSERT INTO `users` VALUES (29, NULL, 'abcd', '$2b$10$YjHy16xl7oqythKKDgVfN.WM3wPbZKafWQMSPHOIFNsTxttep3tSm', 'awd@gmail.com', '2019-10-23 01:53:46', '2019-10-23 01:53:46');

SET FOREIGN_KEY_CHECKS = 1;
