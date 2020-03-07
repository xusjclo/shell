/*
Navicat MySQL Data Transfer

Source Server         : 47.110.84.71-RDS
Source Server Version : 50726
Source Host           : 47.110.84.71:8081
Source Database       : ibmp

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2020-02-28 20:06:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for shelters_patient
-- ----------------------------
DROP TABLE IF EXISTS `shelters_patient`;
CREATE TABLE `shelters_patient` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `crt_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `crt_by` varchar(64) DEFAULT NULL COMMENT '创建人',
  `upd_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `upd_by` varchar(64) DEFAULT NULL COMMENT '更新人',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标记，逻辑删除',
  `patient_name` varchar(32) DEFAULT NULL COMMENT '患者姓名',
  `patient_sex` char(1) DEFAULT NULL COMMENT '患者性别',
  `patient_id_card` varchar(32) DEFAULT NULL COMMENT '患者身份证号',
  `patient_status` char(1) DEFAULT '3' COMMENT '状态 1在院 2出院 3暂未入院',
  `admission_time` datetime DEFAULT NULL COMMENT '入院时间',
  `bed_code` varchar(32) DEFAULT NULL COMMENT '床位编码',
  `discharge_time` datetime DEFAULT NULL COMMENT '出院时间',
  `background` varchar(255) DEFAULT NULL COMMENT '病人背景',
  `important` char(1) DEFAULT '2' COMMENT '是否重点人员 1是 2否',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=509 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='方舱管理--患者档案';

-- ----------------------------
-- Records of shelters_patient
-- ----------------------------
INSERT INTO `shelters_patient` VALUES ('377', '2020-02-19 01:39:11', null, null, null, null, '0', '余凤兰', '2', '420102195601040083', '1', '2019-02-17 20:00:00', '010801', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('378', '2020-02-19 01:39:11', null, null, null, null, '0', '朱毅侠', '1', '423030019561111331X', '1', '2019-02-17 20:00:00', '010701', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('379', '2020-02-19 01:39:12', null, null, null, null, '0', '刘玖清', '1', '420923197209224915', '1', '2019-02-17 20:00:00', '010702', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('380', '2020-02-19 01:39:12', null, null, null, null, '0', '袁国华', '2', '420923197603104962', '1', '2019-02-17 20:00:00', '010802', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('381', '2020-02-19 01:39:12', null, null, null, null, '0', '田贵荣', '2', '420121195812173141', '1', '2019-02-17 20:00:00', '010803', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('382', '2020-02-19 01:39:12', null, null, null, null, '0', '张琪', '2', '420102199402040820', '1', '2019-02-17 20:00:00', '010804', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('383', '2020-02-19 01:39:12', null, null, null, null, '0', '李忠霖', '1', '420102198312180315', '1', '2019-02-17 20:00:00', '010703', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('384', '2020-02-19 01:39:13', null, null, null, null, '0', '林瑜琦', '2', '台湾证身份证床码08919366', '1', '2019-02-17 20:00:00', '010805', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('385', '2020-02-19 01:39:13', null, null, null, null, '0', '邓政权', '1', '42012319740504415X', '1', '2019-02-17 20:00:00', '010704', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('386', '2020-02-19 01:39:13', null, null, null, null, '0', '姚荔', '2', '420104196404250441', '1', '2019-02-17 20:00:00', '010806', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('387', '2020-02-19 01:39:14', null, null, null, null, '0', '王玮', '2', '420102199902130624', '1', '2019-02-17 20:00:00', '010807', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('388', '2020-02-19 01:39:14', null, null, null, null, '0', '余启星', '1', '42010219610105001X', '1', '2019-02-17 20:00:00', '010705', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('389', '2020-02-19 01:39:14', null, null, null, null, '0', '朱良洪', '1', '420104194610273311', '1', '2019-02-17 20:00:00', '010706', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('390', '2020-02-19 01:39:15', null, null, null, null, '0', '马子岗', '1', '无对应身份证床', '1', '2019-02-17 20:00:00', '010707', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('391', '2020-02-19 01:39:15', null, null, null, null, '0', '马俊骅', '1', '420106195112310017', '1', '2019-02-17 20:00:00', '010708', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('392', '2020-02-19 01:39:15', null, null, null, null, '0', '董杨', '2', '420103195401212043', '1', '2019-02-17 20:00:00', '010808', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('393', '2020-02-19 01:39:15', null, null, null, null, '0', '陈世谷', '1', '420221195607186133', '1', '2019-02-17 20:00:00', '010709', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('394', '2020-02-19 01:39:16', null, null, null, null, '0', '胡成', '2', '421122199209307323', '1', '2019-02-17 20:00:00', '010809', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('395', '2020-02-19 01:39:16', null, null, null, null, '0', '詹黎', '1', '420102198408252010', '1', '2019-02-17 20:00:00', '010710', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('396', '2020-02-19 01:39:16', null, null, null, null, '0', '吕学珍', '2', '420103195302122827', '1', '2019-02-17 20:00:00', '010810', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('397', '2020-02-19 01:39:16', null, null, null, null, '0', '夏胜奇', '1', '420113199309164579', '1', '2019-02-17 20:00:00', '010711', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('398', '2020-02-19 01:39:17', null, null, null, null, '0', '黄海涛', '1', '441425197507106095', '1', '2019-02-17 20:00:00', '010712', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('399', '2020-02-19 01:39:17', null, null, null, null, '0', '钱瑾', '2', '42010219881231202x', '1', '2019-02-17 20:00:00', '010811', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('400', '2020-02-19 01:39:18', null, null, null, null, '0', '黄水梅', '2', '420123196401270040', '1', '2019-02-17 20:00:00', '010812', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('401', '2020-02-19 01:39:18', null, null, null, null, '0', '陈汉蓉', '2', '420103196412293744', '1', '2019-02-17 20:00:00', '010813', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('402', '2020-02-19 01:39:18', null, null, null, null, '0', '刘明', '1', '420105197608273611', '1', '2019-02-17 20:00:00', '010713', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('403', '2020-02-19 01:39:18', null, null, null, null, '0', '梅春丽', '2', '420123197604155928', '1', '2019-02-17 20:00:00', '010814', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('404', '2020-02-19 01:39:19', null, null, null, null, '0', '陈敬慧', '2', '420102199407220820', '1', '2019-02-17 20:00:00', '010815', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('405', '2020-02-19 01:39:19', null, null, null, null, '0', '陈修强', '1', '420102194910160316', '1', '2019-02-17 20:00:00', '010714', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('406', '2020-02-19 01:39:19', null, null, null, null, '0', '王细珍', '2', '420105195506141627', '1', '2019-02-17 20:00:00', '010816', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('407', '2020-02-19 01:39:19', null, null, null, null, '0', '刘嵩', '1', '420102197712060350', '1', '2019-02-17 20:00:00', '010715', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('408', '2020-02-19 01:39:19', null, null, null, null, '0', '郑伟伟', '1', '420623198209151515', '1', '2019-02-17 20:00:00', '010716', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('409', '2020-02-19 01:39:20', null, null, null, null, '0', '郭江华', '2', '420103197802194623', '1', '2019-02-17 20:00:00', '010817', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('410', '2020-02-19 01:39:20', null, null, null, null, '0', '刘艳萍', '2', '420121196012264322', '1', '2019-02-17 20:00:00', '010818', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('411', '2020-02-19 01:39:20', null, null, null, null, '0', '吕植隆', '1', '420102195212010315', '1', '2019-02-17 20:00:00', '010717', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('412', '2020-02-19 01:39:20', null, null, null, null, '0', '陈雪珍', '2', '420103195612144925', '1', '2019-02-17 20:00:00', '010819', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('413', '2020-02-19 01:39:21', null, null, null, null, '0', '张霞', '2', '420222197808198320', '1', '2019-02-17 20:00:00', '010820', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('414', '2020-02-19 01:39:21', null, null, null, null, '0', '史那', '2', '422302197711070349', '1', '2019-02-17 20:00:00', '010821', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('415', '2020-02-19 01:39:21', null, null, null, null, '0', '杨祖春', '2', '422428196102194244', '1', '2019-02-17 20:00:00', '010822', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('416', '2020-02-19 01:39:22', null, null, null, null, '0', '熊艺君', '2', '420103198110300821', '1', '2019-02-17 20:00:00', '010823', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('417', '2020-02-19 01:39:22', null, null, null, null, '0', '杨国强', '1', '413026197211110053', '1', '2019-02-17 20:00:00', '010718', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('418', '2020-02-19 01:39:23', null, null, null, null, '0', '李正兰', '2', '420112196808272428', '1', '2019-02-17 20:00:00', '010824', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('419', '2020-02-19 01:39:23', null, null, null, null, '0', '刘仙明', '2', '420103196002270822', '1', '2019-02-17 20:00:00', '010825', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('420', '2020-02-19 01:39:23', null, null, null, null, '0', '高友彩', '2', '420102196204061723', '1', '2019-02-17 20:00:00', '010826', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('421', '2020-02-19 01:39:24', null, null, null, null, '0', '袁静芳', '2', '420103197005294920', '1', '2019-02-17 20:00:00', '010827', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('422', '2020-02-19 01:39:24', null, null, null, null, '0', '许鹏', '1', '420103196906123710', '1', '2019-02-17 20:00:00', '010719', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('423', '2020-02-19 01:39:24', null, null, null, null, '0', '曹燎斌', '1', '420281198310174297', '1', '2019-02-17 20:00:00', '010720', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('424', '2020-02-19 01:39:24', null, null, null, null, '0', '杨志刚', '1', '420104197210042016', '1', '2019-02-17 20:00:00', '010721', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('425', '2020-02-19 01:39:24', null, null, null, null, '0', '方乐群', '2', '无对应身份证床', '1', '2019-02-17 20:00:00', '010828', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('426', '2020-02-19 01:39:25', null, null, null, null, '0', '太保良', '1', '无对应身份证床', '1', '2019-02-17 20:00:00', '010722', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('427', '2020-02-19 01:39:25', null, null, null, null, '0', '盛路玲', '2', '420102196905312062', '1', '2019-02-17 20:00:00', '010829', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('428', '2020-02-19 01:39:25', null, null, null, null, '0', '王友勇', '1', '429001197702134615', '1', '2019-02-17 20:00:00', '010723', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('429', '2020-02-19 01:39:25', null, null, null, null, '0', '邹红清', '1', '420111197506055610', '1', '2019-02-17 20:00:00', '010724', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('430', '2020-02-19 01:39:26', null, null, null, null, '0', '黄硕', '1', '420101198108087512', '1', '2019-02-17 20:00:00', '010725', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('431', '2020-02-19 01:39:26', null, null, null, null, '0', '廖传建', '1', '420700197402183398', '1', '2019-02-17 20:00:00', '010726', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('432', '2020-02-19 01:39:26', null, null, null, null, '0', '袁继德', '1', '420106195509034436', '1', '2019-02-17 20:00:00', '010727', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('433', '2020-02-19 01:39:26', null, null, null, null, '0', '夏健生', '1', '420104195612152710', '1', '2019-02-17 20:00:00', '010728', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('434', '2020-02-19 01:39:27', null, null, null, null, '0', '唐艳', '2', '422202198202040829', '1', '2019-02-17 20:00:00', '010830', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('435', '2020-02-19 01:39:27', null, null, null, null, '0', '江健', '1', '420101199107017031', '1', '2019-02-17 20:00:00', '010729', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('436', '2020-02-19 01:39:27', null, null, null, null, '0', '王洪亮', '1', '420300197408172057', '1', '2019-02-17 20:00:00', '010730', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('437', '2020-02-19 01:39:27', null, null, null, null, '0', '聂子牛', '1', '42130219910905001X', '1', '2019-02-17 20:00:00', '010731', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('438', '2020-02-19 01:39:27', null, null, null, null, '0', '陈骁', '1', '659001197806190315', '1', '2019-02-17 20:00:00', '010732', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('439', '2020-02-19 01:39:28', null, null, null, null, '0', '卢  凯', '1', '422302198612170736', '1', '2019-02-17 20:00:00', '010733', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('440', '2020-02-19 01:39:28', null, null, null, null, '0', '邬惠贞', '2', '420104195310100042', '1', '2019-02-17 20:00:00', '010831', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('441', '2020-02-19 01:39:28', null, null, null, null, '0', '张化兵', '1', '429006198001106067', '1', '2019-02-17 20:00:00', '010734', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('442', '2020-02-19 01:39:28', null, null, null, null, '0', '钱超', '1', '420101199211307012', '1', '2019-02-17 20:00:00', '010735', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('443', '2020-02-19 01:39:29', null, null, null, null, '0', '唐利红', '2', '429004197708202606', '1', '2019-02-17 20:00:00', '010832', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('444', '2020-02-19 01:39:29', null, null, null, null, '0', '陈荣华', '1', '421083196012105318', '1', '2019-02-17 20:00:00', '010736', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('445', '2020-02-19 01:39:30', null, null, null, null, '0', '蔡传能', '1', '420921198802065750', '1', '2019-02-17 20:00:00', '010737', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('446', '2020-02-19 01:39:30', null, null, null, null, '0', '李亦建', '1', '420121196610084313', '1', '2019-02-17 20:00:00', '010738', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('447', '2020-02-19 01:39:30', null, null, null, null, '0', '周文杨', '1', '420101199109077513', '1', '2019-02-17 20:00:00', '010739', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('448', '2020-02-19 01:39:31', null, null, null, null, '0', '徐敏萍', '2', '42202198409104244', '1', '2019-02-17 20:00:00', '010833', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('449', '2020-02-19 01:39:31', null, null, null, null, '0', '袁峰', '1', '420117199005256710', '1', '2019-02-17 20:00:00', '010740', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('450', '2020-02-19 01:39:31', null, null, null, null, '0', '陈宝海', '1', '413025196306244811', '1', '2019-02-17 20:00:00', '010741', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('451', '2020-02-19 01:39:32', null, null, null, null, '0', '闵婷', '2', '429004198911175927', '1', '2019-02-17 20:00:00', '010834', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('452', '2020-02-19 01:39:32', null, null, null, null, '0', '吴永霞', '2', '420121197004015128', '1', '2019-02-17 20:00:00', '010835', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('453', '2020-02-19 01:39:33', null, null, null, null, '0', '游博', '1', '420113198404230059', '1', '2019-02-17 20:00:00', '010742', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('454', '2020-02-19 01:39:33', null, null, null, null, '0', '李英', '2', '420112197005213349', '1', '2019-02-17 20:00:00', '010836', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('455', '2020-02-19 01:39:33', null, null, null, null, '0', '武德慧', '2', '420103196112221623', '1', '2019-02-17 20:00:00', '010837', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('456', '2020-02-19 01:39:34', null, null, null, null, '0', '邓刚', '1', '42010219800530121x', '1', '2019-02-17 20:00:00', '010743', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('457', '2020-02-19 01:39:34', null, null, null, null, '0', '盛明', '1', '420113198708230410', '1', '2019-02-17 20:00:00', '010744', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('458', '2020-02-19 01:39:34', null, null, null, null, '0', '肖凤英', '2', '420104195507220822', '1', '2019-02-17 20:00:00', '010838', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('459', '2020-02-19 01:39:35', null, null, null, null, '0', '陈能芳', '2', '422422196601255322', '1', '2019-02-17 20:00:00', '010839', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('460', '2020-02-19 01:39:35', null, null, null, null, '0', '杜英华', '1', '420121195701024311', '1', '2019-02-17 20:00:00', '010745', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('461', '2020-02-19 01:39:35', null, null, null, null, '0', '姚桂兰', '2', '420102195609253120', '1', '2019-02-17 20:00:00', '010840', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('462', '2020-02-19 01:39:35', null, null, null, null, '0', '蒋春梅', '2', '42032319730228002X', '1', '2019-02-17 20:00:00', '010841', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('463', '2020-02-19 01:39:36', null, null, null, null, '0', '李玉成', '1', '420101198301037031', '1', '2019-02-17 20:00:00', '010746', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('464', '2020-02-19 01:39:36', null, null, null, null, '0', '邹志雄', '1', '420113199110290018', '1', '2019-02-17 20:00:00', '010747', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('465', '2020-02-19 01:39:36', null, null, null, null, '0', '马力', '2', '342623198902256835', '1', '2019-02-17 20:00:00', '010842', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('466', '2020-02-19 01:39:36', null, null, null, null, '0', '李娟', '2', '420104198105260067', '1', '2019-02-17 20:00:00', '010843', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('467', '2020-02-19 01:39:37', null, null, null, null, '0', '刘巧云', '2', '420205198109237026', '1', '2019-02-17 20:00:00', '010844', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('468', '2020-02-19 01:39:37', null, null, null, null, '0', '连清萍', '2', '420106196206204041', '1', '2019-02-17 20:00:00', '011730', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('469', '2020-02-19 01:39:38', null, null, null, null, '0', '肖慎勇', '1', '420106196410230810', '1', '2019-02-17 20:00:00', '011827', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('470', '2020-02-19 01:39:38', null, null, null, null, '0', '乐智伟', '1', '420123198101021738', '1', '2019-02-17 20:00:00', '011828', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('471', '2020-02-19 01:39:38', null, null, null, null, '0', '张桂珍', '2', '420922196404040248', '1', '2019-02-17 20:00:00', '011731', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('472', '2020-02-19 01:39:39', null, null, null, null, '0', '田李建', '1', '130203197910114594', '1', '2019-02-17 20:00:00', '011829', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('473', '2020-02-19 01:39:39', null, null, null, null, '0', '程林', '1', '340802198104120615', '1', '2019-02-17 20:00:00', '011830', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('474', '2020-02-19 01:39:39', null, null, null, null, '0', '周吕燕', '2', '420111195706251320', '1', '2019-02-17 20:00:00', '011732', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('475', '2020-02-19 01:39:40', null, null, null, null, '0', '蔡丽琴', '2', '421125198611302023', '1', '2019-02-17 20:00:00', '011733', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('476', '2020-02-19 01:39:40', null, null, null, null, '0', '李文莉', '2', '420106196702162821', '1', '2019-02-17 20:00:00', '011734', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('477', '2020-02-19 01:39:40', null, null, null, null, '0', '刘足连', '2', '42092119770917304X', '1', '2019-02-17 20:00:00', '011735', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('478', '2020-02-19 01:39:41', null, null, null, null, '0', '沈瑞强', '1', '42220219601004181X', '1', '2019-02-17 20:00:00', '011831', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('479', '2020-02-19 01:39:41', null, null, null, null, '0', '苏镜', '1', '420122197911252430', '1', '2019-02-17 20:00:00', '011832', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('480', '2020-02-19 01:39:41', null, null, null, null, '0', '徐传玲', '2', '420111196006031028', '1', '2019-02-17 20:00:00', '011736', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('481', '2020-02-19 01:39:42', null, null, null, null, '0', '张麦烨', '1', '421124198503132032', '1', '2019-02-17 20:00:00', '011833', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('482', '2020-02-19 01:39:42', null, null, null, null, '0', '刘玉荣', '2', '421022198402265161', '1', '2019-02-17 20:00:00', '011737', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('483', '2020-02-19 01:39:42', null, null, null, null, '0', '王应发', '1', '420124197608280896', '1', '2019-02-17 20:00:00', '011834', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('484', '2020-02-19 01:39:43', null, null, null, null, '0', '李凯', '1', '412326198605104836', '1', '2019-02-17 20:00:00', '011835', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('485', '2020-02-19 01:39:43', null, null, null, null, '0', '叶丽芳', '2', '422432196301036526', '1', '2019-02-17 20:00:00', '011738', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('486', '2020-02-19 01:39:43', null, null, null, null, '0', '王文杰', '1', '420106196710314477', '1', '2019-02-17 20:00:00', '011836', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('487', '2020-02-19 01:39:44', null, null, null, null, '0', '岳秀提', '2', '410402195102100086', '1', '2019-02-17 20:00:00', '011739', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('488', '2020-02-19 01:39:44', null, null, null, null, '0', '罗新生', '1', '420122195302163214', '1', '2019-02-17 20:00:00', '011837', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('489', '2020-02-19 01:39:44', null, null, null, null, '0', '刘能贵', '1', '420115197402052816', '1', '2019-02-17 20:00:00', '011838', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('490', '2020-02-19 01:39:44', null, null, null, null, '0', '黄文菊', '2', '420122197601212847', '1', '2019-02-17 20:00:00', '011740', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('491', '2020-02-19 01:39:45', null, null, null, null, '0', '孙万银', '1', '420122195707182851', '1', '2019-02-17 20:00:00', '011839', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('492', '2020-02-19 01:39:45', null, null, null, null, '0', '蒋石清', '1', '42243119570715293X', '1', '2019-02-17 20:00:00', '011840', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('493', '2020-02-19 01:39:46', null, null, null, null, '0', '周芸', '2', '42102219840404002X', '1', '2019-02-17 20:00:00', '011741', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('494', '2020-02-19 01:39:46', null, null, null, null, '0', '李国香', '2', '420111195407171020', '1', '2019-02-17 20:00:00', '011742', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('495', '2020-02-19 01:39:46', null, null, null, null, '0', '胡昌林', '1', '42012219571227243X', '1', '2019-02-17 20:00:00', '011841', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('496', '2020-02-19 01:39:47', null, null, null, null, '0', '赵克勤', '2', '420122196306031643', '1', '2019-02-17 20:00:00', '011743', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('497', '2020-02-19 01:39:47', null, null, null, null, '0', '刘广芹', '2', '230105196004193020', '1', '2019-02-17 20:00:00', '011744', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('498', '2020-02-19 01:39:47', null, null, null, null, '0', '华霖', '1', '420922198606290033', '1', '2019-02-17 20:00:00', '011842', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('499', '2020-02-19 01:39:47', null, null, null, null, '0', '彭运枝', '2', '420111196005140521', '1', '2019-02-17 20:00:00', '011745', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('500', '2020-02-19 01:39:48', null, null, null, null, '0', '吴立常', '1', '511022195609122019', '1', '2019-02-17 20:00:00', '011843', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('502', '2020-02-19 01:39:48', null, null, null, null, '0', '鲍爱枝', '2', '420111196305101049', '1', '2019-02-17 20:00:00', '011144', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('503', '2020-02-19 01:39:48', null, null, null, null, '0', '叶玉龙', '1', '420122197501072832', '1', '2019-02-17 20:00:00', '011235', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('504', '2020-02-19 01:39:49', null, null, null, null, '0', '李万刚', '1', '21078219900924403X', '1', '2019-02-17 20:00:00', '011236', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('505', '2020-02-19 01:39:49', null, null, null, null, '0', '乐汉枝', '2', '420123198312100524', '1', '2019-02-17 20:00:00', '011146', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('506', '2020-02-19 01:39:49', null, null, null, null, '0', '朱志元', '1', '420104195309040011', '1', '2019-02-17 20:00:00', '011237', null, null, '2');
INSERT INTO `shelters_patient` VALUES ('507', '2020-02-19 01:39:49', null, null, null, null, '0', '杨明桂', '1', '420923195107180916', '1', '2019-02-17 20:00:00', '011238', null, null, '1');
INSERT INTO `shelters_patient` VALUES ('508', '2020-02-27 21:12:09', null, null, null, null, '0', '张三丰', '1', '421127199010100331', '2', '2020-02-27 21:13:05', '010121', '2020-02-27 21:13:21', '无', '2');
