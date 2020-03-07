/*
Navicat MySQL Data Transfer

Source Server         : 47.110.84.71-RDS
Source Server Version : 50726
Source Host           : 47.110.84.71:8081
Source Database       : ibmp

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2020-02-28 20:06:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for shelters_compartment
-- ----------------------------
DROP TABLE IF EXISTS `shelters_compartment`;
CREATE TABLE `shelters_compartment` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `isDeleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除标志 0未删除1删除',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `create_user` varchar(255) DEFAULT NULL COMMENT '创建人',
  `update_user` varchar(255) DEFAULT NULL COMMENT '修改人',
  `compartment_code` varchar(32) DEFAULT NULL COMMENT '舱区code',
  `compartment_name` varchar(32) DEFAULT NULL COMMENT '舱区名称',
  `cabin_code` varchar(32) DEFAULT '01' COMMENT '所属舱code(区分01光谷舱，江夏舱)',
  `compartment_id` varchar(32) DEFAULT NULL COMMENT '舱区编号（存放cabin_code与compartment_code拼接）',
  `sort_field` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='舱区表';

-- ----------------------------
-- Records of shelters_compartment
-- ----------------------------
INSERT INTO `shelters_compartment` VALUES ('20', '0', null, null, null, null, '01', '01舱', '01', '0101', '1');
INSERT INTO `shelters_compartment` VALUES ('21', '0', null, null, null, null, '02', '02舱', '01', '0102', '2');
INSERT INTO `shelters_compartment` VALUES ('22', '0', null, null, null, null, '03', '03舱', '01', '0103', '3');
INSERT INTO `shelters_compartment` VALUES ('23', '0', null, null, null, null, '04', '04舱', '01', '0104', '4');
INSERT INTO `shelters_compartment` VALUES ('24', '0', null, null, null, null, '05', '05舱', '01', '0105', '5');
INSERT INTO `shelters_compartment` VALUES ('25', '0', null, null, null, null, '06', '06舱', '01', '0106', '6');
INSERT INTO `shelters_compartment` VALUES ('26', '0', null, null, null, null, '07', '07舱', '01', '0107', '7');
INSERT INTO `shelters_compartment` VALUES ('27', '0', null, null, null, null, '08', '08舱', '01', '0108', '8');
INSERT INTO `shelters_compartment` VALUES ('28', '0', null, null, null, null, '09', '09舱', '01', '0109', '9');
INSERT INTO `shelters_compartment` VALUES ('29', '0', null, null, null, null, '10', '10舱', '01', '0110', '10');
INSERT INTO `shelters_compartment` VALUES ('30', '0', null, null, null, null, '11', '11舱', '01', '0111', '11');
INSERT INTO `shelters_compartment` VALUES ('31', '0', null, null, null, null, '12', '12舱', '01', '0112', '12');
INSERT INTO `shelters_compartment` VALUES ('32', '0', null, null, null, null, '13', '13舱', '01', '0113', '13');
INSERT INTO `shelters_compartment` VALUES ('33', '0', null, null, null, null, '14', '14舱', '01', '0114', '14');
INSERT INTO `shelters_compartment` VALUES ('34', '0', null, null, null, null, '15', '15舱', '01', '0115', '15');
INSERT INTO `shelters_compartment` VALUES ('35', '0', null, null, null, null, '16', '16舱', '01', '0116', '16');
INSERT INTO `shelters_compartment` VALUES ('36', '0', null, null, null, null, '17', '17舱', '01', '0117', '17');
INSERT INTO `shelters_compartment` VALUES ('37', '0', null, null, null, null, '18', '18舱', '01', '0118', '18');
INSERT INTO `shelters_compartment` VALUES ('38', '0', null, null, null, null, '19', '19舱', '01', '0119', '19');
INSERT INTO `shelters_compartment` VALUES ('39', '0', null, null, null, null, '20', '20舱', '01', '0120', '20');
INSERT INTO `shelters_compartment` VALUES ('40', '0', null, null, null, null, '21', '21舱', '01', '0121', '21');
INSERT INTO `shelters_compartment` VALUES ('41', '1', null, null, null, null, '01', 'XXX', '01', '0101', '1');
INSERT INTO `shelters_compartment` VALUES ('42', '1', null, null, null, null, '02', '01舱', '01', '0102', '1');
