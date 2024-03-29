/*
Navicat MySQL Data Transfer

Source Server         : fish
Source Server Version : 50726
Source Host           : 149.129.59.121:3306
Source Database       : medical

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2021-02-26 10:12:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `value` varchar(20) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `d_id` varchar(50) DEFAULT NULL,
  `d_name` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('1', 'xcfjA15', '天庭别苑A1-5号楼', 'yangchunfang8896', '杨春芳');
INSERT INTO `address` VALUES ('2', 'xcfjA610', '天庭别苑A6-10号楼', 'zhangweiming', '张伟明');
INSERT INTO `address` VALUES ('3', 'xcfjB16', '天庭别苑B1-6号楼', 'zhangxiaorui5665', '张晓睿');
INSERT INTO `address` VALUES ('4', 'xcfjC16', '天庭别苑C1-6号楼', 'zhaodenan8190', '赵得男');
INSERT INTO `address` VALUES ('5', 'xcfjD17', '天庭别苑D1-7号楼', 'wangtongtong1291', '王彤彤');
INSERT INTO `address` VALUES ('6', 'xcfjD813', '天庭别苑D8-13号楼', 'zhangyanling2971', '张艳玲');
INSERT INTO `address` VALUES ('7', 'hbjshyA19', '天庭别苑A1-9号楼', 'haohongjuan7769', '郝红娟');
INSERT INTO `address` VALUES ('8', 'hbjshyA1018', '天庭别苑A10-18号楼', 'zhouxiaoping9979', '周晓平');
INSERT INTO `address` VALUES ('9', 'hbjshyA1926', '天庭别苑A19-26号楼', 'gongnan8923', '龚楠');
INSERT INTO `address` VALUES ('10', 'hbjshyB17', '天庭别苑B1-7号楼', 'lichunmei', '李春梅');
INSERT INTO `address` VALUES ('11', 'hbjshyB8102123', '天庭别苑B8-10、21-23号楼', 'yueshuangqi', '岳双琪');
INSERT INTO `address` VALUES ('12', 'hbjshyB24-31', '天庭别苑B24-31号楼', 'niyannan', '倪艳楠');
INSERT INTO `address` VALUES ('13', 'hbjshyB32-39', '天庭别苑B32-39号楼', 'zhaisihan', '翟思涵');
INSERT INTO `address` VALUES ('14', 'hbjshyB3945', '天庭别苑B39-45号楼', 'sunzhanbo', '孙占波');
INSERT INTO `address` VALUES ('15', 'hbjshyC16', '天庭别苑C1-6号楼', 'jianjingjing', '简晶晶');
INSERT INTO `address` VALUES ('16', 'hbjshyC715', '天庭别苑C7-15号楼', 'jiangfengmin', '姜凤敏');
INSERT INTO `address` VALUES ('17', 'blctE14', '幸福里E1-4号楼', 'maxiaoying', '马晓英');
INSERT INTO `address` VALUES ('18', 'blctABCDFGH', '幸福里ABCDFGH号楼', 'yudeping', '于得平');
INSERT INTO `address` VALUES ('19', 'jxhc19', '大华锦绣1-9号楼', 'pengchao', '彭超');
INSERT INTO `address` VALUES ('20', 'jxhc1018', '大华锦绣10-18号楼', 'sunyingxia', '孙英霞');
INSERT INTO `address` VALUES ('24', 'hmjyA17', '惠民家园A1-7号楼', 'lichunying', '李春莹');
INSERT INTO `address` VALUES ('25', 'hmjyA814', '惠民家园A8-14号楼', 'lidan', '李丹');
INSERT INTO `address` VALUES ('26', 'hmjyB17', '惠民家园B1-7号楼', 'linjing', '林晶');
INSERT INTO `address` VALUES ('27', 'hmjyB814', '惠民家园B8-14号楼', 'zhulijing', '褚立静');
INSERT INTO `address` VALUES ('28', 'nsjy110', '家园1-10号楼', 'quyingjie', '曲英杰');
INSERT INTO `address` VALUES ('29', 'nsjy1120', '家园11-20号楼', 'zhuxiaokun', '祝晓坤');
INSERT INTO `address` VALUES ('30', 'ysw210', '幸福里2-10号楼', 'weilu', '魏璐');
INSERT INTO `address` VALUES ('31', 'ysw1118', '幸福里11-18号楼', 'qiudandan', '裘丹丹');
INSERT INTO `address` VALUES ('32', 'ysw1926', '幸福里19-26号楼', 'liuzhenfeng', '刘振丰');

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `a_user` varchar(10) DEFAULT NULL,
  `a_password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for common_phone
-- ----------------------------
DROP TABLE IF EXISTS `common_phone`;
CREATE TABLE `common_phone` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of common_phone
-- ----------------------------
INSERT INTO `common_phone` VALUES ('2', '高新区惠民街道钟医生智慧医疗服务中心', '8999211');
INSERT INTO `common_phone` VALUES ('3', '惠民街道五湖钟医生智慧医疗服务站', '8977118');
INSERT INTO `common_phone` VALUES ('4', '惠民街道学苑钟医生智慧医疗服务站', '4338831');
INSERT INTO `common_phone` VALUES ('5', '惠民街道惠民钟医生智慧医疗服务站', '4677590');
INSERT INTO `common_phone` VALUES ('14', '急救电话', '120');

-- ----------------------------
-- Table structure for doctor
-- ----------------------------
DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `d_id` varchar(50) NOT NULL,
  `d_name` varchar(10) DEFAULT NULL,
  `d_technicalTitle` varchar(10) DEFAULT NULL,
  `d_committee` varchar(10) DEFAULT NULL,
  `d_tel` varchar(11) DEFAULT NULL,
  `d_patientNum` int(10) DEFAULT '0',
  `d_abstract` text,
  `d_password` varchar(20) DEFAULT NULL,
  `d_face` text,
  `p_houseNum` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`d_id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of doctor
-- ----------------------------
INSERT INTO `doctor` VALUES ('24', 'anpan', '安攀', '全科护士', '五湖居委', '18511111111', '0', '保持好奇\r\n', '123456', 'http://localhost:4000/upload/1521515197705.jpg', 'nsjy110');
INSERT INTO `doctor` VALUES ('8', 'gongnan8923', '龚楠', '全科护士', '五湖居委', '15311111111', '0', '保持好奇', '123456', 'http://localhost:4000/upload/1521514006282.jpg', 'hbjshyA1926');
INSERT INTO `doctor` VALUES ('6', 'haohongjuan7769', '郝红娟', '全科护士', '五湖居委', '15611111111', '0', '保持好奇', '123456', 'http://localhost:4000/upload/1521513827103.jpg', 'hbjshyA19');
INSERT INTO `doctor` VALUES ('26', 'jiangfengmin', '姜凤敏', '药师', '五湖居委', '13811111111', '0', '保持好奇', '123456', 'http://localhost:4000/upload/1521516080229.jpg', 'hbjshyC715');
INSERT INTO `doctor` VALUES ('16', 'jianjingjing', '简晶晶', '口腔医生', '五湖居委', '13711111111', '0', '保持好奇', '123456', 'http://localhost:4000/upload/1521516088420.jpg', 'hbjshyC16');
INSERT INTO `doctor` VALUES ('17', 'lichunmei', '李春梅', '全科护士', '五湖居委', '15511111111', '0', '保持好奇', '123456', 'http://localhost:4000/upload/1521516102377.jpg', 'hbjshyB17');
INSERT INTO `doctor` VALUES ('29', 'lichunying', '李春莹', '全科护士', '惠民居委', '13911111111', '0', '保持好奇', '123456', 'http://localhost:4000/upload/1521515076737.jpg', 'hmjyB17');
INSERT INTO `doctor` VALUES ('28', 'lidan', '李丹', '公卫医生', '惠民居委', '18211111111', '0', '保持好奇', '123456', 'http://localhost:4000/upload/1521515041546.jpg', 'hmjyB814');
INSERT INTO `doctor` VALUES ('30', 'linjing', '林晶', '全科护士', '惠民居委', '18911111111', '0', '保持好奇', '123456', 'http://localhost:4000/upload/1521515106429.jpg', 'hmjyB17');
INSERT INTO `doctor` VALUES ('38', 'liuzhenfeng', '刘振丰', '中医医生', '惠民居委', '13822222222', '0', '保持好奇', '123456', 'http://localhost:4000/upload/1521515411860.jpg', 'ysw1926');
INSERT INTO `doctor` VALUES ('14', 'maxiaoying', '马晓英', '检验师', '五湖居委', '18522222222', '0', '保持好奇', '123456', 'http://localhost:4000/upload/1521516213800.jpg', 'blctE14');
INSERT INTO `doctor` VALUES ('19', 'niyannan', '倪艳楠', '全科护士', '五湖居委', '18711111111', '0', '保持好奇', '123456', 'http://localhost:4000/upload/1521516255043.jpg', 'hbjshyB24-31');
INSERT INTO `doctor` VALUES ('22', 'pengchao', '彭超', '全科护士', '五湖居委', '18211111111', '0', '保持好奇', '123456', 'http://localhost:4000/upload/1521516266411.jpg', 'jxhc19');
INSERT INTO `doctor` VALUES ('35', 'qiudandan', '裘丹丹', '全科护士', '惠民居委', '18911111111', '0', '保持好奇', '123456', 'http://localhost:4000/upload/1521515283995.jpg', 'ysw1118');
INSERT INTO `doctor` VALUES ('32', 'quyingjie', '曲英杰', '全科护士', '惠民居委', '18533333333', '0', '保持好奇', '123456', 'http://localhost:4000/upload/1521515222647.jpg', 'nsjy110');
INSERT INTO `doctor` VALUES ('23', 'sunyingxia', '孙英霞', '全科护士', '五湖居委', '13722222222', '0', '保持好奇', '123456', 'http://localhost:4000/upload/1521516336064.jpg', 'jxhc1018');
INSERT INTO `doctor` VALUES ('21', 'sunzhanbo', '孙占波', '全科护士', '五湖居委', '13944444444', '0', '保持好奇', '123456', 'http://localhost:4000/upload/1521514119187.jpg', 'hbjshyB3945');
INSERT INTO `doctor` VALUES ('27', 'sutongwei', '苏同伟', '信息管理员', '惠民居委', '13323432322', '0', '保持好奇', '123456', 'http://localhost:4000/upload/1521514990644.jpg', 'bzhf1221');
INSERT INTO `doctor` VALUES ('37', 'wangmin', '王敏', '信息管理员', '惠民居委', '18355555555', '0', '保持好奇', '123456', 'http://localhost:4000/upload/1521515374193.jpg', 'bzhf111');
INSERT INTO `doctor` VALUES ('11', 'wangtongtong1291', '王彤彤', '全科护士', '五湖居委', '15088888888', '0', '保持好奇', '123456', 'http://localhost:4000/upload/1521514409316.jpg', 'xcfjD17');
INSERT INTO `doctor` VALUES ('33', 'weilu', '魏璐', '全科护士', '惠民居委', '13604888888', '0', '保持好奇', '123456', 'http://localhost:4000/upload/1521515245688.jpg', 'ysw210');
INSERT INTO `doctor` VALUES ('9', 'yangchunfang8896', '杨春芳', '全科护士', '五湖居委', '15599999999', '4', '保持好奇', '123456', 'http://localhost:4000/upload/1521514119187.jpg', 'xcfjA15');
INSERT INTO `doctor` VALUES ('15', 'yudeping', '于得平', '信息管理员', '五湖居委', '15046457601', '0', '保持好奇', '123456', 'http://localhost:4000/upload/1521516323674.jpg', 'blctABCDFGH');
INSERT INTO `doctor` VALUES ('18', 'yueshuangqi', '岳双琪', '全科护士', '五湖居委', '15112353420', '0', '保持好奇', '123456', 'http://localhost:4000/upload/1521516349996.jpg', 'hbjshyB8102123');
INSERT INTO `doctor` VALUES ('20', 'zhaisihan', '翟思涵', '全科护士', '五湖居委', '15325576894', '0', '保持好奇', '123456', 'http://localhost:4000/upload/1521516366371.jpg', 'hbjshyB32-39');
INSERT INTO `doctor` VALUES ('12', 'zhangweiming', '张伟明', '药师', '五湖居委', '18212313454', '1', '保持好奇', '123456', 'http://localhost:4000/upload/1521516397182.jpg', 'xcfjA610');
INSERT INTO `doctor` VALUES ('10', 'zhangxiaorui5665', '张晓睿', '全科护士', '五湖居委', '18323234321', '0', '保持好奇', '123456', 'http://localhost:4000/upload/1521514298973.jpg', 'xcfjB16');
INSERT INTO `doctor` VALUES ('4', 'zhangyanling2971', '张艳玲', '全科医生', '五湖居委', '13823111411', '0', '保持好奇', '123456', 'http://localhost:4000/upload/1521512633151.jpg', 'xcfjD813');
INSERT INTO `doctor` VALUES ('5', 'zhaodenan8190', '赵得男', '妇保医生', '五湖居委', '13523658563', '0', '保持好奇', '123456', 'http://localhost:4000/upload/1521513735602.jpg', 'xcfjC16');
INSERT INTO `doctor` VALUES ('7', 'zhouxiaoping9979', '周晓平', '全科护士', '五湖居委', '18523476852', '0', '保持好奇', '123456', 'http://localhost:4000/upload/1521513927289.jpg', 'hbjshyA1018');
INSERT INTO `doctor` VALUES ('31', 'zhulijing', '褚立静', '全科护士', '惠民居委', '13022434221', '0', '保持好奇', '123456', 'http://localhost:4000/upload/1521515197705.jpg', 'hmjyB814');
INSERT INTO `doctor` VALUES ('36', 'zhuxiaokun', '祝晓坤', '药师', '惠民居委', '18523414657', '0', '保持好奇', '123456', 'http://127.0.0.1:4000/upload/1521515341530.jpg', 'nsjy1120');

-- ----------------------------
-- Table structure for patient
-- ----------------------------
DROP TABLE IF EXISTS `patient`;
CREATE TABLE `patient` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(20) DEFAULT NULL,
  `p_tel` varchar(11) DEFAULT NULL,
  `p_password` varchar(20) DEFAULT NULL,
  `p_houseNum` varchar(20) DEFAULT NULL,
  `p_face` varchar(255) DEFAULT 'http://img.zcool.cn/community/01460b57e4a6fa0000012e7ed75e83.png@1280w_1l_2o_100sh.png',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient
-- ----------------------------
INSERT INTO `patient` VALUES ('12', 'v_18200512', '18711111111', '111', 'xcfjA15', 'http://localhost:4000/upload/1613613092153.jpg');

-- ----------------------------
-- Table structure for patientgroup
-- ----------------------------
DROP TABLE IF EXISTS `patientgroup`;
CREATE TABLE `patientgroup` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `age` int(3) DEFAULT NULL,
  `height` varchar(5) DEFAULT NULL,
  `weight` varchar(10) DEFAULT NULL,
  `profession` varchar(10) DEFAULT NULL,
  `history` text,
  `name` varchar(10) DEFAULT NULL,
  `fromLoginUser` varchar(20) DEFAULT NULL,
  `sex` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patientgroup
-- ----------------------------
INSERT INTO `patientgroup` VALUES ('5', '23', '175cm', '101kg', 'IT程序员', '胃病', '张三', '17611580721', '1');
INSERT INTO `patientgroup` VALUES ('23', '12', '170cm', '120kg', '患者', '脑梗塞', '李四', '17611580721', '0');
INSERT INTO `patientgroup` VALUES ('26', '23', '175cm', '101kg', 'IT程序员', '无', '张三', '17611581234', '1');
INSERT INTO `patientgroup` VALUES ('27', '11', '148', '35', '学生', '无', '张三', '18711111111', '1');

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `record_group_id` varchar(50) DEFAULT NULL COMMENT '群组id',
  `content` text,
  `time` varchar(30) DEFAULT NULL,
  `receiver` varchar(50) DEFAULT NULL,
  `send` varchar(50) DEFAULT NULL,
  `state` varchar(10) DEFAULT 'false',
  `face` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES ('72', '1613612397886', '您好', '2021-02-18 09:40:03', '15599999999', '18711111111', 'true', 'http%3A//img.zcool.cn/community/01460b57e4a6fa0000012e7ed75e83.png@1280w_1l_2o_100sh.png');
INSERT INTO `record` VALUES ('73', '1613612397886', '111', '2021-02-18 09:42:57', '15599999999', '18711111111', 'true', 'http%3A//img.zcool.cn/community/01460b57e4a6fa0000012e7ed75e83.png@1280w_1l_2o_100sh.png');
INSERT INTO `record` VALUES ('74', '1613612397886', '123', '2021-02-18 10:52:13', '15599999999', '18711111111', 'true', 'http%3A//localhost%3A4000/upload/1613613092153.jpg');
INSERT INTO `record` VALUES ('75', '1613616825861', '123123123123', '2021-02-18 10:53:47', '15599999999', '18711111111', 'true', 'http%3A//localhost%3A4000/upload/1613613092153.jpg');
INSERT INTO `record` VALUES ('76', '1613616825861', '111', '2021-02-18 10:53:49', '15599999999', '18711111111', 'true', 'http%3A//localhost%3A4000/upload/1613613092153.jpg');
INSERT INTO `record` VALUES ('77', '1613616825861', '11', '2021-02-18 10:53:50', '15599999999', '18711111111', 'true', 'http%3A//localhost%3A4000/upload/1613613092153.jpg');
INSERT INTO `record` VALUES ('78', '1613612397886', '111', '2021-02-19 13:04:00', '18711111111', '15599999999', 'false', 'http%3A//localhost%3A4000/upload/1521514119187.jpg');
INSERT INTO `record` VALUES ('79', '1613612397886', '89798', '2021-02-20 14:45:04', '18711111111', '15599999999', 'false', 'http%3A//localhost%3A4000/upload/1521514119187.jpg');
INSERT INTO `record` VALUES ('80', '1613616825861', '9798', '2021-02-20 14:45:11', '18711111111', '15599999999', 'true', 'http%3A//localhost%3A4000/upload/1521514119187.jpg');
INSERT INTO `record` VALUES ('81', '1613616825861', '您好\n', '2021-02-20 14:46:52', '15599999999', '18711111111', 'true', 'http%3A//localhost%3A4000/upload/1613613092153.jpg');
INSERT INTO `record` VALUES ('82', '1613616825861', '什么问题', '2021-02-20 14:47:46', '18711111111', '15599999999', 'true', 'http%3A//localhost%3A4000/upload/1521514119187.jpg');
INSERT INTO `record` VALUES ('83', '1613616825861', '胃痛', '2021-02-25 12:27:58', '15599999999', '18711111111', 'true', 'http%3A//localhost%3A4000/upload/1613613092153.jpg');
INSERT INTO `record` VALUES ('84', '1613616825861', '什么症状', '2021-02-25 12:29:44', '18711111111', '15599999999', 'false', 'http%3A//localhost%3A4000/upload/1521514119187.jpg');

-- ----------------------------
-- Table structure for record_group
-- ----------------------------
DROP TABLE IF EXISTS `record_group`;
CREATE TABLE `record_group` (
  `id` varchar(50) NOT NULL,
  `d_id` varchar(50) DEFAULT NULL COMMENT '医生id',
  `p_id` varchar(50) DEFAULT NULL COMMENT '患者id',
  `time` varchar(50) DEFAULT NULL,
  `chatState` varchar(10) DEFAULT NULL,
  `chatPerson` varchar(10) DEFAULT NULL,
  `doctorSee` tinyint(1) DEFAULT '1',
  `patientSee` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of record_group
-- ----------------------------
INSERT INTO `record_group` VALUES ('1613612397886', '15599999999', '18711111111', '2021-02-18 09:39:57', '1', '27', '1', '0');
INSERT INTO `record_group` VALUES ('1613616820344', '15599999999', '18711111111', '2021-02-18 10:53:40', '1', '27', '1', '1');
INSERT INTO `record_group` VALUES ('1613616825861', '15599999999', '18711111111', '2021-02-18 10:53:45', '1', '27', '1', '1');

-- ----------------------------
-- Table structure for sq_order
-- ----------------------------
DROP TABLE IF EXISTS `sq_order`;
CREATE TABLE `sq_order` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `d_id` varchar(50) DEFAULT NULL,
  `order_name` varchar(20) DEFAULT NULL,
  `order_phone` varchar(20) DEFAULT NULL,
  `order_address` varchar(50) DEFAULT NULL,
  `order_time` varchar(50) DEFAULT NULL,
  `order_situation` varchar(20) DEFAULT NULL COMMENT '是否加急',
  `order_state` varchar(10) DEFAULT 'false' COMMENT '完成情况',
  `order_cancel` varchar(10) DEFAULT 'false' COMMENT '患者是否取消',
  `send_order` varchar(50) DEFAULT NULL COMMENT '预约账号',
  `doctor_see` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sq_order
-- ----------------------------
INSERT INTO `sq_order` VALUES ('8', '15599999999', '111', '15822222222', '112', '2021-02-02 10:13:01', 'true', 'true', 'false', '18742509891', '1');
INSERT INTO `sq_order` VALUES ('9', '15599999999', '11', '13511111111', '11111', '2021-02-19 14:29:21', 'false', 'true', 'true', '18711111111', '1');
INSERT INTO `sq_order` VALUES ('10', '15599999999', '111', '18711111111', '5646546', '2021-02-26 12:28:18', 'true', 'false', 'false', '18711111111', '1');

-- ----------------------------
-- Table structure for toutiao
-- ----------------------------
DROP TABLE IF EXISTS `toutiao`;
CREATE TABLE `toutiao` (
  `n_id` int(20) NOT NULL AUTO_INCREMENT,
  `n_img` varchar(255) DEFAULT NULL,
  `n_title` varchar(255) DEFAULT NULL,
  `n_abstract` text,
  `n_see_num` int(10) DEFAULT '0',
  `n_time` varchar(50) DEFAULT NULL,
  `n_content` text,
  `n_from` varchar(50) DEFAULT NULL,
  `n_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`n_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toutiao
-- ----------------------------
INSERT INTO `toutiao` VALUES ('16', 'http://localhost:4000/upload/1521518116789.png', '吃对早餐，减肥更快速！你该如何吃呢？ ', '早餐吃不对，减肥都白费，小心从起床就开始发胖！', '14', '2018-03-20 11:59:40', '<p>早餐吃不对，减肥都白费，小心从起床就开始发胖！</p><p>不吃早餐可以吗？</p><p>不吃早餐的人简直就是在慢性自杀。有人喜欢睡懒觉，因为上班来不及就把早餐省了，结果10点不到肚子就饿得咕咕叫。不吃早餐不仅会损伤消化系统，还会伤害脑组织，让人变笨！</p><p><br></p><p class=\"ql-align-center\"><img src=\"http://localhost:4000/upload/1521518183825.png\"></p><p>还有人觉得少吃一顿早餐可以减肥，其实大错特错。不吃早餐，你一整天的新陈代谢都会持续低迷，而且因为实在太饿，熬到午饭的时候早已控制不住自己而大快朵颐，导致摄入的热量更多，真是得不偿失！</p><p>一日之计在于晨，早餐相当的重要，减肥的时候早餐更重要，如何吃呢？</p><p><br></p><p class=\"ql-align-center\"><img src=\"http://localhost:4000/upload/1521518232244.png\"></p><h3><strong>错误搭配</strong></h3><p><br></p><p>中国传统的早餐，油条、豆浆或白粥、咸菜，这都是不健康的饮食搭配。</p><p><br></p><p>首先油条，经高温油炸，易产生致癌物质，其次，油脂高容易使人发胖。而咸菜含盐量较高，长期这样易水肿，并且这种搭配只有饱腹作用，缺少营养。</p><p><br></p><p><strong>早餐吃什么容易瘦？</strong></p><p><br></p><p>﻿减脂期控制热量摄入的重要性相信大家都知道，一天中科学的热量摄入比例一般为3:4:3，举例说明即：假如该人每天需要摄入热量1500大卡，那么他早餐是应摄入的热量则为450大卡。</p><p><br></p><p><img src=\"http://localhost:4000/upload/1521518307825.png\"></p><p><strong>质量方面，早餐食物要尽量多样化。</strong></p><p><br></p><p>早餐要为人体提供丰富的营养，食物最好多样化，最好有蔬菜、水果、全谷物和蛋奶。</p><p><br></p><p>优质蛋白质和充足的膳食纤维，有助于消除饥饿感，延长饱腹感。而适量的水果和蔬菜，为身体提供充足的维生素和矿物质。</p><p><br></p><p>吃对早餐，减肥更快速！你该如何吃呢？</p><p><br></p><p>时间方面，早晨7点肠胃慢慢苏醒，所以最好的进餐时间为7~8点，能更好的吸收消化，为新一天提供满满能量。</p><p><br></p><p>我吃了早餐反而更容易饿了，是咋回事？</p><p><br></p><p>首先你都吃啥了？很多中国人最爱早上来一大碗泡饭，而对一些人来说，假如早餐主要只是碳水化合物的话的确可能不久就会感到饥肠辘辘。</p><p><br></p><p>假如你属于这种情况的话，早餐加点蛋白质，一个鸡蛋或者一杯牛奶、酸奶，甚至早餐干脆以蛋白质为主。身体需要花更长时间来消化蛋白质，这样你比较不容易饿。</p><p><br></p><p><strong>甜食可以放心吃</strong></p><p><br></p><p>甜食、零食，是女生的最爱，但却是减肥的大敌。不过，早餐吃甜食有益于帮助人们瘦身，并且保持体形。在这项研究中，一些参与者在自己的早餐中加入了饼干、蛋糕或者巧克力，32周之后，他们人均减掉了18千克，更令人惊喜的是他们保持住了。</p><p><br></p><p>研究员的结论是：清晨吃些甜食，那时身体的新陈代谢处于最佳状态，会帮助你抑制接下来一整天对甜食的渴望。而那些节食的人，可能熬不过多久就会背离自己的减肥计划。</p><p><br></p>', '增肌减脂', 'toutiao');
INSERT INTO `toutiao` VALUES ('17', 'http://localhost:4000/upload/1521523968390.png', '吃1口，一年都安康！一年一次的健康先机，一定要抢 ', '在这个时节要注意增加营养，食物以清淡、易消化为宜，少吃油腻和辛辣的食物，少饮酒、少抽烟。另外，要做好心理调节，要静心、安神、戒躁、息怒。', '5', '2018-03-20 13:35:00', '<p>在这个时节要注意增加营养，食物以清淡、易消化为宜，少吃油腻和辛辣的食物，少饮酒、少抽烟。另外，要做好心理调节，要静心、安神、戒躁、息怒。</p><p><br></p><p>三伏养生多吃山药、马铃薯和紫著，不仅可以预防“情绪中暑”，还能健脾胃、抗衰老、降低胆固醇。这三种粗粮堪称“粗三宝”，帮你清爽健康度过三伏天！</p><p><br></p><p>一、山药：健脾胃，益肺肾</p><p><img src=\"http://localhost:4000/upload/1521524065556.png\"></p><p><br></p><p>山药学名蓣薯，其中含有薯蓣皂，能促进内分泌荷尔蒙的合成，能促进皮肤表皮细胞的新陈代谢，提升肌肤的保湿功能，改善体质。</p><p><br></p><p>此外，夏季偏食生冷极易导致肠胃不适，吃些山药也有帮助。据《本草纲目》记载，山药性温，味甘平、无毒，可健脾胃，益肺肾，适量食用能帮助消化，解毒解酒。</p><p><br></p><p><br></p><p><br></p><p><img src=\"http://localhost:4000/upload/1521524024346.png\"></p><p>推荐：山药南瓜粥</p><p>护胃助消化</p><p><br></p><p>做法：将100克粳米放入锅中，加适量水，以大火煮沸，再下入切好的南瓜片150克，所有食材煮开后放入切好的山药片150克，再次煮开后转小火煮至汤汁黏稠即可。</p><p><br></p><p>中医认为小米有和胃温中的作用，能够健胃除湿、和胃安眠，对脾胃虚弱或经常腹泻的人来说有很好的补益作用，因此南瓜山药二米粥更具有滋补功效。</p><p><br></p><p>二、马铃薯：抗衰老、调节情绪</p><p><br></p><p><img src=\"http://localhost:4000/upload/1521524045441.png\"></p><p>马铃薯，通常我们叫它土豆。马铃薯有营养，是抗衰老的食物。经常吃马铃薯的人身体健康，老的慢。</p><p><br></p><p>它含有丰富的维生素及大量的优质纤维素，还含有微量元素、氨基酸、蛋白质、脂肪和优质淀粉等营养元素。</p><p><br></p><p>“情绪中暑”的人，最容易受到抑郁、灰心丧气、不安等负面情绪的困扰。</p><p><br></p><p>常吃马铃薯可以补充维生素A和C，代替由于过多食用肉类而引起的食物酸碱度失衡，帮你远离坏情绪。</p><p><br></p><p>推荐：凉拌土豆丝</p><p>补充营养、降低胆固醇</p><p><br></p><p>做法：土豆切丝，放在水中浸泡一会，然后放进沸水中焯熟，捞出沥水；将香菜、红椒、葱丝和适量调味料加入碗中，淋上适量热油，和土豆丝拌匀即可。</p><p><br></p><p>夏天出汗多，因此吃土豆能起到补充营养的作用。此外，土豆里富含膳食纤维，能促进胃肠蠕动和加速胆固醇在肠道内代谢，具有通便和降低胆固醇的作用。</p><p><br></p><p>三、紫薯：抗疲劳、补血、抗癌</p><p><br></p><p>血管抗过敏。紫薯富含铁、硒元素和花青素。硒和铁是人体抗疲劳、抗衰老、补血的必要元素，特别是硒被称为“抗癌大王”，易被人体吸收。</p><p><br></p><p>花青素是一种强有力的抗氧化剂，还能够增强血管弹性，改善循环系统，抑制炎症和过敏，改善关节的柔韧性。</p><p><br></p><p>推荐：紫薯南瓜糖水</p><p>预防贫血、提高抵抗力</p><p><br></p><p>做法：南瓜切小块，紫薯切小块，放入汤锅，加入适量清水，大火烧开后转小火炖煮。煮黏糊后，加入少量冰糖或者红糖至融化即可。</p><p><br></p><p>紫薯南瓜糖水是补铁高手，可以预防贫血，还可以减少铅的吸收，提高人体抵抗力。</p><p><br></p><p><br></p>', '养身参考', 'toutiao');
INSERT INTO `toutiao` VALUES ('18', 'http://localhost:4000/upload/1521524254205.png', '五个方法“治堵”，清理肠道垃圾 ', '肠道就像人体的“加油站”和“下水道”，人吃进去的食物营养在这里分解、吸收，剩下的残渣将排出体外。调查显示，每10名中国人就有1人受便秘困扰。中国人胃肠不适的发生率高于全球平均水平。', '0', '2018-03-20 13:37:24', '<p>肠道就像人体的“加油站”和“下水道”，人吃进去的食物营养在这里分解、吸收，剩下的残渣将排出体外。调查显示，每10名中国人就有1人受便秘困扰。中国人胃肠不适的发生率高于全球平均水平。</p><p><br></p><p class=\"ql-align-center\"><img src=\"http://localhost:4000/upload/1521524172912.jpg\"></p><p>肠道通过疼痛、胀气、腹泻、便秘等表达“不满”情绪。如果你的身体有这些症状，可能就是肠道在给你提意见了。 要“治堵”，需要注意以下几点：</p><p><br></p><p><br></p><p class=\"ql-align-center\"><img src=\"http://localhost:4000/upload/1521524194205.png\"></p><p><strong>安排好喝水时间</strong></p><p><br></p><p>清晨喝水很重要，起床后喝两杯水，不但可补充夜晚流失的水分，而且可以刺激肠道。上午、下午要再各喝两杯水。要少喝含糖饮料。糖水喝得过多会加速肠道老化，所以不要大量饮用可乐、汽水、果汁等含糖饮料。每天饭后可以喝一两杯乳酸菌饮料。</p><p><br></p><p><strong>适当锻炼</strong></p><p><br></p><p>运动能促进排便，尤其是晨练。运动要和喝水结合起来，一边补水，一边运动。</p><p><br></p><p class=\"ql-align-center\"><img src=\"http://localhost:4000/upload/1521524213554.png\"></p><p><strong>多吃富含纤维的食物</strong></p><p><br></p><p>多吃各种蔬菜和水果，如白菜、芹菜、韭菜等。它们在肠道中就像洗碗用的钢丝球一样，专门擦除不好的胆固醇，吸收水分使粪便易于通过肠道。</p><p><br></p><p><strong>少吃消炎药和解热镇痛药</strong></p><p><br></p><p>这些药容易破坏肠道菌群平衡，引起腹泻，一定要在医生的指导下服用。</p><p><br></p><p><strong>及时排便</strong></p><p><br></p><p>经常便秘者诱发癌症的几率比不便秘的人要高3倍。因此，晨起或早餐后排便是最科学的。尽可能做到定时排便，即使没有便意也要“例行公事”，以便形成生物钟。</p><p class=\"ql-align-center\"><br></p>', '寻医问药', 'toutiao');
INSERT INTO `toutiao` VALUES ('19', 'http://localhost:4000/upload/1521524875322.jpg', '红茶和绿茶有什么区别？', '红茶和绿茶有什么区别？红茶和绿茶都是常见的茶饮，但是很多人不太了解它们的区别。从制作工艺上来说，红茶是全发酵茶，而绿茶则是不发酵茶。由于制作工艺的不同，红茶和绿茶中的成分会有所区别，因此这两种茶的功效也有所不同。', '10', '2018-03-20 13:47:39', '<p><a href=\"http://fitness.39.net/food/7446.html\" rel=\"noopener noreferrer\" target=\"_blank\">红茶</a>和<a href=\"http://fitness.39.net/food/7538.html\" rel=\"noopener noreferrer\" target=\"_blank\">绿茶</a>有什么区别？红茶和绿茶都是常见的茶饮，但是很多人不太了解它们的区别。从制作工艺上来说，红茶是全发酵茶，而绿茶则是不发酵茶。由于制作工艺的不同，红茶和绿茶中的成分会有所区别，因此这两种茶的功效也有所不同。</p><p><br></p><p><img src=\"http://image.39.net/auth/t/2048.jpg\"></p><iframe class=\"ql-video\" frameborder=\"0\" allowfullscreen=\"true\" src=\"http://149.129.59.121/demo.mp4\"></iframe><p><br></p><p><strong>&nbsp;&nbsp;红茶和绿茶的区别</strong></p><p><strong> 一、绿茶和红茶的功效对比</strong></p><p>1、绿茶的功效：具有提神清心、清热解暑、消食化痰、去腻减肥、清心除烦、解毒醒酒、生津止渴、降火明目、止痢除湿等药理作用，还对现代疾病，如辐射并心脑血管并癌症等疾病，有一定的药理功效。</p><p>2、红茶的功效：红茶可以帮助胃肠消化、促进食欲，可利尿、消除水肿，并强壮心脏功能。红茶中“富含的黄酮类化合物能消除自由基，具有抗酸化作用，降低<a href=\"http://jbk.39.net/xjgs/\" rel=\"noopener noreferrer\" target=\"_blank\">心肌梗塞</a>的发病率。中医认为，茶也分寒热，例如绿茶属苦寒，适合夏天喝，用于消暑；红茶、普洱茶偏温，较适合冬天饮用。至于乌龙茶、铁观音等较为中性。</p><p><br></p><p><img src=\"http://image.39.net/auth/t/2047.jpg\"></p><p><br></p><p><strong> 二、绿茶和红茶的适用人群</strong></p><p>1、适合喝绿茶的人群：适宜<a href=\"http://jbk.39.net/gxy/\" rel=\"noopener noreferrer\" target=\"_blank\">高血压</a>、高血脂、<a href=\"http://jbk.39.net/gxb/\" rel=\"noopener noreferrer\" target=\"_blank\">冠心病</a>、<a href=\"http://jbk.39.net/dmyh/\" rel=\"noopener noreferrer\" target=\"_blank\">动脉硬化</a>、<a href=\"http://jbk.39.net/tnb/\" rel=\"noopener noreferrer\" target=\"_blank\">糖尿病</a>、油腻食品食用过多者、醉酒者。长期吸烟饮酒过多，发热口渴、头痛目昏、小便不利及进食奶类食品过多者也宜食。</p><p>2、适合喝红茶的人群：老年人、虚寒体质者，应喝红茶。适合胃寒和胃虚的人群饮用。适宜高血压、高血脂、冠心病、动脉硬化、糖尿病、油腻食品食用过多、醉酒者。</p><p><br></p><p><br></p>', 'admin', 'zhishi');
INSERT INTO `toutiao` VALUES ('20', 'http://localhost:4000/upload/1521525150094.jpg', '医疗损害的范围包括哪些？', '医疗损害的范围包括哪些？医疗损害事实主要包括对患者生命健康权的侵害、对患方财产权的侵害、对患者名誉权的侵害、对患者隐私权的侵害、对患方知情同意权的侵害、因错误受孕或错误生产引起的损害以及对患方的精神损害等。下面为您详细介绍！', '1', '2018-03-20 13:53:07', '<p><a href=\"http://china.findlaw.cn/yiliao/yiliao/ylsh/\" target=\"_blank\">医疗损害</a>是指因医疗行为对患者所造成的人身损害、财产损失、精神损害以及对患者<a href=\"http://china.findlaw.cn/info/minshang/minfa/minshiquanli/renshenquan/mingyuquan/\" target=\"_blank\">名誉权</a>、<a href=\"http://china.findlaw.cn/info/minshang/minfa/minshiquanli/renshenquan/yinsiquan/\" target=\"_blank\">隐私权</a>和知情同意权的侵害，是医疗行为所引起的对患方不利的一切事实和后果。依照《条例》第五十条、第五十一条、第五十二条的规定，<a href=\"http://china.findlaw.cn/yiliao/yiliaozhishi/yiliaoshigu/\" target=\"_blank\">医疗事故</a>损害赔偿的范围主要包括以下内容：</p><p>1、<a href=\"http://china.findlaw.cn/shpc/renshensunhaipeichang/ylf/\" target=\"_blank\">医疗费</a>；</p><p>2、误工费；</p><p>3、陪护费；</p><p>4、住院伙食补助费；</p><p>5、残疾生活补助费；</p><p>6、残疾用具费；</p><p>7、丧葬费；</p><p>8、被扶养人生活费；</p><p>9、交通费；</p><p>10、住宿费；</p><p>11、精神损害抚慰金；</p><p>12、鉴定费。</p><p><img src=\"http://img.findlawimg.com/info/2017/0818/20170818102725600.jpg\" alt=\"医疗损害\"></p><p>医疗损害事实主要包括对患者生命健康权的侵害、对患方财产权的侵害、对患者名誉权的侵害、对患者隐私权的侵害、对患方知情同意权的侵害、因错误受孕或错误生产引起的损害以及对患方的精神损害等。现对这些医疗损害的主要内容分述如下：</p><p><strong> （一）对患者生命健康权的侵害</strong></p><p>公民的生命健康权是公民享有其他权利和进行各项活动的前提和基础。世界各国民法和相关的法律都规定了对公民生命健康权的特殊保护。我国《民法通则》第98条规定，公民享有生命健康权。在医患关系中因医方施行的医疗行为对患者造成人身伤残或死亡的，就是对患者生命健康权的侵害。具体说，对患者生命健康权的侵害应包括以下三项内容：</p><p>第一，对患者<a href=\"http://china.findlaw.cn/info/minshang/minfa/minshiquanli/renshenquan/smq/\" target=\"_blank\">生命权</a>的侵害。生命是自然人作为权利主体而存在的物质前提。生命安全是公民从事民事活动和其他社会活动的基本要求。生命权是指自然人能生存于社会，维持正常的生命活动、生命安全不受非法侵害和剥夺的<a href=\"http://china.findlaw.cn/info/minshang/minfa/minshiquanli/renshenquan/rgq/\" target=\"_blank\">人格权</a>，它是自然人最基本的人身权利。它以自然人生命安全为客体，以维护人的生命活动的延续为其基本内容，其实质是禁止他人非法剥夺生命而使人的生命按自然界的客观规律延续。</p><p>我国法律严格禁止非法剥夺或危害公民生命的行为，对于侵害生命权的行为，国家以刑事制裁手段进行惩罚的同时，还以<a href=\"http://china.findlaw.cn/info/minshang/minfa/minshizeren/mszc/\" target=\"_blank\">民事制裁</a>的方式，强制犯罪分子以自己的财产向受害人及其家属作出经济上的赔偿。医疗行为对患者生命权的侵害表现为由于医师的过失而使患者丧失生命的行为，对于这种导致患者死亡的医疗过失行为，医方在依法承担相应行政责任、刑事责任的同时，还要承担民事损害赔偿责任。</p><p>第二，对患者健康权的侵害。所谓健康是指人体各器官系统发育良好、功能正常、体质健壮、精力充沛并且有良好劳动效能的状态。自然人的健康包括身体健康和心理健康两个方面，因此健康权应包括生理健康权和心理健康权。但是，由于法律已承认精神损害赔偿，心理健康权就属于精神损害赔偿制度的范畴。所以，这里所说的健康权只是指生理健康权。健康权是指自然人以其机体生理机能正常运作和功能完善发挥，以其维护人体生命活动的利益为内容的人格权。</p><p>健康权一般包括两项最基本的内容：一是健康维护权，是指公民享有保持自己健康的权利和这项权利受到不法侵害时诉诸法律保护的<a href=\"http://china.findlaw.cn/info/minshang/minfa/mfzs/qqq/\" target=\"_blank\">请求权</a>；二是劳动能力，是指自然人从事创造物质财富和精神财富活动的脑力劳动和体力劳动的总和，是公民健康权的一项基本人格利益。在医疗实践中，医疗行为对患者健康权的损害事实表现在对自然人生理机能的正常运行和功能完善发挥的损害上。</p><p>这种损害主要有两种情况：一是在当时的医疗技术条件下，本来可以治愈的疾病而没有治愈。例如：某男，27岁，因踢球不慎摔伤左肘部，当即被送往某市医院治疗，由于医师违反骨科治疗常规，采用强行扳拉，造成患者左肘部运动受限，活动范围在5度左右，鉴定为七级伤残。二是对患者身体正常部位的损害而导致器质性的和功能性的损害。例如：某幼女，6岁，因患急性阑尾炎，由其父母送至某医院做手术，在手术过程中因医师的过失误切了患者右侧卵巢组织，造成患者残疾，侵害了其健康权及肢体器官的完整权。</p><p>第三，对患者<a href=\"http://china.findlaw.cn/info/minshang/minfa/minshiquanli/renshenquan/stq/\" target=\"_blank\">身体权</a>的侵害。法学意义上的身体是指自然人的生理组织的整体，即躯体。身体是由头­、肢体、器官、其他组织以及附属部分如毛发、指甲所构成的一个整体，具有完整性的基本特征。身体权是自然人维护其身体完整并支配其肢体、器官和其他身体组织的人格权。身体权以公民的身体及其利益为客体，因而身体权与健康权之间存在着明显的区别：一是身体权的客体是身体，而健康权的客体是健康；二是身体权体现的利益是公民身体组织的完全性，健康权体现的利益是公民肌体功能的完善性；三是身体权是公民对自己身体组成部分的支配权，健康权则没有明显的支配性质。</p><p>但是，法学界对《民法通则》规定的“生命健康权”中是否包含“身体权”有不同的理解。我国传统的民法理论一般不承认身体权为独立的人格权，只承认自然人享有生命健康权，将身体权置于生命权或健康权之中，对身体权的侵害通过保护生命权、健康权来救济。但是随着社会的发展，多数学者认为身体权是一项独立的<a href=\"http://china.findlaw.cn/info/minshang/minfa/minshiquanli/\" target=\"_blank\">民事权利</a>，为自然人所享有并与其生命权、健康权相区别，各为独立的民事权利。</p><p>这种理论已经成为我国的通说，最高人民法院公布的《关于确定民事侵权<a href=\"http://china.findlaw.cn/shpc/jingshensunhaipeichang/zeren/\" target=\"_blank\">精神损害赔偿责任</a>若干问题的解释》也确立了身体权为独立的人格权。国内外司法判例已表明在医疗领域中对患者身体权侵害的情况时常发生，这种侵害行为具体表现为医师违反诊疗护理目的和技术规范，导致患者身体的完整性受到损害。如在未经患者同意的情况下，医师将患者身体组成部分的血液、皮肤、个别器官（肾脏、角膜）等抽出、切除或移植等行为，都是医师对患者身体的完整性作了不必要的处置，属于侵害患者身体权的行为。</p><p><strong> （二）对患方财产权的侵害</strong></p><p>侵害财产权是指<a href=\"http://china.findlaw.cn/info/qinquanzerenfa/qinquanxingwei/\" target=\"_blank\">侵权行为</a>造成受害人财产损失的行为，而财产损失是指受害人因其财产或人身受到侵害而造成的经济损失。财产损失是可以用金钱的具体数额加以计算的实际物质财富的损失。这种实际的损失不仅在侵害财产权益的情况下出现，而且也在侵害他人的人身权益的情况下间接或附带地出现。</p><p>一般来说，财产损失可以划分为两种。一是直接损失，它又称为积极损失，是指受害人为了补救受到侵害的民事权益所为的必要支出。它表现为损害行为直接作用于侵害的财产或直接作用于受害人的人身或人格，而导致受害人财产数量的减损或发生不必要的财产（金钱）支出。对于直接损失，原则上应当全面赔偿。二是间接损失，它又称消极损失，是指由于受害人受到侵害，而发生的可得的财产利益的丧失。这种损失表现为，在受害人受到侵害时，该财产权益尚未存在。</p><p>但是，在一般情况下如果受害人不受到侵害，这种财产上的权益，必然或者极有可能得到。间接损失是否应当得到赔偿，应根据具体案件中的受害人在未来得到该项“可得的”财产利益的可能性的大小而决定。如果受害人将来得到财产利益的可能性极大，该间接损失就应当得到赔偿。如果受害人得到该财产利益的可能性较小，该间接损失也就不应予以赔偿。医疗过失行为造成患者伤残、死亡的后果，就必然导致患者及其近亲属不必要的财产支出。</p><p>对于这种损失包括直接损失和间接损失，医方应承担损害赔偿责任。《民法通则》及其相关的<a href=\"http://china.findlaw.cn/bianhu/xingshifagui/sifajieshi/\" target=\"_blank\">司法解释</a>、《条例》等，对患方因医疗损害而引起的医疗费、误工费、住院伙食补助费、陪护费、残疾生活补助费、残疾器具费、丧葬费、被扶养人生活费、交通费、住宿费等财产损害应赔偿的项目及赔偿的计算方法和数额作了规定。</p><p><strong> （三）对患者名誉权的侵害</strong></p><p>名誉是指社会不特定的多数人对特定主体的品德、才能及其他素质的社会综合评价。对于被评价者来说，这种评价不依赖于其感觉和思维，它具有社会性、客观性和特定性的特点。自然人的名誉权是由民事法律规定的民事主体所享有的获得和维持对其名誉进行客观公正评价的一种人格权。</p><p>也就是说，自然人就其获得的品德和社会评价不受他人侵害的权利，这种权利具有专属性、非财产性的受限制性的特点。医疗行为对患者名誉权的侵害，主要发生在医师在诊治过程中对一些社会舆论认为有伤风化的疾病的<a href=\"http://china.findlaw.cn/yiliao/yiliaozhishi/wuzhen/\" target=\"_blank\">误诊</a>，或者未履行保守秘密的义务，而使患者所处的群体对其社会评价减损的情况。</p><p>具体说，医疗行为对患者名誉权的侵害应当具备误诊、未履行保守秘密的义务和该疾病为易引起对患者社会评价减损的疾病等三个要素。例如：某女，41岁，就诊到某医院治疗腰椎间盘突出症，在进行血常规、肝功能化验时，误诊其患有艾滋病，医方没有履行保守秘密的义务，不负责任地散布其患有艾滋病的信息，并将她驱赶出医院，这给该女士造成了巨大的精神压力和痛苦，影响了其名誉。医方的这种误诊及没有保守患者秘密的行为侵犯了患者的名誉权。</p><p><strong> （四）对患者隐私权的侵害</strong></p><p>隐私又称私人的生活秘密，是指有关个人生活领域的一切不愿为他人所知的事情。隐私权是指自然人享有的个人不愿公开的有关个人生活的事实不被公开的权利。侵害隐私权一般表现为非法搜集、刺探或以其他方式侵害他人隐私和泄露因业务或职务关系掌握他人秘密的行为。我国《民法通则》没有明确规定隐私权，依据最高人民法院对《民法通则》及相关司法解释的规定，将对隐私权的保护归并到对名誉权的保护范畴之中。</p><p>实际上，隐私权是自然人的一项独立的权利，它与名誉权存在着明显的区别。在现实生活中，为了进一步贯彻和<a href=\"http://china.findlaw.cn/info/zhixing/\" target=\"_blank\">执行</a>对患者隐私权的保护，1999年5月开始实施的《执业医师法》第22条规定，医师在执业活动中应履行“关心、爱护、尊重患者，保护患者隐私”的义务。在诊疗护理过程中，医方侵犯患者隐私权的行为主要有两种：一是接触或窥视患者的身体。</p><p>医师在诊疗时，检查患者的身体，需得到患者的同意。如果患者不同意，医师就不能强行检查，否则就是侵犯了患者的隐私权；二是散布患者的私人信息。对患者生活信息秘密保密权的侵害，包括身体缺陷、心理缺陷、患有碍社会风化的疾病等。这些私人信息一旦散布出去，在造成患者精神痛苦的同时，亦会引起患者社会评价的降低和名誉的减损。如某音像出版社为拍摄一部反映计划生育情况的专题片，在未经产妇及其家属同意的情况下，擅自进入分娩室，观看、拍摄了产妇分娩的全过程。音像出版社和医院的这一行为，侵犯了该产妇的隐私权。</p><p><img src=\"http://img.findlawimg.com/info/2017/0818/20170818102749863.jpg\" alt=\"医疗损害\"></p><p><strong> （五）对患方知情同意权的侵害</strong></p><p>知情同意权是指患方在选择和接受诊断与治疗过程中有权获得必要的信息，并在理性的情况下作出决定的权利。它包括对患者所患疾病的知情权、对诊疗措施的选择权和同意权等。由于医学对于患方来说一般是陌生的或者是知之甚少的，患者有权了解对自己身体疾病进行治疗的相关真实的信息。</p><p>医师给予患方有关诊疗行为的正确无误的信息是其应尽的义务，无论是治疗行为的优点还是缺点，均应向患者进行真实客观的说明和告知，这是患方充分行使自主决定权的前提和基础。《条例》第11条规定，在医疗过程中，医疗机构及其医务人员应当将患者的病情、医疗措施、医疗风险等如实告知患者，及时解答咨询；但是，应当避免对患者产生不利后果。《执业医师法》第26条规定，医师应当如实向患者或其家属介绍病情，但应当注意避免对患者产生不利后果。《医疗机构管理条例》第33条规定，医疗机构施行手术、特殊检查或者特殊治疗时，必须征得患者同意，并应当取得其家属或者关系人同意并签字。</p><p>这些规定已充分说明患方的知情同意权是受到法律保护的，因为任何一项医疗行为的实施都会不同程度地对人的机体造成一定的损害，甚至危及生命，因此患者所享有的知情权、选择权和同意权一定要得到充分的保障。让患者在充分知悉相关信息的基础上作出决定是法律赋予患者的权利，不可侵犯。由于医方违反法律规定没有对患方切实履行告知说明义务，从而引起患方医疗损害的，就应当承担相应的损害赔偿责任。例如，1999年12月8日，原告张某<a href=\"http://china.findlaw.cn/bianhu/bianhuzhinan/bananchengxu/qisu/\" target=\"_blank\">起诉</a>被告医院在为原告行剖宫产手术时，在原告及家人不知情、未履行任何签字手续的情况下，擅自为原告行右侧卵巢切除术，造成原告身体内分泌严重失调的损害后果，医方行为侵犯了原告的知情同意权。</p><p><strong> （六）因错误受孕或错误生产而引起的损害</strong></p><p>我国近年来，由于在母婴保健中胎儿筛检、产检技术的广泛运用，孕妇为保证生产健康的婴儿与医方建立母婴保健服务合同关系，定期进行产前检查，但因医方检查失误，出现了新的<a href=\"http://china.findlaw.cn/yiliao/yiliaozhishi/yiliaoshigu/yiliaojiufen/\" target=\"_blank\">医疗纠纷</a>，如错误受孕或错误生产而引起的医疗损害赔偿诉讼案件。在实务中，由于立法的缺位，对这类医疗纠纷缺乏统一的认识，法院对相同的案件进行<a href=\"http://china.findlaw.cn/bianhu/xsssfzs/shenpan/\" target=\"_blank\">审判</a>时作出的判决结果有时却大相径庭。因此，对此类医疗纠纷的解决，应当以损害赔偿法理论为基础，依据相关的法律规定，区别不同的情况作出科学合理的裁定。</p><p>第一，因错误受孕而引起的损害。所谓错误受孕是指因医疗过失实施绝育手术或避孕药处方不当，造成妇女再度怀孕生子的情形。它既可能是因为实施不当诊疗行为所致，也可能是由于绝育手术本身存在再度怀孕的风险，而未履行告知说明义务所致。在错误受孕情况下，出生的婴儿通常是身体健康的，只是婴儿的出生不在父母的生育计划范围之内。医师只是违反了合同约定的义务，未采取适当的医疗行为或告知手术的风险，致使手术未能达到原告预期的避孕的目的，对此医方应承担违约损害赔偿责任。这种损害赔偿的范围应当包括：绝育手术费、人工流产手术费、分娩费、因分娩而引起的收入减少以及因再度怀孕、再度手术等情形而导致的精神损害等。</p><p>第二，因错误生产而引起的损害。所谓错误生产是指由于医方的医疗过失行为而导致父母生下具有生理缺陷的子女的情形。这种情况多发生在孕妇担心胎儿患有疾病，请医师诊察，医师因失误未能检查出胎儿的生理缺陷，致未堕胎而生下患有生理残疾的子女。例如，我国台湾地区士林法院于1995年审理的一起案件中，原告系高龄产妇，恐生下唐氏症等有身心障碍的儿童，乃到被告医院产检，因被告医院从事羊水分析及判读具有过失，未检出胎儿染色体异常和患有唐氏症，并告知胎儿一切正常，致原告未实施人工流产，最_后产下患有唐氏症候群、无肛症、动脉导管闭锁不全之重度残障儿。在我国大陆也出现过此类案例。</p><p>在这类诉讼案件中，医方的损害赔偿责任是明显的，这种损害主要是指因医师没有履行高度的注意义务，违反约定的医疗服务合同而导致患方的损害。但是，这里的“损害”并非指的是缺陷儿的出生，因为从维护人的尊严出发，人的出生无法被视为是一种“损害”。这种损害赔偿的范围应当包括：缺陷儿的医疗费、缺陷儿的护理费、缺陷儿的特殊教育费以及缺陷儿父母遭受的精神损害抚慰金。</p><p><strong> （七）患方的精神损害</strong></p><p>精神损害是指受害人在受到侵害后精神上的痛苦和肉体上的疼痛等方面的损害。精神损害表现为受害人生理、心理上的痛苦，它是非财产损害的一部分，与财产的增减无直接关系。民法理论研究的精神损害还必须受限于法律法规有规定的内容。根据外国立法经验和我国近年来的司法实践来看，出现独立的或非独立的精神损害以及其内容方面的丰富与完善，对保护自然人的合法权利方面起到非常重要的作用。精神损害不仅存在于人格权受到损害的情形，也存在于生命健康权受到损害的情形。外国一些发达国家的立法和司法判例，早已确认了医疗损害的精神损害赔偿制度。</p><p>我国《民法通则》虽然没有明确规定此项制度，但从其立法精神来看，请求侵权人承担精神损害赔偿责任符合民法的精神，并在司法实践中已经承认了民事精神损害赔偿制度。因为发生医疗损害给受害人及其亲属造成的身心痛苦以及精神上的打击和创伤是客观存在的，对他们给予精神损害赔偿具有其合理性。我国最高司法机关在总结经验的基础上，于2001年3月公布实施的《关于确定民事侵权精神损害赔偿责任若干问题的解释》对精神损害赔偿的基本问题作出了规定。</p><p>《条例》第50条亦明确规定，对因侵权行为遭受损害的受害人及其亲属应当赔偿“精神损害抚慰金”。即依据最高人民法院的司法解释和相关行政法规的规定，因医疗行为侵害患者的生命健康权造成患者伤残或死亡后果的，或者侵害患者名誉权、隐私权、知情同意权的，或者因错误受孕或错误生产引起损害的，从而引起患者及其近亲属身心痛苦导致精神损害的，患者及其亲属可以向人民法院起诉请求医方承担精神损害赔偿责任。笔者认为，在我国医疗损害赔偿诉讼中确立精神损害赔偿制度，不仅完全符合我国社会发展的趋势，而且也体现了以人为本的法治理念。</p>', 'admin', 'zhishi');
INSERT INTO `toutiao` VALUES ('21', 'http://localhost:4000/upload/1521525235084.jpg', '什么是并发症?并发症都能免责吗?', '什么是并发症?并发症都能免责吗?并发症又称合并症，是指在疾病发展过程中引起另一种疾病或症状的现象。发生“难以避免的并发症”时医院不承担任何责任;而发生“可以避免的”的并发症，医院是要承担法律责任的。下面找法网小编为您详细介绍。', '5', '2018-03-20 13:54:15', '<p><br></p><p><strong>一、并发症的概念</strong></p><p>并发症又称合并症，作为一个复杂的临床医学概念，是指在疾病发展过程中引起另一种疾病或症状的现象。发生“难以避免的并发症”时医院不承担任何责任;而发生“可以避免的”的并发症，医院是要承担法律责任的。</p><p><strong>二、并发症医院不可以免责分析</strong></p><p>所有的医疗并发症都能成为医院的免责事由。医院对“可以避免的并发症”应当承担<a href=\"http://china.findlaw.cn/info/minshang/minfa/minshizeren/\" target=\"_blank\">民事责任</a>，绝不能笼统地以发生医疗并发症而要求免除医院的<a href=\"http://china.findlaw.cn/info/minshang/minfa/minshizeren/gczr/\" target=\"_blank\">过错责任</a>或简单地认定不属于<a href=\"http://china.findlaw.cn/yiliao/yiliaozhishi/yiliaoshigu/\" target=\"_blank\">医疗事故</a>。</p><p>根据我国的法律，我们对<a href=\"http://china.findlaw.cn/yiliao/yiliao/ylsh/\" target=\"_blank\">医疗损害</a>的归责采用过错责任原则，即医疗机构及其医务人员只有在对医疗损害的发生存在<a href=\"http://china.findlaw.cn/yiliao/ylsgql/ylgc/\" target=\"_blank\">医疗过错</a>的情况下就应该承担民事责任，无过错时才无责任。</p><p>所以，即使有书面的各种并发症提示，医院也不一定免责。</p><p>并发症与医疗意外的区别就在于，是否凭借现代医学科学技术能够预见。由于并发症具有可预见的特征，所以并发症引起的<a href=\"http://china.findlaw.cn/yiliao/yiliaozhishi/yiliaoshigu/yiliaojiufen/\" target=\"_blank\">医疗纠纷</a>不像医疗意外那样激烈。一般情况下，事前医务人员会对患者及其家属进行说明，后者心理上有一定的准备。当并发症发生时，患者及其家属也会主动配合医务人员采取有力措施，尽最大努力减少不良后果。但是医务人员事先未向患者及其家属说明，事后又解释不够，加之挽救措施不得力，患者出现死亡、残废、组织器官损伤导致功能障碍等严重不良后果时，医疗纠纷的产生就在所难免了。这类医疗纠纷的数量也不少，但是由于患者病理机制变化较清晰，又属现代医学科学技术能够预见到的，所以通过耐心细致的解释工作或者经过医疗技术鉴定，一般都能很快得到解决，医患之间能够达成谅解。</p><p>应将并发症分为“难以避免的”和“可以避免的”两类，绝不能混淆。“难以避免”的并发症，是指医院在为患者进行治疗后在没有任何过错的情况下发生的并发症。在对患者进行诊疗护理过程中，患者发生了现代医学科学技术能够预见但却不能避免和不能防范的不良后果，而这种不良后果的发生与医务人员是否存在医疗过失无直接的因果关系。不同的手术发生不同部位、不同系统的并发症如切口感染、疼痛、裂开;手术后出血;肺不张，肺水肿，肺栓塞，休克肺;尿路感染;急性胃扩张;下肢深静脉血栓形成;腹腔手术后的肠粘连，­内血肿清除术中开­造成对头皮和­骨的损伤，以及各种手术时的切口创伤性损伤等。发生“难以避免的并发症”时医院不承担任何责任。“可以避免的”的并发症，是指医院在为患者进行治疗中，凭借现代医学科学技术能够预见，并通过尽到注意义务可以避免的并发症。</p><p><strong>三、出现并发症时，如何判定医院有没有过错?</strong></p><p>1、看医务人员是否尽到风险预见义务</p><p>并发症一般情况下是可以预见的，如股骨远端骨折可能会导致腘动脉损伤、食管癌切除术并食管胃吻合术后可能会发生吻合口萎、甲状腺手术可能会损伤喉返神经等。如果应当预见而未能预见到并发症的发生，则说明医务人员未能尽到结果预见义务而构成医疗过失。</p><p>2、看医务人员是否尽到风险告知义务</p><p>《执业医师法》第26条规定，医师应当如实向患者或者其家属介绍病情。《<a href=\"http://china.findlaw.cn/yiliao/yiliaofagui/ylsgqltl/\" target=\"_blank\">医疗事故处理条例</a>》规定在医疗活动中，医疗机构及其医务人员应当将患者的病情、医疗措施、医疗风险等如实告知患者。如未能尽到此义务，则可以认定其违反了法定的告知义务而构成医疗过错。</p><p>3、看医务人员是否尽到风险<a href=\"http://china.findlaw.cn/bianhu/xsssfzs/huibi/\" target=\"_blank\">回避</a>义务</p><p>根据相关诊疗规范，医务人员是否尽到风险回避义务，即医务人员采取了相应的诊疗措施以尽可能避免并发症的发生。并发症的相对可避免性决定了在一定条件下， 只要医务人员加以充分的注意并采取积极有效的防范措施，并发症在一定程度上是可以避免的。例如在剖宫产手术中，手术医生应特别注意防止损伤患者的输尿管。 但是也应当注意，并发症的可避免性是相对的，在临床实践中，有时即使医务人员对并发症予以充分的注意并采取预防措施仍难以避免并发症的发生。例如，如果甲 状腺肿物与周围神经粘连非常密切，则在切除过程中将难以避免神经损伤的发生。此时只要医务人员能够证明其在手术中严格遵守了技术操作规范，并对不良后果的 发生给予了充分的注意，那么医务人员才能不承担责任。</p><p>4、看医务人员是否尽到医疗救治义务</p><p>在并发症发生后，医务人员是否采取积极的治疗措施以防止损害后果的扩大。还是以甲状腺中喉返神经损伤为例，因切断、缝扎导致的喉返神经损伤属于永久性损伤，而因挫夹、牵拉、血肿压迫所致者多为暂时性的，经过适当的理疗等及时处理后，一般可以在3-6个月内逐渐恢复。因此，对于后者，医务人员应当采取积极有效的防范措施，以最大限度地减少并发症的损害后果。</p><p><strong>【相关知识】</strong></p><p>实践中还有一种可能是引发了后遗症。所谓后遗症是指医疗终结后仍遗留某些身体机能障碍，严重者尚存医疗依赖，需靠外源性医疗支持维持身体机能。后遗症发生的原因，有的是因必需的诊疗方法所造成的损害形成的，如双侧卵巢切除后，内分泌功能需外源性激素维持;甲状腺切除术后的甲状腺功能减退等;有的是疾病本身的自然转归，如脑溢血或脑血栓形成，医疗终结后遗留肢体瘫痪等。并发症和后遗症也是引发医疗纠纷的基本事实。有的情况下，医务人员对并发症后遗症的发生即使采取了积极有效的措施也不能避免，这种情况不属于医疗事故。</p>', 'admin', 'zhishi');
INSERT INTO `toutiao` VALUES ('22', 'http://localhost:4000/upload/1521525682714.jpg', '女人30岁后该如何保养自己', '女人到了30岁，皮肤细胞的保水功能下降了，所以，皮肤容易变得干燥。对于这种情况，建议给皮肤补水来改善。除了要保证每天的正常饮水量以外，还应该使用补水的护肤品，比如爽肤水、润肤霜、补水面膜等，可以起到补水的作用。', '3', '2018-03-20 14:02:10', '<p><strong>1、注意走路姿态</strong></p><p>在家里或公园里散步时，挺起胸膛走一走，对保持形体十分有效。如果平时走路也能这样，能消耗掉多1倍的热量。</p><p><img src=\"http://www.360changshi.com/uploadfile/2018/0315/20180315113840758.jpg\" alt=\"女人30岁后该如何保养自己\"></p><p><strong>2、少吃油腻食物</strong></p><p>食谱多选择瘦肉、鱼、脱脂牛奶和蔬菜水果。用餐开始，先吃凉菜和用植物油烹制的菜肴。</p><p><strong>3、不要急于起床</strong></p><p>早晨醒来后，仰卧、伸展身体。然后，四肢着地，拱拱背，让脊柱也有“苏醒”的时间，这可以避免腰痛，保持良好的姿态，在愉快的心情中开始每一天。</p><p><strong>4、防晒</strong></p><p>长期的紫外线照射让肌肤形成色素沉着，同时让皮肤产生大量的自由基加速肌肤氧化速度，造成肌肤老化。因此，想要年轻、白嫩，时刻防晒必不可少。</p><p><strong>5、彻底洁面</strong></p><p>随着年龄的增加，肌肤的新城代谢能力将会减退，因此面部油脂、灰尘、死皮等赃物更容易堆积，给肌肤增加负担，因此认真彻底清洁肌肤是做好日常保养的重要前提。</p><p><img src=\"http://www.360changshi.com/uploadfile/2018/0315/20180315113853545.jpg\" alt=\"女人30岁后该如何保养自己\"></p><p><strong>6、多运动</strong></p><p>要想达到真正保养的效果，坚持运动才是硬道理，运动不仅能够加快全身的血液循环，还能帮助排除身体的废物，加快新陈代谢，让脸部肌肤和身上的肌肉更加紧绷。</p><p><strong>7、用热水洗澡</strong></p><p>热胀冷缩这个道理无论用在哪里都可以，即使是人的身体也一样。水温越高(限自身承受范围内)，身体内被带走的热量越大，不光巩固之前减肥效果，皮肤细胞也会理由这个机会充分唿吸、扩张，减少松弛。</p><p><strong>8、使用眼膜</strong></p><p>眼膜的补水效果是非常好的，触感非常清凉，很容易被眼睛周围的皮肤吸收，让双眼的肌肤得到放松，因此对于30岁的女性来说，每周坚持敷2~3次眼膜能够防止细纹和鱼尾纹的产生哦。</p><p><strong>9、使用喷雾</strong></p><p>要知道夏天的阳光非常容易导致皮肤衰老，除了日常的保养之外，随身携带一瓶保湿喷雾也是非常重要的哦，其成分一般是天然矿泉水，其中含有大量的矿物质和微量元素，能够帮助肌肤快速补水，调节水油平衡，舒缓30岁肌肤的压力哦。</p><p><img src=\"http://www.360changshi.com/uploadfile/2018/0315/20180315113905410.jpg\" alt=\"女人30岁后该如何保养自己\"></p><p><strong>10、适量补充胶原蛋白</strong></p><p>胶原蛋白是保持肌肤弹性和光泽的必要物质，因此三十岁女人保养补充胶原蛋白必不可少，我们可以通过多食用猪蹄、鱼翅、牛筋、鸡脚、鱼皮、鱼软骨、葛根、大豆等食物促进胶原蛋白的形成，或口服胶原蛋白<a href=\"http://www.360changshi.com/zt/baojian/\" target=\"_blank\">保健</a>品。</p><p><strong>11、保护秀发</strong></p><p>光照、再加上咸的海水以及泳池中的氯气，都会对头发起破坏作用，不用头发防晒油，就像脸上不抹防晒霜一样，就是对自己的头发不负责任。艳阳高照时呆在户外，发色很快会消褪，而自由基会损坏头发中的蛋白质，因此头发越来越没有活力，容易断折。</p><p><strong>12、工作</strong></p><p>新世代的女人是少不了工作的，为了让自己变的更美，除了护肤保持年轻状态，还需要锻炼出优雅的体态，大度的气质，而这些都是工作中所能为你带来的体练，因此适当的投入到工作中，打造良好的职场关系，是保持年轻状态的最佳调剂。</p><p><strong>13、睡前涂抹婴儿油</strong></p><p>皮肤之所以松弛，是因为供给皮肤的营养不够，所以要多给肌肤补给营养成分。而婴儿油非常的细腻，是专门供给婴儿用的，容易渗透、营养丰富又不油腻肌肤，占据了一切有利因素。每天晚上可以在睡觉之前，将婴儿油涂抹在皮肤表面，待到表皮层迅速吸收以后，能够起到修复皱纹的效果。</p><p><strong>14、采用抗衰老型的日常保养品</strong></p><p>不同类型的保养品具有不同的功效，通常20几岁的小姑娘只要做好日常保湿等步骤就可以，但对于30岁的女人来说，保湿类的产品已经无法满足其肌肤的需求，因此需要及时更换具有抗衰衰老成分保养品、营养丰富的精华液，并配合面部按摩减缓肌肤下垂松弛。</p><p><strong>15、多喝白开水</strong></p><p>肌肤弹性不够了，别担心，多喝白开水。千万不要喝碳酸饮料之类的，酒精也尽量不要碰，因为这些元素会加重你的皮肤负担，还有可能增加大量的卡路里。每天清晨起来喝一杯白开水，就能激活肌肤表皮细胞的再生性，加速血液循环速度。另外，每天的喝水量不要少于1000cc，吃饭前喝水也能控制食欲哦。</p><p><img src=\"http://www.360changshi.com/uploadfile/2018/0315/20180315113920914.jpg\" alt=\"女人30岁后该如何保养自己\"></p><p><strong>30岁的女人怎么保养皮肤</strong></p><p><strong>1、给皮肤保湿</strong></p><p>皮肤补完水后，并不意味着皮肤细胞中的水分就会一直锁在里面，其实，30岁的女人，皮肤细胞的锁水功能已经在开始变差了，所以，除了要补水以外，还应该保湿，建议涂一些保湿霜，这样才能有效锁住皮肤中的水分，从而让皮肤看起来水润光滑。</p><p><strong>2、给皮肤补水</strong></p><p>女人到了30岁，皮肤细胞的保水功能下降了，所以，皮肤容易变得干燥。对于这种情况，建议给皮肤补水来改善。除了要保证每天的正常饮水量以外，还应该使用补水的护肤品，比如爽肤水、润肤霜、补水面膜等，可以起到补水的作用。</p><p><strong>3、给皮肤美白</strong></p><p>做好皮肤美白对于30岁的女人来说是非常重要的一件事情。有不少<a href=\"http://www.360changshi.com/rq/nvxing/\" target=\"_blank\">女性</a>朋友的脸上都长了色斑，主要就是因为黑色素沉淀导致的，建议吃一些富含<a href=\"http://www.360changshi.com/ys/tags/wss315/\" target=\"_blank\">维生素</a>C的食物，能淡化黑色素，从而起到美白祛斑的作用。</p><p><strong>4、给皮肤抗皱</strong></p><p>很多30岁的女人，眼角都出现了一些细纹，这是皮肤在慢慢老化的表现，建议给皮肤抗皱。平时不妨吃一些富含胶原蛋白的食物，能让皮肤细胞变得饱满，从而恢复皮肤弹性，以达到抗皱的目的。另外，也可以多吃些富含<a href=\"http://www.360changshi.com/ys/tags/wss315/\" target=\"_blank\">维生素</a>E的食物，可以延缓皮肤<a href=\"http://www.360changshi.com/bj/tags/sl993/\" target=\"_blank\">衰老</a>。</p>', 'admin', 'toutiao');
INSERT INTO `toutiao` VALUES ('23', 'http://localhost:4000/upload/1521525850782.jpg', '适当喝酒会有哪些好处', '孕妇饮酒对胎儿的影响更大。嗜酒孕妇所生的婴儿，不仅体重较正常为低，更重要的是患“胎儿酒精综合征”，表现为发育不良，面貌丑陋，智力低下，反应迟钝，动作笨拙。有的还出现四肢和心血管畸形。', '1', '2018-03-20 14:04:38', '<p class=\"ql-align-center\"><br></p><p><img src=\"http://www.360changshi.com/uploadfile/2017/1122/20171122031056244.jpg\" alt=\"适当喝酒会有哪些好处\"></p><p><strong>适当喝酒会有哪些好处</strong></p><p><strong>1、预防糖尿病</strong></p><p>喝酒还能预防糖尿病，但是如果过量对身体内脏都是有坏处的，会导致酒精肝等。但是适量饮酒能激发人体胰岛素，可以预防糖尿病，不过具体多少量还没有定论。大家要慎重尝试！</p><p><strong>2、降低身体胆固醇</strong></p><p>很多人觉得饮酒是增加身体胆固醇，但是欧美人喜欢吃高脂肪和蛋白的食物为什么冠心病的机率那么低呢，主要就是因为他们同时会喝红葡萄酒。葡萄酒的功效很大，它可以帮助减少有害胆固醇，预防血栓，达到降低冠心病的发病率。女人和男人每天的饮酒量是有规定的，比如<a href=\"http://www.360changshi.com/rq/nvxing/\" target=\"_blank\">女性</a>每天只能喝100-150ml的量，而男人可以喝200-250ml的量。</p><p><strong>3、预防胆结石</strong></p><p>胆结石的主要构成成分之一就是胆固醇。葡萄酒中的抗氧化物可以提高人体（包括胆囊）里的有益胆固醇含量，减少有害胆固醇，从而预防胆结石的产生。</p><p><strong>4、激发智能</strong></p><p>葡萄酒除了能降低身体有害胆固醇，还能扩大大脑血管，有效预防老年痴呆，抵抗有毒蛋白。</p><p><strong>5、预防肿瘤</strong></p><p>红葡萄酒是有名抗癌酒类。因为它含有白藜芦醇能预防脂肪积累，还能预防肿瘤生长，对<a href=\"http://www.360changshi.com/rq/nvxing/\" target=\"_blank\">女性</a>乳腺癌有很好的抑制效果。</p><p><strong>6、控制体重</strong></p><p>喝酒还能控制体重？对，但是控制在男人2杯，女人1杯的情况下可以有效控制体重增加，如果每周喝7杯酒还能降低吃夜宵和零食的欲望。</p><p><strong>饮酒过量的危害</strong></p><p>酒喝下去之后，直接刺激并损害消化系统，能引起口腔黏膜炎、咽炎、食管炎和胃炎，特别是对胃黏膜有不良影响。酒的度数越高，这种刺激越明显。酒精具有脂溶性，可以破坏黏膜的防御系统，使胃黏膜极易遭受胃酸、胆汁的侵袭，进而引起黏膜组织水肿、糜烂、甚至出血、坏死。</p><p>慢性酒精中毒，在神经系统表现为记忆力减退、定向力障碍、肌肉震颤、幻觉等等。酒精与肝病有密切的关系。酒精性肝病可分为酒精性脂肪肝、酒精性肝炎、酒精性肝纤维化、酒精性肝硬化，后一个由前一个发展而成，而且一个比一个严重。国外有资料表明，每天饮酒量150g，1年就可发生酒精性脂肪肝，16年便可引起酒精性肝硬化。</p><p>酒精还损害心脏，引起心律失常。酗酒还引起外周血管扩张，血压下降，使冠状动脉供血不足，加上酗酒的情绪激动，心肌耗氧量增加，对有冠心病的人容易促使心绞痛或心肌梗死的发生。</p><p>酒精与癌症发病有密切关系。它的代谢物是乙醛，已被证实有致癌作用。有的原发性肝癌病人，都是大量饮酒所导致的。肝癌被称为“癌中之王”，治疗效果很差。过量饮酒还会引起口腔癌、咽喉癌、胃癌、结肠直肠癌等等。</p><p><a href=\"http://www.360changshi.com/my/tags/yf1416/\" target=\"_blank\">孕妇</a>饮酒对胎儿的影响更大。嗜酒<a href=\"http://www.360changshi.com/my/tags/yf1416/\" target=\"_blank\">孕妇</a>所生的婴儿，不仅体重较正常为低，更重要的是患“胎儿酒精综合征”，表现为发育不良，面貌丑陋，智力低下，反应迟钝，动作笨拙。有的还出现四肢和心血管畸形。</p><p>此外，酒精还能引起<a href=\"http://www.360changshi.com/jk/tags/gzss1584/\" target=\"_blank\">骨质疏松</a>、视神经炎、视网膜炎、<a href=\"http://www.360changshi.com/sh/tags/boli/\" target=\"_blank\">玻璃</a>体混浊、酒精性弱视等病。</p>', 'admin', 'toutiao');
INSERT INTO `toutiao` VALUES ('24', 'http://localhost:4000/upload/1521525930514.jpg', '冬季养生不是出汗多就好！', '很多人为了锻炼效果，在冬天也追求湿透运动服，或是有些人吃火锅、洗桑拿后汗流浃背，这样都不利于冬季养生。“冬天气温低，不易出汗，‘气’的耗损也校但若达到了大汗淋漓的状态，很可能就是过量了。', '1', '2018-03-20 14:05:55', '<p><img src=\"http://www.360changshi.com/uploadfile/2017/1203/20171203105451839.jpg\" alt=\"冬季养生不是出汗多就好！\"></p><p><strong>冬季</strong><a href=\"http://www.360changshi.com/jk/\" target=\"_blank\"><strong>养生</strong></a><strong>不是出汗多就好！</strong></p><p>春天为生，植物开始发芽，动物变得活跃；夏天小草长出来，动物也长高了，这是长；夏秋之间，所有植物变得越来越饱满，则为化；到了秋天收获果实，即为收；而冬天要把果实藏起来，慢慢使用，称作藏。同理，对人来说，冬天要把身体里的精气神藏起来，不让它们“泄”出去，这也就是《四气调神大论》中所说的“冬三月，此为闭藏”。</p><p>很多人为了锻炼效果，在冬天也追求湿透运动服，或是有些人吃火锅、洗桑拿后汗流浃背，这样都不利于冬季<a href=\"http://www.360changshi.com/jk/\" target=\"_blank\">养生</a>。“冬天气温低，不易出汗，‘气’的耗损也校但若达到了大汗淋漓的状态，很可能就是过量了。一方面，出汗时毛孔扩张，精气神会趁机‘溜走’，细菌也有了‘入侵通道’；另一方面，人遇冷容易感冒，可能导致肌肉和关节的损伤，甚至使体质变弱。尤其是儿童和老人，更要避免冬天大量出汗。”</p><p>“冬天运动应该以适量、轻微为主，特别爱运动的人要控制一下运动量，感觉身体微微发热是最佳的状态。”专家强调。强身健体的运动本就不应该大汗淋漓，不然就成了竞技体育。</p><p>洗桑拿、泡温泉会流失很多“隐形”的汗，因为汗水和洗澡水混合在一起，容易让人错误估计出汗量。此时，就要严格掌握泡澡的时间，一般在15分钟左右为宜，水温要控制在40摄氏度以下。如果出现心跳加速、呼吸急促等现象，应立刻停止。</p><p>若是一不小心汗出猛了，可以通过<a href=\"http://www.360changshi.com/ys/\" target=\"_blank\">饮食</a>稍加调理。专家介绍说，冬季应该多吃些温补的食物，如鸡肉、羊肉、鲫鱼、大枣和杏仁等，可以增强耐寒能力和对寒冷的适应力。</p><p><strong>冬季养生的原则</strong></p><p><strong>1、少出大汗</strong></p><p>冬季属阴，以固护阴精为本，宜少泄津液。故冬“去寒就温”，预防寒冷侵袭是必要的。但也不可暴暖，尤忌厚衣重裘，向火醉酒，烘烤腹背，暴暖大汗。</p><p><strong>2、健脚板</strong></p><p>健脚即健身。必须经常保持脚的清洁干燥，袜子勤洗勤换，每天坚持用温热水洗脚时，还应按摩和刺激双脚穴位。每天坚持步行半小时以上，活动双脚。早晚坚持搓揉脚心，以促进血液循环。此外，选一双舒适、暖和轻便、吸湿性能好的鞋子也非常重要。</p><p><strong>3、水量足</strong></p><p>冬日虽排汗排尿减少，但大脑与身体各器官的细胞仍需水分滋养，以保证正常的新陈代谢。一般每日补水仍不应少于2000～3000毫升。</p><p><strong>4、防犯病</strong></p><p>冬季气候诱使慢性病复发或加重，寒冷还刺激心肌梗死、中风的发生，使血压升高和溃疡并风湿并青光眼等病症状加剧。因此，冬季应注意防寒保暖，特别是预防大风降温天气对机体的不良刺激，备好<a href=\"http://www.360changshi.com/jk/jijiu/\" target=\"_blank\">急救</a>药品。同时还应重视耐寒锻炼，提高御寒及抗病能力，预防呼吸道<a href=\"http://www.360changshi.com/jk/yufang/\" target=\"_blank\">疾病</a>发生。</p><p><strong>5、调精神</strong></p><p>冬天确实易使人身心处于低落状态。冬天改变情绪的最佳方法就是活动，慢跑、跳舞、滑冰、打球等，是消除冬季烦闷，保养精神的良药。</p><p><strong>6、空气好</strong></p><p>冬季室内空气<a href=\"http://www.360changshi.com/sh/tags/wuran/\" target=\"_blank\">污染</a>程度比室外严重数十倍，应注意常开门窗通风换气，或在室内放一台负离子发生器，以清洁空气，健脑提神。</p>', 'admin', 'toutiao');
INSERT INTO `toutiao` VALUES ('25', 'http://localhost:4000/upload/1521525997068.jpg', '煤气中毒该如何进行急救', '应尽快让病人离开中毒环境，并立即打开门窗，流通空气。神志不清的中毒病人必须尽快抬出中毒环境，在最短的时间内，检查病人呼吸、脉搏、血压情况，根据这些情况进行紧急处理。有自主呼吸，充分给以氧气吸入。', '1', '2018-03-20 14:07:12', '<p><img src=\"http://www.360changshi.com/uploadfile/2017/1217/20171217070741428.jpg\" alt=\"煤气中毒该如何进行急救\"></p><p><strong>煤气中毒的症状</strong></p><p>要想判断是否煤气中毒，临床可根据患者是否有一氧化碳接触史、是否有突然昏迷或者皮肤黏膜是否呈樱桃红色改变等作出诊断，主要包括以下几个方面：</p><p>1、轻度中毒者有头晕，头痛，乏力，心悸，恶心，呕吐及视力模糊。</p><p>2、有产生煤气的条件及接触史。职业性中毒常为集体性，<a href=\"http://www.360changshi.com/sh/\" target=\"_blank\">生活</a>性中毒常为冬季生火取暖而室内通风不良所致，同室人也有中毒表现，使用热水器也是煤气中毒的重要原因。</p><p>3、病情严重者皮肤呈樱桃红色，呼吸及脉搏加快，四肢张力增强，意识障碍，处于深昏迷甚至呈尸厥状态，最终因肺衰、心衰而死亡。</p><p>4、血中碳氧血红蛋白（HBCO）呈阳性反应。轻度中毒血液HBCO浓度为10%～30%，中度中毒血液HBCO浓度为30%～40%，重度中毒血液COHB浓度可高达50%。</p><p><img src=\"http://www.360changshi.com/uploadfile/2017/1217/20171217070810893.jpg\" alt=\"煤气中毒该如何进行急救\"></p><p>5、严重患者抢救苏醒后，经2～60天的假愈期，可出现迟发性脑病症状，表现为痴呆木僵、震颤麻痹、偏瘫、癫痫发作、感觉运动障碍等。</p><p><strong>煤气中毒该如何进行</strong><a href=\"http://www.360changshi.com/jk/jijiu/\" target=\"_blank\"><strong>急救</strong></a></p><p>1、患者应安静休息，避免活动后加重心、肺负担及增加氧的消耗量。</p><p>2、应尽快让病人离开中毒环境，并立即打开门窗，流通空气。</p><p>3、神志不清的中毒病人必须尽快抬出中毒环境，在最短的时间内，检查病人呼吸、脉搏、血压情况，根据这些情况进行紧急处理。</p><p>4、有自主呼吸，充分给以氧气吸入。</p><p><img src=\"http://www.360changshi.com/uploadfile/2017/1217/20171217070822563.jpg\" alt=\"煤气中毒该如何进行急救\"></p><p>5、呼叫120<a href=\"http://www.360changshi.com/jk/jijiu/\" target=\"_blank\">急救</a>服务，急救医生到现场救治病人。</p><p>6、呼吸心跳停止，立即进行人工呼吸和<a href=\"http://www.360changshi.com/jk/tags/xz3106/\" target=\"_blank\">心脏</a>按压。</p><p>7、争取尽早进行高压氧舱治疗，减少<a href=\"http://www.360changshi.com/jk/tags/houyizheng/\" target=\"_blank\">后遗症</a>。即使是轻度、中度，也应进行高压氧舱治疗。</p><p>8、病情稳定后，将病人护送到医院进一步检查治疗。</p>', 'admin', 'zhishi');
INSERT INTO `toutiao` VALUES ('26', 'http://localhost:4000/upload/1521526058038.jpg', '吃鱼刺被卡住了该怎么办', '一般情况下鱼刺卡喉，只会是卡在浅表，在间接喉镜下即可取出，但是，病人在被鱼刺卡喉后，很少会立即到医院取出，而是会通过一些“土方”，如噎饭、喝醋或者用力咳出等，最常见的是噎饭。', '1', '2018-03-20 14:08:16', '<p class=\"ql-align-center\"><br></p><p><img src=\"http://www.360changshi.com/uploadfile/2017/1107/20171107093610187.jpg\" alt=\"吃鱼刺被卡住了该怎么办\"></p><p><strong>吃鱼刺被卡住了该怎么办</strong></p><p><br></p><p>在家卡鱼刺应该怎么样紧急处理才正确呢？我们可以用汤匙或牙刷柄压住舌头前部分，在亮光下仔细查看舌根部、扁桃体、咽后壁等。鱼刺最容易刺在扁桃体上，张大口就能看到，可用镊子取出。如果卡在舌根部、会厌软骨周围，自己往往不易看到，这时应去医院请医生帮忙。切忌用“土方”进行处理。</p><p><br></p><p><strong>在家卡鱼刺切忌用“土方”处理</strong></p><p><br></p><p>一般情况下鱼刺卡喉，只会是卡在浅表，在间接喉镜下即可取出，但是，病人在被鱼刺卡喉后，很少会立即到医院取出，而是会通过一些“土方”，如噎饭、喝<a href=\"http://www.360changshi.com/ys/tags/c490/\" target=\"_blank\">醋</a>或者用力咳出等，最常见的是噎饭。虽然有的人通过这些方式摆脱了鱼刺卡喉，但从医学的角度并不提倡这些做法，会弄巧成拙。因为强硬吞咽，若异物较锋利时，有可能刮伤周围粘膜，引出红肿甚至脓肿。</p><p>鱼刺卡喉时，如果一味的用土法将其吞下，可能让刺越刺越深，刺伤粘膜易引起感染。当喉部被鱼刺等物体卡住时，首先应稳定情绪，尽快到医院由专科医生检查取出，以免加重身体伤害。</p><p><br></p><p><strong>卡鱼刺用这些“土方”后患无穷</strong></p><p><br></p><p>吞饭团或菜团：非常危险。我们的咽喉、食管较为柔软。用饭团或菜团挤压尖锐的鱼刺，就如同钉钉子一样，会把鱼刺越挤越深，刺入黏膜内。同时，也可能把鱼刺推入咽喉部、食管，导致鱼刺更难取出。甚至，可能刺到血管或黏膜，造成损伤。</p><p>用力咳嗽：无济于事。鱼刺细小，受力面积也小，咳嗽的冲击气流难以把鱼刺咳出。</p><p>抠喉咙：很容易挖伤黏膜，损伤咽喉。而且，鱼刺位置较深时，并不容易随呕吐物排出。</p><p>喝<a href=\"http://www.360changshi.com/ys/tags/c490/\" target=\"_blank\">醋</a>：醋液只在喉咙停留几秒钟，就进到胃部了。醋液在咽喉部“匆匆而过”，对软化鱼刺作用甚微。</p>', 'admin', 'zhishi');
INSERT INTO `toutiao` VALUES ('27', 'http://localhost:4000/upload/1521526133081.jpg', '遇见心脏性猝死该如何快速抢救', '规律适量的运动有助于预防冠心病，而不恰当的剧烈运动，对于有冠心病高危因素的人群来说反而会增大发生心脏性猝死的风险。因为剧烈运动会加大心脏的负担，容易诱发心室颤动甚至导致猝死。', '0', '2018-03-20 14:09:37', '<p class=\"ql-align-center\"><br></p><p><img src=\"http://www.360changshi.com/uploadfile/2017/1102/20171102104239709.jpg\" alt=\"遇见心脏性猝死该如何快速抢救\"></p><p><strong>遇见心脏性猝死该如何快速抢救</strong></p><p>发生了心脏性猝死，患者身旁的人除了及时拨打120求救以外，如果还懂得正确的施救方法，那么患者就有“起死回生”的希望。正确的急救措施就是心肺复苏术，基本步骤有三个方面：气道通畅、人工呼吸、人工循环。</p><p>首先，要保持患者的气道通畅。将患者放在硬的平板上，取仰卧位，救护者双手将患者头部后仰，托住下颌关节，清除口腔异物，使患者气道保持通畅，使猝死时松弛的舌头不至于后倾堵塞气道。</p><p>第二，进行人工呼吸，维持患者的呼吸功能，以保证机体主要器官特别是大脑的有氧代谢，保护呼吸中枢功能，防止脑水肿。施救者一手捏紧患者鼻孔，深吸气后将气体口对口吹入患者口中，以每分钟20次的速度进行。</p><p>第三，进行人工循环的急救，主要包括胸外心脏按压、直流电除颤、静脉或心腔内注射药物3方面，家属为患者进行院外急救主要以胸外心脏按压为主。心脏按压的方法要正确，施救者两手掌重叠置于患者胸骨下部，两乳头连线的中点位置，保持主要按压力放在胸骨上，减少肋骨骨折的发生，按压时双臂伸直，用力要平稳均匀，按压力要足够大，需压低胸骨3~5厘米，然后突然放松，以60~70次/分的速率按压，连续按压不间断。按压有效后可触到患者颈动脉或股动脉搏动，看到患者散大的瞳孔开始缩小。</p><p>其中，人工呼吸和胸外心脏按压可以2/30的比例循环多次进行，并注意观察患者的反应。</p><p><strong>如何预防心脏性猝死</strong></p><p>1、戒烟限酒。吸烟者猝死的发生率要比非吸烟者高4倍以上，猝死的发生率与每天的吸烟数量成正比。同时，过度饮酒尤其是醉酒容易诱发室性心动过速和心室颤动，从而增加猝死的危险性。</p><p>2、远离“三高”。“三高”（高血压、高血脂、高血糖）<a href=\"http://www.360changshi.com/rq/\" rel=\"noopener noreferrer\" target=\"_blank\">人群</a>，要在专业医生的指导下积极进行治疗，尽快使血压、血脂、血糖达标。</p><p>3、饮食清淡。摄入过多的肉类，尤其是红肉，会增加发生猝死的风险。</p><p>4、规律运动。规律适量的运动有助于预防冠心病，而不恰当的剧烈运动，对于有冠心病高危因素的<a href=\"http://www.360changshi.com/rq/\" rel=\"noopener noreferrer\" target=\"_blank\">人群</a>来说反而会增大发生心脏性猝死的风险。因为剧烈运动会加大心脏的负担，容易诱发心室颤动甚至导致猝死。</p><p>5、控制体重。男性的体重高于理想体重20%时，其死亡风险会比一般人群高出25%；男性的体重高于理想体重30%时，其死亡风险比一般人群要高出42%。</p><p>6、<a href=\"http://www.360changshi.com/jk/shuimian/\" rel=\"noopener noreferrer\" target=\"_blank\">睡眠</a>充足。出现<a href=\"http://www.360changshi.com/jk/shuimian/\" rel=\"noopener noreferrer\" target=\"_blank\">睡眠</a>障碍时，一定要及时进行调整和治疗。研究发现，每天午睡30分钟，可使心肌梗塞的发病率和死亡风险降低30％。</p><p>7、学习<a href=\"http://www.360changshi.com/jk/jijiu/\" rel=\"noopener noreferrer\" target=\"_blank\">急救</a>。猝死发生后，有效的抢救时间非常短暂，仅为7-10分钟！猝死发生后，如果在2-4分钟内没有获得有效的治疗，大脑就会出现不可逆的损害，超过8分钟人就死亡了。当发现有人突然意识丧失而倒地时，应立即使其平卧，拍打其面颊并呼叫，同时用手触摸其颈动脉部位以确定有无搏动，若无反应且没有动脉搏动，应立即进行心肺复苏，同时拨打120<a href=\"http://www.360changshi.com/jk/jijiu/\" rel=\"noopener noreferrer\" target=\"_blank\">急救</a>电话。</p><p>8、预防<a href=\"http://www.360changshi.com/jk/tags/bm297/\" rel=\"noopener noreferrer\" target=\"_blank\">便秘</a>。<a href=\"http://www.360changshi.com/jk/tags/bm297/\" rel=\"noopener noreferrer\" target=\"_blank\">便秘</a>者用力排便时会引起血压升高，机体耗氧量增加，很容易导致脑出血、<a href=\"http://www.360changshi.com/jk/tags/xjt1879/\" rel=\"noopener noreferrer\" target=\"_blank\">心绞痛</a>和心梗，诱发猝死。</p><p><br></p><iframe class=\"ql-video\" frameborder=\"0\" allowfullscreen=\"true\" src=\"http://149.129.59.121/demo.mp4\"></iframe><p><br></p>', 'admin', 'zhishi');
