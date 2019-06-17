/*
Navicat MySQL Data Transfer

Source Server         : 1
Source Server Version : 50506
Source Host           : localhost:3306
Source Database       : information_center

Target Server Type    : MYSQL
Target Server Version : 50506
File Encoding         : 65001

Date: 2019-06-17 15:57:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tbl_avg`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_avg`;
CREATE TABLE `tbl_avg` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `SEMESTER` varchar(128) NOT NULL DEFAULT '' COMMENT '学期',
  `CLASSNAME` varchar(128) NOT NULL COMMENT '班级名称',
  `FENGSHU` double(8,2) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3056 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_avg
-- ----------------------------
INSERT INTO `tbl_avg` VALUES ('3016', '', '1班', '75.50');
INSERT INTO `tbl_avg` VALUES ('3017', '', '2班', '74.68');
INSERT INTO `tbl_avg` VALUES ('3018', '', '3班', '74.37');
INSERT INTO `tbl_avg` VALUES ('3019', '', '4班', '73.81');
INSERT INTO `tbl_avg` VALUES ('3020', '', '5班', '73.07');
INSERT INTO `tbl_avg` VALUES ('3021', '', '6班', '76.44');
INSERT INTO `tbl_avg` VALUES ('3022', '', '7班', '78.12');
INSERT INTO `tbl_avg` VALUES ('3023', '', '8班', '74.27');
INSERT INTO `tbl_avg` VALUES ('3024', '第一学期', '一班', '80.05');
INSERT INTO `tbl_avg` VALUES ('3025', '第一学期', '二班', '80.47');
INSERT INTO `tbl_avg` VALUES ('3026', '第一学期', '三班', '80.77');
INSERT INTO `tbl_avg` VALUES ('3027', '第一学期', '四班', '79.80');
INSERT INTO `tbl_avg` VALUES ('3028', '第一学期', '五班', '77.40');
INSERT INTO `tbl_avg` VALUES ('3029', '第一学期', '六班', '81.75');
INSERT INTO `tbl_avg` VALUES ('3030', '第一学期', '七班', '81.65');
INSERT INTO `tbl_avg` VALUES ('3031', '第一学期', '八班', '75.68');
INSERT INTO `tbl_avg` VALUES ('3032', '第二学期', '一班', '75.44');
INSERT INTO `tbl_avg` VALUES ('3033', '第二学期', '二班', '75.22');
INSERT INTO `tbl_avg` VALUES ('3034', '第二学期', '三班', '75.45');
INSERT INTO `tbl_avg` VALUES ('3035', '第二学期', '四班', '74.72');
INSERT INTO `tbl_avg` VALUES ('3036', '第二学期', '五班', '75.29');
INSERT INTO `tbl_avg` VALUES ('3037', '第二学期', '六班', '77.59');
INSERT INTO `tbl_avg` VALUES ('3038', '第二学期', '七班', '77.47');
INSERT INTO `tbl_avg` VALUES ('3039', '第二学期', '八班', '74.19');
INSERT INTO `tbl_avg` VALUES ('3040', '第三学期', '一班', '73.22');
INSERT INTO `tbl_avg` VALUES ('3041', '第三学期', '二班', '70.45');
INSERT INTO `tbl_avg` VALUES ('3042', '第三学期', '三班', '72.16');
INSERT INTO `tbl_avg` VALUES ('3043', '第三学期', '四班', '71.19');
INSERT INTO `tbl_avg` VALUES ('3044', '第三学期', '五班', '70.37');
INSERT INTO `tbl_avg` VALUES ('3045', '第三学期', '六班', '75.50');
INSERT INTO `tbl_avg` VALUES ('3046', '第三学期', '七班', '75.47');
INSERT INTO `tbl_avg` VALUES ('3047', '第三学期', '八班', '72.24');
INSERT INTO `tbl_avg` VALUES ('3048', '第四学期', '一班', '72.49');
INSERT INTO `tbl_avg` VALUES ('3049', '第四学期', '二班', '68.98');
INSERT INTO `tbl_avg` VALUES ('3050', '第四学期', '三班', '71.12');
INSERT INTO `tbl_avg` VALUES ('3051', '第四学期', '四班', '69.03');
INSERT INTO `tbl_avg` VALUES ('3052', '第四学期', '五班', '68.09');
INSERT INTO `tbl_avg` VALUES ('3053', '第四学期', '六班', '72.79');
INSERT INTO `tbl_avg` VALUES ('3054', '第四学期', '七班', '74.53');
INSERT INTO `tbl_avg` VALUES ('3055', '第四学期', '八班', '69.38');

-- ----------------------------
-- Table structure for `tbl_center`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_center`;
CREATE TABLE `tbl_center` (
  `CENTER_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `USER_KEY` bigint(20) NOT NULL COMMENT '用户外键',
  `WEATHER_CODE` int(11) NOT NULL COMMENT '天气api',
  PRIMARY KEY (`CENTER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_center
-- ----------------------------
INSERT INTO `tbl_center` VALUES ('1', '1', '101090101');
INSERT INTO `tbl_center` VALUES ('2', '2', '101090101');
INSERT INTO `tbl_center` VALUES ('3', '3', '101090101');
INSERT INTO `tbl_center` VALUES ('4', '2', '101090101');
INSERT INTO `tbl_center` VALUES ('5', '3', '101090101');
INSERT INTO `tbl_center` VALUES ('6', '4', '101090101');
INSERT INTO `tbl_center` VALUES ('7', '5', '101090101');
INSERT INTO `tbl_center` VALUES ('8', '6', '101090101');
INSERT INTO `tbl_center` VALUES ('9', '7', '101090101');
INSERT INTO `tbl_center` VALUES ('10', '8', '101090101');
INSERT INTO `tbl_center` VALUES ('11', '9', '101090101');
INSERT INTO `tbl_center` VALUES ('12', '2', '101090101');
INSERT INTO `tbl_center` VALUES ('13', '3', '101090101');
INSERT INTO `tbl_center` VALUES ('14', '4', '101090101');
INSERT INTO `tbl_center` VALUES ('15', '5', '101090101');
INSERT INTO `tbl_center` VALUES ('16', '6', '101090101');
INSERT INTO `tbl_center` VALUES ('17', '7', '101090101');
INSERT INTO `tbl_center` VALUES ('18', '8', '101090101');
INSERT INTO `tbl_center` VALUES ('19', '9', '101090101');
INSERT INTO `tbl_center` VALUES ('20', '10', '101090101');
INSERT INTO `tbl_center` VALUES ('21', '11', '101090101');
INSERT INTO `tbl_center` VALUES ('22', '12', '101090101');
INSERT INTO `tbl_center` VALUES ('23', '13', '101090101');

-- ----------------------------
-- Table structure for `tbl_center_degree`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_center_degree`;
CREATE TABLE `tbl_center_degree` (
  `DEGREE_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `DEGREE_USERKEY` bigint(20) NOT NULL DEFAULT '0' COMMENT '外键',
  `DEGREE_TERM` varchar(32) NOT NULL COMMENT '学期',
  `DEGREE_CLASSNAME` varchar(128) NOT NULL COMMENT '课程名字',
  `DEGREE_CLASSNATURE` varchar(32) NOT NULL COMMENT '课程类型',
  `DEGREE_CREDIT` double(8,2) NOT NULL COMMENT '学分',
  `DEGREE_GRADE` varchar(128) NOT NULL COMMENT '成绩',
  `DEGREE_PERFORMANCEPOINT` double(8,2) NOT NULL COMMENT '绩点',
  `DEGREE_TESTNATURE` varchar(255) NOT NULL COMMENT '考试类型',
  `DEGREE_STUDENTID` int(11) NOT NULL COMMENT '学号',
  `DEGREE_STUDENTNAME` varchar(128) NOT NULL COMMENT '学生名字',
  PRIMARY KEY (`DEGREE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=433 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_center_degree
-- ----------------------------
INSERT INTO `tbl_center_degree` VALUES ('1', '5', '3', '音乐鉴赏（尔雅网络课程）', '主修', '2.00', '93', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('2', '5', '3', '大学生心理健康教育', '主修', '2.00', '83', '3.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('3', '5', '3', '形势与政策一', '主修', '0.20', '75', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('4', '5', '3', '思想道德修养与法律基础', '主修', '3.00', '85', '3.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('5', '5', '3', '中国近现代史纲要', '主修', '2.00', '82', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('6', '5', '3', '大学英语一', '主修', '4.00', '60', '1.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('7', '5', '3', '高等数学B1', '主修', '3.00', '96', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('8', '5', '3', '大学体育一', '主修', '1.00', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('9', '5', '3', 'Access高效商务应用', '主修', '2.00', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('10', '5', '3', '信息素养实践一', '主修', '1.00', '92', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('11', '5', '3', '计算机导论', '主修', '3.00', '81', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('12', '5', '12', '美术概论（尔雅网络课程）', '主修', '2.00', '89', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('13', '5', '12', '军事课', '主修', '2.00', '82', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('14', '5', '12', '大学生生涯发展与就业指导', '主修', '2.00', '86', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('15', '5', '12', '形势与政策二', '主修', '0.30', '85', '3.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('16', '5', '12', '马克思主义基本原理概论', '主修', '3.00', '75', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('17', '5', '12', '大学英语二', '主修', '4.00', '71', '2.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('18', '5', '12', '高等数学B2', '主修', '4.00', '90', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('19', '5', '12', '线性代数', '主修', '3.00', '84', '3.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('20', '5', '12', '大学体育二', '主修', '1.00', '82', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('21', '5', '12', '商务办公实务', '主修', '2.00', '76', '2.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('22', '5', '12', 'Web开发一', '主修', '2.50', '82', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('23', '5', '12', '网络原理', '主修', '3.00', '84', '3.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('24', '5', '12', '程序设计基础', '主修', '3.50', '95', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('25', '5', '12', '信息检索与利用（适于理工类）', '主修', '2.00', '98', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('26', '5', '3', '大学生创业教育', '主修', '2.00', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('27', '5', '3', '形势与政策三', '主修', '0.20', '合格', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('28', '5', '3', '毛泽东思想和中国特色社会主义理论体系概论', '主修', '6.00', '81', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('29', '5', '3', '英语报刊选读', '主修', '2.00', '75', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('30', '5', '3', '职场商务英语', '主修', '2.00', '70', '2.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('31', '5', '3', '离散数学', '主修', '3.00', '94', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('32', '5', '3', '大学体育三', '主修', '1.00', '82', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('33', '5', '3', '数据结构', '主修', '4.00', '88', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('34', '5', '3', '软件测试基础', '主修', '2.50', '80', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('35', '5', '3', '计算机组成原理', '主修', '3.00', '88', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('36', '5', '3', '面向对象程序设计', '主修', '4.00', '90', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('37', '5', '3', 'Web开发二', '主修', '2.50', '73', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('38', '5', '12', '形势与政策四', '主修', '0.30', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('39', '5', '12', '英美外刊导读', '主修', '2.00', '72', '2.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('40', '5', '12', '概率与统计', '主修', '4.00', '92', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('41', '5', '12', '操作系统', '主修', '4.00', '74', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('42', '5', '12', '大学体育四', '主修', '1.00', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('43', '5', '12', '数据库原理', '主修', '3.00', '88', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('44', '5', '12', '方向基础课', '主修', '3.00', '90', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('45', '5', '12', 'CMS与模板制作', '主修', '1.00', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('46', '5', '3', '形势与政策五', '主修', '0.20', '合格', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('47', '5', '3', '分布式系统原理', '主修', '3.50', '91', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('48', '5', '3', 'JavaEE', '主修', '3.50', '88', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('49', '5', '3', '软件工程', '主修', '3.00', '94', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('50', '5', '3', 'Java企业级应用开发', '主修', '3.50', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('51', '5', '3', 'Java与大数据分析开发实训一', '主修', '7.00', '89', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('52', '5', '12', 'Spark框架', '主修', '3.50', '0', '0.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('53', '5', '12', '大数据企业应用开发', '主修', '3.50', '0', '0.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('54', '5', '12', 'Hadoop开发', '主修', '3.50', '0', '0.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('55', '7', '3', '音乐鉴赏（尔雅网络课程）', '主修', '2.00', '93', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('56', '7', '3', '大学生心理健康教育', '主修', '2.00', '83', '3.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('57', '7', '3', '形势与政策一', '主修', '0.20', '75', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('58', '7', '3', '思想道德修养与法律基础', '主修', '3.00', '85', '3.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('59', '7', '3', '中国近现代史纲要', '主修', '2.00', '82', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('60', '7', '3', '大学英语一', '主修', '4.00', '60', '1.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('61', '7', '3', '高等数学B1', '主修', '3.00', '96', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('62', '7', '3', '大学体育一', '主修', '1.00', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('63', '7', '3', 'Access高效商务应用', '主修', '2.00', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('64', '7', '3', '信息素养实践一', '主修', '1.00', '92', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('65', '7', '3', '计算机导论', '主修', '3.00', '81', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('66', '7', '12', '美术概论（尔雅网络课程）', '主修', '2.00', '89', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('67', '7', '12', '军事课', '主修', '2.00', '82', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('68', '7', '12', '大学生生涯发展与就业指导', '主修', '2.00', '86', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('69', '7', '12', '形势与政策二', '主修', '0.30', '85', '3.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('70', '7', '12', '马克思主义基本原理概论', '主修', '3.00', '75', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('71', '7', '12', '大学英语二', '主修', '4.00', '71', '2.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('72', '7', '12', '高等数学B2', '主修', '4.00', '90', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('73', '7', '12', '线性代数', '主修', '3.00', '84', '3.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('74', '7', '12', '大学体育二', '主修', '1.00', '82', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('75', '7', '12', '商务办公实务', '主修', '2.00', '76', '2.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('76', '7', '12', 'Web开发一', '主修', '2.50', '82', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('77', '7', '12', '网络原理', '主修', '3.00', '84', '3.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('78', '7', '12', '程序设计基础', '主修', '3.50', '95', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('79', '7', '12', '信息检索与利用（适于理工类）', '主修', '2.00', '98', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('80', '7', '3', '大学生创业教育', '主修', '2.00', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('81', '7', '3', '形势与政策三', '主修', '0.20', '合格', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('82', '7', '3', '毛泽东思想和中国特色社会主义理论体系概论', '主修', '6.00', '81', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('83', '7', '3', '英语报刊选读', '主修', '2.00', '75', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('84', '7', '3', '职场商务英语', '主修', '2.00', '70', '2.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('85', '7', '3', '离散数学', '主修', '3.00', '94', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('86', '7', '3', '大学体育三', '主修', '1.00', '82', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('87', '7', '3', '数据结构', '主修', '4.00', '88', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('88', '7', '3', '软件测试基础', '主修', '2.50', '80', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('89', '7', '3', '计算机组成原理', '主修', '3.00', '88', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('90', '7', '3', '面向对象程序设计', '主修', '4.00', '90', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('91', '7', '3', 'Web开发二', '主修', '2.50', '73', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('92', '7', '12', '形势与政策四', '主修', '0.30', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('93', '7', '12', '英美外刊导读', '主修', '2.00', '72', '2.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('94', '7', '12', '概率与统计', '主修', '4.00', '92', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('95', '7', '12', '操作系统', '主修', '4.00', '74', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('96', '7', '12', '大学体育四', '主修', '1.00', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('97', '7', '12', '数据库原理', '主修', '3.00', '88', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('98', '7', '12', '方向基础课', '主修', '3.00', '90', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('99', '7', '12', 'CMS与模板制作', '主修', '1.00', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('100', '7', '3', '形势与政策五', '主修', '0.20', '合格', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('101', '7', '3', '分布式系统原理', '主修', '3.50', '91', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('102', '7', '3', 'JavaEE', '主修', '3.50', '88', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('103', '7', '3', '软件工程', '主修', '3.00', '94', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('104', '7', '3', 'Java企业级应用开发', '主修', '3.50', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('105', '7', '3', 'Java与大数据分析开发实训一', '主修', '7.00', '89', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('106', '7', '12', 'Spark框架', '主修', '3.50', '0', '0.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('107', '7', '12', '大数据企业应用开发', '主修', '3.50', '0', '0.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('108', '7', '12', 'Hadoop开发', '主修', '3.50', '0', '0.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('109', '8', '3', '音乐鉴赏（尔雅网络课程）', '主修', '2.00', '93', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('110', '8', '3', '大学生心理健康教育', '主修', '2.00', '83', '3.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('111', '8', '3', '形势与政策一', '主修', '0.20', '75', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('112', '8', '3', '思想道德修养与法律基础', '主修', '3.00', '85', '3.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('113', '8', '3', '中国近现代史纲要', '主修', '2.00', '82', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('114', '8', '3', '大学英语一', '主修', '4.00', '60', '1.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('115', '8', '3', '高等数学B1', '主修', '3.00', '96', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('116', '8', '3', '大学体育一', '主修', '1.00', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('117', '8', '3', 'Access高效商务应用', '主修', '2.00', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('118', '8', '3', '信息素养实践一', '主修', '1.00', '92', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('119', '8', '3', '计算机导论', '主修', '3.00', '81', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('120', '8', '12', '美术概论（尔雅网络课程）', '主修', '2.00', '89', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('121', '8', '12', '军事课', '主修', '2.00', '82', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('122', '8', '12', '大学生生涯发展与就业指导', '主修', '2.00', '86', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('123', '8', '12', '形势与政策二', '主修', '0.30', '85', '3.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('124', '8', '12', '马克思主义基本原理概论', '主修', '3.00', '75', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('125', '8', '12', '大学英语二', '主修', '4.00', '71', '2.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('126', '8', '12', '高等数学B2', '主修', '4.00', '90', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('127', '8', '12', '线性代数', '主修', '3.00', '84', '3.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('128', '8', '12', '大学体育二', '主修', '1.00', '82', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('129', '8', '12', '商务办公实务', '主修', '2.00', '76', '2.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('130', '8', '12', 'Web开发一', '主修', '2.50', '82', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('131', '8', '12', '网络原理', '主修', '3.00', '84', '3.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('132', '8', '12', '程序设计基础', '主修', '3.50', '95', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('133', '8', '12', '信息检索与利用（适于理工类）', '主修', '2.00', '98', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('134', '8', '3', '大学生创业教育', '主修', '2.00', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('135', '8', '3', '形势与政策三', '主修', '0.20', '合格', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('136', '8', '3', '毛泽东思想和中国特色社会主义理论体系概论', '主修', '6.00', '81', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('137', '8', '3', '英语报刊选读', '主修', '2.00', '75', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('138', '8', '3', '职场商务英语', '主修', '2.00', '70', '2.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('139', '8', '3', '离散数学', '主修', '3.00', '94', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('140', '8', '3', '大学体育三', '主修', '1.00', '82', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('141', '8', '3', '数据结构', '主修', '4.00', '88', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('142', '8', '3', '软件测试基础', '主修', '2.50', '80', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('143', '8', '3', '计算机组成原理', '主修', '3.00', '88', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('144', '8', '3', '面向对象程序设计', '主修', '4.00', '90', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('145', '8', '3', 'Web开发二', '主修', '2.50', '73', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('146', '8', '12', '形势与政策四', '主修', '0.30', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('147', '8', '12', '英美外刊导读', '主修', '2.00', '72', '2.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('148', '8', '12', '概率与统计', '主修', '4.00', '92', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('149', '8', '12', '操作系统', '主修', '4.00', '74', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('150', '8', '12', '大学体育四', '主修', '1.00', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('151', '8', '12', '数据库原理', '主修', '3.00', '88', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('152', '8', '12', '方向基础课', '主修', '3.00', '90', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('153', '8', '12', 'CMS与模板制作', '主修', '1.00', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('154', '8', '3', '形势与政策五', '主修', '0.20', '合格', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('155', '8', '3', '分布式系统原理', '主修', '3.50', '91', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('156', '8', '3', 'JavaEE', '主修', '3.50', '88', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('157', '8', '3', '软件工程', '主修', '3.00', '94', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('158', '8', '3', 'Java企业级应用开发', '主修', '3.50', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('159', '8', '3', 'Java与大数据分析开发实训一', '主修', '7.00', '89', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('160', '8', '12', 'Spark框架', '主修', '3.50', '0', '0.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('161', '8', '12', '大数据企业应用开发', '主修', '3.50', '0', '0.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('162', '8', '12', 'Hadoop开发', '主修', '3.50', '0', '0.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('163', '9', '3', '音乐鉴赏（尔雅网络课程）', '主修', '2.00', '93', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('164', '9', '3', '大学生心理健康教育', '主修', '2.00', '83', '3.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('165', '9', '3', '形势与政策一', '主修', '0.20', '75', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('166', '9', '3', '思想道德修养与法律基础', '主修', '3.00', '85', '3.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('167', '9', '3', '中国近现代史纲要', '主修', '2.00', '82', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('168', '9', '3', '大学英语一', '主修', '4.00', '60', '1.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('169', '9', '3', '高等数学B1', '主修', '3.00', '96', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('170', '9', '3', '大学体育一', '主修', '1.00', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('171', '9', '3', 'Access高效商务应用', '主修', '2.00', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('172', '9', '3', '信息素养实践一', '主修', '1.00', '92', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('173', '9', '3', '计算机导论', '主修', '3.00', '81', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('174', '9', '12', '美术概论（尔雅网络课程）', '主修', '2.00', '89', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('175', '9', '12', '军事课', '主修', '2.00', '82', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('176', '9', '12', '大学生生涯发展与就业指导', '主修', '2.00', '86', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('177', '9', '12', '形势与政策二', '主修', '0.30', '85', '3.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('178', '9', '12', '马克思主义基本原理概论', '主修', '3.00', '75', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('179', '9', '12', '大学英语二', '主修', '4.00', '71', '2.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('180', '9', '12', '高等数学B2', '主修', '4.00', '90', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('181', '9', '12', '线性代数', '主修', '3.00', '84', '3.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('182', '9', '12', '大学体育二', '主修', '1.00', '82', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('183', '9', '12', '商务办公实务', '主修', '2.00', '76', '2.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('184', '9', '12', 'Web开发一', '主修', '2.50', '82', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('185', '9', '12', '网络原理', '主修', '3.00', '84', '3.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('186', '9', '12', '程序设计基础', '主修', '3.50', '95', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('187', '9', '12', '信息检索与利用（适于理工类）', '主修', '2.00', '98', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('188', '9', '3', '大学生创业教育', '主修', '2.00', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('189', '9', '3', '形势与政策三', '主修', '0.20', '合格', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('190', '9', '3', '毛泽东思想和中国特色社会主义理论体系概论', '主修', '6.00', '81', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('191', '9', '3', '英语报刊选读', '主修', '2.00', '75', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('192', '9', '3', '职场商务英语', '主修', '2.00', '70', '2.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('193', '9', '3', '离散数学', '主修', '3.00', '94', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('194', '9', '3', '大学体育三', '主修', '1.00', '82', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('195', '9', '3', '数据结构', '主修', '4.00', '88', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('196', '9', '3', '软件测试基础', '主修', '2.50', '80', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('197', '9', '3', '计算机组成原理', '主修', '3.00', '88', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('198', '9', '3', '面向对象程序设计', '主修', '4.00', '90', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('199', '9', '3', 'Web开发二', '主修', '2.50', '73', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('200', '9', '12', '形势与政策四', '主修', '0.30', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('201', '9', '12', '英美外刊导读', '主修', '2.00', '72', '2.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('202', '9', '12', '概率与统计', '主修', '4.00', '92', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('203', '9', '12', '操作系统', '主修', '4.00', '74', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('204', '9', '12', '大学体育四', '主修', '1.00', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('205', '9', '12', '数据库原理', '主修', '3.00', '88', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('206', '9', '12', '方向基础课', '主修', '3.00', '90', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('207', '9', '12', 'CMS与模板制作', '主修', '1.00', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('208', '9', '3', '形势与政策五', '主修', '0.20', '合格', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('209', '9', '3', '分布式系统原理', '主修', '3.50', '91', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('210', '9', '3', 'JavaEE', '主修', '3.50', '88', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('211', '9', '3', '软件工程', '主修', '3.00', '94', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('212', '9', '3', 'Java企业级应用开发', '主修', '3.50', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('213', '9', '3', 'Java与大数据分析开发实训一', '主修', '7.00', '89', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('214', '9', '12', 'Spark框架', '主修', '3.50', '0', '0.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('215', '9', '12', '大数据企业应用开发', '主修', '3.50', '0', '0.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('216', '9', '12', 'Hadoop开发', '主修', '3.50', '0', '0.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('217', '10', '3', '音乐鉴赏（尔雅网络课程）', '主修', '2.00', '93', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('218', '10', '3', '大学生心理健康教育', '主修', '2.00', '83', '3.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('219', '10', '3', '形势与政策一', '主修', '0.20', '75', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('220', '10', '3', '思想道德修养与法律基础', '主修', '3.00', '85', '3.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('221', '10', '3', '中国近现代史纲要', '主修', '2.00', '82', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('222', '10', '3', '大学英语一', '主修', '4.00', '60', '1.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('223', '10', '3', '高等数学B1', '主修', '3.00', '96', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('224', '10', '3', '大学体育一', '主修', '1.00', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('225', '10', '3', 'Access高效商务应用', '主修', '2.00', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('226', '10', '3', '信息素养实践一', '主修', '1.00', '92', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('227', '10', '3', '计算机导论', '主修', '3.00', '81', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('228', '10', '12', '美术概论（尔雅网络课程）', '主修', '2.00', '89', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('229', '10', '12', '军事课', '主修', '2.00', '82', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('230', '10', '12', '大学生生涯发展与就业指导', '主修', '2.00', '86', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('231', '10', '12', '形势与政策二', '主修', '0.30', '85', '3.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('232', '10', '12', '马克思主义基本原理概论', '主修', '3.00', '75', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('233', '10', '12', '大学英语二', '主修', '4.00', '71', '2.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('234', '10', '12', '高等数学B2', '主修', '4.00', '90', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('235', '10', '12', '线性代数', '主修', '3.00', '84', '3.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('236', '10', '12', '大学体育二', '主修', '1.00', '82', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('237', '10', '12', '商务办公实务', '主修', '2.00', '76', '2.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('238', '10', '12', 'Web开发一', '主修', '2.50', '82', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('239', '10', '12', '网络原理', '主修', '3.00', '84', '3.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('240', '10', '12', '程序设计基础', '主修', '3.50', '95', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('241', '10', '12', '信息检索与利用（适于理工类）', '主修', '2.00', '98', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('242', '10', '3', '大学生创业教育', '主修', '2.00', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('243', '10', '3', '形势与政策三', '主修', '0.20', '合格', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('244', '10', '3', '毛泽东思想和中国特色社会主义理论体系概论', '主修', '6.00', '81', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('245', '10', '3', '英语报刊选读', '主修', '2.00', '75', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('246', '10', '3', '职场商务英语', '主修', '2.00', '70', '2.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('247', '10', '3', '离散数学', '主修', '3.00', '94', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('248', '10', '3', '大学体育三', '主修', '1.00', '82', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('249', '10', '3', '数据结构', '主修', '4.00', '88', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('250', '10', '3', '软件测试基础', '主修', '2.50', '80', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('251', '10', '3', '计算机组成原理', '主修', '3.00', '88', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('252', '10', '3', '面向对象程序设计', '主修', '4.00', '90', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('253', '10', '3', 'Web开发二', '主修', '2.50', '73', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('254', '10', '12', '形势与政策四', '主修', '0.30', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('255', '10', '12', '英美外刊导读', '主修', '2.00', '72', '2.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('256', '10', '12', '概率与统计', '主修', '4.00', '92', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('257', '10', '12', '操作系统', '主修', '4.00', '74', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('258', '10', '12', '大学体育四', '主修', '1.00', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('259', '10', '12', '数据库原理', '主修', '3.00', '88', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('260', '10', '12', '方向基础课', '主修', '3.00', '90', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('261', '10', '12', 'CMS与模板制作', '主修', '1.00', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('262', '10', '3', '形势与政策五', '主修', '0.20', '合格', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('263', '10', '3', '分布式系统原理', '主修', '3.50', '91', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('264', '10', '3', 'JavaEE', '主修', '3.50', '88', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('265', '10', '3', '软件工程', '主修', '3.00', '94', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('266', '10', '3', 'Java企业级应用开发', '主修', '3.50', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('267', '10', '3', 'Java与大数据分析开发实训一', '主修', '7.00', '89', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('268', '10', '12', 'Spark框架', '主修', '3.50', '0', '0.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('269', '10', '12', '大数据企业应用开发', '主修', '3.50', '0', '0.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('270', '10', '12', 'Hadoop开发', '主修', '3.50', '0', '0.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('271', '11', '3', '音乐鉴赏（尔雅网络课程）', '主修', '2.00', '93', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('272', '11', '3', '大学生心理健康教育', '主修', '2.00', '83', '3.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('273', '11', '3', '形势与政策一', '主修', '0.20', '75', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('274', '11', '3', '思想道德修养与法律基础', '主修', '3.00', '85', '3.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('275', '11', '3', '中国近现代史纲要', '主修', '2.00', '82', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('276', '11', '3', '大学英语一', '主修', '4.00', '60', '1.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('277', '11', '3', '高等数学B1', '主修', '3.00', '96', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('278', '11', '3', '大学体育一', '主修', '1.00', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('279', '11', '3', 'Access高效商务应用', '主修', '2.00', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('280', '11', '3', '信息素养实践一', '主修', '1.00', '92', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('281', '11', '3', '计算机导论', '主修', '3.00', '81', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('282', '11', '12', '美术概论（尔雅网络课程）', '主修', '2.00', '89', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('283', '11', '12', '军事课', '主修', '2.00', '82', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('284', '11', '12', '大学生生涯发展与就业指导', '主修', '2.00', '86', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('285', '11', '12', '形势与政策二', '主修', '0.30', '85', '3.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('286', '11', '12', '马克思主义基本原理概论', '主修', '3.00', '75', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('287', '11', '12', '大学英语二', '主修', '4.00', '71', '2.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('288', '11', '12', '高等数学B2', '主修', '4.00', '90', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('289', '11', '12', '线性代数', '主修', '3.00', '84', '3.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('290', '11', '12', '大学体育二', '主修', '1.00', '82', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('291', '11', '12', '商务办公实务', '主修', '2.00', '76', '2.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('292', '11', '12', 'Web开发一', '主修', '2.50', '82', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('293', '11', '12', '网络原理', '主修', '3.00', '84', '3.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('294', '11', '12', '程序设计基础', '主修', '3.50', '95', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('295', '11', '12', '信息检索与利用（适于理工类）', '主修', '2.00', '98', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('296', '11', '3', '大学生创业教育', '主修', '2.00', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('297', '11', '3', '形势与政策三', '主修', '0.20', '合格', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('298', '11', '3', '毛泽东思想和中国特色社会主义理论体系概论', '主修', '6.00', '81', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('299', '11', '3', '英语报刊选读', '主修', '2.00', '75', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('300', '11', '3', '职场商务英语', '主修', '2.00', '70', '2.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('301', '11', '3', '离散数学', '主修', '3.00', '94', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('302', '11', '3', '大学体育三', '主修', '1.00', '82', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('303', '11', '3', '数据结构', '主修', '4.00', '88', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('304', '11', '3', '软件测试基础', '主修', '2.50', '80', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('305', '11', '3', '计算机组成原理', '主修', '3.00', '88', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('306', '11', '3', '面向对象程序设计', '主修', '4.00', '90', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('307', '11', '3', 'Web开发二', '主修', '2.50', '73', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('308', '11', '12', '形势与政策四', '主修', '0.30', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('309', '11', '12', '英美外刊导读', '主修', '2.00', '72', '2.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('310', '11', '12', '概率与统计', '主修', '4.00', '92', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('311', '11', '12', '操作系统', '主修', '4.00', '74', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('312', '11', '12', '大学体育四', '主修', '1.00', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('313', '11', '12', '数据库原理', '主修', '3.00', '88', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('314', '11', '12', '方向基础课', '主修', '3.00', '90', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('315', '11', '12', 'CMS与模板制作', '主修', '1.00', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('316', '11', '3', '形势与政策五', '主修', '0.20', '合格', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('317', '11', '3', '分布式系统原理', '主修', '3.50', '91', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('318', '11', '3', 'JavaEE', '主修', '3.50', '88', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('319', '11', '3', '软件工程', '主修', '3.00', '94', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('320', '11', '3', 'Java企业级应用开发', '主修', '3.50', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('321', '11', '3', 'Java与大数据分析开发实训一', '主修', '7.00', '89', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('322', '11', '12', 'Spark框架', '主修', '3.50', '0', '0.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('323', '11', '12', '大数据企业应用开发', '主修', '3.50', '0', '0.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('324', '11', '12', 'Hadoop开发', '主修', '3.50', '0', '0.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('325', '12', '3', '音乐鉴赏（尔雅网络课程）', '主修', '2.00', '93', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('326', '12', '3', '大学生心理健康教育', '主修', '2.00', '83', '3.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('327', '12', '3', '形势与政策一', '主修', '0.20', '75', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('328', '12', '3', '思想道德修养与法律基础', '主修', '3.00', '85', '3.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('329', '12', '3', '中国近现代史纲要', '主修', '2.00', '82', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('330', '12', '3', '大学英语一', '主修', '4.00', '60', '1.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('331', '12', '3', '高等数学B1', '主修', '3.00', '96', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('332', '12', '3', '大学体育一', '主修', '1.00', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('333', '12', '3', 'Access高效商务应用', '主修', '2.00', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('334', '12', '3', '信息素养实践一', '主修', '1.00', '92', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('335', '12', '3', '计算机导论', '主修', '3.00', '81', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('336', '12', '12', '美术概论（尔雅网络课程）', '主修', '2.00', '89', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('337', '12', '12', '军事课', '主修', '2.00', '82', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('338', '12', '12', '大学生生涯发展与就业指导', '主修', '2.00', '86', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('339', '12', '12', '形势与政策二', '主修', '0.30', '85', '3.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('340', '12', '12', '马克思主义基本原理概论', '主修', '3.00', '75', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('341', '12', '12', '大学英语二', '主修', '4.00', '71', '2.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('342', '12', '12', '高等数学B2', '主修', '4.00', '90', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('343', '12', '12', '线性代数', '主修', '3.00', '84', '3.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('344', '12', '12', '大学体育二', '主修', '1.00', '82', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('345', '12', '12', '商务办公实务', '主修', '2.00', '76', '2.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('346', '12', '12', 'Web开发一', '主修', '2.50', '82', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('347', '12', '12', '网络原理', '主修', '3.00', '84', '3.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('348', '12', '12', '程序设计基础', '主修', '3.50', '95', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('349', '12', '12', '信息检索与利用（适于理工类）', '主修', '2.00', '98', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('350', '12', '3', '大学生创业教育', '主修', '2.00', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('351', '12', '3', '形势与政策三', '主修', '0.20', '合格', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('352', '12', '3', '毛泽东思想和中国特色社会主义理论体系概论', '主修', '6.00', '81', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('353', '12', '3', '英语报刊选读', '主修', '2.00', '75', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('354', '12', '3', '职场商务英语', '主修', '2.00', '70', '2.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('355', '12', '3', '离散数学', '主修', '3.00', '94', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('356', '12', '3', '大学体育三', '主修', '1.00', '82', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('357', '12', '3', '数据结构', '主修', '4.00', '88', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('358', '12', '3', '软件测试基础', '主修', '2.50', '80', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('359', '12', '3', '计算机组成原理', '主修', '3.00', '88', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('360', '12', '3', '面向对象程序设计', '主修', '4.00', '90', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('361', '12', '3', 'Web开发二', '主修', '2.50', '73', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('362', '12', '12', '形势与政策四', '主修', '0.30', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('363', '12', '12', '英美外刊导读', '主修', '2.00', '72', '2.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('364', '12', '12', '概率与统计', '主修', '4.00', '92', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('365', '12', '12', '操作系统', '主修', '4.00', '74', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('366', '12', '12', '大学体育四', '主修', '1.00', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('367', '12', '12', '数据库原理', '主修', '3.00', '88', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('368', '12', '12', '方向基础课', '主修', '3.00', '90', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('369', '12', '12', 'CMS与模板制作', '主修', '1.00', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('370', '12', '3', '形势与政策五', '主修', '0.20', '合格', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('371', '12', '3', '分布式系统原理', '主修', '3.50', '91', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('372', '12', '3', 'JavaEE', '主修', '3.50', '88', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('373', '12', '3', '软件工程', '主修', '3.00', '94', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('374', '12', '3', 'Java企业级应用开发', '主修', '3.50', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('375', '12', '3', 'Java与大数据分析开发实训一', '主修', '7.00', '89', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('376', '12', '12', 'Spark框架', '主修', '3.50', '0', '0.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('377', '12', '12', '大数据企业应用开发', '主修', '3.50', '0', '0.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('378', '12', '12', 'Hadoop开发', '主修', '3.50', '0', '0.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('379', '13', '3', '音乐鉴赏（尔雅网络课程）', '选修', '2.00', '93', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('380', '13', '3', '大学生心理健康教育', '素质类', '2.00', '83', '3.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('381', '13', '3', '形势与政策一', '素质类', '0.20', '75', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('382', '13', '3', '思想道德修养与法律基础', '必修', '3.00', '85', '3.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('383', '13', '3', '中国近现代史纲要', '必修', '2.00', '82', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('384', '13', '3', '大学英语一', '必修', '4.00', '60', '1.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('385', '13', '3', '高等数学B1', '必修', '3.00', '96', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('386', '13', '3', '大学体育一', '必修', '1.00', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('387', '13', '3', 'Access高效商务应用', '选修', '2.00', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('388', '13', '3', '信息素养实践一', '必修', '1.00', '92', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('389', '13', '3', '计算机导论', '必修', '3.00', '81', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('390', '13', '12', '美术概论（尔雅网络课程）', '选修', '2.00', '89', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('391', '13', '12', '军事课', '素质类', '2.00', '82', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('392', '13', '12', '大学生生涯发展与就业指导', '素质类', '2.00', '86', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('393', '13', '12', '形势与政策二', '素质类', '0.30', '85', '3.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('394', '13', '12', '马克思主义基本原理概论', '必修', '3.00', '75', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('395', '13', '12', '大学英语二', '必修', '4.00', '71', '2.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('396', '13', '12', '高等数学B2', '选修', '4.00', '90', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('397', '13', '12', '线性代数', '必修', '3.00', '84', '3.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('398', '13', '12', '大学体育二', '必修', '1.00', '82', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('399', '13', '12', '商务办公实务', '选修', '2.00', '76', '2.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('400', '13', '12', 'Web开发一', '必修', '2.50', '82', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('401', '13', '12', '网络原理', '必修', '3.00', '84', '3.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('402', '13', '12', '程序设计基础', '必修', '3.50', '95', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('403', '13', '12', '信息检索与利用（适于理工类）', '选修', '2.00', '98', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('404', '13', '3', '大学生创业教育', '素质类', '2.00', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('405', '13', '3', '形势与政策三', '素质类', '0.20', '合格', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('406', '13', '3', '毛泽东思想和中国特色社会主义理论体系概论', '必修', '6.00', '81', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('407', '13', '3', '英语报刊选读', '选修', '2.00', '75', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('408', '13', '3', '职场商务英语', '选修', '2.00', '70', '2.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('409', '13', '3', '离散数学', '必修', '3.00', '94', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('410', '13', '3', '大学体育三', '必修', '1.00', '82', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('411', '13', '3', '数据结构', '必修', '4.00', '88', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('412', '13', '3', '软件测试基础', '必修', '2.50', '80', '3.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('413', '13', '3', '计算机组成原理', '选修', '3.00', '88', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('414', '13', '3', '面向对象程序设计', '必修', '4.00', '90', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('415', '13', '3', 'Web开发二', '必修', '2.50', '73', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('416', '13', '12', '形势与政策四', '素质类', '0.30', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('417', '13', '12', '英美外刊导读', '选修', '2.00', '72', '2.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('418', '13', '12', '概率与统计', '选修', '4.00', '92', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('419', '13', '12', '操作系统', '必修', '4.00', '74', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('420', '13', '12', '大学体育四', '必修', '1.00', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('421', '13', '12', '数据库原理', '必修', '3.00', '88', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('422', '13', '12', '方向基础课', '必修', '3.00', '90', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('423', '13', '12', 'CMS与模板制作', '必修', '1.00', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('424', '13', '3', '形势与政策五', '素质类', '0.20', '合格', '2.30', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('425', '13', '3', '分布式系统原理', '选修', '3.50', '91', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('426', '13', '3', 'JavaEE', '选修', '3.50', '88', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('427', '13', '3', '软件工程', '必修', '3.00', '94', '4.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('428', '13', '3', 'Java企业级应用开发', '选修', '3.50', '87', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('429', '13', '3', 'Java与大数据分析开发实训一', '选修', '7.00', '89', '3.70', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('430', '13', '12', 'Spark框架', '选修', '3.50', '0', '0.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('431', '13', '12', '大数据企业应用开发', '选修', '3.50', '0', '0.00', '正常考试', '2016011399', '郭金康');
INSERT INTO `tbl_center_degree` VALUES ('432', '13', '12', 'Hadoop开发', '选修', '3.50', '0', '0.00', '正常考试', '2016011399', '郭金康');

-- ----------------------------
-- Table structure for `tbl_comment`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_comment`;
CREATE TABLE `tbl_comment` (
  `COMMENT_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `RES_KEY` bigint(20) NOT NULL COMMENT '文章外键',
  `USER_KEY` bigint(20) NOT NULL COMMENT '用户外键',
  `COMMENT_CHILD_ID` bigint(20) NOT NULL DEFAULT '0' COMMENT '子id',
  `COMMENT_PARENT_ID` bigint(20) NOT NULL DEFAULT '0' COMMENT '评论父id',
  `COMMENT_DATE` datetime NOT NULL,
  `COMMENT_ISANONYMITY` varchar(8) NOT NULL DEFAULT '' COMMENT '是否匿名',
  `COMMENT_CONTEXT` mediumtext NOT NULL,
  PRIMARY KEY (`COMMENT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='评论表';

-- ----------------------------
-- Records of tbl_comment
-- ----------------------------
INSERT INTO `tbl_comment` VALUES ('1', '1', '13', '0', '0', '2019-06-11 14:37:09', '', '这公司还行');
INSERT INTO `tbl_comment` VALUES ('2', '1', '13', '0', '0', '2019-06-13 08:29:19', '', '1111');

-- ----------------------------
-- Table structure for `tbl_hotspot`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_hotspot`;
CREATE TABLE `tbl_hotspot` (
  `HOTSPOT_ID` int(8) NOT NULL AUTO_INCREMENT COMMENT '热点ID',
  `HOTSPOT_TITLE` varchar(128) CHARACTER SET utf8 DEFAULT NULL COMMENT '热点标题',
  `HOTSPOT_HOTNUM` varchar(128) CHARACTER SET utf8 DEFAULT NULL COMMENT '热点数',
  `HOTSPOT_HOTURL` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT 'url',
  PRIMARY KEY (`HOTSPOT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=gbk COMMENT='热点信息';

-- ----------------------------
-- Records of tbl_hotspot
-- ----------------------------
INSERT INTO `tbl_hotspot` VALUES ('1', '曹云金唐菀离婚', '3013155', 'http://s.weibo.com/weibo?q=%23%E6%9B%B9%E4%BA%91%E9%87%91%E5%94%90%E8%8F%80%E7%A6%BB%E5%A9%9A%23&Refer=top');
INSERT INTO `tbl_hotspot` VALUES ('2', '段奥娟锁骨', '1911877', 'http://s.weibo.com/weibo?q=%23%E6%AE%B5%E5%A5%A5%E5%A8%9F%E9%94%81%E9%AA%A8%23&Refer=top');
INSERT INTO `tbl_hotspot` VALUES ('3', '老爸40年不换剃须刀', '1678160', 'http://s.weibo.comjavascript:void(0);');
INSERT INTO `tbl_hotspot` VALUES ('4', '华为全球多地注册鸿蒙商标', '1623338', 'http://s.weibo.com/weibo?q=%23%E5%8D%8E%E4%B8%BA%E5%85%A8%E7%90%83%E5%A4%9A%E5%9C%B0%E6%B3%A8%E5%86%8C%E9%B8%BF%E8%92%99%E5%95%86%E6%A0%87%23&Refer=top');
INSERT INTO `tbl_hotspot` VALUES ('5', '王一博英雄救美', '1489639', 'http://s.weibo.comjavascript:void(0);');
INSERT INTO `tbl_hotspot` VALUES ('6', '宇宙少女一位', '1350484', 'http://s.weibo.com/weibo?q=%23%E5%AE%87%E5%AE%99%E5%B0%91%E5%A5%B3%E4%B8%80%E4%BD%8D%23&Refer=top');
INSERT INTO `tbl_hotspot` VALUES ('7', '贝多芬一缕头发将被拍卖', '1036077', 'http://s.weibo.com/weibo?q=%23%E8%B4%9D%E5%A4%9A%E8%8A%AC%E4%B8%80%E7%BC%95%E5%A4%B4%E5%8F%91%E5%B0%86%E8%A2%AB%E6%8B%8D%E5%8D%96%23&Refer=top');
INSERT INTO `tbl_hotspot` VALUES ('8', '迪士尼玫玫体力不支倒下', '780419', 'http://s.weibo.com/weibo?q=%23%E8%BF%AA%E5%A3%AB%E5%B0%BC%E7%8E%AB%E7%8E%AB%E4%BD%93%E5%8A%9B%E4%B8%8D%E6%94%AF%E5%80%92%E4%B8%8B%23&Refer=top');
INSERT INTO `tbl_hotspot` VALUES ('9', '杨超越红毯造型', '717822', 'http://s.weibo.com/weibo?q=%23%E6%9D%A8%E8%B6%85%E8%B6%8A%E7%BA%A2%E6%AF%AF%E9%80%A0%E5%9E%8B%23&Refer=top');
INSERT INTO `tbl_hotspot` VALUES ('10', '左脸最美定律', '552294', 'http://s.weibo.com/weibo?q=%23%E5%B7%A6%E8%84%B8%E6%9C%80%E7%BE%8E%E5%AE%9A%E5%BE%8B%23&Refer=top');
INSERT INTO `tbl_hotspot` VALUES ('11', '260城交通一卡通互联互通', '498871', 'http://s.weibo.com/weibo?q=%23260%E5%9F%8E%E4%BA%A4%E9%80%9A%E4%B8%80%E5%8D%A1%E9%80%9A%E4%BA%92%E8%81%94%E4%BA%92%E9%80%9A%23&Refer=top');
INSERT INTO `tbl_hotspot` VALUES ('12', '武磊身价', '496591', 'http://s.weibo.com/weibo?q=%E6%AD%A6%E7%A3%8A%E8%BA%AB%E4%BB%B7&Refer=top');
INSERT INTO `tbl_hotspot` VALUES ('13', '周华健混血儿子', '429803', 'http://s.weibo.com/weibo?q=%23%E5%91%A8%E5%8D%8E%E5%81%A5%E6%B7%B7%E8%A1%80%E5%84%BF%E5%AD%90%23&Refer=top');
INSERT INTO `tbl_hotspot` VALUES ('14', '女生第六感很准的案例', '412230', 'http://s.weibo.com/weibo?q=%23%E5%A5%B3%E7%94%9F%E7%AC%AC%E5%85%AD%E6%84%9F%E5%BE%88%E5%87%86%E7%9A%84%E6%A1%88%E4%BE%8B%23&Refer=top');
INSERT INTO `tbl_hotspot` VALUES ('15', '保姆回应偷走男婴抚养27年', '408239', 'http://s.weibo.com/weibo?q=%23%E4%BF%9D%E5%A7%86%E5%9B%9E%E5%BA%94%E5%81%B7%E8%B5%B0%E7%94%B7%E5%A9%B4%E6%8A%9A%E5%85%BB27%E5%B9%B4%23&Refer=top');
INSERT INTO `tbl_hotspot` VALUES ('16', '晚上开灯睡觉会发胖', '392015', 'http://s.weibo.com/weibo?q=%23%E6%99%9A%E4%B8%8A%E5%BC%80%E7%81%AF%E7%9D%A1%E8%A7%89%E4%BC%9A%E5%8F%91%E8%83%96%23&Refer=top');
INSERT INTO `tbl_hotspot` VALUES ('17', '靠颜值撑起衣服的明星', '374943', 'http://s.weibo.com/weibo?q=%23%E9%9D%A0%E9%A2%9C%E5%80%BC%E6%92%91%E8%B5%B7%E8%A1%A3%E6%9C%8D%E7%9A%84%E6%98%8E%E6%98%9F%23&Refer=top');
INSERT INTO `tbl_hotspot` VALUES ('18', '曹云金我家那小子', '372587', 'http://s.weibo.com/weibo?q=%23%E6%9B%B9%E4%BA%91%E9%87%91%E6%88%91%E5%AE%B6%E9%82%A3%E5%B0%8F%E5%AD%90%23&Refer=top');
INSERT INTO `tbl_hotspot` VALUES ('19', '翟潇闻站姐', '372041', 'http://s.weibo.com/weibo?q=%23%E7%BF%9F%E6%BD%87%E9%97%BB%E7%AB%99%E5%A7%90%23&Refer=top');
INSERT INTO `tbl_hotspot` VALUES ('20', '爸妈欣赏的年轻艺人', '371532', 'http://s.weibo.com/weibo?q=%23%E7%88%B8%E5%A6%88%E6%AC%A3%E8%B5%8F%E7%9A%84%E5%B9%B4%E8%BD%BB%E8%89%BA%E4%BA%BA%23&Refer=top');
INSERT INTO `tbl_hotspot` VALUES ('21', '男子用牛油果抢银行', '368635', 'http://s.weibo.com/weibo?q=%23%E7%94%B7%E5%AD%90%E7%94%A8%E7%89%9B%E6%B2%B9%E6%9E%9C%E6%8A%A2%E9%93%B6%E8%A1%8C%23&Refer=top');
INSERT INTO `tbl_hotspot` VALUES ('22', '迪士尼后台也这么有戏', '364518', 'http://s.weibo.com/weibo?q=%E8%BF%AA%E5%A3%AB%E5%B0%BC%E5%90%8E%E5%8F%B0%E4%B9%9F%E8%BF%99%E4%B9%88%E6%9C%89%E6%88%8F&Refer=top');
INSERT INTO `tbl_hotspot` VALUES ('23', '老师有纹身被家长联名辞退', '318918', 'http://s.weibo.com/weibo?q=%23%E8%80%81%E5%B8%88%E6%9C%89%E7%BA%B9%E8%BA%AB%E8%A2%AB%E5%AE%B6%E9%95%BF%E8%81%94%E5%90%8D%E8%BE%9E%E9%80%80%23&Refer=top');
INSERT INTO `tbl_hotspot` VALUES ('24', '鹿晗 眼镜杀', '317145', 'http://s.weibo.com/weibo?q=%E9%B9%BF%E6%99%97%20%E7%9C%BC%E9%95%9C%E6%9D%80&Refer=top');
INSERT INTO `tbl_hotspot` VALUES ('25', '林一 腿', '310207', 'http://s.weibo.com/weibo?q=%E6%9E%97%E4%B8%80%20%E8%85%BF&Refer=top');
INSERT INTO `tbl_hotspot` VALUES ('26', '大学毕业还是母胎solo', '262531', 'http://s.weibo.com/weibo?q=%23%E5%A4%A7%E5%AD%A6%E6%AF%95%E4%B8%9A%E8%BF%98%E6%98%AF%E6%AF%8D%E8%83%8Esolo%23&Refer=top');
INSERT INTO `tbl_hotspot` VALUES ('27', '牙齿鞋', '253482', 'http://s.weibo.com/weibo?q=%E7%89%99%E9%BD%BF%E9%9E%8B&Refer=top');
INSERT INTO `tbl_hotspot` VALUES ('28', '不写到最后都猜不到的名字', '224977', 'http://s.weibo.com/weibo?q=%E4%B8%8D%E5%86%99%E5%88%B0%E6%9C%80%E5%90%8E%E9%83%BD%E7%8C%9C%E4%B8%8D%E5%88%B0%E7%9A%84%E5%90%8D%E5%AD%97&Refer=top');
INSERT INTO `tbl_hotspot` VALUES ('29', '暗恋对象最败好感的行为', '214761', 'http://s.weibo.com/weibo?q=%E6%9A%97%E6%81%8B%E5%AF%B9%E8%B1%A1%E6%9C%80%E8%B4%A5%E5%A5%BD%E6%84%9F%E7%9A%84%E8%A1%8C%E4%B8%BA&Refer=top');
INSERT INTO `tbl_hotspot` VALUES ('30', '发朋友圈越来越少的原因', '205259', 'http://s.weibo.com/weibo?q=%23%E5%8F%91%E6%9C%8B%E5%8F%8B%E5%9C%88%E8%B6%8A%E6%9D%A5%E8%B6%8A%E5%B0%91%E7%9A%84%E5%8E%9F%E5%9B%A0%23&Refer=top');
INSERT INTO `tbl_hotspot` VALUES ('31', '公司聚餐算加班吗', '199691', 'http://s.weibo.com/weibo?q=%23%E5%85%AC%E5%8F%B8%E8%81%9A%E9%A4%90%E7%AE%97%E5%8A%A0%E7%8F%AD%E5%90%97%23&Refer=top');
INSERT INTO `tbl_hotspot` VALUES ('32', '孤城闭片花', '176466', 'http://s.weibo.com/weibo?q=%23%E5%AD%A4%E5%9F%8E%E9%97%AD%E7%89%87%E8%8A%B1%23&Refer=top');
INSERT INTO `tbl_hotspot` VALUES ('33', '女快递员遭恶意投诉下跪', '168564', 'http://s.weibo.com/weibo?q=%23%E5%A5%B3%E5%BF%AB%E9%80%92%E5%91%98%E9%81%AD%E6%81%B6%E6%84%8F%E6%8A%95%E8%AF%89%E4%B8%8B%E8%B7%AA%23&Refer=top');
INSERT INTO `tbl_hotspot` VALUES ('34', '葛军没参与今年高考命题', '165080', 'http://s.weibo.com/weibo?q=%23%E8%91%9B%E5%86%9B%E6%B2%A1%E5%8F%82%E4%B8%8E%E4%BB%8A%E5%B9%B4%E9%AB%98%E8%80%83%E5%91%BD%E9%A2%98%23&Refer=top');
INSERT INTO `tbl_hotspot` VALUES ('35', '维持婚姻最重要的东西', '155041', 'http://s.weibo.com/weibo?q=%E7%BB%B4%E6%8C%81%E5%A9%9A%E5%A7%BB%E6%9C%80%E9%87%8D%E8%A6%81%E7%9A%84%E4%B8%9C%E8%A5%BF&Refer=top');
INSERT INTO `tbl_hotspot` VALUES ('36', '曝特谢拉申请加入中国国籍', '152611', 'http://s.weibo.com/weibo?q=%E6%9B%9D%E7%89%B9%E8%B0%A2%E6%8B%89%E7%94%B3%E8%AF%B7%E5%8A%A0%E5%85%A5%E4%B8%AD%E5%9B%BD%E5%9B%BD%E7%B1%8D&Refer=top');
INSERT INTO `tbl_hotspot` VALUES ('37', 'r1se 红毯', '150332', 'http://s.weibo.com/weibo?q=r1se%20%E7%BA%A2%E6%AF%AF&Refer=top');
INSERT INTO `tbl_hotspot` VALUES ('38', '深圳暴雨', '146460', 'http://s.weibo.com/weibo?q=%23%E6%B7%B1%E5%9C%B3%E6%9A%B4%E9%9B%A8%23&Refer=top');
INSERT INTO `tbl_hotspot` VALUES ('39', '韩国前总统金大中夫人去世', '141650', 'http://s.weibo.com/weibo?q=%E9%9F%A9%E5%9B%BD%E5%89%8D%E6%80%BB%E7%BB%9F%E9%87%91%E5%A4%A7%E4%B8%AD%E5%A4%AB%E4%BA%BA%E5%8E%BB%E4%B8%96&Refer=top');
INSERT INTO `tbl_hotspot` VALUES ('40', '导游强制消费一小时必须花两万', '132602', 'http://s.weibo.com/weibo?q=%23%E5%AF%BC%E6%B8%B8%E5%BC%BA%E5%88%B6%E6%B6%88%E8%B4%B9%E4%B8%80%E5%B0%8F%E6%97%B6%E5%BF%85%E9%A1%BB%E8%8A%B1%E4%B8%A4%E4%B8%87%23&Refer=top');
INSERT INTO `tbl_hotspot` VALUES ('41', '明星衣品大赛', '124378', 'http://s.weibo.com/weibo?q=%23%E6%98%8E%E6%98%9F%E8%A1%A3%E5%93%81%E5%A4%A7%E8%B5%9B%23&Refer=top');
INSERT INTO `tbl_hotspot` VALUES ('42', '千与千寻配音阵容', '114657', 'http://s.weibo.com/weibo?q=%E5%8D%83%E4%B8%8E%E5%8D%83%E5%AF%BB%E9%85%8D%E9%9F%B3%E9%98%B5%E5%AE%B9&Refer=top');
INSERT INTO `tbl_hotspot` VALUES ('43', '南京高校成蹭饭族天堂', '113636', 'http://s.weibo.com/weibo?q=%23%E5%8D%97%E4%BA%AC%E9%AB%98%E6%A0%A1%E6%88%90%E8%B9%AD%E9%A5%AD%E6%97%8F%E5%A4%A9%E5%A0%82%23&Refer=top');
INSERT INTO `tbl_hotspot` VALUES ('44', '暴雨中喝酒吃面', '101479', 'http://s.weibo.com/weibo?q=%23%E6%9A%B4%E9%9B%A8%E4%B8%AD%E5%96%9D%E9%85%92%E5%90%83%E9%9D%A2%23&Refer=top');
INSERT INTO `tbl_hotspot` VALUES ('45', '佟丽娅新剧角色人设', '101153', 'http://s.weibo.com/weibo?q=%23%E4%BD%9F%E4%B8%BD%E5%A8%85%E6%96%B0%E5%89%A7%E8%A7%92%E8%89%B2%E4%BA%BA%E8%AE%BE%23&Refer=top');
INSERT INTO `tbl_hotspot` VALUES ('46', '多多钢琴比赛获五个一等奖', '101064', 'http://s.weibo.com/weibo?q=%E5%A4%9A%E5%A4%9A%E9%92%A2%E7%90%B4%E6%AF%94%E8%B5%9B%E8%8E%B7%E4%BA%94%E4%B8%AA%E4%B8%80%E7%AD%89%E5%A5%96&Refer=top');
INSERT INTO `tbl_hotspot` VALUES ('47', '国足首发', '96720', 'http://s.weibo.com/weibo?q=%E5%9B%BD%E8%B6%B3%E9%A6%96%E5%8F%91&Refer=top');
INSERT INTO `tbl_hotspot` VALUES ('48', '足协 将11人全年禁赛', '95770', 'http://s.weibo.com/weibo?q=%E8%B6%B3%E5%8D%8F%20%E5%B0%8611%E4%BA%BA%E5%85%A8%E5%B9%B4%E7%A6%81%E8%B5%9B&Refer=top');
INSERT INTO `tbl_hotspot` VALUES ('49', '滴滴归还遗失物品或将收费', '88835', 'http://s.weibo.com/weibo?q=%23%E6%BB%B4%E6%BB%B4%E5%BD%92%E8%BF%98%E9%81%97%E5%A4%B1%E7%89%A9%E5%93%81%E6%88%96%E5%B0%86%E6%94%B6%E8%B4%B9%23&Refer=top');
INSERT INTO `tbl_hotspot` VALUES ('50', '家里的第一个大学生', '83604', 'http://s.weibo.com/weibo?q=%23%E5%AE%B6%E9%87%8C%E7%9A%84%E7%AC%AC%E4%B8%80%E4%B8%AA%E5%A4%A7%E5%AD%A6%E7%94%9F%23&Refer=top');

-- ----------------------------
-- Table structure for `tbl_premission`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_premission`;
CREATE TABLE `tbl_premission` (
  `PRMS_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ROLE_KEY` bigint(20) NOT NULL COMMENT 'ROLE外键',
  `PRMS_PREMISSION` varchar(255) NOT NULL COMMENT '权限名称',
  PRIMARY KEY (`PRMS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_premission
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_resource`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_resource`;
CREATE TABLE `tbl_resource` (
  `RES_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `TYPE_KEY` bigint(20) NOT NULL,
  `RES_TITLE` varchar(255) NOT NULL,
  `RES_AUTHOR` varchar(255) NOT NULL,
  `RES_SOURCE` varchar(255) NOT NULL,
  `RES_DATE` datetime NOT NULL,
  `RES_CONTEXT` longtext NOT NULL,
  `RES_COMMENTCOUNT` bigint(12) DEFAULT '0',
  PRIMARY KEY (`RES_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COMMENT='资源表 所有信息';

-- ----------------------------
-- Records of tbl_resource
-- ----------------------------
INSERT INTO `tbl_resource` VALUES ('1', '1', 'java高级开发工程师', '阳光保险集团股份有限公司', '拉勾网', '2019-06-13 08:15:18', '福利：福利待遇好 发展平台大 技术大牛多 薪资：18k-36k 最低学历：本科  地址：北京朝阳区', '0');
INSERT INTO `tbl_resource` VALUES ('2', '1', 'java工程师（互联网金融）', '深圳市房多多网络科技有限公司', '拉勾网', '2019-06-13 08:15:19', '福利：C轮独角兽 周末双休 平台大 大牛多 薪资：15k-30k 最低学历：本科  地址：深圳南山区', '0');
INSERT INTO `tbl_resource` VALUES ('3', '1', 'Java开发工程师', '广州荔支网络技术有限公司', '拉勾网', '2019-06-13 08:15:19', '福利：技术大牛多,薪酬福利好 薪资：8k-16k 最低学历：本科  地址：广州天河区', '0');
INSERT INTO `tbl_resource` VALUES ('4', '1', 'Java开发工程师', '广州明动软件股份有限公司', '拉勾网', '2019-06-13 08:15:19', '福利：周末双休,时间稳定,午餐补贴,五险一金 薪资：15k-30k 最低学历：本科  地址：广州天河区', '0');
INSERT INTO `tbl_resource` VALUES ('5', '1', 'JAVA开发工程师', '思凯思特（北京）科技有限公司', '拉勾网', '2019-06-13 08:15:19', '福利：六险一金,带薪假期,工作居住证,外资团队 薪资：20k-35k 最低学历：本科  地址：北京朝阳区', '0');
INSERT INTO `tbl_resource` VALUES ('6', '1', 'java工程师', '武汉四通信息服务有限公司', '拉勾网', '2019-06-13 08:15:19', '福利：五险一金,双休,奖金津贴,提成不封顶 薪资：8k-11k 最低学历：本科  地址：武汉洪山区', '0');
INSERT INTO `tbl_resource` VALUES ('7', '1', 'Java开发工程师(中级)', '广东世纪晓教育科技有限公司', '拉勾网', '2019-06-13 08:15:19', '福利：发展前景好 空间大 90后 薪资：12k-20k 最低学历：本科  地址：广州天河区', '0');
INSERT INTO `tbl_resource` VALUES ('8', '1', 'java开发工程师', '南京邦航商务信息咨询有限公司', '拉勾网', '2019-06-13 08:15:20', '福利：D轮以上数亿融资；发展空间大 薪资：13k-25k 最低学历：本科  地址：上海虹口区', '0');
INSERT INTO `tbl_resource` VALUES ('9', '1', '高级JAVA开发工程师', '珠海市碧桂园管理服务有限公司', '拉勾网', '2019-06-13 08:15:20', '福利：500强企业，发展好 薪资：10k-15k 最低学历：本科  地址：佛山顺德区', '0');
INSERT INTO `tbl_resource` VALUES ('10', '1', 'Java开发工程师', '北京多贝兄弟信息技术有限公司', '拉勾网', '2019-06-13 08:15:20', '福利：六险一金 免费午餐 不打卡 都是年轻人 薪资：15k-25k 最低学历：本科  地址：北京海淀区', '0');
INSERT INTO `tbl_resource` VALUES ('11', '1', 'java开发工程师', '武汉佰钧成技术有限责任公司', '拉勾网', '2019-06-13 08:15:20', '福利：双休 六险一金 薪资：11k-18k 最低学历：大专  地址：杭州滨江区', '0');
INSERT INTO `tbl_resource` VALUES ('12', '1', 'Java开发工程师', '深圳市超级猩猩健身管理有限公司', '拉勾网', '2019-06-13 08:15:20', '福利：技术分享、氛围好、加班少、内部活动多 薪资：10k-20k 最低学历：本科  地址：深圳南山区', '0');
INSERT INTO `tbl_resource` VALUES ('13', '1', '资深JAVA工程师', '北京水滴互联科技有限公司', '拉勾网', '2019-06-13 08:15:20', '福利：牛人多多 成长空间 薪资：40k-60k 最低学历：本科  地址：北京朝阳区', '0');
INSERT INTO `tbl_resource` VALUES ('14', '1', 'java开发工程师', '北京大米未来科技有限公司', '拉勾网', '2019-06-13 08:15:20', '福利：福利待遇好 薪资：15k-30k 最低学历：本科  地址：北京朝阳区', '0');
INSERT INTO `tbl_resource` VALUES ('15', '1', 'java开发工程师', '深圳市汇合发展有限公司', '拉勾网', '2019-06-13 08:15:21', '福利：银行项目，5天7小时工作制，加班费 薪资：11k-16k 最低学历：不限  地址：深圳福田区', '0');
INSERT INTO `tbl_resource` VALUES ('16', '2', '系统运维实习生', '广州银行股份有限公司信用卡中心', '拉勾网', '2019-06-13 08:15:21', '福利：运维经验 和睦的工作氛围 薪资：1k-2k 最低学历：大专  地址：广州', '0');
INSERT INTO `tbl_resource` VALUES ('17', '2', '医药代表', '北京福大医院投资管理有限公司', '拉勾网', '2019-06-13 08:15:21', '福利：创意空间 薪资：8k-16k 最低学历：不限  地址：北京', '0');
INSERT INTO `tbl_resource` VALUES ('18', '2', '摄影师摄像师', '武汉巨石达阵文化发展有限责任公司', '拉勾网', '2019-06-13 08:15:21', '福利：福利待遇 发展前景 双休 零食无限量 薪资：4k-6k 最低学历：大专  地址：武汉', '0');
INSERT INTO `tbl_resource` VALUES ('19', '2', '助教老师', '沈阳大嘴教育科技有限公司', '拉勾网', '2019-06-13 08:15:21', '福利：赚着工资和外教学口语 薪资：1k-2k 最低学历：本科  地址：沈阳', '0');
INSERT INTO `tbl_resource` VALUES ('20', '2', '推广专员', '成都小猪交友科技有限公司', '拉勾网', '2019-06-13 08:15:21', '福利：工作自由，上班没压力 薪资：6k-12k 最低学历：不限  地址：成都', '0');
INSERT INTO `tbl_resource` VALUES ('21', '2', '潮流时尚服装秀', '佛山市木简文化传媒有限公司', '拉勾网', '2019-06-13 08:15:21', '福利：福利待遇好，工作轻松报酬高 薪资：8k-10k 最低学历：不限  地址：广州', '0');
INSERT INTO `tbl_resource` VALUES ('22', '2', '主播', '东营燃烁商贸有限公司', '拉勾网', '2019-06-13 08:15:21', '福利：全国各大平台可供挑选 薪资：5k-10k 最低学历：不限  地址：广州', '0');
INSERT INTO `tbl_resource` VALUES ('23', '2', '新媒体运营撰稿人', '北京远方驰骋文化传媒有限公司', '拉勾网', '2019-06-13 08:15:22', '福利：有全职岗位 薪资：6k-12k 最低学历：不限  地址：北京', '0');
INSERT INTO `tbl_resource` VALUES ('24', '2', '网络推广专员', '北京慧瑞通科技有限公司', '拉勾网', '2019-06-13 08:15:22', '福利：高提成奖励，优秀者有期权 薪资：5K-10K 最低学历：本科  地址：北京', '0');
INSERT INTO `tbl_resource` VALUES ('25', '2', '网络小说翻译', '上海亨意文化传播有限公司', '拉勾网', '2019-06-13 08:15:22', '福利：工作地点不限、弹性工作 薪资：4k-8k 最低学历：不限  地址：上海', '0');
INSERT INTO `tbl_resource` VALUES ('26', '2', '音乐产品运营实习生', '北京白犀牛科技有限公司', '拉勾网', '2019-06-13 08:15:22', '福利：音乐 年休假 海外旅游 薪资：3k-6k 最低学历：不限  地址：北京', '0');
INSERT INTO `tbl_resource` VALUES ('27', '2', '模特', '广州贺清广告有限公司', '拉勾网', '2019-06-13 08:15:22', '福利：工作轻松，无试用期。 薪资：5k-8k 最低学历：不限  地址：广州', '0');
INSERT INTO `tbl_resource` VALUES ('28', '2', '财务实习生12-01-29', '杭州大搜车汽车服务有限公司', '拉勾网', '2019-06-13 08:15:22', '福利：餐补，带薪年假，节日礼品，定期体检 薪资：2k-3k 最低学历：大专  地址：杭州', '0');
INSERT INTO `tbl_resource` VALUES ('29', '2', '人力资源实习生', '北京奇雾科技有限公司', '拉勾网', '2019-06-13 08:15:22', '福利：福利待遇好、个人成长快、快速积累实操经验 薪资：2k-3k 最低学历：本科  地址：北京', '0');
INSERT INTO `tbl_resource` VALUES ('30', '2', '只要你有梦想干，兼职人生路。', '广州五号店服饰有限公司', '拉勾网', '2019-06-13 08:15:22', '福利：只要你有梦想，这个职位能满足你的一切 薪资：2k-4k 最低学历：不限  地址：广州', '0');
INSERT INTO `tbl_resource` VALUES ('31', '3', '河北师范大学汇华学院物联网期末考试', 'xingblog', 'NEUQ QJ', '2019-06-13 08:15:22', '开始时间： 2019-06-17 08:15:00 结束时间 2019-06-17 10:15:00', '0');
INSERT INTO `tbl_resource` VALUES ('32', '3', '河北师范大学计算机学院《C语言课程设计》期末考试', 'xingblog', 'NEUQ QJ', '2019-06-13 08:15:23', '开始时间： 2019-06-14 14:00:00 结束时间 2019-06-14 16:00:00', '0');
INSERT INTO `tbl_resource` VALUES ('33', '3', '河北师范大学汇华学院计算机3班期末考试', 'xingblog', 'NEUQ QJ', '2019-06-13 08:15:23', '开始时间： 2019-06-13 14:10:00 结束时间 2019-06-13 16:10:00', '0');
INSERT INTO `tbl_resource` VALUES ('34', '3', '河北师范大学汇华学院计算机2班期末考试', 'xingblog', 'NEUQ QJ', '2019-06-13 08:15:23', '开始时间： 2019-06-13 14:10:00 结束时间 2019-06-13 16:10:00', '0');
INSERT INTO `tbl_resource` VALUES ('35', '3', '河北师范大学汇华学院计算机2班训练4', 'xingblog', 'NEUQ QJ', '2019-06-13 08:15:23', '开始时间： 2019-06-04 11:00:00 结束时间 2019-06-09 23:59:59', '0');
INSERT INTO `tbl_resource` VALUES ('36', '3', '河北师范大学汇华学院计算机3班训练4', 'xingblog', 'NEUQ QJ', '2019-06-13 08:15:23', '开始时间： 2019-06-04 11:00:00 结束时间 2019-06-09 23:59:59', '0');
INSERT INTO `tbl_resource` VALUES ('37', '3', '河北师范大学汇华学院物联网班训练4', 'xingblog', 'NEUQ QJ', '2019-06-13 08:15:23', '开始时间： 2019-06-04 11:00:00 结束时间 2019-06-09 23:59:59', '0');
INSERT INTO `tbl_resource` VALUES ('38', '3', '比赛名称:邢台学院夏季选拔赛', 'xingblog', 'NEUQ QJ', '2019-06-13 08:15:23', '开始时间： 2019-06-02 13:30:00 结束时间 2019-06-02 18:30:00', '0');
INSERT INTO `tbl_resource` VALUES ('39', '3', 'NEUQ计算中心-2018_2019_2-CPP实验作业_6-MYK_56', 'neuqhx', 'NEUQ QJ', '2019-06-13 08:15:23', '开始时间： 2019-05-26 19:00:00 结束时间 2019-06-01 23:59:59', '0');
INSERT INTO `tbl_resource` VALUES ('40', '3', 'NEUQ计算中心-2018_2019_2-CPP实验作业_6-MYK_78', 'neuqhx', 'NEUQ QJ', '2019-06-13 08:15:24', '开始时间： 2019-05-26 19:00:00 结束时间 2019-06-01 23:59:59', '0');
INSERT INTO `tbl_resource` VALUES ('41', '3', 'NEUQ计算中心-2018_2019_2-CPP实验作业_6-WY', 'neuqhx', 'NEUQ QJ', '2019-06-13 08:15:24', '开始时间： 2019-05-26 19:00:00 结束时间 2019-06-01 23:59:59', '0');
INSERT INTO `tbl_resource` VALUES ('42', '3', 'NEUQ计算中心-2018_2019_2-CPP实验作业_6-HX', 'neuqhx', 'NEUQ QJ', '2019-06-13 08:15:24', '开始时间： 2019-05-26 19:00:00 结束时间 2019-06-01 23:59:59', '0');
INSERT INTO `tbl_resource` VALUES ('43', '3', '河北师范大学汇华学院物联网班训练3', 'xingblog', 'NEUQ QJ', '2019-06-13 08:15:24', '开始时间： 2019-05-24 09:30:00 结束时间 2019-05-30 23:59:59', '0');
INSERT INTO `tbl_resource` VALUES ('44', '3', '河北师范大学汇华学院计算机3 班训练3', 'xingblog', 'NEUQ QJ', '2019-06-13 08:15:24', '开始时间： 2019-05-24 09:30:00 结束时间 2019-05-30 23:59:59', '0');
INSERT INTO `tbl_resource` VALUES ('45', '3', '河北师范大学汇华学院计算机2班训练3', 'xingblog', 'NEUQ QJ', '2019-06-13 08:15:24', '开始时间： 2019-05-24 09:30:00 结束时间 2019-05-30 23:59:59', '0');
INSERT INTO `tbl_resource` VALUES ('46', '3', '河北化工医药职业技术学院2019年科技文化节程序设计大赛', 'xingblog', 'NEUQ QJ', '2019-06-13 08:15:24', '开始时间： 2019-05-23 13:50:00 结束时间 2019-05-23 16:50:00', '0');
INSERT INTO `tbl_resource` VALUES ('47', '3', 'NEUQ计算中心-2018_2019_2-CPP实验作业_5-MYK_56', 'neuqhx', 'NEUQ QJ', '2019-06-13 08:15:24', '开始时间： 2019-05-19 19:00:00 结束时间 2019-05-25 23:59:59', '0');
INSERT INTO `tbl_resource` VALUES ('48', '3', 'NEUQ计算中心-2018_2019_2-CPP实验作业_5-MYK_78', 'neuqhx', 'NEUQ QJ', '2019-06-13 08:15:24', '开始时间： 2019-05-19 19:00:00 结束时间 2019-05-25 23:59:59', '0');
INSERT INTO `tbl_resource` VALUES ('49', '3', 'NEUQ计算中心-2018_2019_2-CPP实验作业_5-WY', 'neuqhx', 'NEUQ QJ', '2019-06-13 08:15:24', '开始时间： 2019-05-19 19:00:00 结束时间 2019-05-25 23:59:59', '0');
INSERT INTO `tbl_resource` VALUES ('50', '3', 'NEUQ计算中心-2018_2019_2-CPP实验作业_5-HX', 'neuqhx', 'NEUQ QJ', '2019-06-13 08:15:24', '开始时间： 2019-05-19 19:00:00 结束时间 2019-05-25 23:59:59', '0');

-- ----------------------------
-- Table structure for `tbl_res_type`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_res_type`;
CREATE TABLE `tbl_res_type` (
  `TYPE_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `TYPE_NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`TYPE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='竞赛信息';

-- ----------------------------
-- Records of tbl_res_type
-- ----------------------------
INSERT INTO `tbl_res_type` VALUES ('1', '招聘信息');
INSERT INTO `tbl_res_type` VALUES ('2', '兼职信息');
INSERT INTO `tbl_res_type` VALUES ('3', '比赛信息');

-- ----------------------------
-- Table structure for `tbl_role`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_role`;
CREATE TABLE `tbl_role` (
  `ROLE_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ROLE_NAME` varchar(255) NOT NULL COMMENT '角色名',
  `LEFT` bigint(255) NOT NULL COMMENT '左值',
  `RIGHT` bigint(255) NOT NULL COMMENT '右值',
  `LAYER` bigint(255) NOT NULL COMMENT '层级',
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='使用左右值建立无限层级的角色表\n';

-- ----------------------------
-- Records of tbl_role
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_syllabus`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_syllabus`;
CREATE TABLE `tbl_syllabus` (
  `SYLLABUS_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `SYLLABUS_CLASSNAME` varchar(255) NOT NULL COMMENT '课程名',
  `SYLLABUS_STARTWEEK` int(8) NOT NULL DEFAULT '0' COMMENT '起始周',
  `SYLLABUS_ENDWEEK` int(8) NOT NULL DEFAULT '0' COMMENT '终止周',
  `SYLLABUS_STARTPART` int(8) NOT NULL DEFAULT '0' COMMENT '起始节数',
  `SYLLABUS_ENDPART` int(8) NOT NULL DEFAULT '0' COMMENT '终止节数',
  `SYLLABUS_WEEK` varchar(255) NOT NULL DEFAULT '' COMMENT '星期',
  `SYLLABUS_CLASSROOM` varchar(255) NOT NULL DEFAULT '' COMMENT '地址',
  `SYLLABUS_TEACHER` varchar(255) NOT NULL DEFAULT '佚名' COMMENT '教师',
  `USERKEY` bigint(20) NOT NULL COMMENT '用户外键',
  PRIMARY KEY (`SYLLABUS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_syllabus
-- ----------------------------
INSERT INTO `tbl_syllabus` VALUES ('1', '形势与政策六', '8', '11', '3', '4', '星期一', '公共教学楼A座201', '冯斐然', '12');
INSERT INTO `tbl_syllabus` VALUES ('2', '大数据企业应用开发', '1', '4', '6', '9', '星期一', '软件C-302', '武永亮', '12');
INSERT INTO `tbl_syllabus` VALUES ('3', 'Hadoop开发', '5', '7', '6', '9', '星期一', '软件C-302', '王伟', '12');
INSERT INTO `tbl_syllabus` VALUES ('4', 'Hadoop开发', '8', '10', '6', '9', '星期一', '软件C-302', '王伟', '12');
INSERT INTO `tbl_syllabus` VALUES ('5', 'Java与大数据分析开发实训二', '11', '16', '6', '9', '星期一', '软件C-302', '王伟', '12');
INSERT INTO `tbl_syllabus` VALUES ('6', '项目管理', '1', '16', '11', '13', '星期一', '软件C-206', '祁乐', '12');
INSERT INTO `tbl_syllabus` VALUES ('7', '大数据企业应用开发', '1', '4', '1', '4', '星期二', '软件C-302', '武永亮', '12');
INSERT INTO `tbl_syllabus` VALUES ('8', 'Spark框架', '5', '7', '1', '4', '星期二', '软件C-302', '武永亮', '12');
INSERT INTO `tbl_syllabus` VALUES ('9', 'Spark框架', '8', '10', '1', '4', '星期二', '软件C-302', '武永亮', '12');
INSERT INTO `tbl_syllabus` VALUES ('10', 'Java与大数据分析开发实训二', '11', '16', '1', '5', '星期二', '软件C-302', '王伟', '12');
INSERT INTO `tbl_syllabus` VALUES ('11', '大数据企业应用开发', '1', '3', '6', '9', '星期二', '软件C-302', '武永亮', '12');
INSERT INTO `tbl_syllabus` VALUES ('12', 'Hadoop开发', '4', '10', '6', '9', '星期二', '软件C-302', '王伟', '12');
INSERT INTO `tbl_syllabus` VALUES ('13', 'Java与大数据分析开发实训二', '11', '16', '6', '9', '星期二', '软件C-302', '解卫静', '12');
INSERT INTO `tbl_syllabus` VALUES ('14', '大数据企业应用开发', '1', '3', '1', '4', '星期三', '软件C-302', '武永亮', '12');
INSERT INTO `tbl_syllabus` VALUES ('15', 'Spark框架', '4', '10', '1', '4', '星期三', '软件C-302', '武永亮', '12');
INSERT INTO `tbl_syllabus` VALUES ('16', 'Java与大数据分析开发实训二', '11', '16', '1', '5', '星期三', '软件C-302', '解卫静', '12');
INSERT INTO `tbl_syllabus` VALUES ('17', '大数据企业应用开发', '1', '3', '6', '9', '星期三', '软件C-302', '武永亮', '12');
INSERT INTO `tbl_syllabus` VALUES ('18', 'Hadoop开发', '4', '10', '6', '9', '星期三', '软件C-302', '王伟', '12');
INSERT INTO `tbl_syllabus` VALUES ('19', 'Java与大数据分析开发实训二', '11', '16', '6', '9', '星期三', '软件C-302', '王伟', '12');
INSERT INTO `tbl_syllabus` VALUES ('20', '大数据企业应用开发', '1', '3', '1', '4', '星期四', '软件C-302', '武永亮', '12');
INSERT INTO `tbl_syllabus` VALUES ('21', 'Spark框架', '4', '10', '1', '4', '星期四', '软件C-302', '武永亮', '12');
INSERT INTO `tbl_syllabus` VALUES ('22', 'Java与大数据分析开发实训二', '11', '16', '1', '5', '星期四', '软件C-302', '王伟', '12');
INSERT INTO `tbl_syllabus` VALUES ('23', '形势与政策六', '8', '11', '3', '4', '星期一', '公共教学楼A座201', '冯斐然', '13');
INSERT INTO `tbl_syllabus` VALUES ('24', '大数据企业应用开发', '1', '4', '6', '9', '星期一', '软件C-302', '武永亮', '13');
INSERT INTO `tbl_syllabus` VALUES ('25', 'Hadoop开发', '5', '7', '6', '9', '星期一', '软件C-302', '王伟', '13');
INSERT INTO `tbl_syllabus` VALUES ('26', 'Hadoop开发', '8', '10', '6', '9', '星期一', '软件C-302', '王伟', '13');
INSERT INTO `tbl_syllabus` VALUES ('27', 'Java与大数据分析开发实训二', '11', '16', '6', '9', '星期一', '软件C-302', '王伟', '13');
INSERT INTO `tbl_syllabus` VALUES ('28', '项目管理', '1', '16', '11', '13', '星期一', '软件C-206', '祁乐', '13');
INSERT INTO `tbl_syllabus` VALUES ('29', '大数据企业应用开发', '1', '4', '1', '4', '星期二', '软件C-302', '武永亮', '13');
INSERT INTO `tbl_syllabus` VALUES ('30', 'Spark框架', '5', '7', '1', '4', '星期二', '软件C-302', '武永亮', '13');
INSERT INTO `tbl_syllabus` VALUES ('31', 'Spark框架', '8', '10', '1', '4', '星期二', '软件C-302', '武永亮', '13');
INSERT INTO `tbl_syllabus` VALUES ('32', 'Java与大数据分析开发实训二', '11', '16', '1', '5', '星期二', '软件C-302', '王伟', '13');
INSERT INTO `tbl_syllabus` VALUES ('33', '大数据企业应用开发', '1', '3', '6', '9', '星期二', '软件C-302', '武永亮', '13');
INSERT INTO `tbl_syllabus` VALUES ('34', 'Hadoop开发', '4', '10', '6', '9', '星期二', '软件C-302', '王伟', '13');
INSERT INTO `tbl_syllabus` VALUES ('35', 'Java与大数据分析开发实训二', '11', '16', '6', '9', '星期二', '软件C-302', '解卫静', '13');
INSERT INTO `tbl_syllabus` VALUES ('36', '大数据企业应用开发', '1', '3', '1', '4', '星期三', '软件C-302', '武永亮', '13');
INSERT INTO `tbl_syllabus` VALUES ('37', 'Spark框架', '4', '10', '1', '4', '星期三', '软件C-302', '武永亮', '13');
INSERT INTO `tbl_syllabus` VALUES ('38', 'Java与大数据分析开发实训二', '11', '16', '1', '5', '星期三', '软件C-302', '解卫静', '13');
INSERT INTO `tbl_syllabus` VALUES ('39', '大数据企业应用开发', '1', '3', '6', '9', '星期三', '软件C-302', '武永亮', '13');
INSERT INTO `tbl_syllabus` VALUES ('40', 'Hadoop开发', '4', '10', '6', '9', '星期三', '软件C-302', '王伟', '13');
INSERT INTO `tbl_syllabus` VALUES ('41', 'Java与大数据分析开发实训二', '11', '16', '6', '9', '星期三', '软件C-302', '王伟', '13');
INSERT INTO `tbl_syllabus` VALUES ('42', '大数据企业应用开发', '1', '3', '1', '4', '星期四', '软件C-302', '武永亮', '13');
INSERT INTO `tbl_syllabus` VALUES ('43', 'Spark框架', '4', '10', '1', '4', '星期四', '软件C-302', '武永亮', '13');
INSERT INTO `tbl_syllabus` VALUES ('44', 'Java与大数据分析开发实训二', '11', '16', '1', '5', '星期四', '软件C-302', '王伟', '13');

-- ----------------------------
-- Table structure for `tbl_user`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `USER_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `USER_NAME` varchar(255) NOT NULL COMMENT '昵称',
  `USER_EMAIL` varchar(255) NOT NULL COMMENT '登录邮箱',
  `USER_PHONE` varchar(255) NOT NULL COMMENT '手机（可用于注册',
  `USER_PASS` varchar(255) NOT NULL COMMENT '密码',
  `USER_ISBAN` varchar(255) NOT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES ('1', '123', '123@qq.com', '123', '123', 'false');
INSERT INTO `tbl_user` VALUES ('2', '1234', '1234@qq.com', '1234', '1234', 'false');
INSERT INTO `tbl_user` VALUES ('3', '1234', '4321@qq.com', '1234', '1234', 'false');
INSERT INTO `tbl_user` VALUES ('4', '1234', '1324@qq.com', '1234', '1234', 'false');
INSERT INTO `tbl_user` VALUES ('5', '1234', '1342@qq.com', '1234', '1234', 'false');
INSERT INTO `tbl_user` VALUES ('6', '1234', '1526@qq.com', '1234', '1234', 'false');
INSERT INTO `tbl_user` VALUES ('7', '1234', '7896@qq.com', '1234', '1234', 'false');
INSERT INTO `tbl_user` VALUES ('8', '1234', '8956@qq.com', '1234', '1234', 'false');
INSERT INTO `tbl_user` VALUES ('9', '1234', '125996@qq.com', '1234', '1234', 'false');
INSERT INTO `tbl_user` VALUES ('10', '1234', '85526@qq.com', '1234', '1234', 'false');
INSERT INTO `tbl_user` VALUES ('11', '123', '2515611@qq.com', '12', '123', 'false');
INSERT INTO `tbl_user` VALUES ('12', '123', '5555555@qq.com', '123', '123', 'false');
INSERT INTO `tbl_user` VALUES ('13', '123', '666666@qq.com', '123', '123', 'false');

-- ----------------------------
-- Table structure for `tbl_user_information`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user_information`;
CREATE TABLE `tbl_user_information` (
  `INF_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `USER_KEY` bigint(20) NOT NULL COMMENT '用户外键',
  `INF_NUM` int(11) DEFAULT NULL COMMENT '教务学号',
  `INF_PASS` varchar(255) DEFAULT NULL COMMENT '教务密码',
  `INF_SIGNATURE` varchar(255) DEFAULT NULL COMMENT '个人签名',
  `INF_ACADEMY` varchar(255) DEFAULT NULL COMMENT '学院',
  `INF_MAJOR` varchar(255) DEFAULT NULL COMMENT '专业',
  `INF_CLASS` varchar(255) DEFAULT NULL COMMENT '班级',
  `INF_SEX` varchar(255) DEFAULT NULL,
  `INF_LOCALTION` varchar(255) DEFAULT NULL COMMENT '地理位置',
  `INF_AGE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`INF_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_user_information
-- ----------------------------
INSERT INTO `tbl_user_information` VALUES ('1', '1', '2016011399', 'ddd5556668hu', null, null, null, null, null, null, null);
INSERT INTO `tbl_user_information` VALUES ('2', '2', '2016011399', 'ddd5556668hu', null, null, null, null, null, null, null);
INSERT INTO `tbl_user_information` VALUES ('3', '3', '2016011399', 'ddd5556668hu', null, null, null, null, null, null, null);
INSERT INTO `tbl_user_information` VALUES ('4', '4', '2016011399', 'ddd5556668hu', null, null, null, null, null, null, null);
INSERT INTO `tbl_user_information` VALUES ('5', '5', '2016011399', 'ddd5556668hu', null, null, null, null, null, null, null);
INSERT INTO `tbl_user_information` VALUES ('6', '6', '2016011399', 'ddd5556668hu', null, null, null, null, null, null, null);
INSERT INTO `tbl_user_information` VALUES ('7', '7', '2016011399', 'ddd5556668hu', null, null, null, null, null, null, null);
INSERT INTO `tbl_user_information` VALUES ('8', '8', '2016011399', 'ddd5556668hu', null, null, null, null, null, null, null);
INSERT INTO `tbl_user_information` VALUES ('9', '9', '2016011399', 'ddd5556668hu', null, null, null, null, null, null, null);
INSERT INTO `tbl_user_information` VALUES ('10', '10', '2016011399', 'ddd5556668hu', null, null, null, null, null, null, null);
INSERT INTO `tbl_user_information` VALUES ('11', '11', '2016011399', 'ddd5556668hu', null, null, null, null, null, null, null);
INSERT INTO `tbl_user_information` VALUES ('12', '12', '2016011399', 'ddd5556668hu', null, null, null, null, null, null, null);
INSERT INTO `tbl_user_information` VALUES ('13', '13', '2016011399', 'ddd5556668hu', null, '软件学院', null, null, '', '', '');

-- ----------------------------
-- Table structure for `tbl_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user_role`;
CREATE TABLE `tbl_user_role` (
  `UR_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `USER_KEY` bigint(20) NOT NULL,
  `ROLE_KEY` bigint(20) NOT NULL,
  PRIMARY KEY (`UR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_user_role
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_weather`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_weather`;
CREATE TABLE `tbl_weather` (
  `WEATHER_CODE` int(11) NOT NULL DEFAULT '0' COMMENT 'API中的code',
  `WEATHER_CITY_NAME` varchar(255) DEFAULT NULL COMMENT '城市名称',
  `WEATHER_DATE` varchar(255) DEFAULT NULL COMMENT '时间',
  `WEATHER_SUNRISE` varchar(255) DEFAULT NULL COMMENT '日出时间',
  `WEATHER_HIGH` varchar(255) DEFAULT NULL COMMENT '最高气温',
  `WEATHER_LOW` varchar(255) DEFAULT NULL COMMENT '最低气温',
  `WEATHER_SUNSET` varchar(255) DEFAULT NULL COMMENT '日落时间',
  `WEATHER_TEMPERATURE` varchar(255) DEFAULT NULL COMMENT '温度',
  `WEATHER_AQI` float DEFAULT NULL,
  `WEATHER_NOTICE` varchar(255) DEFAULT NULL COMMENT '小提示',
  `WEATHER_TYPE` varchar(255) DEFAULT NULL COMMENT '天气类型',
  `WEATHER_FL` varchar(255) DEFAULT NULL COMMENT '风力',
  `WEATHER_FX` varchar(255) DEFAULT NULL COMMENT '风向',
  PRIMARY KEY (`WEATHER_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='api对应的天气表';

-- ----------------------------
-- Records of tbl_weather
-- ----------------------------
INSERT INTO `tbl_weather` VALUES ('101010100', '北京市', null, '04:45', '高温 29.0℃', '低温 20.0℃', '19:43', '25', '34', '带好雨具，别在树下躲雨', '雷阵雨', '<3级', '北风');
INSERT INTO `tbl_weather` VALUES ('101010200', '海淀区', null, '04:46', '高温 30.0℃', '低温 20.0℃', '19:44', '25', '39', '带好雨具，别在树下躲雨', '雷阵雨', '<3级', '北风');
INSERT INTO `tbl_weather` VALUES ('101090101', '石家庄市', null, '04:59', '高温 33.0℃', '低温 22.0℃', '19:45', '22', '57', '带好雨具，别在树下躲雨', '雷阵雨', '3-4级', '北风');
INSERT INTO `tbl_weather` VALUES ('101090102', '井陉县', null, '05:00', '高温 32.0℃', '低温 21.0℃', '19:46', '24', '62', '带好雨具，别在树下躲雨', '雷阵雨', '3-4级', '北风');
INSERT INTO `tbl_weather` VALUES ('101090107', '高邑县', null, '05:00', '高温 32.0℃', '低温 19.0℃', '19:43', '25', '56', '带好雨具，别在树下躲雨', '雷阵雨', '3-4级', '北风');
INSERT INTO `tbl_weather` VALUES ('101090201', '保定市', null, '04:52', '高温 32.0℃', '低温 18.0℃', '19:44', '24', '53', '带好雨具，别在树下躲雨', '雷阵雨', '<3级', '东北风');
