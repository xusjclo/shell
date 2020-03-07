/*
Navicat MySQL Data Transfer

Source Server         : 47.110.84.71-RDS
Source Server Version : 50726
Source Host           : 47.110.84.71:8081
Source Database       : ibmp

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2020-02-28 20:06:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for shelters_user
-- ----------------------------
DROP TABLE IF EXISTS `shelters_user`;
CREATE TABLE `shelters_user` (
  `id` varchar(100) NOT NULL COMMENT '主键，uuid',
  `user_id` varchar(100) NOT NULL COMMENT '登录id',
  `user_name` varchar(100) DEFAULT NULL COMMENT '用户名称',
  `user_type` varchar(100) DEFAULT NULL COMMENT '用户类型 0:超级系统管理员 1:普通用户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `belong_organization` varchar(50) DEFAULT NULL COMMENT '所属单位',
  `is_enable` varchar(1) DEFAULT NULL COMMENT '启用状态，Y有效，N无效',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `del_flag` varchar(1) NOT NULL DEFAULT '0' COMMENT '删除标志 0:正常 1:删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='方舱--用户表';

-- ----------------------------
-- Records of shelters_user
-- ----------------------------
INSERT INTO `shelters_user` VALUES ('1', 'admin', '管理员', '0', 'smcaiot@123', null, 'Y', null, '2020-02-18 18:19:35', '0');
INSERT INTO `shelters_user` VALUES ('55a31bed-f67d-4e85-a32e-3711d8ab4ec2', '123456', '李培歌', '1', '123456', '', 'Y', '2020-02-18 21:50:54', '2020-02-18 21:51:44', '0');
INSERT INTO `shelters_user` VALUES ('69ba005b-d079-4901-a740-d9fc6a50125e', 'gengxuping', '耿耿', '1', '123456', '单位', 'Y', '2020-02-18 22:46:26', '2020-02-18 23:02:17', '0');
