/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : share_develop

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-12-16 17:02:10
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '登入名称',
  `password` varchar(32) NOT NULL COMMENT '登入密码',
  `ip` varchar(20) NOT NULL DEFAULT '' COMMENT '登入IP',
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否锁定-1锁定',
  `real_name` varchar(20) NOT NULL COMMENT '真实姓名',
  `locked_reason` varchar(80) NOT NULL DEFAULT '' COMMENT '锁定原因',
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属角色',
  `operation` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否能删除',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `cellphone` varchar(16) DEFAULT NULL COMMENT '手机号',
  `totp` tinyint(4) DEFAULT '0' COMMENT '绑定TOTP 1:绑定,0:解绑',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='后台管理帐号';

-- ----------------------------
-- Records of admin
-- ----------------------------

-- ----------------------------
-- Table structure for `resource`
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '名称',
  `icon` varchar(20) NOT NULL DEFAULT '' COMMENT '图标',
  `url` varchar(50) NOT NULL DEFAULT '' COMMENT 'URL地址',
  `enable` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `category` varchar(20) NOT NULL DEFAULT 'MENU' COMMENT '分类-MENU FUNCTION',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父资源',
  `shortcut` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '快捷菜单-1:是',
  `sort` int(10) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=386 DEFAULT CHARSET=utf8 COMMENT='资源-菜单 功能';

-- ----------------------------
-- Records of resource
-- ----------------------------

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '名称',
  `remark` varchar(100) NOT NULL DEFAULT '' COMMENT '描述',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态-0禁用1启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
-- Records of role
-- ----------------------------

-- ----------------------------
-- Table structure for `role_resource`
-- ----------------------------
DROP TABLE IF EXISTS `role_resource`;
CREATE TABLE `role_resource` (
  `role_id` int(10) unsigned NOT NULL,
  `resource_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色资源权限';

-- ----------------------------
-- Records of role_resource
-- ----------------------------
