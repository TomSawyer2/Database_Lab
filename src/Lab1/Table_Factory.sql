SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for j
-- ----------------------------
DROP TABLE IF EXISTS `j`;
CREATE TABLE `j`  (
  `JNO` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `JNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `CITY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`JNO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of j
-- ----------------------------
INSERT INTO `j` VALUES ('J1', '三建', '北京');
INSERT INTO `j` VALUES ('J2', '一汽', '长春');
INSERT INTO `j` VALUES ('J3', '弹簧厂', '天津');
INSERT INTO `j` VALUES ('J4', '造船厂', '天津');
INSERT INTO `j` VALUES ('J5', '机车厂', '唐山');
INSERT INTO `j` VALUES ('J6', '无线电厂', '常州');
INSERT INTO `j` VALUES ('J7', '半导体厂', '南京');

-- ----------------------------
-- Table structure for p
-- ----------------------------
DROP TABLE IF EXISTS `p`;
CREATE TABLE `p`  (
  `PNO` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `PNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `COLOR` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `WEIGHT` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`PNO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of p
-- ----------------------------
INSERT INTO `p` VALUES ('P1', '螺母', '红', 12);
INSERT INTO `p` VALUES ('P2', '螺栓', '绿', 17);
INSERT INTO `p` VALUES ('P3', '螺丝刀', '蓝', 14);
INSERT INTO `p` VALUES ('P4', '螺丝刀', '红', 14);
INSERT INTO `p` VALUES ('P5', '凸轮', '蓝', 40);
INSERT INTO `p` VALUES ('P6', '齿轮', '红', 30);

-- ----------------------------
-- Table structure for s
-- ----------------------------
DROP TABLE IF EXISTS `s`;
CREATE TABLE `s`  (
  `SNO` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `SNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `STATUS` int(0) NULL DEFAULT NULL,
  `CITY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`SNO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of s
-- ----------------------------
INSERT INTO `s` VALUES ('S1', '精益', 20, '天津');
INSERT INTO `s` VALUES ('S2', '盛锡', 10, '北京');
INSERT INTO `s` VALUES ('S3', '东方红', 30, '北京');
INSERT INTO `s` VALUES ('S4', '丰泰盛', 20, '天津');
INSERT INTO `s` VALUES ('S5', '为民', 30, '上海');

-- ----------------------------
-- Table structure for spj
-- ----------------------------
DROP TABLE IF EXISTS `spj`;
CREATE TABLE `spj`  (
  `SNO` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `PNO` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `JNO` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `QTY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spj
-- ----------------------------
INSERT INTO `spj` VALUES ('S1', 'P1', 'J1', '200');
INSERT INTO `spj` VALUES ('S1', 'P1', 'J3', '100');
INSERT INTO `spj` VALUES ('S1', 'P1', 'J4', '700');
INSERT INTO `spj` VALUES ('S1', 'P2', 'J2', '100');
INSERT INTO `spj` VALUES ('S2', 'P3', 'J1', '400');
INSERT INTO `spj` VALUES ('S2', 'P3', 'J2', '200');
INSERT INTO `spj` VALUES ('S2', 'P3', 'J4', '500');
INSERT INTO `spj` VALUES ('S2', 'P3', 'J5', '400');
INSERT INTO `spj` VALUES ('S2', 'P5', 'J1', '400');
INSERT INTO `spj` VALUES ('S2', 'P5', 'J2', '100');
INSERT INTO `spj` VALUES ('S3', 'P1', 'J1', '200');
INSERT INTO `spj` VALUES ('S3', 'P3', 'J1', '200');
INSERT INTO `spj` VALUES ('S4', 'P5', 'J1', '100');
INSERT INTO `spj` VALUES ('S4', 'P6', 'J3', '300');
INSERT INTO `spj` VALUES ('S4', 'P6', 'J4', '200');
INSERT INTO `spj` VALUES ('S5', 'P2', 'J4', '100');
INSERT INTO `spj` VALUES ('S5', 'P3', 'J1', '200');
INSERT INTO `spj` VALUES ('S5', 'P6', 'J2', '200');
INSERT INTO `spj` VALUES ('S5', 'P6', 'J4', '500');

SET FOREIGN_KEY_CHECKS = 1;
