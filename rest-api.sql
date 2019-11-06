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

 Date: 06/11/2019 10:13:34
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
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_at` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`, `username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (36, 'thanhtinh', 'thanhtinhpas1', '$2b$10$lbuImK0aNbIgMJyMnI7VUOscsKjm7C0QfkPiWgPWGBsewpP5Y1sbq', 'https://cnet3.cbsistatic.com/img/Yt768C55hXNi2eGSB9qOv-e7SQg=/2011/03/16/c7675aa8-fdba-11e2-8c7c-d4ae52e62bcc/Chrome-logo-2011-03-16.jpg', 'ifuser@gmail.com', '2019-10-31 15:38:10', '2019-10-31 15:38:10');
INSERT INTO `users` VALUES (37, 'thanhtinh', 'ifuser', '$2b$10$uicxSsLuAT0Kx3CZZ1XOeegPFl.e9hhjZcxm49FGo.zBd8XfOK/lW', 'https://cnet3.cbsistatic.com/img/Yt768C55hXNi2eGSB9qOv-e7SQg=/2011/03/16/c7675aa8-fdba-11e2-8c7c-d4ae52e62bcc/Chrome-logo-2011-03-16.jpg', 'ifuser@gmail.com', '2019-10-31 15:38:10', '2019-11-06 09:46:18');
INSERT INTO `users` VALUES (38, 'thanhtinh', 'ifuser', '$2b$10$mRHxr/9SyHvO3eS2yKd4Ru7E5K.tCn2p3.OOMOcdWWmGr26IxDC2S', 'https://cnet3.cbsistatic.com/img/Yt768C55hXNi2eGSB9qOv-e7SQg=/2011/03/16/c7675aa8-fdba-11e2-8c7c-d4ae52e62bcc/Chrome-logo-2011-03-16.jpg', 'ifuser@gmail.com', '2019-10-31 15:38:10', '2019-10-31 15:38:10');
INSERT INTO `users` VALUES (39, 'thanhtinh', 'ifuser', '$2b$10$wIwqxfnPtSjv.mMleT0RSeR0AOyS.uGmmMp9j9geXMfUN/jNfpDnS', 'https://cnet3.cbsistatic.com/img/Yt768C55hXNi2eGSB9qOv-e7SQg=/2011/03/16/c7675aa8-fdba-11e2-8c7c-d4ae52e62bcc/Chrome-logo-2011-03-16.jpg', 'ifuser@gmail.com', '2019-10-31 15:38:10', '2019-10-31 15:38:10');
INSERT INTO `users` VALUES (40, 'thanhtinh', 'ifuser', '$2b$10$r9QFmzd.xV2Em3mlH65VhO.w12vK7jgEa1Jxs2xoGaLiturfo/02u', 'https://cnet3.cbsistatic.com/img/Yt768C55hXNi2eGSB9qOv-e7SQg=/2011/03/16/c7675aa8-fdba-11e2-8c7c-d4ae52e62bcc/Chrome-logo-2011-03-16.jpg', 'ifuser@gmail.com', '2019-10-31 15:38:10', '2019-10-31 15:38:10');
INSERT INTO `users` VALUES (41, 'tinhdeptrai', 'tinh', '$2b$10$Wwp0T0EN507COcrEDzz9zOWAvaYziknGuh4/DcM18qkgu9.U64R2y', NULL, 'tinh@gmail.com', '2019-11-06 12:13:56', '2019-11-06 12:13:56');
INSERT INTO `users` VALUES (42, 'abc', 'abc', '$2b$10$1.tDhljuji61QEuIr2g7p.Duf0h1E.3VovkWiQ4mEVVYwyH1qX26y', NULL, '123123', '2019-11-06 09:36:23', '2019-11-06 09:36:23');
INSERT INTO `users` VALUES (43, 'abc', 'ifuser', '$2b$10$dhsUTRxPJ71GKStxSqd1duwtlP99VlTWMtkIfI9ZZMdAhWoQt4fzC', NULL, '123123', '2019-11-06 09:37:51', '2019-11-06 09:37:51');

SET FOREIGN_KEY_CHECKS = 1;
