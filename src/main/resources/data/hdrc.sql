/*
 Navicat Premium Data Transfer

 Source Server         : localhostDB
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : hdrc

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 21/05/2019 18:12:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '后台管理员',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `head_img` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `pwd` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '秘密啊',
  `add_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  `modify_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, '18720733215', 'static/upload/image/admin/file_0584423a0b88493fb86c38169a644daa.jpg', '123456', NULL, NULL);

-- ----------------------------
-- Table structure for edu_experience
-- ----------------------------
DROP TABLE IF EXISTS `edu_experience`;
CREATE TABLE `edu_experience`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '教育经历',
  `user_resume_id` bigint(20) NULL DEFAULT NULL COMMENT '用户简历id',
  `start_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开始时间',
  `end_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '结束时间',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `edu_background` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学历',
  `major` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `add_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  `modify_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of edu_experience
-- ----------------------------
INSERT INTO `edu_experience` VALUES (30, 5, '2019-04-20', '2019-04-21', '我我梦我梦我梦我梦梦', NULL, '我我梦我梦我梦我梦梦', NULL, '2019-04-09 18:07:21', '2019-04-11 20:26:43');
INSERT INTO `edu_experience` VALUES (31, 5, '2019-04-27', '2019-04-28', '我我梦我梦我梦我梦梦', NULL, '我我梦我梦我梦我梦梦', NULL, '2019-04-09 18:07:21', '2019-04-11 20:26:44');
INSERT INTO `edu_experience` VALUES (34, 1, '2012-12-12', '2012-12-12', '江西', NULL, '计算机科学与技术', NULL, '2019-04-17 17:52:40', '2019-05-10 14:49:40');
INSERT INTO `edu_experience` VALUES (35, 1, '2012-12-12', '2012-12-12', '晋江', NULL, '计算机科学与技术', NULL, '2019-04-17 17:54:45', '2019-05-10 14:49:40');
INSERT INTO `edu_experience` VALUES (36, 10, '', '', '', NULL, '', NULL, '2019-05-05 18:24:08', NULL);
INSERT INTO `edu_experience` VALUES (37, 9, '2008-05-07', '2011-05-07', '江西师范大学', NULL, '英语教育', NULL, '2019-05-06 11:35:49', '2019-05-07 07:54:52');
INSERT INTO `edu_experience` VALUES (38, 11, '', '', '', NULL, '', NULL, '2019-05-08 10:55:00', NULL);
INSERT INTO `edu_experience` VALUES (39, 12, '2012-12-12', '2019-12-12', '江西农业大学', NULL, '计算机科学与技术', NULL, '2019-05-09 13:43:28', '2019-05-09 13:46:37');
INSERT INTO `edu_experience` VALUES (40, 12, '2012-12-12', '2019-12-12', '江西农业大学222', NULL, '计算机科学与技术222', NULL, '2019-05-09 13:43:28', '2019-05-09 13:46:37');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '企业员工',
  `enterprise_id` bigint(11) NULL DEFAULT NULL COMMENT '企业id',
  `head_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `department` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门',
  `job` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `pwd` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '秘密',
  `weChat` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信',
  `qq` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'qq',
  `add_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  `modify_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for enter_set
-- ----------------------------
DROP TABLE IF EXISTS `enter_set`;
CREATE TABLE `enter_set`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '入驻设置',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '入驻类型',
  `money` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '入驻费用',
  `add_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  `modify_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of enter_set
-- ----------------------------
INSERT INTO `enter_set` VALUES (1, '1', '70', '2019-04-01 12:12:12', '2019-04-01 12:12:12');
INSERT INTO `enter_set` VALUES (2, '2', '1000', NULL, NULL);
INSERT INTO `enter_set` VALUES (3, '3', '17777', NULL, NULL);
INSERT INTO `enter_set` VALUES (4, '80', '2000', NULL, NULL);

-- ----------------------------
-- Table structure for enterprise
-- ----------------------------
DROP TABLE IF EXISTS `enterprise`;
CREATE TABLE `enterprise`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id(企业)',
  `wechat_public_openid` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信公众号openid',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业名称',
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'logo',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电话',
  `pwd` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `we_chat` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信',
  `qq` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'QQ',
  `business_license` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '营业执照',
  `teacher_aptitude` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '办学资质',
  `legal_id_card` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '法人身份证',
  `legal_id_card_reverse` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remit_authentication` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '打款凭证',
  `intro` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '企业简介',
  `work_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上班时间',
  `single_double_cease` int(100) NULL DEFAULT 0 COMMENT '0无休息1单休2双休',
  `enterprise_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业类型(行业)',
  `quality` varchar(50) CHARACTER SET utf32 COLLATE utf32_general_ci NULL DEFAULT NULL COMMENT '企业性质',
  `scale` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业的规模',
  `province` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省',
  `city` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '市',
  `area` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '县',
  `town` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所在乡镇',
  `detail_place` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  `employee_number` int(11) NULL DEFAULT NULL COMMENT '员工数量',
  `register_money` int(11) NULL DEFAULT NULL COMMENT '注册资金(单位万)',
  `lng` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '精度',
  `lat` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '纬度',
  `service_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '服务类型',
  `authentication_status` int(2) NULL DEFAULT 0 COMMENT '认证状态0未认证1等待认证2认证通过3认证不通过',
  `status` int(2) NULL DEFAULT 1 COMMENT '(0未认证1认证通过2认证不通过3冻结)',
  `service_end_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '服务到期时间',
  `authentication_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '认证时间',
  `setup_time` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '成立日期',
  `register_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '注册日期',
  `add_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  `modify_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of enterprise
-- ----------------------------
INSERT INTO `enterprise` VALUES (1, NULL, 'string', 'static/upload/image/admin/3.jpg', '18720733215', '123456', NULL, 'string', 'string', 'static/upload/image/admin/3.jpg', 'static/upload/image/admin/3.jpg', 'static/upload/image/admin/3.jpg', NULL, 'static/upload/image/admin/3.jpg', '江西中新云农科技有限公司（以下简称“公司”）是一家致力于开拓农业产业、科技、金融的互联网公司，集信息咨询、软件研发、系统集成、电商运营与农产品销售为一体，公司已通过ISO9001的质量管理体系认证，是中国联通赣州市分公司的战略合作伙伴，其创始团队由来自上海、深圳的科技、金融、互联网等行业高管组成，先后投资了3000 余万元，积极探索“互联网+农业”的发展之道,并负责运营6000亩赣南脐橙果园春秋农庄，上万亩山茶油基地和加工厂梓得福以及上千亩赣南红柚。\r\n2016年以来，先后承接了赣县国家现代农业示范区智慧农业项目、江西省农业厅智慧农业软件服务项目和江西省信息中心平台演示项目，其智慧农业项目获得了江西省委、省政府和赣州市委、市政府的主要领导现场考察与高度评价，并且在央视1套新闻联播进行了报道。公司CEO刘杨多次参与接待中央与省市主要领导，江西电视台、江西日报、赣州电视台、赣南日报等主流媒体多次报道。\r\n运营合作伙伴：', 'string', 0, 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', 0, 0, 'string', 'string', NULL, 1, 3, '2020-04-13', 'string', 'string', 'string', '2019-12-12 12:12:12', '2019-03-30 15:34:24');
INSERT INTO `enterprise` VALUES (2, NULL, 'string', 'static/upload/image/admin/3.jpg', '18720733216', '123456', NULL, 'string', 'string', 'static/upload/image/admin/3.jpg', 'static/upload/image/admin/3.jpg', 'static/upload/image/admin/3.jpg', NULL, 'static/upload/image/admin/3.jpg', '江西中新云农科技有限公司（以下简称“公司”）是一家致力于开拓农业产业、科技、金融的互联网公司，集信息咨询、软件研发、系统集成、电商运营与农产品销售为一体，公司已通过ISO9001的质量管理体系认证，是中国联通赣州市分公司的战略合作伙伴，其创始团队由来自上海、深圳的科技、金融、互联网等行业高管组成，先后投资了3000 余万元，积极探索“互联网+农业”的发展之道,并负责运营6000亩赣南脐橙果园春秋农庄，上万亩山茶油基地和加工厂梓得福以及上千亩赣南红柚。\r\n2016年以来，先后承接了赣县国家现代农业示范区智慧农业项目、江西省农业厅智慧农业软件服务项目和江西省信息中心平台演示项目，其智慧农业项目获得了江西省委、省政府和赣州市委、市政府的主要领导现场考察与高度评价，并且在央视1套新闻联播进行了报道。公司CEO刘杨多次参与接待中央与省市主要领导，江西电视台、江西日报、赣州电视台、赣南日报等主流媒体多次报道。\r\n运营合作伙伴：', 'string', 0, 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', 0, 0, 'string', 'string', NULL, 2, 1, '2020-04-13', 'string', 'string', 'string', '2019-12-12 12:12:12', '2019-05-06 14:08:45');
INSERT INTO `enterprise` VALUES (3, NULL, 'string', 'static/upload/image/admin/3.jpg', '18720733217', '123456', NULL, 'string', 'string', 'static/upload/image/admin/3.jpg', 'static/upload/image/admin/3.jpg', 'static/upload/image/admin/3.jpg', NULL, 'static/upload/image/admin/3.jpg', '江西中新云农科技有限公司（以下简称“公司”）是一家致力于开拓农业产业、科技、金融的互联网公司，集信息咨询、软件研发、系统集成、电商运营与农产品销售为一体，公司已通过ISO9001的质量管理体系认证，是中国联通赣州市分公司的战略合作伙伴，其创始团队由来自上海、深圳的科技、金融、互联网等行业高管组成，先后投资了3000 余万元，积极探索“互联网+农业”的发展之道,并负责运营6000亩赣南脐橙果园春秋农庄，上万亩山茶油基地和加工厂梓得福以及上千亩赣南红柚。\r\n2016年以来，先后承接了赣县国家现代农业示范区智慧农业项目、江西省农业厅智慧农业软件服务项目和江西省信息中心平台演示项目，其智慧农业项目获得了江西省委、省政府和赣州市委、市政府的主要领导现场考察与高度评价，并且在央视1套新闻联播进行了报道。公司CEO刘杨多次参与接待中央与省市主要领导，江西电视台、江西日报、赣州电视台、赣南日报等主流媒体多次报道。\r\n运营合作伙伴：', 'string', 0, 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', 0, 0, 'string', 'string', NULL, 1, 1, '2023-04-13', 'string', 'string', 'string', '2019-12-12 12:12:12', '2019-04-26 17:41:11');
INSERT INTO `enterprise` VALUES (4, NULL, 'string', 'static/upload/image/admin/3.jpg', '18720733218', '123456', NULL, 'string', 'string', 'static/upload/image/admin/3.jpg', 'static/upload/image/admin/3.jpg', 'static/upload/image/admin/3.jpg', NULL, 'static/upload/image/admin/3.jpg', '江西中新云农科技有限公司（以下简称“公司”）是一家致力于开拓农业产业、科技、金融的互联网公司，集信息咨询、软件研发、系统集成、电商运营与农产品销售为一体，公司已通过ISO9001的质量管理体系认证，是中国联通赣州市分公司的战略合作伙伴，其创始团队由来自上海、深圳的科技、金融、互联网等行业高管组成，先后投资了3000 余万元，积极探索“互联网+农业”的发展之道,并负责运营6000亩赣南脐橙果园春秋农庄，上万亩山茶油基地和加工厂梓得福以及上千亩赣南红柚。\r\n2016年以来，先后承接了赣县国家现代农业示范区智慧农业项目、江西省农业厅智慧农业软件服务项目和江西省信息中心平台演示项目，其智慧农业项目获得了江西省委、省政府和赣州市委、市政府的主要领导现场考察与高度评价，并且在央视1套新闻联播进行了报道。公司CEO刘杨多次参与接待中央与省市主要领导，江西电视台、江西日报、赣州电视台、赣南日报等主流媒体多次报道。\r\n运营合作伙伴：', 'string', 0, 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', 0, 0, 'string', 'string', NULL, 1, 0, '2020-04-13', 'string', 'string', 'string', '2019-12-12 12:12:12', 'string');
INSERT INTO `enterprise` VALUES (5, NULL, 'string', 'static/upload/image/admin/3.jpg', '18720733219', '123456', NULL, 'string', 'string', 'static/upload/image/admin/3.jpg', 'static/upload/image/admin/3.jpg', 'static/upload/image/admin/3.jpg', NULL, 'static/upload/image/admin/3.jpg', '江西中新云农科技有限公司（以下简称“公司”）是一家致力于开拓农业产业、科技、金融的互联网公司，集信息咨询、软件研发、系统集成、电商运营与农产品销售为一体，公司已通过ISO9001的质量管理体系认证，是中国联通赣州市分公司的战略合作伙伴，其创始团队由来自上海、深圳的科技、金融、互联网等行业高管组成，先后投资了3000 余万元，积极探索“互联网+农业”的发展之道,并负责运营6000亩赣南脐橙果园春秋农庄，上万亩山茶油基地和加工厂梓得福以及上千亩赣南红柚。\r\n2016年以来，先后承接了赣县国家现代农业示范区智慧农业项目、江西省农业厅智慧农业软件服务项目和江西省信息中心平台演示项目，其智慧农业项目获得了江西省委、省政府和赣州市委、市政府的主要领导现场考察与高度评价，并且在央视1套新闻联播进行了报道。公司CEO刘杨多次参与接待中央与省市主要领导，江西电视台、江西日报、赣州电视台、赣南日报等主流媒体多次报道。\r\n运营合作伙伴：', 'string', 0, 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', 0, 0, 'string', 'string', NULL, 1, 0, '2020-04-13', 'string', 'string', 'string', '2019-12-12 12:12:12', '2019-04-12 11:40:50');
INSERT INTO `enterprise` VALUES (6, NULL, 'string', 'static/upload/image/admin/3.jpg', '18720733220', '123456', NULL, 'string', 'string', 'static/upload/image/admin/3.jpg', 'static/upload/image/admin/3.jpg', 'static/upload/image/admin/3.jpg', NULL, 'static/upload/image/admin/3.jpg', '江西中新云农科技有限公司（以下简称“公司”）是一家致力于开拓农业产业、科技、金融的互联网公司，集信息咨询、软件研发、系统集成、电商运营与农产品销售为一体，公司已通过ISO9001的质量管理体系认证，是中国联通赣州市分公司的战略合作伙伴，其创始团队由来自上海、深圳的科技、金融、互联网等行业高管组成，先后投资了3000 余万元，积极探索“互联网+农业”的发展之道,并负责运营6000亩赣南脐橙果园春秋农庄，上万亩山茶油基地和加工厂梓得福以及上千亩赣南红柚。\r\n2016年以来，先后承接了赣县国家现代农业示范区智慧农业项目、江西省农业厅智慧农业软件服务项目和江西省信息中心平台演示项目，其智慧农业项目获得了江西省委、省政府和赣州市委、市政府的主要领导现场考察与高度评价，并且在央视1套新闻联播进行了报道。公司CEO刘杨多次参与接待中央与省市主要领导，江西电视台、江西日报、赣州电视台、赣南日报等主流媒体多次报道。\r\n运营合作伙伴：', 'string', 0, 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', 0, 0, 'string', 'string', NULL, 1, 0, '2020-04-13', 'string', 'string', 'string', '2019-12-12 12:12:12', 'string');
INSERT INTO `enterprise` VALUES (7, NULL, 'string', 'static/upload/image/admin/3.jpg', '18720733221', '123456', NULL, 'string', 'string', 'static/upload/image/admin/3.jpg', 'static/upload/image/admin/3.jpg', 'static/upload/image/admin/3.jpg', NULL, 'static/upload/image/admin/3.jpg', '江西中新云农科技有限公司（以下简称“公司”）是一家致力于开拓农业产业、科技、金融的互联网公司，集信息咨询、软件研发、系统集成、电商运营与农产品销售为一体，公司已通过ISO9001的质量管理体系认证，是中国联通赣州市分公司的战略合作伙伴，其创始团队由来自上海、深圳的科技、金融、互联网等行业高管组成，先后投资了3000 余万元，积极探索“互联网+农业”的发展之道,并负责运营6000亩赣南脐橙果园春秋农庄，上万亩山茶油基地和加工厂梓得福以及上千亩赣南红柚。\r\n2016年以来，先后承接了赣县国家现代农业示范区智慧农业项目、江西省农业厅智慧农业软件服务项目和江西省信息中心平台演示项目，其智慧农业项目获得了江西省委、省政府和赣州市委、市政府的主要领导现场考察与高度评价，并且在央视1套新闻联播进行了报道。公司CEO刘杨多次参与接待中央与省市主要领导，江西电视台、江西日报、赣州电视台、赣南日报等主流媒体多次报道。\r\n运营合作伙伴：', 'string', 0, 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', 0, 0, 'string', 'string', NULL, 0, 0, '2020-04-13', 'string', 'string', 'string', '2019-12-12 12:12:12', 'string');
INSERT INTO `enterprise` VALUES (8, NULL, 'string', 'static/upload/image/admin/3.jpg', '18720733222', '123456', NULL, 'string', 'string', 'static/upload/image/admin/3.jpg', 'static/upload/image/admin/3.jpg', 'static/upload/image/admin/3.jpg', NULL, 'static/upload/image/admin/3.jpg', '江西中新云农科技有限公司（以下简称“公司”）是一家致力于开拓农业产业、科技、金融的互联网公司，集信息咨询、软件研发、系统集成、电商运营与农产品销售为一体，公司已通过ISO9001的质量管理体系认证，是中国联通赣州市分公司的战略合作伙伴，其创始团队由来自上海、深圳的科技、金融、互联网等行业高管组成，先后投资了3000 余万元，积极探索“互联网+农业”的发展之道,并负责运营6000亩赣南脐橙果园春秋农庄，上万亩山茶油基地和加工厂梓得福以及上千亩赣南红柚。\r\n2016年以来，先后承接了赣县国家现代农业示范区智慧农业项目、江西省农业厅智慧农业软件服务项目和江西省信息中心平台演示项目，其智慧农业项目获得了江西省委、省政府和赣州市委、市政府的主要领导现场考察与高度评价，并且在央视1套新闻联播进行了报道。公司CEO刘杨多次参与接待中央与省市主要领导，江西电视台、江西日报、赣州电视台、赣南日报等主流媒体多次报道。\r\n运营合作伙伴：', 'string', 0, 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', 0, 0, 'string', 'string', NULL, 1, 0, '2020-04-13', '2019-04-29 10:35:57', 'string', 'string', '2019-12-12 12:12:12', '2019-04-29 10:35:57');
INSERT INTO `enterprise` VALUES (9, NULL, 'string', 'static/upload/image/admin/3.jpg', '18720733223', '123456', NULL, 'string', 'string', 'static/upload/image/admin/3.jpg', 'static/upload/image/admin/3.jpg', 'static/upload/image/admin/3.jpg', NULL, 'static/upload/image/admin/3.jpg', 'string江西中新云农科技有限公司（以下简称“公司”）是一家致力于开拓农业产业、科技、金融的互联网公司，集信息咨询、软件研发、系统集成、电商运营与农产品销售为一体，公司已通过ISO9001的质量管理体系认证，是中国联通赣州市分公司的战略合作伙伴，其创始团队由来自上海、深圳的科技、金融、互联网等行业高管组成，先后投资了3000 余万元，积极探索“互联网+农业”的发展之道,并负责运营6000亩赣南脐橙果园春秋农庄，上万亩山茶油基地和加工厂梓得福以及上千亩赣南红柚。\r\n2016年以来，先后承接了赣县国家现代农业示范区智慧农业项目、江西省农业厅智慧农业软件服务项目和江西省信息中心平台演示项目，其智慧农业项目获得了江西省委、省政府和赣州市委、市政府的主要领导现场考察与高度评价，并且在央视1套新闻联播进行了报道。公司CEO刘杨多次参与接待中央与省市主要领导，江西电视台、江西日报、赣州电视台、赣南日报等主流媒体多次报道。\r\n运营合作伙伴：', 'string', 0, 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', 0, 0, 'string', 'string', NULL, 0, 0, '2019-04-13', '2019-04-29 10:36:00', 'string', 'string', '2019-12-12 12:12:12', '2019-04-29 10:36:00');
INSERT INTO `enterprise` VALUES (10, NULL, 'string', 'static/upload/image/admin/3.jpg', '18720733224', '123456', NULL, 'string', 'string', 'static/upload/image/admin/3.jpg', 'static/upload/image/admin/3.jpg', 'static/upload/image/admin/3.jpg', NULL, 'static/upload/image/admin/3.jpg', '江西中新云农科技有限公司（以下简称“公司”）是一家致力于开拓农业产业、科技、金融的互联网公司，集信息咨询、软件研发、系统集成、电商运营与农产品销售为一体，公司已通过ISO9001的质量管理体系认证，是中国联通赣州市分公司的战略合作伙伴，其创始团队由来自上海、深圳的科技、金融、互联网等行业高管组成，先后投资了3000 余万元，积极探索“互联网+农业”的发展之道,并负责运营6000亩赣南脐橙果园春秋农庄，上万亩山茶油基地和加工厂梓得福以及上千亩赣南红柚。\r\n2016年以来，先后承接了赣县国家现代农业示范区智慧农业项目、江西省农业厅智慧农业软件服务项目和江西省信息中心平台演示项目，其智慧农业项目获得了江西省委、省政府和赣州市委、市政府的主要领导现场考察与高度评价，并且在央视1套新闻联播进行了报道。公司CEO刘杨多次参与接待中央与省市主要领导，江西电视台、江西日报、赣州电视台、赣南日报等主流媒体多次报道。\r\n运营合作伙伴：', 'string', 0, 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', 0, 0, 'string', 'string', NULL, 0, 3, '2020-04-13', 'string', 'string', 'string', '2019-12-12 12:12:12', 'string');
INSERT INTO `enterprise` VALUES (11, NULL, 'string', 'static/upload/image/admin/3.jpg', '18720733225', '123456', NULL, 'string', 'string', 'static/upload/image/admin/3.jpg', 'static/upload/image/admin/3.jpg', 'static/upload/image/admin/3.jpg', NULL, 'static/upload/image/admin/3.jpg', '江西中新云农科技有限公司（以下简称“公司”）是一家致力于开拓农业产业、科技、金融的互联网公司，集信息咨询、软件研发、系统集成、电商运营与农产品销售为一体，公司已通过ISO9001的质量管理体系认证，是中国联通赣州市分公司的战略合作伙伴，其创始团队由来自上海、深圳的科技、金融、互联网等行业高管组成，先后投资了3000 余万元，积极探索“互联网+农业”的发展之道,并负责运营6000亩赣南脐橙果园春秋农庄，上万亩山茶油基地和加工厂梓得福以及上千亩赣南红柚。\r\n2016年以来，先后承接了赣县国家现代农业示范区智慧农业项目、江西省农业厅智慧农业软件服务项目和江西省信息中心平台演示项目，其智慧农业项目获得了江西省委、省政府和赣州市委、市政府的主要领导现场考察与高度评价，并且在央视1套新闻联播进行了报道。公司CEO刘杨多次参与接待中央与省市主要领导，江西电视台、江西日报、赣州电视台、赣南日报等主流媒体多次报道。\r\n运营合作伙伴：', 'string', 0, 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', 0, 0, 'string', 'string', NULL, 1, 3, '2020-04-13', 'string', 'string', 'string', '2019-12-12 12:12:12', '2019-03-30 15:36:25');
INSERT INTO `enterprise` VALUES (12, NULL, 'string', 'static/upload/image/admin/3.jpg', '18720733226', '123456', NULL, 'string', 'string', 'static/upload/image/admin/3.jpg', 'static/upload/image/admin/3.jpg', 'static/upload/image/admin/3.jpg', NULL, 'static/upload/image/admin/3.jpg', '江西中新云农科技有限公司（以下简称“公司”）是一家致力于开拓农业产业、科技、金融的互联网公司，集信息咨询、软件研发、系统集成、电商运营与农产品销售为一体，公司已通过ISO9001的质量管理体系认证，是中国联通赣州市分公司的战略合作伙伴，其创始团队由来自上海、深圳的科技、金融、互联网等行业高管组成，先后投资了3000 余万元，积极探索“互联网+农业”的发展之道,并负责运营6000亩赣南脐橙果园春秋农庄，上万亩山茶油基地和加工厂梓得福以及上千亩赣南红柚。\r\n2016年以来，先后承接了赣县国家现代农业示范区智慧农业项目、江西省农业厅智慧农业软件服务项目和江西省信息中心平台演示项目，其智慧农业项目获得了江西省委、省政府和赣州市委、市政府的主要领导现场考察与高度评价，并且在央视1套新闻联播进行了报道。公司CEO刘杨多次参与接待中央与省市主要领导，江西电视台、江西日报、赣州电视台、赣南日报等主流媒体多次报道。\r\n运营合作伙伴：', 'string', 0, 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', 0, 0, 'string', 'string', NULL, 0, 3, '2020-04-13', 'string', 'string', 'string', '2019-12-12 12:12:12', 'string');
INSERT INTO `enterprise` VALUES (13, NULL, 'string', 'static/upload/image/admin/3.jpg', '18720733227', '123456', NULL, 'string', 'string', 'static/upload/image/admin/3.jpg', 'static/upload/image/admin/3.jpg', 'static/upload/image/admin/3.jpg', NULL, 'static/upload/image/admin/3.jpg', '江西中新云农科技有限公司（以下简称“公司”）是一家致力于开拓农业产业、科技、金融的互联网公司，集信息咨询、软件研发、系统集成、电商运营与农产品销售为一体，公司已通过ISO9001的质量管理体系认证，是中国联通赣州市分公司的战略合作伙伴，其创始团队由来自上海、深圳的科技、金融、互联网等行业高管组成，先后投资了3000 余万元，积极探索“互联网+农业”的发展之道,并负责运营6000亩赣南脐橙果园春秋农庄，上万亩山茶油基地和加工厂梓得福以及上千亩赣南红柚。\r\n2016年以来，先后承接了赣县国家现代农业示范区智慧农业项目、江西省农业厅智慧农业软件服务项目和江西省信息中心平台演示项目，其智慧农业项目获得了江西省委、省政府和赣州市委、市政府的主要领导现场考察与高度评价，并且在央视1套新闻联播进行了报道。公司CEO刘杨多次参与接待中央与省市主要领导，江西电视台、江西日报、赣州电视台、赣南日报等主流媒体多次报道。\r\n运营合作伙伴：', 'string', 0, 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', 0, 0, 'string', 'string', NULL, 1, 3, '2020-04-13', 'string', 'string', 'string', '2019-12-12 12:12:12', '2019-03-30 15:32:29');
INSERT INTO `enterprise` VALUES (14, NULL, 'string', 'static/upload/image/admin/3.jpg', '18720733227', '123456', NULL, 'string', 'string', 'static/upload/image/admin/3.jpg', 'static/upload/image/admin/3.jpg', 'static/upload/image/admin/3.jpg', NULL, 'static/upload/image/admin/3.jpg', '江西中新云农科技有限公司（以下简称“公司”）是一家致力于开拓农业产业、科技、金融的互联网公司，集信息咨询、软件研发、系统集成、电商运营与农产品销售为一体，公司已通过ISO9001的质量管理体系认证，是中国联通赣州市分公司的战略合作伙伴，其创始团队由来自上海、深圳的科技、金融、互联网等行业高管组成，先后投资了3000 余万元，积极探索“互联网+农业”的发展之道,并负责运营6000亩赣南脐橙果园春秋农庄，上万亩山茶油基地和加工厂梓得福以及上千亩赣南红柚。\r\n2016年以来，先后承接了赣县国家现代农业示范区智慧农业项目、江西省农业厅智慧农业软件服务项目和江西省信息中心平台演示项目，其智慧农业项目获得了江西省委、省政府和赣州市委、市政府的主要领导现场考察与高度评价，并且在央视1套新闻联播进行了报道。公司CEO刘杨多次参与接待中央与省市主要领导，江西电视台、江西日报、赣州电视台、赣南日报等主流媒体多次报道。\r\n运营合作伙伴：', 'string', 0, 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', 0, 0, 'string', 'string', NULL, 1, 1, '2020-04-13', 'string', 'string', 'string', '2019-12-12 12:12:12', '2019-03-30 15:38:45');
INSERT INTO `enterprise` VALUES (15, NULL, 'string', 'static/upload/image/admin/3.jpg', '18720733228', '123456', NULL, 'string', 'string', 'static/upload/image/admin/3.jpg', 'static/upload/image/admin/3.jpg', 'static/upload/image/admin/3.jpg', NULL, 'static/upload/image/admin/3.jpg', '江西中新云农科技有限公司（以下简称“公司”）是一家致力于开拓农业产业、科技、金融的互联网公司，集信息咨询、软件研发、系统集成、电商运营与农产品销售为一体，公司已通过ISO9001的质量管理体系认证，是中国联通赣州市分公司的战略合作伙伴，其创始团队由来自上海、深圳的科技、金融、互联网等行业高管组成，先后投资了3000 余万元，积极探索“互联网+农业”的发展之道,并负责运营6000亩赣南脐橙果园春秋农庄，上万亩山茶油基地和加工厂梓得福以及上千亩赣南红柚。\r\n2016年以来，先后承接了赣县国家现代农业示范区智慧农业项目、江西省农业厅智慧农业软件服务项目和江西省信息中心平台演示项目，其智慧农业项目获得了江西省委、省政府和赣州市委、市政府的主要领导现场考察与高度评价，并且在央视1套新闻联播进行了报道。公司CEO刘杨多次参与接待中央与省市主要领导，江西电视台、江西日报、赣州电视台、赣南日报等主流媒体多次报道。\r\n运营合作伙伴：', 'string', 0, 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', 0, 0, 'string', 'string', NULL, 1, 1, '2020-04-13', 'string', 'string', 'string', '2019-12-12 12:12:12', 'string');
INSERT INTO `enterprise` VALUES (16, NULL, 'string', 'static/upload/image/admin/3.jpg', '18720733229', '123456', NULL, 'string', 'string', 'static/upload/image/admin/3.jpg', 'static/upload/image/admin/3.jpg', 'static/upload/image/admin/3.jpg', NULL, 'static/upload/image/admin/3.jpg', '江西中新云农科技有限公司（以下简称“公司”）是一家致力于开拓农业产业、科技、金融的互联网公司，集信息咨询、软件研发、系统集成、电商运营与农产品销售为一体，公司已通过ISO9001的质量管理体系认证，是中国联通赣州市分公司的战略合作伙伴，其创始团队由来自上海、深圳的科技、金融、互联网等行业高管组成，先后投资了3000 余万元，积极探索“互联网+农业”的发展之道,并负责运营6000亩赣南脐橙果园春秋农庄，上万亩山茶油基地和加工厂梓得福以及上千亩赣南红柚。\r\n2016年以来，先后承接了赣县国家现代农业示范区智慧农业项目、江西省农业厅智慧农业软件服务项目和江西省信息中心平台演示项目，其智慧农业项目获得了江西省委、省政府和赣州市委、市政府的主要领导现场考察与高度评价，并且在央视1套新闻联播进行了报道。公司CEO刘杨多次参与接待中央与省市主要领导，江西电视台、江西日报、赣州电视台、赣南日报等主流媒体多次报道。\r\n运营合作伙伴：', 'string', 0, 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', 0, 0, 'string', 'string', NULL, 0, 1, '2020-04-13', 'string', 'string', 'string', '2019-12-12 12:12:12', '2019-03-30 11:17:59');
INSERT INTO `enterprise` VALUES (17, NULL, 'string', 'static/upload/image/admin/3.jpg', '18720733230', '123456', NULL, 'string', 'string', 'static/upload/image/admin/3.jpg', 'static/upload/image/admin/3.jpg', 'static/upload/image/admin/3.jpg', NULL, 'static/upload/image/admin/3.jpg', '江西中新云农科技有限公司（以下简称“公司”）是一家致力于开拓农业产业、科技、金融的互联网公司，集信息咨询、软件研发、系统集成、电商运营与农产品销售为一体，公司已通过ISO9001的质量管理体系认证，是中国联通赣州市分公司的战略合作伙伴，其创始团队由来自上海、深圳的科技、金融、互联网等行业高管组成，先后投资了3000 余万元，积极探索“互联网+农业”的发展之道,并负责运营6000亩赣南脐橙果园春秋农庄，上万亩山茶油基地和加工厂梓得福以及上千亩赣南红柚。\r\n2016年以来，先后承接了赣县国家现代农业示范区智慧农业项目、江西省农业厅智慧农业软件服务项目和江西省信息中心平台演示项目，其智慧农业项目获得了江西省委、省政府和赣州市委、市政府的主要领导现场考察与高度评价，并且在央视1套新闻联播进行了报道。公司CEO刘杨多次参与接待中央与省市主要领导，江西电视台、江西日报、赣州电视台、赣南日报等主流媒体多次报道。\r\n运营合作伙伴：', 'string', 0, 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', 0, 0, 'string', 'string', NULL, 1, 1, '2020-04-13', 'string', 'string', 'string', '2019-12-12 12:12:12', '2019-03-30 11:17:57');
INSERT INTO `enterprise` VALUES (18, NULL, 'string', 'static/upload/image/admin/3.jpg', '18720733231', '123456', NULL, 'string', 'string', 'static/upload/image/admin/3.jpg', 'static/upload/image/admin/3.jpg', 'static/upload/image/admin/3.jpg', NULL, 'static/upload/image/admin/3.jpg', '江西中新云农科技有限公司（以下简称“公司”）是一家致力于开拓农业产业、科技、金融的互联网公司，集信息咨询、软件研发、系统集成、电商运营与农产品销售为一体，公司已通过ISO9001的质量管理体系认证，是中国联通赣州市分公司的战略合作伙伴，其创始团队由来自上海、深圳的科技、金融、互联网等行业高管组成，先后投资了3000 余万元，积极探索“互联网+农业”的发展之道,并负责运营6000亩赣南脐橙果园春秋农庄，上万亩山茶油基地和加工厂梓得福以及上千亩赣南红柚。\r\n2016年以来，先后承接了赣县国家现代农业示范区智慧农业项目、江西省农业厅智慧农业软件服务项目和江西省信息中心平台演示项目，其智慧农业项目获得了江西省委、省政府和赣州市委、市政府的主要领导现场考察与高度评价，并且在央视1套新闻联播进行了报道。公司CEO刘杨多次参与接待中央与省市主要领导，江西电视台、江西日报、赣州电视台、赣南日报等主流媒体多次报道。\r\n运营合作伙伴：', 'string', 0, 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', 0, 0, 'string', 'string', NULL, 1, 1, '2020-04-23', '2019-04-23 08:59:56', 'string', 'string', '2019-12-12 12:12:12', '2019-04-23 08:59:56');
INSERT INTO `enterprise` VALUES (19, NULL, 'string', 'static/upload/image/admin/3.jpg', '18720733232', '123456', NULL, 'string', 'string', 'static/upload/image/admin/3.jpg', 'static/upload/image/admin/3.jpg', 'static/upload/image/admin/3.jpg', NULL, 'static/upload/image/admin/3.jpg', '江西中新云农科技有限公司（以下简称“公司”）是一家致力于开拓农业产业、科技、金融的互联网公司，集信息咨询、软件研发、系统集成、电商运营与农产品销售为一体，公司已通过ISO9001的质量管理体系认证，是中国联通赣州市分公司的战略合作伙伴，其创始团队由来自上海、深圳的科技、金融、互联网等行业高管组成，先后投资了3000 余万元，积极探索“互联网+农业”的发展之道,并负责运营6000亩赣南脐橙果园春秋农庄，上万亩山茶油基地和加工厂梓得福以及上千亩赣南红柚。\r\n2016年以来，先后承接了赣县国家现代农业示范区智慧农业项目、江西省农业厅智慧农业软件服务项目和江西省信息中心平台演示项目，其智慧农业项目获得了江西省委、省政府和赣州市委、市政府的主要领导现场考察与高度评价，并且在央视1套新闻联播进行了报道。公司CEO刘杨多次参与接待中央与省市主要领导，江西电视台、江西日报、赣州电视台、赣南日报等主流媒体多次报道。\r\n运营合作伙伴：', 'string', 0, 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', 0, 0, 'string', 'string', NULL, 1, 1, '2020-04-13', 'string', 'string', 'string', '2019-12-12 12:12:12', '2019-03-30 11:17:52');
INSERT INTO `enterprise` VALUES (20, NULL, '1', 'static/upload/image/admin/3.jpg', '18720733233', '123456', '111111111111', 'string1111', 'string1', 'static/upload/image/enterprise/businessLicense/file_859a6a09c4594c42b981b233f826cac6.jpg', 'static/upload/image/enterprise/teacherAptitude/file_c719f0c21ca3425bb1f927ab970d7496.jpg', 'static/upload/image/enterprise/legalIdCard/file_bafe35caf56e4af1804624547c43138d.jpg', NULL, 'static/upload/image/enterprise/remitAuthentication/file_a8ae2e6d42d54f0ea9d2f55c9427f484.jpg', '江西中新云农科技有限公司（以下简称“公司”）是一家致力于开拓农业产业、科技、金融的互联网公司，集信息咨询、软件研发、系统集成、电商运营与农产品销售为一体，公司已通过ISO9001的质量管理体系认证，是中国联通赣州市分公司的战略合作伙伴，其创始团队由来自上海、深圳的科技、金融、互联网等行业高管组成，先后投资了3000 余万元，积极探索“互联网+农业”的发展之道,并负责运营6000亩赣南脐橙果园春秋农庄，上万亩山茶油基地和加工厂梓得福以及上千亩赣南红柚。\r\n2016年以来，先后承接了赣县国家现代农业示范区智慧农业项目、江西省农业厅智慧农业软件服务项目和江西省信息中心平台演示项目，其智慧农业项目获得了江西省委、省政府和赣州市委、市政府的主要领导现场考察与高度评价，并且在央视1套新闻联播进行了报道。公司CEO刘杨多次参与接待中央与省市主要领导，江西电视台、江西日报、赣州电视台、赣南日报等主流媒体多次报道。\r\n运营合作伙伴：', 'string111111111111', 2, 'string111111', 'string11111111111', 'string111', 'string1111', 'string', 'iuh', 'strin111', 'string111111111111', 0, 0, '111', 'string111', NULL, 3, 1, '2020-04-13', 'string', 'string', 'string', '2019-12-12 12:12:12', '2019-03-30 18:06:49');
INSERT INTO `enterprise` VALUES (21, 'oyww358RAnTaTbqctM1MzU7ZsaQA', '优点的骄傲了三大历史记录撒打飞机阿里斯顿加速度发垃圾收到了发卡机第六空间', 'static/upload/image/enterprise/logo/file_058417926bee4b108001b89a7ace6135.tencent.mm.png', '15979851881', '123456', '2012293155@qq.com', 'Wu521521mi0', '2012293155', 'static/upload/image/enterprise/businessLicense/file_db076a95a3b64d6eaf696e7de11ab2a2.jpg', 'static/upload/image/enterprise/teacherAptitude/file_b2d37b20f901425b9789492b6c8bde7c.jpg', 'static/upload/image/enterprise/legalIdCard/file_921812946d4748e5b3d007f0a69d1d84.jpg', NULL, 'static/upload/image/enterprise/remitAuthentication/file_579c02ddca8840968ea8772e18f84c05.jpg', '赣州三到网络科技有限公司为上海飞翮信息技术有限公司南方研发中心，于2019年3月成为上海飞翮信息技术有限公司全资子公司。公司拥有一支强力的技术研发队伍。现有固定人员20余人。自主研发出智享工作系统、供应商管理系统、HRO人力资源外包服务系统、SFA系统、薪税通系统等人力资源行业业务管理系统。上海飞翮是中国第一家外包服务供应链管理企业，是为企业提供全面外包劳动管理SaaS服务平台的顶尖互联网技术公司。现拥有多家分支机构，在北京、上海、广州、深圳、江苏、洛阳、江西等地均设有分公司或办事处。服务于来自全国的多家企业（其中包括中央管理的国有重点骨干企业以及北京最具影响力50强企业等）。客户覆盖外企、国企、民企等多类实体，横跨诸多行业领域；服务人数超过50万人次/年。飞翮“智享工作云”于2018年4月获千万级投资，全面致力于构建企业外包服务（灵活用工）的服务生态圈。2018年4月上海飞翮“智享工作云”获得HRTech“极客大奖。', '8:00-12:00', 0, '软件开发', NULL, '20-99', '江西省', '赣州市', '章贡区', NULL, '关刀凭小南新村', NULL, NULL, NULL, NULL, NULL, 2, 1, '2020-04-13', NULL, NULL, NULL, '2019-04-12 16:16:52', '2019-05-13 16:26:39');
INSERT INTO `enterprise` VALUES (23, NULL, 'qqqqqq', 'static/upload/image/admin/3.jpg', '15979854331', '123456', NULL, NULL, NULL, 'static/upload/image/enterprise/businessLicense/file_8f89b7a326dc46dfa524442ea5c0a18a.jpg', 'static/upload/image/enterprise/teacherAptitude/file_6471868c8faa4fdfbd12b8e4bac0285e.jpg', 'static/upload/image/enterprise/legalIdCard/file_7e3a58de94824c53bb2ab10382f26ff4.jpg', NULL, 'static/upload/image/enterprise/remitAuthentication/file_c38b628cc891438ca697d785cadff4de.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000/2', 1, 3, '2020-04-13', '2019-04-13 21:29:55', NULL, NULL, '2019-04-12 19:59:28', '2019-04-23 09:00:06');
INSERT INTO `enterprise` VALUES (24, NULL, '小马公司', 'static/upload/image/admin/3.jpg', '13576719642', '123456', NULL, NULL, NULL, 'static/upload/image/enterprise/businessLicense/file_b6ceedfeaa894824a65d67c67bb9e9e5.jpg', 'static/upload/image/enterprise/teacherAptitude/file_df20c26fd0a34095967105a83099144e.jpg', 'static/upload/image/enterprise/legalIdCard/file_a17b0279ee354e76b70287bb6037e277.jpg', NULL, 'static/upload/image/enterprise/remitAuthentication/file_d4348757c7294b039c949747a724be7f.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL, '2019-04-29 10:34:47', NULL, NULL, '2019-04-20 17:03:17', '2019-04-29 10:34:47');
INSERT INTO `enterprise` VALUES (25, NULL, '艾玛', 'static/upload/image/admin/3.jpg', '13576719644', '123456', NULL, NULL, NULL, 'static/upload/image/enterprise/businessLicense/file_744b74e9d0e5498f9f095452fe83c848.jpg', 'static/upload/image/enterprise/teacherAptitude/file_f47252003b5344258261386c87334ccd.jpg', 'static/upload/image/enterprise/legalIdCard/file_b4d78a285267455ba55b18ef609ebddc.jpg', NULL, 'static/upload/image/enterprise/remitAuthentication/file_c2ab94d1b7054a9f8998307af5e8281c.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 3, '2021-04-26 16:50:41', NULL, NULL, NULL, '2019-04-20 17:13:37', '2019-04-29 19:58:58');
INSERT INTO `enterprise` VALUES (26, NULL, '小道', 'static/upload/image/admin/3.jpg', '15646585551', '123456', NULL, NULL, NULL, 'static/upload/image/enterprise/businessLicense/file_506e9d3f6ddd44c3bf74e0628bf4c2a5.jpg', 'static/upload/image/enterprise/teacherAptitude/file_a3371033e0244b64be08c0a44d9b9d76.jpg', 'static/upload/image/enterprise/legalIdCard/file_381bd23959d9436888f1219c024381a0.jpg', NULL, 'static/upload/image/enterprise/remitAuthentication/file_eb558ac617604745a9765791b1c20c09.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2024-04-26 16:38:26', NULL, NULL, NULL, '2019-04-20 17:17:18', '2019-04-26 16:44:10');
INSERT INTO `enterprise` VALUES (27, NULL, '小', 'static/upload/image/admin/3.jpg', '15646585557', '123456', NULL, NULL, NULL, 'static/upload/image/enterprise/businessLicense/file_506e9d3f6ddd44c3bf74e0628bf4c2a5.jpg', 'static/upload/image/enterprise/teacherAptitude/file_a3371033e0244b64be08c0a44d9b9d76.jpg', 'static/upload/image/enterprise/legalIdCard/file_381bd23959d9436888f1219c024381a0.jpg', NULL, 'static/upload/image/enterprise/remitAuthentication/file_eb558ac617604745a9765791b1c20c09.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000/2', 2, 1, '2020-04-23', '2019-04-23 09:01:03', NULL, NULL, '2019-04-20 17:18:18', '2019-04-23 09:01:03');
INSERT INTO `enterprise` VALUES (28, NULL, '哈哈哈', 'static/upload/image/admin/3.jpg', '15646595441', '123456', NULL, NULL, NULL, 'static/upload/image/enterprise/businessLicense/file_9aa33886e5034952b8c600bbec468165.jpg', 'static/upload/image/enterprise/teacherAptitude/file_53337df1d9254220b2655f15d96cb60d.jpg', 'static/upload/image/enterprise/legalIdCard/file_ec26bb51e34a4fb1aca2ccd0ac14886a.jpg', NULL, 'static/upload/image/enterprise/remitAuthentication/file_e3955ace9019432cbc5d56abf343c090.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2024-04-26', NULL, NULL, NULL, '2019-04-20 17:19:00', '2019-04-29 19:49:46');
INSERT INTO `enterprise` VALUES (29, NULL, '华顿教育啥的发生的发生代发是的发送到发送到发', NULL, '18720107694', '890310', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2019-05-01 10:46:17', '2019-05-01 10:46:17');
INSERT INTO `enterprise` VALUES (30, 'oB6WR1uhvHmpP3STzcfT90nOQZZ8', '华顿教育阿啥的发生的发生代发是的发送到发送到发', 'static/upload/image/enterprise/logo/file_4815744e671443c0bc7822c8b263577e.jpg', '17870569168', '890310', '1025691147@qq.com', '18720107694', '1025691147', 'static/upload/image/enterprise/businessLicense/file_915fffa1a678493d91d285d570873e99.jpg', 'static/upload/image/enterprise/teacherAptitude/file_e4a42b929dbe413fa72b32a8c37241e9.jpg', 'static/upload/image/enterprise/legalIdCard/file_08e2fce0e797456aadd2ac9f0cfa645f.jpg', 'static/upload/image/enterprise/legalIdCard/file_ee8efca1efa940ef82b3119859b914aa.jpg', NULL, '华顿教育专做中小学生课外辅导！', '上午：8:30--12:00  下午：14:30--18:00', 0, '民营企业', NULL, '50人', '江西省', '赣州市', '章贡区', NULL, '赣州市章贡区黄金中学对面', NULL, NULL, NULL, NULL, NULL, 2, 1, '2020-05-06', NULL, NULL, NULL, '2019-05-05 09:55:33', '2019-05-10 10:16:52');
INSERT INTO `enterprise` VALUES (31, 'oB6WR1uv7UCk52bpZDKznuTLBvH4', '华山教育', NULL, '15279772465', 'cxp1206', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '2019-05-08 10:51:14', '2019-05-08 10:51:14');
INSERT INTO `enterprise` VALUES (32, NULL, 'meimei', NULL, '13576719658', '123456', NULL, NULL, NULL, 'static/upload/image/enterprise/businessLicense/file_392c0e3b56db41b8becae05557cbff9a.jpg', 'static/upload/image/enterprise/teacherAptitude/file_1c3321befe5b4b42bb1d9d455a2c61c9.jpg', 'static/upload/image/enterprise/legalIdCard/file_e325c005fc5847a78cae9abf77c30ae6.jpg', 'static/upload/image/enterprise/legalIdCard/file_70fa4c7ad9f94eac80b428ad9787b7fe.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2019-05-08 17:06:09', '2019-05-08 17:07:05');
INSERT INTO `enterprise` VALUES (33, NULL, '嘉禾影业', 'static/upload/image/enterprise/logo/file_9dd24ef8cba04a15832c357a06a20013.png', '13576719643', '123456', '', '', '', 'static/upload/image/enterprise/businessLicense/file_15a22d6afd094f229b1b9aa79c03c5d5.png', 'static/upload/image/enterprise/teacherAptitude/file_746e2ff346c245d2bfbbe7d7fd2e6eaa.png', NULL, NULL, NULL, '', '', 0, '', NULL, '', 'null', 'null', 'null', NULL, '', NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, NULL, NULL, NULL, '2019-05-09 10:40:47', '2019-05-09 13:13:20');
INSERT INTO `enterprise` VALUES (34, NULL, '万达', 'static/upload/image/enterprise/logo/file_70dc87ff208943859677f4a070bb4e0c.jpg', '15979851882', '123456', '2012293155@qq.com', '15979851881', '2012293155', 'static/upload/image/enterprise/businessLicense/file_1741567e03f74828af4c3191cdec072c.jpg', 'static/upload/image/enterprise/teacherAptitude/file_70ac330e850741c882679e671533825e.jpg', NULL, NULL, NULL, '啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃啊诶啊哦工具资料速度快解放dkfja是的发达是的发送到发送到佛罗是的开发及搜达惊世毒妃', '8:00-12:00', 0, '民营', NULL, '22-99', '江西省', '赣州市', '崇义县', NULL, '文明大道12号', NULL, NULL, NULL, NULL, NULL, 2, 1, '2020-05-09', NULL, NULL, NULL, '2019-05-09 12:46:12', '2019-05-09 16:48:31');

-- ----------------------------
-- Table structure for enterprise_collect_user
-- ----------------------------
DROP TABLE IF EXISTS `enterprise_collect_user`;
CREATE TABLE `enterprise_collect_user`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '企业收藏用户',
  `enterprise_id` bigint(11) NULL DEFAULT NULL COMMENT '企业id',
  `user_id` bigint(11) NULL DEFAULT NULL COMMENT '用户id',
  `add_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  `modify_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for enterprise_type
-- ----------------------------
DROP TABLE IF EXISTS `enterprise_type`;
CREATE TABLE `enterprise_type`  (
  `id` bigint(255) NOT NULL AUTO_INCREMENT COMMENT '企业类型',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型名称',
  `pid` bigint(11) NULL DEFAULT NULL COMMENT '父id',
  `add_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  `modify_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for enterprise_welfare
-- ----------------------------
DROP TABLE IF EXISTS `enterprise_welfare`;
CREATE TABLE `enterprise_welfare`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '福利',
  `enterprise_id` bigint(11) NULL DEFAULT NULL COMMENT '企业id',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `add_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  `modify_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for gathering_code
-- ----------------------------
DROP TABLE IF EXISTS `gathering_code`;
CREATE TABLE `gathering_code`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '收款码',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收款码图片',
  `add_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  `modify_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gathering_code
-- ----------------------------
INSERT INTO `gathering_code` VALUES (1, 'static/upload/image/gatheringCode/file_3e55dd4a42f9401093429d424b6444cd.jpg', '2019-04-24 11:43:22', '2019-05-11 17:56:07');

-- ----------------------------
-- Table structure for interview_notify
-- ----------------------------
DROP TABLE IF EXISTS `interview_notify`;
CREATE TABLE `interview_notify`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '面试通知',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `issue_job_id` bigint(20) NULL DEFAULT NULL COMMENT '职位id',
  `job_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位名称',
  `enterprise_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业名称',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '通知内容',
  `concat_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `interview_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '面试时间',
  `status` int(2) NULL DEFAULT 0 COMMENT '0未处理1准备面试2已面试3面试通过4等通知5未通过6忽视',
  `add_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  `modify_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of interview_notify
-- ----------------------------
INSERT INTO `interview_notify` VALUES (1, 1, 1, 'string', '21342', 'sadfawefawefwaeraweSZDfsd手动阀手动阀拉萨酱豆腐拉萨酱豆腐卢卡斯三菱电机法律实施阶段老费劲啊手动阀骄傲', 'string', '2019-12-12 12:12:12', 0, '2019-12-12 12:12:12', '2019-12-12 12:12:12');
INSERT INTO `interview_notify` VALUES (2, 2, 2, 'string', 'string', 'sadfawefawefwaeraweSZDfsd手动阀手动阀拉萨酱豆腐拉萨酱豆腐卢卡斯三菱电机法律实施阶段老费劲啊手动阀骄傲', 'string', '2019-12-12 12:12:12', 0, '2019-12-12 12:12:12', '2019-12-12 12:12:12');
INSERT INTO `interview_notify` VALUES (3, 3, 3, 'string', 'string', 'sadfawefawefwaeraweSZDfsd手动阀手动阀拉萨酱豆腐拉萨酱豆腐卢卡斯三菱电机法律实施阶段老费劲啊手动阀骄傲', 'string', '2019-12-12 12:12:12', 0, '2019-12-12 12:12:12', '2019-12-12 12:12:12');
INSERT INTO `interview_notify` VALUES (4, 4, 4, 'string', 'string', 'sadfawefawefwaeraweSZDfsd手动阀手动阀拉萨酱豆腐拉萨酱豆腐卢卡斯三菱电机法律实施阶段老费劲啊手动阀骄傲', 'string', '2019-12-12 12:12:12', 0, '2019-12-12 12:12:12', '2019-12-12 12:12:12');
INSERT INTO `interview_notify` VALUES (5, 5, 5, 'string', 'string', 'sadfawefawefwaeraweSZDfsd手动阀手动阀拉萨酱豆腐拉萨酱豆腐卢卡斯三菱电机法律实施阶段老费劲啊手动阀骄傲', 'string', '2019-12-12 12:12:12', 0, '2019-12-12 12:12:12', '2019-12-12 12:12:12');
INSERT INTO `interview_notify` VALUES (6, 6, 6, 'string', 'string', 'sadfawefawefwaeraweSZDfsd手动阀手动阀拉萨酱豆腐拉萨酱豆腐卢卡斯三菱电机法律实施阶段老费劲啊手动阀骄傲', 'string', '2019-12-12 12:12:12', 0, '2019-12-12 12:12:12', '2019-12-12 12:12:12');
INSERT INTO `interview_notify` VALUES (7, 7, 7, 'string', 'string', 'sadfawefawefwaeraweSZDfsd手动阀手动阀拉萨酱豆腐拉萨酱豆腐卢卡斯三菱电机法律实施阶段老费劲啊手动阀骄傲', 'string', '2019-12-12 12:12:12', 0, '2019-12-12 12:12:12', '2019-12-12 12:12:12');
INSERT INTO `interview_notify` VALUES (8, 8, 8, 'string', 'string', 'sadfawefawefwaeraweSZDfsd手动阀手动阀拉萨酱豆腐拉萨酱豆腐卢卡斯三菱电机法律实施阶段老费劲啊手动阀骄傲', 'string', '2019-12-12 12:12:12', 0, '2019-12-12 12:12:12', '2019-12-12 12:12:12');
INSERT INTO `interview_notify` VALUES (13, 5, 16, 'string', 'string', 'sadfawefawefwaeraweSZDfsd手动阀手动阀拉萨酱豆腐拉萨酱豆腐卢卡斯三菱电机法律实施阶段老费劲啊手动阀骄傲', '1111111', NULL, 0, '2019-04-11 18:01:13', '2019-04-11 18:01:13');
INSERT INTO `interview_notify` VALUES (16, 5, 16, 'string', 'string', 'WERWERWA', '1231231323', NULL, 0, '2019-04-11 19:12:36', '2019-04-11 19:12:36');
INSERT INTO `interview_notify` VALUES (19, 1, 16, 'string', 'string', 'weQWEqweQWDCZXCZXCVAwqew', '1212312312312', NULL, 0, '2019-04-12 08:53:04', '2019-04-12 08:53:04');
INSERT INTO `interview_notify` VALUES (20, 1, 19, 'j安卓工程师', '橙果', '欢迎来我公司，优沃科技有限公司面试，', '15979851881', NULL, 0, '2019-04-13 17:02:12', '2019-04-13 17:02:12');
INSERT INTO `interview_notify` VALUES (21, 1, 19, 'j安卓工程师', '橙果', '您好，看了您的简历，感觉非常合适，能来我公司面谈一下吗？', '15979851881', NULL, 0, '2019-04-13 17:10:37', '2019-04-13 17:10:37');
INSERT INTO `interview_notify` VALUES (22, 8, 19, '选择邀请面试职位j安卓工程师环境清洁工JAVA工程师厨师长111', '橙果', '欢迎来我公司面谈', NULL, NULL, 0, '2019-04-25 10:13:42', '2019-04-25 10:13:42');
INSERT INTO `interview_notify` VALUES (23, 8, 21, 'JAVA工程师', '橙果', 'sfasdfasdfasdfavaw啊手动阀实打实大魏国范文芳啊手动阀手动阀', '15979851881', NULL, 0, '2019-04-25 10:22:05', '2019-04-25 10:22:05');
INSERT INTO `interview_notify` VALUES (24, 7, 20, '环境清洁工', '橙果', '欢迎来我公司工作', '15979851881', '2019-04-27 00:00:00', 0, '2019-04-25 10:43:03', '2019-04-25 10:43:03');
INSERT INTO `interview_notify` VALUES (25, 1, 19, 'j安卓工程师', '橙果', '欢迎来我公司面试详谈', '15465621551', '2019-04-17 00:00:00', 0, '2019-04-25 10:48:00', '2019-04-25 10:48:00');
INSERT INTO `interview_notify` VALUES (26, 1, 22, '厨师长111', '橙果', '欢迎来我公司详谈', '15646595441', '2019-04-25 00:00:00', 0, '2019-04-25 10:56:46', '2019-04-25 10:56:46');
INSERT INTO `interview_notify` VALUES (27, 5, 22, '厨师长111', '橙果', '你好，你欢迎爱上了对方就俺俩的发酵', '15979851881', '2019-04-25 00:00:00', 0, '2019-04-25 11:03:19', '2019-04-25 11:03:19');
INSERT INTO `interview_notify` VALUES (28, 1, 21, 'JAVA工程师', '橙果', 'frtf8gihilhiouhoh;ohnoh9p7tfvcjhkbuut8r611111', '18720733215', '2019-04-26 00:00:00', 0, '2019-04-25 11:04:05', '2019-04-25 11:04:05');
INSERT INTO `interview_notify` VALUES (29, 1, 21, 'JAVA工程师', '橙果', 'frtf8gihilhiouhoh;ohnoh9p7tfvcjhkbuut8r611111', '18720733215', '2019-04-26 07:00:00', 0, '2019-04-25 11:06:37', '2019-04-25 11:06:37');
INSERT INTO `interview_notify` VALUES (30, 1, 22, '厨师长111', '橙果', 'asdfawfqa24efvszdfasdfa', '15979851111', '2019-04-26 04:03:00', 0, '2019-04-25 14:06:43', '2019-04-25 14:06:43');
INSERT INTO `interview_notify` VALUES (31, 1, 21, 'JAVA工程师', '橙果', '', '', NULL, 0, '2019-04-25 14:38:41', '2019-04-25 14:38:41');
INSERT INTO `interview_notify` VALUES (32, 1, 21, 'JAVA工程师', '橙果', '', '', '', 0, '2019-04-25 15:27:33', '2019-04-25 15:27:33');
INSERT INTO `interview_notify` VALUES (33, 1, 21, 'JAVA工程师', '橙果', '111111111111', '11111111111111111111', '2019-04-25 05:00:00', 0, '2019-04-25 15:57:49', '2019-04-25 15:57:49');
INSERT INTO `interview_notify` VALUES (34, 7, 22, '厨师长111', '橙果', '222222222222222', '222222222222', '2019-04-25 04:00:00', 0, '2019-04-25 16:01:25', '2019-04-25 16:01:25');
INSERT INTO `interview_notify` VALUES (35, 26, 24, '英语教师', '华顿教育', '你好！请你于5月7日下午4点过来面试', '18720107694', '2019-05-06 00:03:02', 0, '2019-05-06 17:45:14', '2019-05-06 17:45:14');
INSERT INTO `interview_notify` VALUES (36, 26, 24, '英语教师', '华顿教育', '请过来面试！', '18720107694', '2019-05-06 17:52:26', 0, '2019-05-06 17:52:31', '2019-05-06 17:52:31');
INSERT INTO `interview_notify` VALUES (37, 26, 26, '校长助理', '华顿教育', '', '18720107694', '2019-05-07 08:02:40', 0, '2019-05-07 08:02:46', '2019-05-07 08:02:46');
INSERT INTO `interview_notify` VALUES (38, 1, 21, 'JAVA工程师', '优沃', '看了您的简历，感觉非常合适，希望您能来我公司面试，地址在琴江路3号', '18720733215', '2019-05-07 15:30:00', 0, '2019-05-07 11:08:06', '2019-05-07 11:08:06');
INSERT INTO `interview_notify` VALUES (39, 1, 19, 'j安卓工程师', '优沃', '欢迎来我公司面试哦', '18720733215', '2019-05-07 00:00:00', 0, '2019-05-07 11:10:23', '2019-05-07 11:10:23');
INSERT INTO `interview_notify` VALUES (40, 1, 22, '厨师长111', '优沃', '不是说计算机技术考试渣男', '15979851881', '2019-05-07 00:00:00', 0, '2019-05-07 11:32:23', '2019-05-07 11:32:23');
INSERT INTO `interview_notify` VALUES (41, 1, 19, 'j安卓工程师', '优沃', '黄英来我公司面试', '15979851881', '2019-05-07 00:00:00', 0, '2019-05-07 11:36:45', '2019-05-07 11:36:45');
INSERT INTO `interview_notify` VALUES (42, 1, 27, '课程顾问', '华顿教育', '请你明天下午过来面试，带好相关证件！', '1872010794', '2019-05-07 14:30:00', 0, '2019-05-07 17:32:44', '2019-05-07 17:32:44');
INSERT INTO `interview_notify` VALUES (43, 26, 24, '英语教师', '华顿教育', '', '', '', 0, '2019-05-07 17:34:27', '2019-05-07 17:34:27');
INSERT INTO `interview_notify` VALUES (44, 1, 22, '厨师长111', '优沃', '您好，您的简历经过我们筛选，dlfjkaslkdfjl', '15979851111', '2019-05-08 00:00:00', 0, '2019-05-08 15:10:45', '2019-05-08 15:10:45');
INSERT INTO `interview_notify` VALUES (45, 1, 21, 'JAVA工程师', '优沃', '黄英来我公司面试', '15979851111', '2019-05-08 00:00:00', 0, '2019-05-08 15:27:14', '2019-05-08 15:27:14');
INSERT INTO `interview_notify` VALUES (46, 34, 29, '经理', '万达', '欢迎来我公司面试，地址是长征大道12号', '15979851881', '2019-05-09 14:05:00', 0, '2019-05-09 14:24:19', '2019-05-09 14:24:19');
INSERT INTO `interview_notify` VALUES (47, 34, 19, 'j安卓工程师', '优沃', '', '', '', 0, '2019-05-10 15:45:07', '2019-05-10 15:45:07');
INSERT INTO `interview_notify` VALUES (48, 34, 21, 'JAVA工程师', '优沃', '工会发的换个房间和符合规范关心他人代付将汇款记录和客户看了就会看见', '15979851881', '2019-05-10 00:00:00', 0, '2019-05-10 15:49:59', '2019-05-10 15:49:59');
INSERT INTO `interview_notify` VALUES (49, 34, 19, 'j安卓工程师', '优沃', '', '', '', 0, '2019-05-10 17:47:59', '2019-05-10 17:47:59');
INSERT INTO `interview_notify` VALUES (50, 34, 19, 'j安卓工程师', '优沃', '', '15979851881', '2019-05-24 00:00:00', 0, '2019-05-10 17:49:58', '2019-05-10 17:49:58');
INSERT INTO `interview_notify` VALUES (51, 34, 19, 'j安卓工程师', '优沃', '', '18720733215', '2019-05-10 00:00:00', 0, '2019-05-10 17:59:20', '2019-05-10 17:59:20');

-- ----------------------------
-- Table structure for issue_job
-- ----------------------------
DROP TABLE IF EXISTS `issue_job`;
CREATE TABLE `issue_job`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '发布招聘',
  `enterprise_logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业Logo',
  `enterprise_id` bigint(20) NULL DEFAULT NULL COMMENT '企业id',
  `enterprise_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业名称',
  `contact_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人',
  `contact_phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `contact_wechat` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系微信',
  `contact_qq` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系qq',
  `contact_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系邮箱',
  `job_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位名称',
  `job_money` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职业工资',
  `work_place` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作地点',
  `age` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年龄',
  `work_age` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工龄',
  `edu` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学历',
  `job_detail` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '职位详情',
  `skill` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '职业技能(要求)',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `status` int(2) NULL DEFAULT 1 COMMENT '状态0开启(在招)1开启(急招)2停招',
  `add_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  `modify_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '结束时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of issue_job
-- ----------------------------
INSERT INTO `issue_job` VALUES (1, 'static/upload/image/admin/3.jpg', 16, '22222', 'string', 'string', 'string', 'string', 'string', '33333', 'string', 'string', '0', 'string', '1', 'string', 'string', 'string', 0, '2019-04-01 10:42:42', '2019-04-01 10:42:42');
INSERT INTO `issue_job` VALUES (2, 'static/upload/image/admin/3.jpg', 15, 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', '0', 'string', '1', 'string', 'string', 'string', 0, '2019-04-01 10:42:51', '2019-04-01 10:42:51');
INSERT INTO `issue_job` VALUES (3, 'static/upload/image/admin/3.jpg', 14, 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', '0', 'string', '1', 'string', 'string', 'string', 0, '2019-04-01 10:42:51', '2019-04-01 10:42:51');
INSERT INTO `issue_job` VALUES (4, 'static/upload/image/admin/3.jpg', 13, 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', '0', 'string', '1', 'string', 'string', 'string', 0, '2019-04-01 10:42:51', '2019-04-01 10:42:51');
INSERT INTO `issue_job` VALUES (5, 'static/upload/image/admin/3.jpg', 12, 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', '0', 'string', '1', 'string', 'string', 'string', 0, '2019-04-01 10:42:51', '2019-04-01 10:42:51');
INSERT INTO `issue_job` VALUES (6, 'static/upload/image/admin/3.jpg', 11, 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', '0', 'string', '1', 'string', 'string', 'string', 0, '2019-04-01 10:42:52', '2019-04-01 10:42:52');
INSERT INTO `issue_job` VALUES (7, 'static/upload/image/admin/3.jpg', 10, 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', '0', 'string', '1', 'string', 'string', 'string', 0, '2019-04-01 10:42:52', '2019-04-01 10:42:52');
INSERT INTO `issue_job` VALUES (8, 'static/upload/image/admin/3.jpg', 9, 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', '0', 'string', '1', 'string', 'string', 'string', 0, '2019-04-01 10:42:52', '2019-04-01 10:42:52');
INSERT INTO `issue_job` VALUES (9, 'static/upload/image/admin/3.jpg', 8, 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', '0', 'string', '1', 'string', 'string', 'string', 0, '2019-04-01 10:42:52', '2019-04-01 10:42:52');
INSERT INTO `issue_job` VALUES (10, 'static/upload/image/admin/3.jpg', 7, 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', '0', 'string', '1', 'string', 'string', 'string', 0, '2019-04-01 10:42:52', '2019-04-01 10:42:52');
INSERT INTO `issue_job` VALUES (11, 'static/upload/image/admin/3.jpg', 6, 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', '0', 'string', '1', 'string', 'string', 'string', 0, '2019-04-01 10:42:53', '2019-04-01 10:42:53');
INSERT INTO `issue_job` VALUES (12, 'static/upload/image/admin/3.jpg', 5, 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', '0', 'string', '1', 'string', 'string', 'string', 0, '2019-04-01 10:42:53', '2019-04-01 10:42:53');
INSERT INTO `issue_job` VALUES (13, 'static/upload/image/admin/3.jpg', 4, 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', '0', 'string', '1', 'string', 'string', 'string', 0, '2019-04-01 10:42:53', '2019-04-01 10:42:53');
INSERT INTO `issue_job` VALUES (14, 'static/upload/image/admin/3.jpg', 3, 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', '0', 'string', '1', 'string', 'string', 'string', 0, '2019-04-01 10:42:53', '2019-04-01 10:42:53');
INSERT INTO `issue_job` VALUES (15, 'static/upload/image/admin/3.jpg', 2, 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', '0', 'string', '1', 'string', 'string', 'string', 0, '2019-04-01 10:42:53', '2019-04-01 10:42:53');
INSERT INTO `issue_job` VALUES (16, 'static/upload/image/admin/3.jpg', 1, 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', '0', 'string', '1', '<ul>\r\n                <li>1.\r\n                    <span>国家统招全日制一类本科以上学历（特别优秀者大专以上），相关工作经验二年以上。性别、专业不限；\r\n                    </span>\r\n                </li>\r\n                <li>2.\r\n                    <span>具有积极的工作态度及团队合作精神，做事认真踏</span>\r\n                </li>\r\n                <li>3.\r\n                    <span>具有拍摄经验者优先。</span>\r\n                </li>\r\n                <li>4.\r\n                   <span>具有专业精神，逻辑性强，细节处理精益求精；</span>\r\n                </li>\r\n            </ul>', '<ul>\r\n                <li>1.\r\n                    <span>国家统招全日制一类本科以上学历（特别优秀者大专以上），相关工作经验二年以上。性别、专业不限；\r\n                    </span>\r\n                </li>\r\n                <li>2.\r\n                    <span>具有积极的工作态度及团队合作精神，做事认真踏</span>\r\n                </li>\r\n                <li>3.\r\n                    <span>具有拍摄经验者优先。</span>\r\n                </li>\r\n                <li>4.\r\n                   <span>具有专业精神，逻辑性强，细节处理精益求精；</span>\r\n                </li>\r\n            </ul>', 'string', 0, '2019-04-01 10:42:54', '2019-04-01 10:42:54');
INSERT INTO `issue_job` VALUES (17, 'static/upload/image/admin/3.jpg', 1, 'string', '吴宗杰', '18720733215', NULL, NULL, NULL, 'java工程师', '8000', '河北省-邯郸市-复兴区', '23', '3年', '0', 'falks阿斯顿发送到发dfja', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', NULL, 0, '2019-04-11 21:10:27', '2019-04-12 10:44:15');
INSERT INTO `issue_job` VALUES (18, 'static/upload/image/admin/3.jpg', 1, 'string', '老王', '15979851881', NULL, NULL, NULL, '河道清洁工', '8000', '内蒙古自治区-通辽市-霍林郭勒市', '30', '3年', '1', '熟悉工作撒旦发送附件', '熟悉各种河道', NULL, 0, '2019-04-12 09:00:39', '2019-04-12 09:00:39');
INSERT INTO `issue_job` VALUES (19, 'static/upload/image/admin/3.jpg', 21, '优沃', '老唐', '15979851881', NULL, NULL, NULL, 'j安卓工程师', '900', '上海市-上海市-杨浦区', '20-30', '3年', '', 'sssssssssssssssssssssssssssssssasdfasdfasdfasdfasdfasdfasdfasdf', 'asdfasdfasdfasdf34trgfvdcxvzsertqw3x cgfesatw34tgrvcx df324trgfv', NULL, 0, '2019-04-12 17:01:14', '2019-04-12 17:12:14');
INSERT INTO `issue_job` VALUES (20, 'static/upload/image/admin/3.jpg', 21, '优沃', NULL, NULL, NULL, NULL, NULL, '环境清洁工', '2000', 'undefined-赣州市-崇义县', '20', '12', '0', '1.瓦尔发送到发斯蒂芬斯蒂芬【按时【地方拉斯【地方拉斯【地方啦【水电费啦【\n2.asdfjasodfjasl;dfjasdlfjasdfjas;dlfjaosdfjoadfjalsdjfal;sdfja;s\n3.dfjkaldkfadjfa是打发斯蒂芬是的发送到发送到发阿斯顿发设计开发规划将对方过后的\n4.阿斯顿发生的状况的佛啊思密达发哦是打发时间爱上你\n5.f是的发送到发送到发是的发送到山东是的发送到发多少', '1.瓦尔发送到发斯蒂芬斯蒂芬【按时【地方拉斯【地方拉斯【地方啦【水电费啦【\n2.asdfjasodfjasl;dfjasdlfjasdfjas;dlfjaosdfjoadfjalsdjfal;sdfja;s\n3.dfjkaldkfadjfa是打发斯蒂芬是的发送到发送到发阿斯顿发设计开发规划将对方过后的\n4.阿斯顿发生的状况的佛啊思密达发哦是打发时间爱上你\n5.f是的发送到发送到发是的发送到山东是的发送到发多少', NULL, 0, '2019-04-20 14:21:29', '2019-04-20 14:21:29');
INSERT INTO `issue_job` VALUES (21, 'static/upload/image/admin/3.jpg', 21, '优沃', NULL, NULL, NULL, NULL, NULL, 'JAVA工程师', '3000', 'undefined-赣州市-崇义县', '30', '30', '0', '1.kfasdofa是的发送到发送到dfasdfasdfasd\n2.lalska阿是的发送到发送到发l\n3.是的发送到发是的发达是的发送到发文\n3.发送到发送到发玫琳凯是的发送到发', '1.kfasdofa是的发送到发送到dfasdfasdfasd\n2.lalska阿是的发送到发送到发l\n3.是的发送到发是的发达是的发送到发文\n3.发送到发送到发玫琳凯是的发送到发', NULL, 0, '2019-04-20 14:33:29', '2019-04-20 14:33:29');
INSERT INTO `issue_job` VALUES (22, 'static/upload/image/admin/3.jpg', 21, '优沃', '111', '11111', NULL, NULL, NULL, '厨师长111', '2333', '江西省-赣州市-崇义县', '11', '11', '3', '1111111', '111', NULL, 0, '2019-04-20 14:38:56', '2019-05-08 15:03:06');
INSERT INTO `issue_job` VALUES (24, NULL, 30, '华顿教育', '袁雍', '18720108694', NULL, NULL, NULL, '英语教师', '3000---5000', '赣州', '25---30', '0', '2', '热爱教育事业！', '爱沟通', NULL, 0, '2019-05-06 17:40:58', '2019-05-06 17:40:58');
INSERT INTO `issue_job` VALUES (25, NULL, 30, '华顿教育', '袁雍', '18720107694', NULL, NULL, NULL, '数学老师', '3000---5000', '赣州', '25--30', '0', '2', '负责学生数学教学工作', '本科以上学历，具备教师资格证！热爱教育事业！', NULL, 1, '2019-05-06 17:50:10', '2019-05-06 17:50:10');
INSERT INTO `issue_job` VALUES (26, NULL, 30, '华顿教育', '袁雍', '18720107694', NULL, NULL, NULL, '校长助理', '6000', '赣州', '25', '0', '2', '本科以上学历！女性！', '董电脑自动化办公', NULL, 0, '2019-05-07 07:59:09', '2019-05-07 07:59:09');
INSERT INTO `issue_job` VALUES (27, NULL, 30, '华顿教育', '袁雍', '18720794', NULL, NULL, NULL, '课程顾问', '5000', '赣州--', '20', '1', '1', '大专以上学历！形象气质佳', '擅长沟通', NULL, 0, '2019-05-07 17:27:58', '2019-05-08 15:32:44');
INSERT INTO `issue_job` VALUES (28, NULL, 21, '优沃', '老张', '18720733215', NULL, NULL, NULL, 'java工程师', '5000', '江西省-赣州市-章贡区', '23', '12', '0', '啥的发生的发生大专是的发送到发文噶十多个沙发是的发送到发·', '是的发送到发送到发胜多负少', NULL, 0, '2019-05-08 15:04:20', '2019-05-08 15:09:47');
INSERT INTO `issue_job` VALUES (29, NULL, 34, '万达', '何部长', '15979851881', NULL, NULL, NULL, '经理', '5000', '江西省-赣州市-章贡区', '23-25', '2-5', '2', '打开房间爱上了对方就阿里山的法律上手动阀结束了的法律上的积分卡死了dfjal阿斯顿发送到发是的发送到发文过八十多打开房间爱上了对方就阿里山的法律上手动阀结束了的法律上的积分卡死了dfjal阿斯顿发送到发是的发送到发文过八十多打开房间爱上了对方就阿里山的法律上手动阀结束了的法律上的积分卡死了dfjal阿斯顿发送到发是的发送到发文过八十多打开房间爱上了对方就阿里山的法律上手动阀结束了的法律上的积分卡死了dfjal阿斯顿发送到发是的发送到发文过八十多打开房间爱上了对方就阿里山的法律上手动阀结束了的法律上的积分卡死了dfjal阿斯顿发送到发是的发送到发文过八十多打开房间爱上了对方就阿里山的法律上手动阀结束了的法律上的积分卡死了dfjal阿斯顿发送到发是的发送到发文过八十多打开房间爱上了对方就阿里山的法律上手动阀结束了的法律上的积分卡死了dfjal阿斯顿发送到发是的发送到发文过八十多打开房间爱上了对方就阿里山的法律上手动阀结束了的法律上的积分卡死了dfjal阿斯顿发送到发是的发送到发文过八十多打开房间爱上了对方就阿里山的法律上手动阀结束了的法律上的积分卡死了dfjal阿斯顿发送到发是的发送到发文过八十多', '打开房间爱上了对方就阿里山的法律上手动阀结束了的法律上的积分卡死了dfjal阿斯顿发送到发是的发送到发文过八十多打开房间爱上了对方就阿里山的法律上手动阀结束了的法律上的积分卡死了dfjal阿斯顿发送到发是的发送到发文过八十多打开房间爱上了对方就阿里山的法律上手动阀结束了的法律上的积分卡死了dfjal阿斯顿发送到发是的发送到发文过八十多打开房间爱上了对方就阿里山的法律上手动阀结束了的法律上的积分卡死了dfjal阿斯顿发送到发是的发送到发文过八十多打开房间爱上了对方就阿里山的法律上手动阀结束了的法律上的积分卡死了dfjal阿斯顿发送到发是的发送到发文过八十多打开房间爱上了对方就阿里山的法律上手动阀结束了的法律上的积分卡死了dfjal阿斯顿发送到发是的发送到发文过八十多打开房间爱上了对方就阿里山的法律上手动阀结束了的法律上的积分卡死了dfjal阿斯顿发送到发是的发送到发文过八十多打开房间爱上了对方就阿里山的法律上手动阀结束了的法律上的积分卡死了dfjal阿斯顿发送到发是的发送到发文过八十多打开房间爱上了对方就阿里山的法律上手动阀结束了的法律上的积分卡死了dfjal阿斯顿发送到发是的发送到发文过八十多', NULL, 1, '2019-05-09 13:17:23', '2019-05-09 13:18:25');

-- ----------------------------
-- Table structure for job_leave_message
-- ----------------------------
DROP TABLE IF EXISTS `job_leave_message`;
CREATE TABLE `job_leave_message`  (
  `id` bigint(11) NOT NULL COMMENT '用户留言职位',
  `user_id` bigint(11) NULL DEFAULT NULL COMMENT '用户id',
  `issue_job_id` bigint(11) NULL DEFAULT NULL COMMENT '发布工作id',
  `type` int(2) NULL DEFAULT 0 COMMENT '留言方式0正常1匿名',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容',
  `reply` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '回复',
  `again_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '追加内容',
  `again_reply` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '追加回复',
  `status` int(255) NULL DEFAULT NULL COMMENT '状态0未审核1审核通过2审核不通过',
  `content_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  `replay_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '回复时间',
  `again_content_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '追加时间',
  `again_reply_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '追加回复时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for job_type
-- ----------------------------
DROP TABLE IF EXISTS `job_type`;
CREATE TABLE `job_type`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT 'id(工作职位)',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `pid` bigint(11) NULL DEFAULT NULL COMMENT '父级id(0为一级分类)',
  `add_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  `modify_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for remit_record
-- ----------------------------
DROP TABLE IF EXISTS `remit_record`;
CREATE TABLE `remit_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '打款记录',
  `enterprise_id` bigint(20) NULL DEFAULT NULL COMMENT '企业id',
  `enterprise_logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业logo',
  `enterprise_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业名称',
  `enterprise_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业账号',
  `remit_authentication` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '打款凭证',
  `service_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '服务类型',
  `status` int(2) NULL DEFAULT 0 COMMENT '0未审核1审核通过2审核不通过',
  `authentication_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核时间',
  `add_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  `modify_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of remit_record
-- ----------------------------
INSERT INTO `remit_record` VALUES (1, 5, 'static/upload/image/admin/3.jpg', 'string', NULL, 'static/upload/image/enterprise/remitAuthentication/file_079d2b761a324a9593bb7147f9052108.jpg', NULL, 2, NULL, '2019-04-26 14:31:54', '2019-04-26 14:31:54');
INSERT INTO `remit_record` VALUES (2, 3, 'static/upload/image/admin/3.jpg', 'string', '18720733217', 'static/upload/image/enterprise/remitAuthentication/file_e680ae3f40f7439ea8baed28701930d1.jpg', '17777/3', 1, '2019-04-26 17:41:11', '2019-04-26 15:38:47', '2019-04-26 17:41:11');
INSERT INTO `remit_record` VALUES (3, 26, 'static/upload/image/admin/3.jpg', '小道', '15646585551', 'static/upload/image/enterprise/remitAuthentication/file_52c31f45efad49588a1d94c19b7d1b55.jpg', '1000/2', 1, '2019-04-26 16:44:10', '2019-04-26 16:41:37', '2019-04-26 16:44:10');
INSERT INTO `remit_record` VALUES (4, 28, 'static/upload/image/admin/3.jpg', '哈哈哈', '15646595441', 'static/upload/image/enterprise/remitAuthentication/file_20a3f896d97245faaeb754cc38d7224e.jpg', '17777/3', 1, '2019-04-26 16:50:00', '2019-04-26 16:49:06', '2019-04-26 16:50:00');
INSERT INTO `remit_record` VALUES (5, 30, NULL, '华顿教育', '17870569168', 'static/upload/image/enterprise/remitAuthentication/file_f9b596287bdb4ba896e6b7dd5a5cbe70.jpg', '70/1', 1, '2019-05-06 16:15:56', '2019-05-06 16:14:03', '2019-05-06 16:15:56');
INSERT INTO `remit_record` VALUES (6, 34, 'null', '万达', '15979851882', 'static/upload/image/enterprise/remitAuthentication/file_7dc3cb965d3443e99ed6651a2f16cca8.jpg', '70/1', 1, '2019-05-09 13:13:42', '2019-05-09 13:12:19', '2019-05-09 13:13:42');
INSERT INTO `remit_record` VALUES (7, 21, 'static/upload/image/enterprise/logo/file_058417926bee4b108001b89a7ace6135.tencent.mm.png', '优点的骄傲了三大历史记录撒打飞机阿里斯顿加速度发垃圾收到了发卡机第六空间', NULL, 'static/upload/image/enterprise/remitAuthentication/file_ded4ab9e54094dd78b4f612aad6ee30a.jpg', NULL, 0, NULL, '2019-05-13 17:21:52', '2019-05-13 17:21:52');
INSERT INTO `remit_record` VALUES (8, 21, 'static/upload/image/enterprise/logo/file_058417926bee4b108001b89a7ace6135.tencent.mm.png', '优点的骄傲了三大历史记录撒打飞机阿里斯顿加速度发垃圾收到了发卡机第六空间', NULL, 'static/upload/image/enterprise/remitAuthentication/file_633f227f61b2401c83203e7889a41337.jpg', NULL, 0, NULL, '2019-05-13 17:26:05', '2019-05-13 17:26:05');
INSERT INTO `remit_record` VALUES (9, 21, 'static/upload/image/enterprise/logo/file_058417926bee4b108001b89a7ace6135.tencent.mm.png', '优点的骄傲了三大历史记录撒打飞机阿里斯顿加速度发垃圾收到了发卡机第六空间', NULL, 'static/upload/image/blank.jpg', NULL, 0, NULL, '2019-05-13 17:26:45', '2019-05-13 17:26:45');

-- ----------------------------
-- Table structure for send_resume
-- ----------------------------
DROP TABLE IF EXISTS `send_resume`;
CREATE TABLE `send_resume`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '投递简历',
  `uid` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `issue_job_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布职位ID',
  `user_resume_id` bigint(20) NULL DEFAULT NULL COMMENT '用户简历id',
  `status` int(2) NULL DEFAULT 0 COMMENT '0未查看1已查看2发送邀请3不合适',
  `add_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  `modify_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of send_resume
-- ----------------------------
INSERT INTO `send_resume` VALUES (1, 1, '1', 1, 0, '2019-04-01 14:20:53', '2019-04-01 14:20:53');
INSERT INTO `send_resume` VALUES (2, 2, '2', 2, 0, '2019-04-01 14:20:55', '2019-04-01 14:20:55');
INSERT INTO `send_resume` VALUES (3, 3, '3', 3, 0, '2019-04-01 14:20:55', '2019-04-01 14:20:55');
INSERT INTO `send_resume` VALUES (4, 4, '4', 4, 0, '2019-04-01 14:20:56', '2019-04-01 14:20:56');
INSERT INTO `send_resume` VALUES (6, 6, '6', 6, 0, '2019-04-01 14:20:56', '2019-04-01 14:20:56');
INSERT INTO `send_resume` VALUES (7, 7, '7', 7, 0, '2019-04-01 14:20:56', '2019-04-01 14:20:56');
INSERT INTO `send_resume` VALUES (13, 5, '16', 5, 0, '2019-03-04 17:06:24', '2019-04-04 17:06:24');
INSERT INTO `send_resume` VALUES (14, 5, '16', 5, 0, '2019-03-04 17:06:53', '2019-04-04 17:06:53');
INSERT INTO `send_resume` VALUES (15, 5, '16', 5, 0, '2019-04-04 17:07:49', '2019-04-04 17:07:49');
INSERT INTO `send_resume` VALUES (16, 1, '16', 1, 0, '2019-04-11 15:26:15', '2019-04-11 15:26:15');
INSERT INTO `send_resume` VALUES (17, 1, '15', 1, 0, '2019-04-11 15:26:32', '2019-04-11 15:26:32');
INSERT INTO `send_resume` VALUES (18, 5, '17', 5, 0, '2019-04-12 09:35:51', '2019-04-12 09:35:51');
INSERT INTO `send_resume` VALUES (19, 1, '19', 1, 0, '2019-04-13 17:00:32', '2019-04-13 17:00:32');
INSERT INTO `send_resume` VALUES (20, 1, '17', 1, 0, '2019-04-19 17:34:45', '2019-04-19 17:34:45');
INSERT INTO `send_resume` VALUES (21, 1, '22', 1, 0, '2019-04-22 17:19:02', '2019-04-22 17:19:02');
INSERT INTO `send_resume` VALUES (22, 1, '21', 1, 0, '2019-04-22 18:07:13', '2019-04-22 18:07:13');
INSERT INTO `send_resume` VALUES (23, 26, '22', 9, 0, '2019-05-06 12:10:38', '2019-05-06 12:10:38');
INSERT INTO `send_resume` VALUES (24, 26, '24', 9, 0, '2019-05-06 17:42:02', '2019-05-06 17:42:02');
INSERT INTO `send_resume` VALUES (25, 26, '25', 9, 0, '2019-05-06 17:50:36', '2019-05-06 17:50:36');
INSERT INTO `send_resume` VALUES (26, 1, '25', 1, 0, '2019-05-06 18:07:28', '2019-05-06 18:07:28');
INSERT INTO `send_resume` VALUES (27, 26, '26', 9, 0, '2019-05-07 08:01:18', '2019-05-07 08:01:18');
INSERT INTO `send_resume` VALUES (28, 1, '17', 1, 0, '2019-05-07 11:30:57', '2019-05-07 11:30:57');
INSERT INTO `send_resume` VALUES (29, 1, '26', 1, 0, '2019-05-07 13:56:19', '2019-05-07 13:56:19');
INSERT INTO `send_resume` VALUES (30, 1, '21', 1, 0, '2019-05-07 14:35:04', '2019-05-07 14:35:04');
INSERT INTO `send_resume` VALUES (31, 1, '22', 1, 0, '2019-05-07 14:37:55', '2019-05-07 14:37:55');
INSERT INTO `send_resume` VALUES (32, 26, '27', 9, 0, '2019-05-07 17:28:17', '2019-05-07 17:28:17');
INSERT INTO `send_resume` VALUES (33, 1, '28', 1, 0, '2019-05-08 15:37:48', '2019-05-08 15:37:48');
INSERT INTO `send_resume` VALUES (34, 1, '24', 1, 0, '2019-05-08 16:41:36', '2019-05-08 16:41:36');
INSERT INTO `send_resume` VALUES (35, 1, '27', 1, 0, '2019-05-08 16:42:01', '2019-05-08 16:42:01');
INSERT INTO `send_resume` VALUES (36, 1, '19', 1, 0, '2019-05-08 16:42:15', '2019-05-08 16:42:15');
INSERT INTO `send_resume` VALUES (37, 2, '28', 2, 0, '2019-05-09 09:22:41', '2019-05-09 09:22:41');
INSERT INTO `send_resume` VALUES (38, 2, '28', 2, 0, '2019-05-09 09:23:03', '2019-05-09 09:23:03');
INSERT INTO `send_resume` VALUES (39, 2, '28', 2, 0, '2019-05-09 09:24:37', '2019-05-09 09:24:37');
INSERT INTO `send_resume` VALUES (40, 2, '28', 2, 0, '2019-05-09 09:33:59', '2019-05-09 09:33:59');
INSERT INTO `send_resume` VALUES (41, 2, '28', 2, 0, '2019-05-09 09:35:39', '2019-05-09 09:35:39');
INSERT INTO `send_resume` VALUES (42, 34, '29', 12, 0, '2019-05-09 14:15:29', '2019-05-09 14:15:29');
INSERT INTO `send_resume` VALUES (43, 34, '26', 12, 0, '2019-05-09 14:17:15', '2019-05-09 14:17:15');
INSERT INTO `send_resume` VALUES (44, 34, '25', 12, 0, '2019-05-09 14:18:29', '2019-05-09 14:18:29');
INSERT INTO `send_resume` VALUES (45, 34, '24', 12, 0, '2019-05-09 14:18:33', '2019-05-09 14:18:33');
INSERT INTO `send_resume` VALUES (46, 34, '20', 12, 0, '2019-05-09 14:18:48', '2019-05-09 14:18:48');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id(用户)',
  `wechat_public_openid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信公众号openId',
  `head_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机号',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `we_chat` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信',
  `qq` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'qq',
  `pwd` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `id_card` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `id_card_reverse` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证(反面)',
  `teacher_certification` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师资格证',
  `life_picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '个人生活照',
  `major` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业',
  `find_job_status` int(2) NULL DEFAULT NULL COMMENT '求职状态0(离职-随时到岗)1(在职-月内到岗)2(在职-考虑机会)3(在职-暂不考虑)',
  `marriage_status` int(255) NULL DEFAULT NULL COMMENT '婚姻状态0未婚1已婚',
  `work_experience` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作经验',
  `age` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `expect_money` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '期望工资',
  `native_place` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '籍贯',
  `job_position` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作职位',
  `education` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学历',
  `province` varchar(50) CHARACTER SET utf32 COLLATE utf32_general_ci NULL DEFAULT NULL COMMENT '所在省',
  `city` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所在市',
  `area` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所在县',
  `town` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所在乡镇',
  `detail_place` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  `status` int(2) NULL DEFAULT 1 COMMENT '0未审核1审核通过2审核不通过3冻结状态',
  `abnormal_reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '异常原因(认证未通过,冻结原因)',
  `authentication_status` int(2) NULL DEFAULT 0 COMMENT '认证状态0未认证,1等待审核,2认证通过3认证不通过',
  `authentication_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '认证/审核时间',
  `add_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  `modify_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'oyww358RAnTaTbqctM1MzU7ZsaQA', 'static/upload/image/user/headImg/file_11cbeda353334c3d9fdb6fd38d4b5929.jpg', 'Zach', '18720733215', '2012293155@qq.com', 'Wu521521mi', 'Wu5215215', '1234567', 'static/upload/image/user/IDCard/file_fc08835054fa46308c3608700de5a14d.jpg', 'static/upload/image/user/IDCard/file_47c6a9ea77104e3e8001df9b299e24c3.jpg', 'static/upload/image/user/teacherCertification/file_1e87d5b3761546f2bf1ac0937d1cc373.jpg', 'static/upload/image/admin/3.jpg', 'string', 0, 0, '3', 22, '5000', '崇义', '崇义', '高中', '', '', '', '', '红旗大道23号', 1, '长的太丑了', 1, '2019-04-29 16:45:03', '2019-03-28 10:52:35', '2019-05-14 14:41:13');
INSERT INTO `user` VALUES (2, 'oyww358RAnTaTbqctM1MzU7ZsaQA', 'static/upload/image/admin/3.jpg', '欣妍', '18720733216', '2012293155@qq.com', 'Wu521521mi', 'Wu5215215', '123456', 'static/upload/image/admin/3.jpg', NULL, 'static/upload/image/user/teacherCertification/file_5bacacddefb6460ba3826364f2af3c77.jpg', 'static/upload/image/admin/3.jpg', 'string', 0, 0, '3', 22, '5000', '崇义', '崇义', '高中', '江西', '赣州', '章贡区', '', '红旗大道23号', 1, '长的太丑了', 1, '2019-04-15 09:38:45', '2019-03-28 10:52:35', '2019-05-09 10:14:44');
INSERT INTO `user` VALUES (3, NULL, 'static/upload/image/admin/3.jpg', '文文', '18720733217', '2012293155@qq.com', 'Wu521521mi', 'Wu5215215', '123456', 'static/upload/image/admin/3.jpg', NULL, 'static/upload/image/admin/3.jpg', 'static/upload/image/admin/3.jpg', 'string', 0, 0, '3', 22, '5000', '崇义', '崇义', '高中', '江西', '赣州', '章贡区', '', '红旗大道23号', 1, '长的太丑了', 0, NULL, '2019-03-28 10:52:35', '2019-03-28 10:52:35');
INSERT INTO `user` VALUES (4, NULL, 'static/upload/image/admin/3.jpg', '豆豆', '18720733218', '2012293155@qq.com', 'Wu521521mi', 'Wu5215215', '123456', 'static/upload/image/admin/3.jpg', NULL, 'static/upload/image/admin/3.jpg', 'static/upload/image/admin/3.jpg', 'string', 0, 0, '3', 22, '5000', '崇义', '崇义', '高中', '江西', '赣州', '章贡区', '', '红旗大道23号', 1, '长的太丑了', 0, NULL, '2019-03-28 10:52:35', '2019-03-28 10:52:35');
INSERT INTO `user` VALUES (5, NULL, 'static/upload/image/admin/3.jpg', '菲菲', '18720733219', '2012293155@qq.com', 'Wu521521mi', 'Wu5215215', '1234567', 'static/upload/image/admin/3.jpg', NULL, 'static/upload/image/admin/3.jpg', 'static/upload/image/admin/3.jpg', 'string', 0, 0, '3', 22, '5000', '崇义', '崇义', '高中', '江西', '赣州', '章贡区', '', '红旗大道23号', 1, '长的太丑了', 0, NULL, '2019-03-28 10:52:35', '2019-04-10 16:35:28');
INSERT INTO `user` VALUES (6, NULL, 'static/upload/image/admin/3.jpg', '欣欣', '18720733220', '2012293155@qq.com', 'Wu521521mi', 'Wu5215215', '123456', 'static/upload/image/admin/3.jpg', NULL, 'static/upload/image/admin/3.jpg', 'static/upload/image/admin/3.jpg', 'string', 0, 0, '3', 22, '5000', '崇义', '崇义', '高中', '江西', '赣州', '章贡区', '', '红旗大道23号', 1, '长的太丑了', 0, NULL, '2019-03-28 10:52:35', '2019-03-28 10:52:35');
INSERT INTO `user` VALUES (7, NULL, 'static/upload/image/admin/3.jpg', '美美22', '18720733220', '2012293155@qq.com', 'Wu521521mi', 'Wu5215215', '123456', 'static/upload/image/admin/3.jpg', NULL, 'static/upload/image/admin/3.jpg', 'static/upload/image/admin/3.jpg', 'string', 0, 0, '3', 22, '5000', '崇义', '崇义', '高中', '江西', '赣州', '章贡区', '', '红旗大道23号', 1, '长的太丑了', 0, NULL, '2019-03-28 10:52:35', '2019-03-28 10:52:35');
INSERT INTO `user` VALUES (8, NULL, 'static/upload/image/user/IDCard/file_6e34796e26564332b794d38c37c753fe.jpg', '222244', '3333656', '111116666', '11111', '1111', '123456', 'static/upload/image/user/IDCard/file_6e34796e26564332b794d38c37c753fe.jpg', NULL, 'static/upload/image/user/lifePicture/file_28fdd2115229424797de1b56015223c6.jpg', 'static/upload/image/user/teacherCertification/file_5b1872f7c3f74e119b1b2ba04b7e0a25.jpg', 'string', 3, 1, '11111', 1111111, '5000', '11111', '崇义', '高中', '11111', '11111', '11111', '1111111', '11111111', 1, '长的太丑了', 0, NULL, '2019-03-28 10:52:35', '2019-03-28 10:52:35');
INSERT INTO `user` VALUES (9, NULL, 'static/upload/image/user/headImg/file_6d3d07c852d34ce1a0b07872852aa9f6.jpg', '小米', '13576719641', NULL, NULL, NULL, '123456', 'static/upload/image/user/IDCard/file_74342ee2f98246e3a17948cbed014a5d.jpg', NULL, 'static/upload/image/user/teacherCertification/file_4003da3a2266405687c516c756cd433b.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL, '2019-04-12 19:04:19', '2019-04-12 19:04:19');
INSERT INTO `user` VALUES (10, NULL, '/static/upload/image/blank.jpg', '小红', '13576719642', NULL, NULL, NULL, '', 'static/upload/image/blank.jpg', NULL, 'static/upload/image/blank.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL, '2019-04-12 19:33:32', '2019-04-12 19:33:32');
INSERT INTO `user` VALUES (11, NULL, 'static/upload/image/user/headImg/file_b299228a86584a0d9d47bed348e3242a.jpg', '小黄', '13576719645', NULL, NULL, NULL, '123456', 'static/upload/image/user/IDCard/file_5efcf5d5e8ab4810a1b3fcf9fd5fd957.jpg', NULL, 'static/upload/image/user/teacherCertification/file_42b484ed962e403b85c1faf43714e172.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, '2019-04-15 11:30:49', '2019-04-12 19:44:48', '2019-04-15 11:30:49');
INSERT INTO `user` VALUES (12, NULL, 'static/upload/image/user/headImg/file_f3d247eb93034804900e832993a8bfef.jpg', 'abc', '15979851885', NULL, NULL, NULL, '123456', 'static/upload/image/user/IDCard/file_c4e04e5cd9d0439aa2acf44a1cf53a78.jpg', NULL, 'static/upload/image/user/teacherCertification/file_34920baaa6304812a1c9687887e600ed.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL, '2019-04-12 19:47:34', '2019-04-12 19:47:34');
INSERT INTO `user` VALUES (13, NULL, 'static/upload/image/user/headImg/file_8821b2d7a222496498046a29306856d0.jpg', 'akc', '15979851880', NULL, NULL, NULL, '', 'static/upload/image/user/IDCard/file_f5bbf9a928cf4d7c9c30e8da4d5640ba.jpg', NULL, 'static/upload/image/user/teacherCertification/file_51be85c969b5443e8d70896a7ff8d226.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL, '2019-04-12 19:49:21', '2019-04-12 19:49:21');
INSERT INTO `user` VALUES (14, NULL, 'static/upload/image/user/headImg/file_219675d3624a4b8094d56bd52c3caf6c.jpg', '小刘', '15979851884', NULL, NULL, NULL, '123456', 'static/upload/image/user/IDCard/file_c13d2c7d2e8647bcbdca52ba23c5df1b.jpg', NULL, 'static/upload/image/user/teacherCertification/file_8e02e56803ce4e8b9f5c9248365d19f1.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL, '2019-04-12 19:51:09', '2019-04-12 19:51:09');
INSERT INTO `user` VALUES (15, NULL, 'static/upload/image/user/headImg/file_b415003f677241588da9fa5006e1bdad.jpg', 'aaaa', '18720733555', NULL, NULL, NULL, '123456', 'static/upload/image/user/IDCard/file_d0a27439479c414185a070237430f896.jpg', NULL, 'static/upload/image/user/teacherCertification/file_d4b450124bed401eb686165f636ff87e.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL, '2019-04-12 19:52:54', '2019-04-12 19:52:54');
INSERT INTO `user` VALUES (16, NULL, 'static/upload/image/user/headImg/file_88326010375e47e0ae7538c1842c7ba3.jpg', 'bbbb', '15979854662', NULL, NULL, NULL, '123456', 'static/upload/image/user/IDCard/file_0503b449554849c8b0712e065ec0e1a8.jpg', NULL, 'static/upload/image/user/teacherCertification/file_d0d6cdbd72964de69441e965953e34cd.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL, '2019-04-12 19:55:13', '2019-04-12 19:55:13');
INSERT INTO `user` VALUES (17, NULL, 'static/upload/image/user/headImg/file_f4be01a9e3784b52a47edc10d580be92.jpg', 'ccccc', '15646589665', NULL, NULL, NULL, '123456', 'static/upload/image/user/IDCard/file_54ad371bd5b2473096e849de679b80d1.jpg', NULL, 'static/upload/image/user/teacherCertification/file_449810237c214a4da39159509192c78b.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL, '2019-04-12 20:02:39', '2019-04-12 20:02:39');
INSERT INTO `user` VALUES (18, NULL, 'static/upload/image/user/headImg/file_2509d9848da14a73a2f48631471f9c0f.jpg', '33333', '15465621331', NULL, NULL, NULL, '123456', 'static/upload/image/user/IDCard/file_160ae314702f4667ba6e39579256e531.jpg', NULL, 'static/upload/image/user/teacherCertification/file_936aa89cfe954a19adb90ee8ae733e80.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL, '2019-04-12 20:04:54', '2019-04-12 20:04:54');
INSERT INTO `user` VALUES (19, NULL, 'static/upload/image/user/headImg/file_f44cc3aa9a4447fca4fc15cef1ed647d.jpg', '123', '12345678944', NULL, NULL, NULL, '123456', 'static/upload/image/user/IDCard/file_c6c84fbfd5f14c0381bdd295fbca2a27.jpg', NULL, 'static/upload/image/user/teacherCertification/file_d4e4c3cb23564e6bb6cc1091862e5d7d.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL, '2019-04-12 20:09:05', '2019-04-12 20:09:05');
INSERT INTO `user` VALUES (20, NULL, 'static/upload/image/user/headImg/file_96db948a841545bf89f5ac9efec9ac64.jpg', 'sss', '15465456221', NULL, NULL, NULL, '123456', 'static/upload/image/user/IDCard/file_81fafbf66e674ed7b01548d78b8c318c.jpg', NULL, 'static/upload/image/user/teacherCertification/file_64b7b6155f3a41a8a2acf4d29d7c874d.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, '2019-04-29 10:51:48', '2019-04-12 20:11:58', '2019-04-29 10:51:48');
INSERT INTO `user` VALUES (21, NULL, 'static/upload/image/blank.jpg', 'aaaaaaaaaa', '15454545551', NULL, NULL, NULL, '123456', 'static/upload/image/blank.jpg', NULL, 'static/upload/image/blank.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, '2019-04-23 08:58:17', '2019-04-12 20:13:25', '2019-04-23 08:58:17');
INSERT INTO `user` VALUES (22, NULL, 'static/upload/image/user/headImg/file_aa9bb4f416e44077b6045b18046f0677.jpg', '啦啦', '18720733232', NULL, NULL, NULL, '123456', 'static/upload/image/user/IDCard/file_2ad78e1ce06348ca9c3cad159790e59b.jpg', NULL, 'static/upload/image/user/teacherCertification/file_abe1bd28b68d4a2e84d82759faef8f61.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, '2019-04-23 08:58:09', '2019-04-18 17:50:00', '2019-04-23 08:58:09');
INSERT INTO `user` VALUES (23, 'oB6WR1uIvbQtAs5WNwBGGqruJY3c', 'static/upload/image/user/headImg/file_1308473d12fe4cceb1ed2ca9a27bfaa6.jpg', '', '15979851881', '', '', NULL, '123456', 'static/upload/image/user/IDCard/file_5e44aa52854a4f0287f9f0c02ca0d312.jpg', NULL, 'static/upload/image/user/teacherCertification/file_cc2ab592ab05482aacca943575f9de0a.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, '2019-04-29 11:47:33', '2019-05-14 10:17:27');
INSERT INTO `user` VALUES (24, NULL, NULL, '小明', '13576719644', NULL, NULL, NULL, '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL, '2019-04-30 10:36:46', '2019-04-30 10:36:46');
INSERT INTO `user` VALUES (25, NULL, NULL, '王大', '13430405602', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL, '2019-04-30 17:22:07', '2019-04-30 17:22:07');
INSERT INTO `user` VALUES (26, 'oB6WR1uhvHmpP3STzcfT90nOQZZ8', 'static/upload/image/user/headImg/file_2023ff85b8064526b69dea95b141badf.jpg', '袁雍', '18720107694', '1025691147@qq.com', '18720107694', NULL, '890310', 'static/upload/image/user/IDCard/file_8c4af1a2d8894ec79a05e08cecdd4815.jpg', 'static/upload/image/user/IDCard/file_38c13758c63a4e12a80890b7e247bd52.jpg', 'static/upload/image/user/teacherCertification/file_7ea7073a9ea143689c79eb5fcf09329e.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 2, NULL, '2019-05-03 22:05:53', '2019-05-06 12:03:19');
INSERT INTO `user` VALUES (27, NULL, 'static/upload/image/user/headImg/file_ec5e4aec201144fea23ecfb62baf79b1.png', '王大锤', '13888888888', '', '', NULL, '123456aa', 'static/upload/image/user/IDCard/file_f7e2e86a89d741dfaa9360b517e04f21.png', 'static/upload/image/user/IDCard/file_6a5c422c2a9d4023bb5eaf759266ca23.jpeg', 'static/upload/image/user/teacherCertification/file_5881da31957d4ec28665289ec25dde3e.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, '2019-05-05 08:48:17', '2019-05-06 18:17:01');
INSERT INTO `user` VALUES (28, NULL, NULL, '王大锤', '13888888889', NULL, NULL, NULL, '123456aa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL, '2019-05-05 08:50:21', '2019-05-05 08:50:21');
INSERT INTO `user` VALUES (29, NULL, NULL, '兰兰', '15646581881', NULL, NULL, NULL, '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL, '2019-05-05 09:42:29', '2019-05-05 09:42:29');
INSERT INTO `user` VALUES (30, NULL, NULL, '玲玲', '13576719696', NULL, NULL, NULL, '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL, '2019-05-05 09:43:50', '2019-05-05 09:43:50');
INSERT INTO `user` VALUES (31, 'oB6WR1n7AR3WOtozBhDFHNRZ5k1I', 'static/upload/image/blank.jpg', '连青青', '18296866909', '', '', '', 'lianqing19910811', 'static/upload/image/blank.jpg', NULL, 'static/upload/image/blank.jpg', 'static/upload/image/blank.jpg', NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '江西省', '萍乡', '莲花县', '', '', 1, NULL, 0, NULL, '2019-05-07 17:40:31', '2019-05-07 20:07:41');
INSERT INTO `user` VALUES (32, NULL, NULL, '袁雍', '18720108694', NULL, NULL, NULL, '890310', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL, '2019-05-07 21:33:42', '2019-05-07 21:33:42');
INSERT INTO `user` VALUES (33, 'oB6WR1uv7UCk52bpZDKznuTLBvH4', NULL, '曲一日', '15279772465', NULL, NULL, NULL, 'cxp1206', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL, '2019-05-08 10:48:25', '2019-05-08 10:48:25');
INSERT INTO `user` VALUES (34, NULL, 'static/upload/image/user/headImg/file_fd90ee364471454c8c013ec406dd471f.jpg', '花花啊', '18720733214', '6464646646542@qq.com', '46345654564', NULL, '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL, '2019-05-09 13:19:21', '2019-05-09 14:06:02');
INSERT INTO `user` VALUES (48, NULL, NULL, '用户1', '15878751880', '', 'Wu521521mi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL, NULL, NULL);
INSERT INTO `user` VALUES (49, NULL, NULL, NULL, '15878751882', '201229317@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for user_collect_enterprise
-- ----------------------------
DROP TABLE IF EXISTS `user_collect_enterprise`;
CREATE TABLE `user_collect_enterprise`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户收藏公司',
  `user_id` bigint(11) NULL DEFAULT NULL COMMENT '用户id',
  `enterprise_id` bigint(11) NULL DEFAULT NULL COMMENT '公司id',
  `add_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  `modify_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_collect_issue_job
-- ----------------------------
DROP TABLE IF EXISTS `user_collect_issue_job`;
CREATE TABLE `user_collect_issue_job`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '用户收藏职位',
  `user_id` bigint(11) NULL DEFAULT NULL COMMENT '用户id',
  `issue_job_id` bigint(11) NULL DEFAULT NULL COMMENT '发布职位id',
  `add_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  `modify_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_indict
-- ----------------------------
DROP TABLE IF EXISTS `user_indict`;
CREATE TABLE `user_indict`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '用户投诉',
  `user_id` bigint(11) NULL DEFAULT NULL COMMENT '用户id',
  `issue_job_id` bigint(11) NULL DEFAULT NULL COMMENT '发布职位id',
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '投诉类别',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '投诉内容',
  `add_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  `modify_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_message_employee
-- ----------------------------
DROP TABLE IF EXISTS `user_message_employee`;
CREATE TABLE `user_message_employee`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '用户企业私信',
  `user_id` bigint(11) NULL DEFAULT NULL COMMENT '用户id',
  `employee_id` bigint(11) NULL DEFAULT NULL COMMENT '企业员工id',
  `type` int(2) NULL DEFAULT NULL COMMENT '1用户发给企业员工2企业员工发给用户',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容',
  `status` int(2) NULL DEFAULT NULL COMMENT '状态',
  `add_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  `modify_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_resume
-- ----------------------------
DROP TABLE IF EXISTS `user_resume`;
CREATE TABLE `user_resume`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '简历',
  `user_id` bigint(11) NULL DEFAULT NULL COMMENT '用户id',
  `head_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户头像',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `sex` int(2) NULL DEFAULT 0 COMMENT '性别0男1女',
  `age` int(11) NULL DEFAULT 0 COMMENT '年龄',
  `work_age` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工龄',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `qq` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'qq',
  `we_chat` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信',
  `expect_money` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '期望工资',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `find_job_status` int(2) NULL DEFAULT 0 COMMENT '求职状态0(离职-随时到岗)1(在职-月内到岗)2(在职-考虑机会)3(在职-暂不考虑)',
  `marriage_status` int(2) NULL DEFAULT 0 COMMENT '婚姻状态0未婚1已婚',
  `native_place` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '籍贯',
  `nation` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '民族',
  `type` int(2) NULL DEFAULT NULL COMMENT '简历分类0时序型1功能型2复合型3业绩型4目的型',
  `job_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '目标职位',
  `work_type` int(2) NULL DEFAULT NULL COMMENT '求职类型0全职1兼职2周末兼职3晚上兼职4实习5应届生',
  `province` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省',
  `city` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '市',
  `area` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '目标区域(县)',
  `town` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '乡镇',
  `detail_place` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  `now_province` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '当前省',
  `now_city` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '当前市',
  `now_area` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '当前区或县',
  `education` int(2) NULL DEFAULT NULL COMMENT '学历0高中1专科2本科3研究生4博士',
  `graduate_school` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '毕业学校',
  `major` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业',
  `job_skill` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '职业技能',
  `self_appraise` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '自我评价',
  `status` int(255) NULL DEFAULT 0 COMMENT '0关闭1开启',
  `add_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  `modify_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_resume
-- ----------------------------
INSERT INTO `user_resume` VALUES (1, 1, 'static/upload/image/blank.jpg', 'Zachary', 1, 111, '3', '2012293155@qq.com', '2012293155', NULL, '7000', '18720733215', 0, 0, '赣州市崇义县', '汉族', 0, 'JAVA工程师', 0, '山西省', '太原市', '万柏林区', 'string', 'string', '江西省', '赣州市', '崇义县', 4, '江西农业大学', '计算机', '成哦嗯', '我', 0, '2019-03-30 17:24:23', '2019-05-11 18:05:09');
INSERT INTO `user_resume` VALUES (2, 2, 'static/upload/image/blank.jpg', '欣岩222', 0, 0, '11', 'string', '', NULL, 'string', 'string', 0, 0, 'string', '', 0, 'string', 0, 'string', 'string', 'string', 'string', 'string', '江西省', '赣州市', '章贡区', 2, '', '', 'string', 'string', 0, '2019-03-30 17:24:26', '2019-05-10 14:46:51');
INSERT INTO `user_resume` VALUES (3, 3, 'static/upload/image/blank.jpg', 'string', 0, 0, '2', 'string', NULL, NULL, 'string', 'string', 0, 0, 'string', NULL, 0, 'string', 0, 'string', 'string', 'string', 'string', 'string', NULL, NULL, NULL, 2, NULL, NULL, 'string', 'string', 0, '2019-03-30 17:24:27', '2019-03-30 17:24:27');
INSERT INTO `user_resume` VALUES (4, 4, 'static/upload/image/blank.jpg', 'string', 0, 0, '1', 'string', NULL, NULL, 'string', 'string', 0, 0, 'string', NULL, 0, 'string', 0, 'string', 'string', 'string', 'string', 'string', NULL, NULL, NULL, 2, NULL, NULL, 'string', 'string', 0, '2019-03-30 17:24:27', '2019-03-30 17:24:27');
INSERT INTO `user_resume` VALUES (5, 5, 'static/upload/image/blank.jpg', '吴宗杰', 1, 11, '12', '2012293155@qq.com', '2012293155', NULL, '8000', '18720733215', 0, 1, '赣州', '汉族', 0, 'java工程师', 0, '北京市', '北京市', '东城区', 'string', 'string', '江西省', '赣州市', '崇义县', 4, '江西农业大学', '计算机科学与技术', 'stringsdasdfasdfsdfads阿斯顿发是的发达速度发撒旦法师打发沙发斯蒂芬啥的发生的发生stringsdasdfasdfsdfads阿斯顿发是的发达速度发撒旦法师打发沙发斯蒂芬啥的发生的发生stringsdasdfasdfsdfads阿斯顿发是的发达速度发撒旦法师打发沙发斯蒂芬啥的发生的发生', '我很帅哦，我很漂亮的', 0, '2019-03-30 17:24:27', '2019-04-11 20:26:34');
INSERT INTO `user_resume` VALUES (6, 6, 'static/upload/image/blank.jpg', 'string', 0, 0, '12', 'string', NULL, NULL, 'string', 'string', 0, 0, 'string', NULL, 0, 'string', 0, 'string', 'string', 'string', 'string', 'string', NULL, NULL, NULL, 2, NULL, NULL, 'string', 'string', 0, '2019-03-30 17:24:27', '2019-03-30 17:24:27');
INSERT INTO `user_resume` VALUES (7, 7, 'static/upload/image/blank.jpg', 'string', 0, 0, '1', 'string', NULL, NULL, 'string', 'string', 0, 0, 'string', NULL, 0, 'string', 0, 'string', 'string', 'string', 'string', 'string', NULL, NULL, NULL, 2, NULL, NULL, 'string', 'string', 0, '2019-03-30 17:24:28', '2019-03-30 17:24:28');
INSERT INTO `user_resume` VALUES (8, 8, 'static/upload/image/blank.jpg', 'string', 0, 0, '0', 'string', NULL, NULL, 'string', 'string', 0, 0, 'string', NULL, 0, 'string', 0, 'string', 'string', 'string', 'string', 'string', NULL, NULL, NULL, 2, NULL, NULL, 'string', 'string', 0, '2019-03-30 17:24:28', '2019-03-30 17:24:28');
INSERT INTO `user_resume` VALUES (9, 26, NULL, '袁雍', 0, 30, NULL, '1025691147@qq.com', '1025691147', NULL, '5000', '18720107694', 0, 1, '江西赣州信丰', '汉', NULL, '英语教师', NULL, '江西省', '赣州市', '章贡区', NULL, NULL, '江西省', '赣州市', '章贡区', 2, '江西师范大学', '教育管理', '善于沟通、懂电脑，会管理、', '我是一个具有责任心的老师，对学生热爱，教学方法较好！', 0, NULL, '2019-05-07 15:54:33');
INSERT INTO `user_resume` VALUES (10, 27, NULL, '', 0, 0, NULL, '', '', NULL, '', '', 0, 0, '', '', NULL, '', NULL, '江西省', '赣州市', '章贡区', NULL, NULL, '江西省', '赣州市', '章贡区', 0, '', '', NULL, '红红火火恍恍惚惚', 0, NULL, '2019-05-05 18:24:00');
INSERT INTO `user_resume` VALUES (11, 33, NULL, '曲一日', 0, 35, NULL, '279619532@qq.com', '279619532', NULL, '12000', '15279772465', 0, 0, '', '汉', NULL, '教师', NULL, '江西省', '赣州市', '章贡区', NULL, NULL, '江西省', '赣州市', '章贡区', 2, '', '', '', '我劝君更尽一杯酒，西出阳关无故人\n何当共剪西窗烛，', 0, NULL, '2019-05-08 10:56:51');
INSERT INTO `user_resume` VALUES (12, 34, NULL, '花花啊', 0, 23, NULL, '34234234234', '234234234234', NULL, '234234', '2342342342342', 0, 1, '崇义', '汉族', NULL, '234234', NULL, '江西省', '赣州市', '章贡区', NULL, NULL, '江西省', '赣州市', '章贡区', 3, '江西农业大学', '计算机科学与技术', '234234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所234234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所234234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所234234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所234234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所234234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所234234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所234234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所234234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所234234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所234234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所234234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所234234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所234234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所234234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所234234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所234234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所234234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所234234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所234234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所234234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所234234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所', '234234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所234234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所234234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所34234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所234234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所234234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所34234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所234234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所234234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所34234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所234234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所234234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所34234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所234234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所234234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所34234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所234234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所34234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所234234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所234234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所34234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所234234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所234234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所34234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所234234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所234234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所34234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所234234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所234234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所234234dfasd但事实上所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所', 0, NULL, '2019-05-09 13:46:37');
INSERT INTO `user_resume` VALUES (26, 48, NULL, '用户1', 0, 23, NULL, '', NULL, 'Wu521521mi', NULL, '15878751880', 0, 0, '崇义县', NULL, NULL, '英语老师', NULL, NULL, '赣州市', '章贡区', NULL, NULL, '江西省', NULL, '章贡区', NULL, '江西农业大学', NULL, '会wps', NULL, 0, NULL, NULL);
INSERT INTO `user_resume` VALUES (27, 49, NULL, NULL, 0, 0, '1', '201229317@qq.com', NULL, NULL, '4000', '15878751882', 1, 0, '崇义县', '汉族', NULL, NULL, NULL, '江西省', NULL, '章贡区', NULL, '章江大道16号', NULL, '赣州市', NULL, 1, NULL, '汉语言', NULL, '聪明，可爱，漂亮', 0, NULL, NULL);

-- ----------------------------
-- Table structure for we_chat_public_config
-- ----------------------------
DROP TABLE IF EXISTS `we_chat_public_config`;
CREATE TABLE `we_chat_public_config`  (
  `id` bigint(20) NOT NULL COMMENT '公众号相关参数设置',
  `app_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `app_secret` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_token` varchar(600) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '访问令牌2小时要刷新一次',
  `add_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `modify_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of we_chat_public_config
-- ----------------------------
INSERT INTO `we_chat_public_config` VALUES (1, 'wxbd238acdda9a172a', '9caa47dc7fab86e71ef37e2d67e151cb', '21_jnO95PvsDR8d7CtNKT2nxXp2UP5W5kDIw6dP5yLTvWM87qo32NS4OvB14oVQfZX8WnO4EaRZwFB_q4tFHp7ToSz4WxV7wOzVHj0FXbI3qTo7pn5ZBbvDDDZPaT64vPd0JXVhGPDMUoTNmqCHLMJbAHAVWT', NULL, NULL);

-- ----------------------------
-- Table structure for work_experience
-- ----------------------------
DROP TABLE IF EXISTS `work_experience`;
CREATE TABLE `work_experience`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '工作经验',
  `user_resume_id` bigint(11) NULL DEFAULT NULL COMMENT '用户简历id',
  `enterprise_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业名称',
  `enterprise_type_id` bigint(11) NULL DEFAULT NULL COMMENT '企业类型id',
  `start_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开始时间',
  `end_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '结束时间',
  `job_type` bigint(255) NULL DEFAULT NULL COMMENT '职位类型',
  `job_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位名称',
  `department` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门',
  `work_content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '工作内容',
  `performance` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作业绩',
  `skill` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '技能',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `add_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  `modify_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '结束时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of work_experience
-- ----------------------------
INSERT INTO `work_experience` VALUES (1, 5, '优渥', NULL, '2019-04-13', '2019-04-27', NULL, 'java', NULL, 'sdfasdfsadfasdfasdfasdfasdfa', NULL, NULL, NULL, '2019-04-09 20:55:53', '2019-04-11 20:26:38');
INSERT INTO `work_experience` VALUES (3, 5, '果', NULL, '2019-04-13', '2019-05-04', NULL, 'java', NULL, 'sssssssssssssssssssssssssssssssssssssssssss', NULL, NULL, NULL, '2019-04-09 21:23:04', '2019-04-11 20:26:38');
INSERT INTO `work_experience` VALUES (6, 1, '优渥', NULL, '2012-12-12', '2012-12-12', NULL, 'java工程师', NULL, '啊手动阀手动阀手动阀似的发射点发射点发生v仔细检查v咯怎么拍摄的发票上的饭卡泡打粉咋写出来，vasd;fl,1111111111', NULL, NULL, NULL, '2019-04-17 17:52:40', '2019-05-11 18:06:04');
INSERT INTO `work_experience` VALUES (7, 1, '橙', NULL, '2012-12-12', '2012-12-12', NULL, 'java工程师', NULL, '啊手动阀手动阀手动阀似的发射点发射点发生v仔细检查v咯怎么拍摄的发票上的饭卡泡打粉咋写出来，vasd;fl,1111111111', NULL, NULL, NULL, '2019-04-17 17:54:45', '2019-05-11 18:06:04');
INSERT INTO `work_experience` VALUES (8, 10, '', NULL, '', '', NULL, '', NULL, '', NULL, NULL, NULL, '2019-05-05 18:24:04', NULL);
INSERT INTO `work_experience` VALUES (9, 9, '华顿教育咨询公司', NULL, '2015-05-07', '2019-05-04', NULL, '英语教师', NULL, '工作期间我表现较好！热爱学生，取得了优异教学成绩', NULL, NULL, NULL, '2019-05-06 11:35:43', '2019-05-07 07:54:46');
INSERT INTO `work_experience` VALUES (10, 11, '', NULL, '', '', NULL, '', NULL, '', NULL, NULL, NULL, '2019-05-08 10:54:54', NULL);
INSERT INTO `work_experience` VALUES (11, 12, '优沃1', NULL, '2012-12-12', '2019-12-12', NULL, 'java', NULL, '三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发', NULL, NULL, NULL, '2019-05-09 13:46:37', NULL);
INSERT INTO `work_experience` VALUES (12, 12, '优沃2', NULL, '2011-12-12', '2012-12-19', NULL, 'java2', NULL, '三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发三大发送到发', NULL, NULL, NULL, '2019-05-09 13:46:37', NULL);

-- ----------------------------
-- Function structure for split
-- ----------------------------
DROP FUNCTION IF EXISTS `split`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `split`( f_string varchar(1000),f_delimiter varchar(5),f_order int) RETURNS varchar(255) CHARSET utf8
BEGIN 
 
declare result varchar(255) default ''; 
set result = reverse(substring_index(reverse(substring_index(f_string,f_delimiter,f_order)),f_delimiter,1));
return result; 
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
