/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50542
 Source Host           : localhost
 Source Database       : mytest

 Target Server Type    : MySQL
 Target Server Version : 50542
 File Encoding         : utf-8

 Date: 05/03/2018 20:23:36 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nick_name` varchar(255) NOT NULL,
  `mp_open_id` varchar(100) DEFAULT NULL,
  `pass_word` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `reg_time` timestamp NOT NULL DEFAULT '2010-01-01 00:00:00',
  `update_time` timestamp NOT NULL DEFAULT '2010-01-01 00:00:00',
  `is_valid` bit(1) DEFAULT b'1',
  `is_delete` bit(1) DEFAULT b'0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1525675983792 DEFAULT CHARSET=utf8;

/*
*保险信息表
*/
CREATE TABLE `t_insuranceinfo` (
  `key_id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `main_photo` varchar(255) DEFAULT NULL,
  `insurance_detail` text COMMENT '保单详情事项',
  `insurance_fee` text COMMENT '保费详情',
  `insurance_feature` text COMMENT '保险特色',
  `claims_process` text COMMENT '理赔流程',
  `notice` text COMMENT '投保须知',
  `service_agreement` text COMMENT '服务协议',
  `insurance_terms` text COMMENT '服务条款',
  `pay_type` varchar(255) DEFAULT NULL COMMENT '支持定投方式0：日投 1：周投 2：月投 3：年投',
  `institution_rebates` int(11) unsigned DEFAULT '0' COMMENT '机构返利',
  `doctor_rebates` int(11) unsigned DEFAULT '0' COMMENT '医生返利',
  `user_rebates` int(11) unsigned DEFAULT '0' COMMENT '用户返利',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_time` datetime DEFAULT '2010-01-01 00:00:00' COMMENT '创建时间',
  `is_valid` bit(1) DEFAULT b'0' COMMENT '是否开启',
  `is_sale` bit(1) DEFAULT b'0' COMMENT '是否开始购买',
  `is_delete` bit(1) DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`key_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
