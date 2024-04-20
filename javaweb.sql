/*
 Navicat Premium Data Transfer

 Source Server         : Mysql3308
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3308
 Source Schema         : javaweb

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 25/12/2020 13:13:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `goods_id` int(0) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` double(10, 2) NULL DEFAULT NULL,
  `quanty` int(0) NULL DEFAULT NULL,
  `goods_state` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`goods_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, '洗衣粉', 5.00, 12, '在售');
INSERT INTO `goods` VALUES (2, '牙膏', 8.00, 50, '在售');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` varchar(180) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `receiverAddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiverName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiverPhone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ordertime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1514307112298', '华软', 'gwh', '133455678', 'Wed Dec 27 00:51:52 CST 2017', 'aaa');
INSERT INTO `orders` VALUES ('1514427449169', 'wegth', 'abc123', '13345324564', 'Thu Dec 28 10:17:29 CST 2017', 'abc123');
INSERT INTO `orders` VALUES ('1514431695471', 'sadf', 'aaaa', '13385211465', 'Thu Dec 28 11:28:15 CST 2017', 'aa1234');
INSERT INTO `orders` VALUES ('1514463202171', 'fdzgth', 'aaa256563', '133455678', 'Thu Dec 28 20:13:22 CST 2017', 'aaa');
INSERT INTO `orders` VALUES ('155754464', '广东省广州市从化太平548号', 'zhangsan', '13104922330', '2020-12-24 15:57:53', 'zhangsan');
INSERT INTO `orders` VALUES ('160720169', '广东省广州市从化太平548号', 'zhangsan', '13104922330', '2020-12-24 16:07:04', 'zhangsan');
INSERT INTO `orders` VALUES ('162245537', '广东省广州市从化太平548号', 'zhangsan', '13104922330', '2020-12-24 16:22:24', 'zhangsan');
INSERT INTO `orders` VALUES ('191905769', '0', 'admin', '131154545', '2020-12-23 19:16:49', 'admin');
INSERT INTO `orders` VALUES ('192757912', '0', 'admin', '131154545', NULL, 'admin');
INSERT INTO `orders` VALUES ('193127581', '0', 'admin', '131154545', NULL, 'admin');
INSERT INTO `orders` VALUES ('194415376', '0', 'admin', '131154545', '2020-12-23 19:31:30', 'admin');
INSERT INTO `orders` VALUES ('202131860', '广东省广州市从化太平548号', 'zhangsan', '13104922330', '2020-12-24 20:21:31', 'zhangsan');
INSERT INTO `orders` VALUES ('210736667', '广东省广州市从化太平548号', 'zhangsan', '13104922330', '2020-12-23 21:06:43', 'zhangsan');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` double NULL DEFAULT NULL,
  `category` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pnum` int(0) NULL DEFAULT NULL,
  `imgurl` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('00001', '红楼梦', 99, '科学类', 45, 'dj2.jpg', NULL);
INSERT INTO `product` VALUES ('00002', '水浒传', 67, '文学类', 345, 'dj3.jpg', NULL);
INSERT INTO `product` VALUES ('00003', '三国演义', 55, '文学类', 48, 'dj4.jpg', NULL);
INSERT INTO `product` VALUES ('00004', '西游记', 67, '文学类', 46, 'dj1.jpg', NULL);
INSERT INTO `product` VALUES ('00005', '先发影响力', 47, '科学类', 475, 'bq1.jpg', NULL);
INSERT INTO `product` VALUES ('00006', '赋能', 55, '科学类', 241, 'bq2.jpg', NULL);
INSERT INTO `product` VALUES ('00007', '品牌思维', 36, '科学类', 264, 'bq3.jpg', NULL);
INSERT INTO `product` VALUES ('00008', '个体崛起', 37, '科学类', 67, 'bq4.jpg', NULL);
INSERT INTO `product` VALUES ('00009', '秘密', 36, '科学类', 635, 'dz1.jpg', NULL);
INSERT INTO `product` VALUES ('00010', '理解人体形态', 47, '科学类', 69, 'jr2.jpg', NULL);
INSERT INTO `product` VALUES ('00011', '爆款文案', 28, '科学类', 584, 'jr3.jpg', NULL);
INSERT INTO `product` VALUES ('00012', '看万物', 34, '科学类', 345, 'jr4.jpg', NULL);
INSERT INTO `product` VALUES ('00013', '择天记', 36, '科学类', 343, 'item1.jpg', NULL);
INSERT INTO `product` VALUES ('00014', '微微一笑很倾城', 35, '科学类', 545, 'item2.jpg', NULL);
INSERT INTO `product` VALUES ('00015', '数学世界历险记', 54, '科学类', 356, 'kx12.jpg', NULL);
INSERT INTO `product` VALUES ('00016', '生活中的每一场小聚会', 26, '生活类', 436, 'sh1.jpg', NULL);
INSERT INTO `product` VALUES ('00017', '过生活不如任性', 23, '生活类', 423, 'sh2.jpg', NULL);
INSERT INTO `product` VALUES ('00018', '美与生活', 18, '生活类', 357, 'sh3.jpg', NULL);
INSERT INTO `product` VALUES ('00019', '生活十讲', 28, '生活类', 439, 'sh4.jpg', NULL);
INSERT INTO `product` VALUES ('00020', '生活的艺术', 45, '生活类', 435, 'sh5.jpg', NULL);
INSERT INTO `product` VALUES ('00021', '把生活过成想要的样子', 32, '生活类', 575, 'sh6.jpg', NULL);
INSERT INTO `product` VALUES ('00022', '生活的哲学', 58, '生活类', 345, 'sh7.jpg', NULL);
INSERT INTO `product` VALUES ('00023', '周末田舍生活', 34, '生活类', 574, 'sh8.jpg', NULL);
INSERT INTO `product` VALUES ('00024', '渴望生活', 63, '生活类', 234, 'sh10.jpg', NULL);
INSERT INTO `product` VALUES ('00025', '你的样子，家的样子', 34, '生活类', 245, 'sh12.jpg', NULL);
INSERT INTO `product` VALUES ('00026', '男孩的田野', 69, '文学类', 635, 'wx1.jpg', NULL);
INSERT INTO `product` VALUES ('00027', '驭风少年', 34, '文学类', 573, 'wx7.jpg', NULL);
INSERT INTO `product` VALUES ('00028', '草木缘情', 68, '文学类', 675, 'wx8.jpg', NULL);
INSERT INTO `product` VALUES ('00029', '繁花', 60, '文学类', 235, 'wx9.jpg', NULL);
INSERT INTO `product` VALUES ('00030', '我的精神家园', 47, '文学类', 234, 'wx10.jpg', NULL);
INSERT INTO `product` VALUES ('00031', '文学理论', 74, '文学类', 436, 'wx11.jpg', NULL);
INSERT INTO `product` VALUES ('00032', '孤独之旅', 35, '文学类', 456, 'xw2.jpg', NULL);
INSERT INTO `product` VALUES ('00033', '中国天文学史', 288, '文学类', 435, 'xw4.jpg', NULL);
INSERT INTO `product` VALUES ('00034', '写给幼儿园的成语故事', 58, '文学类', 653, 'xw6.jpg', NULL);
INSERT INTO `product` VALUES ('00035', '中国现代文学三十年', 56, '文学类', 435, 'xw12.jpg', NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gender` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '这位用户很懒，什么都没写哦',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'admin', NULL, '131154545', '0');
INSERT INTO `user` VALUES (3, 'aaa', '123', '男', '133455678', 'sdafefeqfqwfewf');
INSERT INTO `user` VALUES (8, 'abc123', 'abc123', '女', '13345324564', 'dqwerrg');
INSERT INTO `user` VALUES (9, 'abcvfa12', 'abc123456', NULL, '13466658751', 'c');
INSERT INTO `user` VALUES (10, 'aa1234', 'aa1234', NULL, '13385211465', 'dsf');
INSERT INTO `user` VALUES (11, 'ruanjinli666', 'ruanjinli666', NULL, '13104922330', '666');
INSERT INTO `user` VALUES (12, 'zhangsan', '666', '男', '13104922330', '广东省广州市从化太平548号');
INSERT INTO `user` VALUES (13, '李四', '666', '男', '13104922330', '广东省湛江市168号');
INSERT INTO `user` VALUES (14, '李四', '666', '男', '13104922330', '广东省湛江市168号');
INSERT INTO `user` VALUES (15, 'lisi', '666', '男', '13104922330', '广东省广州市从化太平548号');
INSERT INTO `user` VALUES (16, 'wangwu', '666', '男', '13104922330', '广东省湛江市168号');

SET FOREIGN_KEY_CHECKS = 1;
