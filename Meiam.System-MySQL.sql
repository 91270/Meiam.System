/*
 Navicat Premium Data Transfer

 Source Server         : demo.meiam.top
 Source Server Type    : MySQL
 Source Server Version : 50649
 Source Host           : demo.meiam.top:3306
 Source Schema         : MeiamSystem

 Target Server Type    : MySQL
 Target Server Version : 50649
 File Encoding         : 65001

 Date: 03/08/2021 17:28:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for Base_Company
-- ----------------------------
DROP TABLE IF EXISTS `Base_Company`;
CREATE TABLE `Base_Company`  (
  `ID` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'UUID',
  `CompanyNo` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司编码',
  `CompanyName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司名称',
  `Remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `Enable` bit(1) NOT NULL DEFAULT b'1' COMMENT '是否启用',
  `CreateTime` datetime NOT NULL COMMENT '创建时间',
  `UpdateTime` datetime NOT NULL COMMENT '最后更新时间',
  `CreateID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人编码',
  `CreateName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `UpdateID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新人编码',
  `UpdateName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新人',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公司定义' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of Base_Company
-- ----------------------------
INSERT INTO `Base_Company` VALUES ('1E910EDA-534E-469D-9B12-6C1DEF56A706', '1001', '最赚钱的公司', NULL, b'1', '2020-06-20 10:50:32', '2020-06-20 10:50:32', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Base_Company` VALUES ('74887F03-4422-4851-8802-B3057ACC5F30', '1002', '最赔钱的公司', NULL, b'1', '2020-06-20 10:50:44', '2020-06-20 10:50:44', '9999', '系统管理员', '9999', '系统管理员');

-- ----------------------------
-- Table structure for Base_Equipment
-- ----------------------------
DROP TABLE IF EXISTS `Base_Equipment`;
CREATE TABLE `Base_Equipment`  (
  `ID` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'UID',
  `EquipNo` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设备编号',
  `EquipName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '设备名称',
  `Remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `Enable` bit(1) NOT NULL DEFAULT b'1' COMMENT '是否启用',
  `CreateTime` datetime NOT NULL COMMENT '创建时间',
  `UpdateTime` datetime NOT NULL COMMENT '最后更新时间',
  `CreateID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人编码',
  `CreateName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `UpdateID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新人编码',
  `UpdateName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新人',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '设备定义' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of Base_Equipment
-- ----------------------------

-- ----------------------------
-- Table structure for Base_Factory
-- ----------------------------
DROP TABLE IF EXISTS `Base_Factory`;
CREATE TABLE `Base_Factory`  (
  `ID` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'UUID',
  `FactoryNo` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工厂编码',
  `FactoryName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工厂名称',
  `Remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `Enable` bit(1) NOT NULL DEFAULT b'1' COMMENT '是否启用',
  `CreateTime` datetime NOT NULL COMMENT '创建时间',
  `UpdateTime` datetime NOT NULL COMMENT '最后更新时间',
  `CreateID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人编码',
  `CreateName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `UpdateID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新人编码',
  `UpdateName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新人',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '工厂定义' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of Base_Factory
-- ----------------------------
INSERT INTO `Base_Factory` VALUES ('21A0F4ED-FA2E-4786-93DC-0222F54B4286', '2002', '华南二期', NULL, b'1', '2020-06-20 10:51:35', '2020-06-20 10:51:35', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Base_Factory` VALUES ('AFE35E8D-83B4-48A3-889F-30A1BC07AFB4', '2001', '华西一期', NULL, b'1', '2020-06-20 10:51:15', '2020-06-20 10:51:15', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Base_Factory` VALUES ('CA97D772-FFD2-484C-AE53-22A6C8B095A2', '2003', '华东三期', NULL, b'1', '2020-06-20 10:51:51', '2020-06-20 10:51:51', '9999', '系统管理员', '9999', '系统管理员');

-- ----------------------------
-- Table structure for Base_ProductLine
-- ----------------------------
DROP TABLE IF EXISTS `Base_ProductLine`;
CREATE TABLE `Base_ProductLine`  (
  `ID` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'UUID',
  `LineNo` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '生产线编码',
  `LineName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '生产线名称',
  `Remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `Enable` bit(1) NOT NULL DEFAULT b'1' COMMENT '是否启用',
  `CreateTime` datetime NOT NULL COMMENT '创建时间',
  `UpdateTime` datetime NOT NULL COMMENT '最后更新时间',
  `CreateID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人编码',
  `CreateName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `UpdateID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新人编码',
  `UpdateName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新人',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产线定义' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of Base_ProductLine
-- ----------------------------

-- ----------------------------
-- Table structure for Base_ProductProcess
-- ----------------------------
DROP TABLE IF EXISTS `Base_ProductProcess`;
CREATE TABLE `Base_ProductProcess`  (
  `ID` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'UUID',
  `ProcessNo` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工序编码',
  `ProcessName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工序名称',
  `Remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `Enable` bit(1) NOT NULL DEFAULT b'1' COMMENT '是否启用',
  `CreateTime` datetime NOT NULL COMMENT '创建时间',
  `UpdateTime` datetime NOT NULL COMMENT '最后更新时间',
  `CreateID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人编码',
  `CreateName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `UpdateID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新人编码',
  `UpdateName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新人',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '工序定义' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of Base_ProductProcess
-- ----------------------------
INSERT INTO `Base_ProductProcess` VALUES ('9E4C1AD4-40AB-4D93-8EE1-B07688360228', '20010101', '铸焊浇筑', NULL, b'1', '2020-06-20 10:54:34', '2020-06-20 10:55:19', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Base_ProductProcess` VALUES ('9FCB9642-CE69-43C5-9D71-400F0B1D64A1', '20010102', '铸焊锻造', NULL, b'1', '2020-06-20 10:54:58', '2020-06-20 10:54:58', '9999', '系统管理员', '9999', '系统管理员');

-- ----------------------------
-- Table structure for Base_WorkShop
-- ----------------------------
DROP TABLE IF EXISTS `Base_WorkShop`;
CREATE TABLE `Base_WorkShop`  (
  `ID` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'UUID',
  `WorkShopNo` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车间编码',
  `WorkShopName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车间名称',
  `Remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `Enable` bit(1) NOT NULL DEFAULT b'1' COMMENT '是否启用',
  `CreateTime` datetime NOT NULL COMMENT '创建时间',
  `UpdateTime` datetime NOT NULL COMMENT '最后更新时间',
  `CreateID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人编码',
  `CreateName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `UpdateID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新人编码',
  `UpdateName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新人',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '车间定义' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of Base_WorkShop
-- ----------------------------
INSERT INTO `Base_WorkShop` VALUES ('06EE680E-8DDF-4557-BA37-52416E3FA197', '200202', '极板车间', NULL, b'1', '2020-06-20 10:53:55', '2020-06-20 10:53:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Base_WorkShop` VALUES ('1D524B11-DBF0-475F-8D95-D1F35515174A', '200102', '极板车间', NULL, b'1', '2020-06-20 10:53:16', '2020-06-20 10:53:16', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Base_WorkShop` VALUES ('82AE52A6-00F2-420C-AB28-1B2E227D6122', '200101', '铸焊车间', NULL, b'1', '2020-06-20 10:52:54', '2020-06-20 10:52:54', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Base_WorkShop` VALUES ('8EE174C5-4430-4196-AEF8-4D72EF69C6C3', '200201', '铸焊车间', NULL, b'1', '2020-06-20 10:53:38', '2020-06-20 10:53:38', '9999', '系统管理员', '9999', '系统管理员');

-- ----------------------------
-- Table structure for Sys_DataRelation
-- ----------------------------
DROP TABLE IF EXISTS `Sys_DataRelation`;
CREATE TABLE `Sys_DataRelation`  (
  `ID` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'UID',
  `Form` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '来源ID',
  `To` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '对应ID',
  `Type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据关系' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of Sys_DataRelation
-- ----------------------------
INSERT INTO `Sys_DataRelation` VALUES ('236E2C08-3A87-4F71-BC2B-4B46099429AD', '21A0F4ED-FA2E-4786-93DC-0222F54B4286', '1E910EDA-534E-469D-9B12-6C1DEF56A706', 'Factory_To_Company');
INSERT INTO `Sys_DataRelation` VALUES ('6B9F5197-BFF0-4677-9813-BFAB0ACD31B2', '82AE52A6-00F2-420C-AB28-1B2E227D6122', 'AFE35E8D-83B4-48A3-889F-30A1BC07AFB4', 'WorkShop_To_Factory');
INSERT INTO `Sys_DataRelation` VALUES ('70E5F36F-BE18-406F-9319-FF49CF4C66DE', 'CA97D772-FFD2-484C-AE53-22A6C8B095A2', '74887F03-4422-4851-8802-B3057ACC5F30', 'Factory_To_Company');
INSERT INTO `Sys_DataRelation` VALUES ('84E788F1-C13B-4F47-84C2-B71772D3152C', '9FCB9642-CE69-43C5-9D71-400F0B1D64A1', '82AE52A6-00F2-420C-AB28-1B2E227D6122', 'Process_To_WorkShop');
INSERT INTO `Sys_DataRelation` VALUES ('8BECD5B4-2897-44A9-B6FB-E3F2B14AC422', '9E4C1AD4-40AB-4D93-8EE1-B07688360228', '82AE52A6-00F2-420C-AB28-1B2E227D6122', 'Process_To_WorkShop');
INSERT INTO `Sys_DataRelation` VALUES ('BC944632-4825-41F1-AABF-33A3AEF44ACE', '1D524B11-DBF0-475F-8D95-D1F35515174A', 'AFE35E8D-83B4-48A3-889F-30A1BC07AFB4', 'WorkShop_To_Factory');
INSERT INTO `Sys_DataRelation` VALUES ('EC41BA6C-14A7-4776-B8C7-832B934B2BC0', 'AFE35E8D-83B4-48A3-889F-30A1BC07AFB4', '1E910EDA-534E-469D-9B12-6C1DEF56A706', 'Factory_To_Company');
INSERT INTO `Sys_DataRelation` VALUES ('EFFCFE70-0402-4FD7-BC8E-CAD15AB71D60', '8EE174C5-4430-4196-AEF8-4D72EF69C6C3', '21A0F4ED-FA2E-4786-93DC-0222F54B4286', 'WorkShop_To_Factory');
INSERT INTO `Sys_DataRelation` VALUES ('F89CC5FC-726C-4BB2-9C7F-4E1D6562A71F', '06EE680E-8DDF-4557-BA37-52416E3FA197', '21A0F4ED-FA2E-4786-93DC-0222F54B4286', 'WorkShop_To_Factory');

-- ----------------------------
-- Table structure for Sys_Logs
-- ----------------------------
DROP TABLE IF EXISTS `Sys_Logs`;
CREATE TABLE `Sys_Logs`  (
  `ID` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `Logger` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志类型',
  `Level` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志等级',
  `Url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志来源',
  `Host` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主机地址',
  `Method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求方式',
  `UserAgent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '浏览器标识',
  `Cookie` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Cookie',
  `QueryString` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'URL参数',
  `Body` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '请求内容',
  `Message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '日志信息',
  `Elapsed` int(11) NULL DEFAULT NULL COMMENT '请求耗时',
  `CreateTime` datetime(6) NULL DEFAULT NULL COMMENT '创建时间',
  `IPAddress` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户来源',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '日志管理' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of Sys_Logs
-- ----------------------------

-- ----------------------------
-- Table structure for Sys_Menu
-- ----------------------------
DROP TABLE IF EXISTS `Sys_Menu`;
CREATE TABLE `Sys_Menu`  (
  `ID` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'UUID',
  `Type` int(11) NOT NULL DEFAULT 0 COMMENT '菜单类型',
  `Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `Icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `Path` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路由地址',
  `Component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `SortIndex` int(11) NOT NULL COMMENT '默认排序',
  `ViewPower` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '浏览权限',
  `ParentUID` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上级菜单',
  `Remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `System` int(11) NOT NULL COMMENT '可用系统(0-PC，1-Wx)',
  `isFrame` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否外链',
  `Hidden` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否可见',
  `KeepAlive` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否缓存',
  `CreateTime` datetime NOT NULL COMMENT '创建时间',
  `UpdateTime` datetime NOT NULL COMMENT '最后更新时间',
  `CreateID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人编码',
  `CreateName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `UpdateID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新人编码',
  `UpdateName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新人',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统菜单' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of Sys_Menu
-- ----------------------------
INSERT INTO `Sys_Menu` VALUES ('25041C8B-A18C-4D7C-9212-EB60F0EB7100', 1, '工序定义', 'app', 'productprocess', 'basic/productprocess/index', 4, 'PRIV_PRODUCTPROCESS_VIEW', 'A2EDE2E3-CCC5-4A88-89A1-A84CDAF35DEE', NULL, 0, b'0', b'0', b'0', '2020-06-01 11:01:20', '2020-06-19 16:12:01', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Menu` VALUES ('30580EEA-A24D-4B52-B35B-E6489080705D', 1, '字典定义', 'doc', 'options', 'system/options/index', 3, 'PRIV_OPTIONS_VIEW', '651BBACF-7AB6-457C-88CC-BF4223B2D390', NULL, 0, b'0', b'0', b'1', '2020-06-01 21:43:49', '2020-06-06 08:53:27', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Menu` VALUES ('54F26B7C-1958-42D5-B5CA-0ED22A3976F7', 1, '权限定义', 'validCode', 'powers', 'system/powers/index', 2, 'PRIV_POWERS_VIEW', '651BBACF-7AB6-457C-88CC-BF4223B2D390', NULL, 0, b'0', b'0', b'1', '2020-06-01 11:03:03', '2020-06-13 16:28:14', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Menu` VALUES ('59081379-67BA-459B-B5F3-EB5EED51BB60', 1, '在线统计', 'international', 'online', 'system/online/index', 5, 'PRIV_ONLINE_VIEW', '651BBACF-7AB6-457C-88CC-BF4223B2D390', NULL, 0, b'0', b'0', b'0', '2020-06-11 19:20:46', '2020-06-11 21:42:25', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Menu` VALUES ('651BBACF-7AB6-457C-88CC-BF4223B2D390', 0, '系统管理', 'system1', 'system', NULL, 99, NULL, NULL, NULL, 0, b'0', b'0', b'0', '2020-06-05 17:20:34', '2020-06-05 17:20:41', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Menu` VALUES ('6F3EEB92-7AB6-4E81-AE48-135A195EAC4D', 1, '用户角色', 'people', 'roleusers', 'users/roleusers/index', 4, 'PRIV_ROLEUSERS_VIEW', '7B670227-DE9C-4457-8AA3-D14295B07530', NULL, 0, b'0', b'0', b'0', '2020-06-04 16:14:25', '2020-06-09 08:42:10', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Menu` VALUES ('6F8FFE5E-EE0E-4A36-B96F-5F48875CFC85', 1, '角色定义', 'role', 'roles', 'users/roles/index', 2, 'PRIV_ROLES_VIEW', '7B670227-DE9C-4457-8AA3-D14295B07530', NULL, 0, b'0', b'0', b'1', '2020-05-31 11:20:55', '2020-06-14 01:19:41', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Menu` VALUES ('77893F2F-F8EB-4A75-B7B9-CBD28B994973', 1, '公司定义', 'app', 'company', 'basic/company/index', 1, 'PRIV_COMPANY_VIEW', 'A2EDE2E3-CCC5-4A88-89A1-A84CDAF35DEE', NULL, 0, b'0', b'0', b'0', '2020-05-31 11:20:55', '2020-06-19 16:11:29', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Menu` VALUES ('7B3B2EB8-45BB-458D-B4A8-0E1442531316', 1, '设备定义', 'app', 'equipment', 'basic/equipment/index', 6, 'PRIV_EQUIPMENT_VIEW', 'A2EDE2E3-CCC5-4A88-89A1-A84CDAF35DEE', NULL, 0, b'0', b'0', b'0', '2020-06-16 12:59:13', '2020-06-19 16:12:47', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Menu` VALUES ('7B670227-DE9C-4457-8AA3-D14295B07530', 0, '用户管理', 'peoples', 'users', NULL, 98, NULL, NULL, NULL, 0, b'0', b'0', b'0', '2020-06-09 08:16:22', '2020-06-09 08:16:30', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Menu` VALUES ('8C8F01CC-A34C-48A8-9774-01123161916B', 1, '系统日志', 'log', 'logger', 'system/logger/index', 4, 'PRIV_LOGS_VIEW', '651BBACF-7AB6-457C-88CC-BF4223B2D390', NULL, 0, b'0', b'0', b'0', '2020-06-11 13:34:51', '2020-06-11 21:42:49', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Menu` VALUES ('93D4E4F0-11C4-4C4C-B838-05CF3A565A81', 1, '个人中心', 'Steve-Jobs', 'center', 'users/center/index', 6, NULL, '7B670227-DE9C-4457-8AA3-D14295B07530', NULL, 0, b'0', b'1', b'0', '2020-06-16 22:00:17', '2020-06-16 22:00:17', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Menu` VALUES ('A2EDE2E3-CCC5-4A88-89A1-A84CDAF35DEE', 0, '基础信息', 'tree', 'basic', NULL, 1, NULL, NULL, NULL, 0, b'0', b'0', b'0', '2020-05-31 11:20:55', '2020-06-06 08:51:05', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Menu` VALUES ('A86D8C2E-87CB-4BE2-B55D-A64165D1C3FE', 1, '角色权限', 'permission', 'rolepowers', 'users/rolepowers/index', 3, 'PRIV_ROLEPOWERS_VIEW', '7B670227-DE9C-4457-8AA3-D14295B07530', NULL, 0, b'0', b'0', b'1', '2020-06-01 11:06:39', '2020-06-14 01:19:48', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Menu` VALUES ('B11607C3-F1C5-435D-B4DF-8F2C5A487E50', 1, '任务调度', 'timing', 'tasks', 'system/tasks/index', 6, 'PRIV_TASKS_VIEW', '651BBACF-7AB6-457C-88CC-BF4223B2D390', NULL, 0, b'0', b'0', b'0', '2020-06-18 14:58:58', '2020-06-18 16:37:09', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Menu` VALUES ('B182CDE0-610A-43D8-8619-BEE44AE4C2F8', 1, '设备定义', 'app', 'productline', 'basic/productline/index', 5, 'PRIV_PRODUCTLINE_VIEW', 'A2EDE2E3-CCC5-4A88-89A1-A84CDAF35DEE', NULL, 0, b'0', b'0', b'0', '2020-06-01 10:59:36', '2020-06-19 16:12:39', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Menu` VALUES ('C3006273-F75D-11E8-9BA4-00059A3C7A00', 1, '菜单管理', 'menu', 'menus', 'system/menus/index', 1, 'PRIV_MENUS_VIEW', '651BBACF-7AB6-457C-88CC-BF4223B2D390', NULL, 0, b'0', b'0', b'1', '2020-05-31 11:20:55', '2020-06-06 08:53:19', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Menu` VALUES ('E01AE23A-F75C-11E8-9BA4-00059A3C7A00', 1, '用户列表', 'user', 'users', 'users/users/index', 1, 'PRIV_USERS_VIEW', '7B670227-DE9C-4457-8AA3-D14295B07530', NULL, 0, b'0', b'0', b'1', '2020-05-31 11:20:55', '2020-06-14 01:19:30', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Menu` VALUES ('E8716862-C10B-4A74-844C-A0F378F7D2C3', 1, '工厂定义', 'app', 'factory', 'basic/factory/index', 2, 'PRIV_FACTORY_VIEW', 'A2EDE2E3-CCC5-4A88-89A1-A84CDAF35DEE', NULL, 0, b'0', b'0', b'0', '2020-05-31 11:20:55', '2020-06-19 16:11:40', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Menu` VALUES ('F200F0E2-4B9C-4A3C-8102-8130096BF975', 1, '车间定义', 'app', 'workshop', 'basic/workshop/index', 3, 'PRIV_WORKSHOP_VIEW', 'A2EDE2E3-CCC5-4A88-89A1-A84CDAF35DEE', NULL, 0, b'0', b'0', b'0', '2020-06-01 10:46:08', '2020-06-19 16:12:08', '9999', '系统管理员', '9999', '系统管理员');

-- ----------------------------
-- Table structure for Sys_Online
-- ----------------------------
DROP TABLE IF EXISTS `Sys_Online`;
CREATE TABLE `Sys_Online`  (
  `UserID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户',
  `SessionID` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '会话',
  `IPAddress` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP地址',
  `LoginTime` datetime NULL DEFAULT NULL COMMENT '登录时间',
  `UpdateTime` datetime NULL DEFAULT NULL COMMENT '最后操作时间',
  `Source` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '来源',
  PRIMARY KEY (`SessionID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '在线用户' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of Sys_Online
-- ----------------------------
INSERT INTO `Sys_Online` VALUES ('9999', '85231312-8596-4387-86A6-1FE98F36CB02', '112.65.48.84', '2020-10-20 20:42:10', '2020-10-20 20:42:10', 'Web');

-- ----------------------------
-- Table structure for Sys_Options
-- ----------------------------
DROP TABLE IF EXISTS `Sys_Options`;
CREATE TABLE `Sys_Options`  (
  `ID` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'UUID',
  `Option` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分组（System_Menus_Status）',
  `Label` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `Value` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `SortIndex` int(11) NOT NULL COMMENT '排序',
  `Remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `CreateTime` datetime NOT NULL COMMENT '创建时间',
  `UpdateTime` datetime NOT NULL COMMENT '最后更新时间',
  `CreateID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人编码',
  `CreateName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `UpdateID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新人编码',
  `UpdateName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新人',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '选项框字典' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of Sys_Options
-- ----------------------------
INSERT INTO `Sys_Options` VALUES ('0F2EED72-EFF0-4DD5-8E68-316F0D2CC07B', 'SYSTEM_POWER_DESCRIPTION', '审核', '审核', 5, NULL, '2020-06-02 17:24:01', '2020-06-02 17:24:01', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Options` VALUES ('2A769FEA-4D41-4D48-A7CF-CD410207B96D', 'SYSTEM_MENU_SYSTEM', '微信小程序', '1', 2, NULL, '2020-06-02 14:05:33', '2020-06-02 14:05:41', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Options` VALUES ('35E47F7B-27A1-44BB-9924-D9F5FAB2073D', 'SYSTEM_POWER_DESCRIPTION', '导出', '导出', 8, NULL, '2020-06-02 17:24:55', '2020-06-02 17:24:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Options` VALUES ('4F2875AC-509E-45F7-B36E-0095FE4320D8', 'SYSTEM_POWER_DESCRIPTION', '新增', '新增', 2, NULL, '2020-06-02 17:23:18', '2020-06-02 17:23:18', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Options` VALUES ('518CEFB2-593A-40AB-A521-C875A74F2734', 'SYSTEM_MENU_SYSTEM', '后台系统', '0', 1, NULL, '2020-06-02 14:05:14', '2020-06-04 20:49:40', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Options` VALUES ('5EC52E51-8E96-4B90-BF8E-3917A47A2B85', 'SYSTEM_POWER_DESCRIPTION', '撤销', '撤销', 6, NULL, '2020-06-02 17:24:20', '2020-06-02 17:24:20', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Options` VALUES ('5F811745-CB10-489C-B392-1067EDE802E2', 'SYSTEM_POWER_DESCRIPTION', '冲销', '冲销', 7, NULL, '2020-06-02 17:24:41', '2020-06-02 17:24:41', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Options` VALUES ('68B49C70-21FB-49E8-921C-BCA641794588', 'SYSTEM_POWER_DESCRIPTION', '删除', '删除', 4, NULL, '2020-06-02 17:23:51', '2020-06-02 17:23:51', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Options` VALUES ('89C043F5-9230-4D27-8C1A-6B900586AD5A', 'SYSTEM_POWER_DESCRIPTION', '浏览', '浏览', 1, NULL, '2020-06-02 17:22:44', '2020-06-02 17:22:44', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Options` VALUES ('97D59D40-5BAE-4BC0-8772-C2CBECDD5418', 'SYSTEM_POWER_DESCRIPTION', '编辑', '编辑', 3, NULL, '2020-06-02 17:23:35', '2020-06-02 17:23:35', '9999', '系统管理员', '9999', '系统管理员');

-- ----------------------------
-- Table structure for Sys_Power
-- ----------------------------
DROP TABLE IF EXISTS `Sys_Power`;
CREATE TABLE `Sys_Power`  (
  `ID` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'UUID',
  `Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限标识',
  `Page` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '系统页面',
  `Description` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限描述',
  `Remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `CreateTime` datetime NOT NULL COMMENT '创建时间',
  `UpdateTime` datetime NOT NULL COMMENT '最后更新时间',
  `CreateID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人编码',
  `CreateName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `UpdateID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新人编码',
  `UpdateName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新人',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限定义' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of Sys_Power
-- ----------------------------
INSERT INTO `Sys_Power` VALUES ('023091F4-5F0E-468C-B019-B39103AE5956', 'PRIV_COMPANY_UPDATE', '公司定义', '编辑', NULL, '2020-06-09 13:39:53', '2020-06-09 13:39:53', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('036BBC7E-6F06-4CE9-BD91-D50B0D63355C', 'PRIV_USERS_VIEW', '用户管理', '浏览', NULL, '2020-05-31 11:20:18', '2020-05-31 11:20:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('0613AC75-0849-42AB-9324-8F66AA7CF87F', 'PRIV_WORKSHOP_DELETE', '车间定义', '删除', NULL, '2020-06-10 09:07:40', '2020-06-10 09:07:40', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('07B70D40-89DF-43C3-BDF6-2725677522F8', 'PRIV_POWERS_VIEW', '权限定义', '浏览', NULL, '2020-05-31 11:12:11', '2020-05-31 11:20:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('0E2C14EA-870E-41BD-B229-D06427313DC2', 'PRIV_LOGS_VIEW', '查看日志', '浏览', NULL, '2020-06-11 13:36:42', '2020-06-11 13:36:42', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('0F61A3CE-2F7F-4594-97EE-70A008B2A767', 'PRIV_ROLEPOWERS_VIEW', '角色权限', '浏览', NULL, '2020-05-31 11:13:09', '2020-05-31 11:20:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('15BECF0F-6F81-4117-9427-CA8C98618D88', 'PRIV_ROLEPOWERS_UPDATE', '角色权限', '编辑', NULL, '2020-05-31 11:13:10', '2020-05-31 11:20:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('16B7F104-BADD-4B61-B81E-034651BC20D5', 'PRIV_OPTIONS_UPDATE', '字典定义', '编辑', NULL, '2020-05-02 13:40:28', '2020-06-02 13:40:05', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('2AB67949-470B-4D54-814E-490D046DE392', 'PRIV_WORKSHOP_VIEW', '车间定义', '浏览', NULL, '2020-06-10 09:06:50', '2020-06-10 09:06:50', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('2E78189A-F7B0-4954-B90C-679606BBCA21', 'PRIV_FACTORY_CREATE', '工厂定义', '新增', NULL, '2020-06-09 15:16:55', '2020-06-09 15:16:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('30A06F2A-1270-4F1B-B7E1-B07663499450', 'PRIV_MENUS_UPDATE', '菜单管理', '编辑', NULL, '2020-05-31 11:10:03', '2020-05-31 11:20:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('359506E3-1335-41AA-8C86-36E2294D195F', 'PRIV_TASKS_DELETE', '计划任务', '删除', NULL, '2020-06-18 15:03:44', '2020-06-18 15:03:44', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('3639F31F-6F68-40C6-AC12-74FB387B8960', 'PRIV_USERS_DELETE', '用户管理', '删除', NULL, '2020-05-31 11:20:19', '2020-05-31 11:20:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('364F325B-B927-471C-A89D-DCB91B823B2C', 'PRIV_MENUS_CREATE', '菜单管理', '新增', NULL, '2020-05-31 11:10:02', '2020-05-31 11:20:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('3F8D1153-E456-446F-9D61-3AFFAFF07F3C', 'PRIV_FACTORY_DELETE', '工厂定义', '删除', NULL, '2020-06-09 15:17:24', '2020-06-09 15:17:24', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('449A124A-92C5-4872-8BEE-D71F894EDA0F', 'PRIV_PRODUCTLINE_VIEW', '产线定义', '浏览', NULL, '2020-06-10 09:47:09', '2020-06-10 09:47:09', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('45665B2E-5AE3-4692-8B80-03D2CBDE876C', 'PRIV_TASKS_CREATE', '计划任务', '新增', NULL, '2020-06-18 15:02:48', '2020-06-18 15:02:48', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('477DE876-4D91-49CD-B209-996FE605279D', 'PRIV_COMPANY_DELETE', '公司定义', '删除', NULL, '2020-06-09 13:40:39', '2020-06-09 13:40:39', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('4E2A1592-ED10-4A18-9C37-876D7CAF6727', 'PRIV_EQUIPMENT_UPDATE', '设备定义', '编辑', NULL, '2020-06-16 13:02:12', '2020-06-16 13:02:12', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('520D7B3D-4AC5-41B1-A9FD-7436DC17935C', 'PRIV_PRODUCTPROCESS_UPDATE', '工序定义', '编辑', NULL, '2020-06-10 20:08:03', '2020-06-10 20:08:03', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('52D8FA71-7252-44B5-9B17-FFC0640D631D', 'PRIV_OPTIONS_DELETE', '字典定义', '删除', NULL, '2020-05-02 13:40:29', '2020-06-02 13:40:21', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('52DB0AA1-6D36-4AD4-9036-0533C096B740', 'PRIV_TASKS_VIEW', '计划任务', '浏览', NULL, '2020-06-18 15:02:31', '2020-06-18 15:02:31', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('553089CD-882F-47C6-8EB4-74A28C7AECC0', 'PRIV_PRODUCTPROCESS_CREATE', '工序定义', '新增', NULL, '2020-06-10 20:07:52', '2020-06-10 20:07:52', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('5D2F0A1D-8C79-4253-BB35-4D304AC70ED2', 'PRIV_FACTORY_VIEW', '工厂定义', '浏览', NULL, '2020-06-09 15:16:36', '2020-06-09 15:16:36', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('5D4FE5C0-D927-4689-9481-B3D8BECA68DE', 'PRIV_EQUIPMENT_VIEW', '设备定义', '浏览', NULL, '2020-06-16 13:01:20', '2020-06-16 13:01:20', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('602A7D4E-4299-43B1-B6DD-EB7FCE409609', 'PRIV_ROLES_VIEW', '角色定义', '浏览', NULL, '2020-05-31 11:11:05', '2020-05-31 11:20:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('60E6CA5B-9B96-41CE-8E7F-C84C514D1DFD', 'PRIV_PRODUCTLINE_UPDATE', '产线定义', '编辑', NULL, '2020-06-10 09:47:36', '2020-06-10 09:47:36', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('61DF6DFD-6D26-448C-8D80-00341535617D', 'PRIV_MENUS_VIEW', '菜单管理', '浏览', NULL, '2020-05-31 11:10:01', '2020-05-31 11:20:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('6649B278-C5D2-4601-98E1-57FE4A531A74', 'PRIV_COMPANY_CREATE', '公司定义', '新增', NULL, '2020-06-09 13:38:25', '2020-06-09 13:38:25', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('66B84E36-F2D0-4847-97A9-2ACFFC9EE6FE', 'PRIV_POWERS_UPDATE', '权限定义', '编辑', NULL, '2020-05-31 11:12:13', '2020-05-31 11:20:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('67D7CDCE-CC5E-41B3-B9F6-55A4D2DCC8D8', 'PRIV_ROLES_UPDATE', '角色定义', '编辑', NULL, '2020-05-31 11:11:07', '2020-05-31 11:20:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('6999B413-3C9B-471C-B1EF-48AA2D4DE794', 'PRIV_USERS_RESETPASSWD', '用户管理', '重置密码', NULL, '2020-05-31 11:20:20', '2020-05-31 11:20:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('7E1350CF-765A-41E9-AF80-84C5CBFC7E5C', 'PRIV_TASKS_UPDATE', '计划任务', '编辑', NULL, '2020-06-18 15:03:07', '2020-06-18 15:03:07', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('80F773D3-2E05-41C2-B33F-64880A63264D', 'PRIV_EQUIPMENT_CREATE', '设备定义', '新增', NULL, '2020-06-16 13:01:50', '2020-06-16 13:01:50', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('8291C9BB-04B7-4DAE-BB81-F1CB3368A292', 'PRIV_MENUS_DELETE', '菜单管理', '删除', NULL, '2020-05-31 11:10:04', '2020-05-31 11:20:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('85DD7A0C-D06F-427D-8450-D95ED2D308CA', 'PRIV_ROLES_CREATE', '角色定义', '新增', NULL, '2020-05-31 11:11:06', '2020-05-31 11:20:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('8660B6E2-2A99-4C6B-9E96-0C1CF2CA0D63', 'PRIV_PRODUCTLINE_CREATE', '产线定义', '新增', NULL, '2020-06-10 09:47:22', '2020-06-10 09:47:22', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('875A2C25-25BC-4766-9609-703942573AB0', 'PRIV_POWERS_CREATE', '权限定义', '新增', NULL, '2020-05-31 11:12:12', '2020-05-31 11:20:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('886906DC-BC49-4BE9-B8DD-7DAF4BD103CB', 'PRIV_ROLEUSERS_DELETE', '用户角色', '删除', NULL, '2020-05-31 11:13:23', '2020-05-31 11:20:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('96C5BD50-B365-48A1-BDA7-6703DC1A3049', 'PRIV_PRODUCTPROCESS_DELETE', '工序定义', '删除', NULL, '2020-06-10 20:08:15', '2020-06-10 20:08:15', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('96DB4CA9-9F93-4ED1-BE55-DC12B467F778', 'PRIV_FACTORY_UPDATE', '工厂定义', '编辑', NULL, '2020-06-09 15:17:09', '2020-06-09 15:17:09', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('A3641961-3EB9-46C9-91E6-4AE0C7D3467E', 'PRIV_OPTIONS_CREATE', '字典定义', '新增', NULL, '2020-05-02 13:39:27', '2020-06-02 13:39:48', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('A388DB44-82BD-458D-A0FA-E54FCAEE91B7', 'PRIV_ROLEUSERS_CREATE', '用户角色', '新增', NULL, '2020-05-31 11:13:22', '2020-05-31 11:20:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('A8ED6E2E-57BC-47FA-A1E0-D2E109AA8E42', 'PRIV_USERS_UPDATE', '用户管理', '编辑', NULL, '2020-05-31 11:20:17', '2020-05-31 11:20:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('B1D2FF18-089F-4138-92DC-DF280F50BE87', 'PRIV_POWERS_DELETE', '权限定义', '删除', NULL, '2020-05-31 11:12:14', '2020-05-31 11:20:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('B240D13D-C29E-4A38-8888-F77BDD527FD7', 'PRIV_COMPANY_VIEW', '公司定义', '浏览', NULL, '2020-06-09 13:40:19', '2020-06-09 13:40:19', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('B54EBA59-D23B-4BE6-B3E4-6BCC5B6D13FE', 'PRIV_EQUIPMENT_DELETE', '设备定义', '删除', NULL, '2020-06-16 13:02:37', '2020-06-16 13:02:37', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('B551C6A4-2987-470D-B33B-BDB7488FD65E', 'PRIV_WORKSHOP_UPDATE', '车间定义', '编辑', NULL, '2020-06-10 09:07:27', '2020-06-10 09:07:27', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('BDE4354E-766B-4A55-A0DD-05A4740191DA', 'PRIV_ONLINE_DELETE', '在线统计', '删除', NULL, '2020-05-31 11:20:25', '2020-05-31 11:20:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('C00F0F28-8FDC-43F6-84FD-560D65A8D256', 'PRIV_ROLEUSERS_VIEW', '用户角色', '浏览', NULL, '2020-05-31 11:13:21', '2020-05-31 11:20:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('C814983F-3700-49A3-A53D-53ECFC7A2B4A', 'PRIV_PRODUCTPROCESS_VIEW', '工序定义', '浏览', NULL, '2020-06-10 20:07:33', '2020-06-10 20:07:33', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('C8E8AAE1-2177-4EDE-9E44-D24DADD2FF6E', 'PRIV_WORKSHOP_CREATE', '车间定义', '新增', NULL, '2020-06-10 09:07:05', '2020-06-10 09:07:05', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('CB127108-AA42-42A4-9CD0-2E194BC0C83B', 'PRIV_ONLINE_VIEW', '在线统计', '浏览', NULL, '2020-05-31 11:20:24', '2020-05-31 11:20:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('CEE73221-EE0C-442A-B53D-31021DC8836E', 'PRIV_USERS_CREATE', '用户管理', '新增', NULL, '2020-05-31 11:20:16', '2020-05-31 11:20:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('E702C145-BF21-4896-92CD-447936C680C3', 'PRIV_OPTIONS_VIEW', '字典定义', '浏览', NULL, '2020-05-02 13:39:26', '2020-06-02 13:39:33', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('EADF9CB3-A81C-42D7-9E88-15FAD08AED00', 'PRIV_ROLES_DELETE', '角色定义', '删除', NULL, '2020-05-31 11:11:08', '2020-05-31 11:20:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('F4EB78E0-9783-45F0-BA53-A0F18263228C', 'PRIV_PRODUCTLINE_DELETE', '产线定义', '删除', NULL, '2020-06-10 09:47:51', '2020-06-10 09:47:51', '9999', '系统管理员', '9999', '系统管理员');

-- ----------------------------
-- Table structure for Sys_Role
-- ----------------------------
DROP TABLE IF EXISTS `Sys_Role`;
CREATE TABLE `Sys_Role`  (
  `ID` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `Remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `CreateTime` datetime NOT NULL COMMENT '创建时间',
  `UpdateTime` datetime NOT NULL COMMENT '最后更新时间',
  `CreateID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人编码',
  `CreateName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `UpdateID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新人编码',
  `UpdateName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新人',
  `Administrator` bit(1) NOT NULL COMMENT '超级管理员可见',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色定义' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of Sys_Role
-- ----------------------------
INSERT INTO `Sys_Role` VALUES ('20813EA9-8252-4F0F-BCE7-49D2637DC457', '系统管理员', '系统内置', '2020-05-31 10:20:55', '2020-06-04 20:52:52', '9999', '系统管理员', '9999', '系统管理员', b'1');

-- ----------------------------
-- Table structure for Sys_RolePower
-- ----------------------------
DROP TABLE IF EXISTS `Sys_RolePower`;
CREATE TABLE `Sys_RolePower`  (
  `ID` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'UUID',
  `RoleUID` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色ID',
  `PowerUID` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限ID',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色权限' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of Sys_RolePower
-- ----------------------------
INSERT INTO `Sys_RolePower` VALUES ('01B31388-CF9D-4B5D-9C69-B71FC1A11FF8', '20813EA9-8252-4F0F-BCE7-49D2637DC457', 'B240D13D-C29E-4A38-8888-F77BDD527FD7');
INSERT INTO `Sys_RolePower` VALUES ('03554A78-6B94-4058-A648-3F2D294DC8A8', 'D5B0D24B-9C5F-4ECC-B278-9A5B8A9F6F22', '85DD7A0C-D06F-427D-8450-D95ED2D308CA');
INSERT INTO `Sys_RolePower` VALUES ('054E2027-240A-4E9C-8E59-48EC4A295EF9', '20813EA9-8252-4F0F-BCE7-49D2637DC457', '8660B6E2-2A99-4C6B-9E96-0C1CF2CA0D63');
INSERT INTO `Sys_RolePower` VALUES ('05E4C301-B78A-42CE-AB4A-32F5578DE065', '773B10E5-AC44-45A3-A6E0-FBA17ACD34C5', '0E2C14EA-870E-41BD-B229-D06427313DC2');
INSERT INTO `Sys_RolePower` VALUES ('0EC29179-FCC6-40E8-81D8-A845138BBC98', '20813EA9-8252-4F0F-BCE7-49D2637DC457', '07B70D40-89DF-43C3-BDF6-2725677522F8');
INSERT INTO `Sys_RolePower` VALUES ('12E0C44B-EB8F-4CA4-BBC8-1DDDF76BEEFE', 'D5B0D24B-9C5F-4ECC-B278-9A5B8A9F6F22', '07B70D40-89DF-43C3-BDF6-2725677522F8');
INSERT INTO `Sys_RolePower` VALUES ('19427C14-FDB7-476A-94CF-36E6799D0E39', '20813EA9-8252-4F0F-BCE7-49D2637DC457', '0F61A3CE-2F7F-4594-97EE-70A008B2A767');
INSERT INTO `Sys_RolePower` VALUES ('1A263746-371D-43D5-9EF3-ACC00687C290', '45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', '8660B6E2-2A99-4C6B-9E96-0C1CF2CA0D63');
INSERT INTO `Sys_RolePower` VALUES ('1FB863D0-5238-43C3-84BD-22D02F6DBE39', '45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', '4E2A1592-ED10-4A18-9C37-876D7CAF6727');
INSERT INTO `Sys_RolePower` VALUES ('205D7FEA-D2B2-4070-AFA2-8DBDC0297530', '20813EA9-8252-4F0F-BCE7-49D2637DC457', '520D7B3D-4AC5-41B1-A9FD-7436DC17935C');
INSERT INTO `Sys_RolePower` VALUES ('20F802F7-C9F3-4F75-9334-4B15240363C3', '45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', '60E6CA5B-9B96-41CE-8E7F-C84C514D1DFD');
INSERT INTO `Sys_RolePower` VALUES ('21D24C70-EBFF-4D79-83F2-165A413A563B', '20813EA9-8252-4F0F-BCE7-49D2637DC457', '80F773D3-2E05-41C2-B33F-64880A63264D');
INSERT INTO `Sys_RolePower` VALUES ('2440AACE-904C-425C-A452-88D7F713EFCE', '20813EA9-8252-4F0F-BCE7-49D2637DC457', '60E6CA5B-9B96-41CE-8E7F-C84C514D1DFD');
INSERT INTO `Sys_RolePower` VALUES ('26C3DF20-BB95-49E8-9008-D2882D408306', 'D5B0D24B-9C5F-4ECC-B278-9A5B8A9F6F22', 'B1D2FF18-089F-4138-92DC-DF280F50BE87');
INSERT INTO `Sys_RolePower` VALUES ('26DF9BEE-0368-4B41-8F2D-AC49BEBA8399', '20813EA9-8252-4F0F-BCE7-49D2637DC457', '61DF6DFD-6D26-448C-8D80-00341535617D');
INSERT INTO `Sys_RolePower` VALUES ('2A53B71D-6F77-4818-94FB-40EB70F0E563', 'D5B0D24B-9C5F-4ECC-B278-9A5B8A9F6F22', '0F61A3CE-2F7F-4594-97EE-70A008B2A767');
INSERT INTO `Sys_RolePower` VALUES ('2DE180B9-38AF-484C-B1F8-1FF1ECFD4391', '20813EA9-8252-4F0F-BCE7-49D2637DC457', '45665B2E-5AE3-4692-8B80-03D2CBDE876C');
INSERT INTO `Sys_RolePower` VALUES ('2EDE54EE-2DBC-4845-B0EF-BE4F45D32AC6', '45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', '15BECF0F-6F81-4117-9427-CA8C98618D88');
INSERT INTO `Sys_RolePower` VALUES ('328BF647-3A41-4155-992A-E597CA03A189', '20813EA9-8252-4F0F-BCE7-49D2637DC457', '3F8D1153-E456-446F-9D61-3AFFAFF07F3C');
INSERT INTO `Sys_RolePower` VALUES ('368FF0C2-D1AD-45F1-803B-7EF5F05159EE', '20813EA9-8252-4F0F-BCE7-49D2637DC457', '6999B413-3C9B-471C-B1EF-48AA2D4DE794');
INSERT INTO `Sys_RolePower` VALUES ('379BE734-7D15-498A-815A-9AF25A7AA75C', '45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', 'B54EBA59-D23B-4BE6-B3E4-6BCC5B6D13FE');
INSERT INTO `Sys_RolePower` VALUES ('37C9F8CD-39B6-4D5C-9BE0-14CF0B90B9D7', '20813EA9-8252-4F0F-BCE7-49D2637DC457', '8291C9BB-04B7-4DAE-BB81-F1CB3368A292');
INSERT INTO `Sys_RolePower` VALUES ('38E52DA2-B2F4-4751-80C2-AD1FA03FBAC0', '20813EA9-8252-4F0F-BCE7-49D2637DC457', 'A3641961-3EB9-46C9-91E6-4AE0C7D3467E');
INSERT INTO `Sys_RolePower` VALUES ('3C143662-AD4B-4870-B1C1-737969927BD7', '20813EA9-8252-4F0F-BCE7-49D2637DC457', '449A124A-92C5-4872-8BEE-D71F894EDA0F');
INSERT INTO `Sys_RolePower` VALUES ('3CC6A98E-7D7A-4397-98B2-3EF5D384FE59', '45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', 'CB127108-AA42-42A4-9CD0-2E194BC0C83B');
INSERT INTO `Sys_RolePower` VALUES ('3E370C05-4420-4E6F-B80D-B3543A3497E2', '20813EA9-8252-4F0F-BCE7-49D2637DC457', '52DB0AA1-6D36-4AD4-9036-0533C096B740');
INSERT INTO `Sys_RolePower` VALUES ('3E78F3DE-FF25-4066-81AA-20E21D9EB6C2', '45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', '5D4FE5C0-D927-4689-9481-B3D8BECA68DE');
INSERT INTO `Sys_RolePower` VALUES ('40B73275-0AE6-488F-B5CB-4A956B61E3B8', 'D5B0D24B-9C5F-4ECC-B278-9A5B8A9F6F22', '15BECF0F-6F81-4117-9427-CA8C98618D88');
INSERT INTO `Sys_RolePower` VALUES ('4878BA09-0CB3-45D8-9C87-0C197BB6BB29', '20813EA9-8252-4F0F-BCE7-49D2637DC457', '359506E3-1335-41AA-8C86-36E2294D195F');
INSERT INTO `Sys_RolePower` VALUES ('4BB7A016-7EA5-4BBB-B2E2-73031E2174E1', '20813EA9-8252-4F0F-BCE7-49D2637DC457', 'B1D2FF18-089F-4138-92DC-DF280F50BE87');
INSERT INTO `Sys_RolePower` VALUES ('4DA7E3EB-73FE-40CC-AC01-0EB847E45A2C', '20813EA9-8252-4F0F-BCE7-49D2637DC457', '16B7F104-BADD-4B61-B81E-034651BC20D5');
INSERT INTO `Sys_RolePower` VALUES ('4E131188-75F3-4E26-BF38-1A304BB5FA64', 'D5B0D24B-9C5F-4ECC-B278-9A5B8A9F6F22', '875A2C25-25BC-4766-9609-703942573AB0');
INSERT INTO `Sys_RolePower` VALUES ('4EC59F71-3CAB-437E-BED2-E5F6F3108A3E', '20813EA9-8252-4F0F-BCE7-49D2637DC457', '4E2A1592-ED10-4A18-9C37-876D7CAF6727');
INSERT INTO `Sys_RolePower` VALUES ('521013FE-EF59-44E8-812D-E06D46D1AFE7', 'D5B0D24B-9C5F-4ECC-B278-9A5B8A9F6F22', '66B84E36-F2D0-4847-97A9-2ACFFC9EE6FE');
INSERT INTO `Sys_RolePower` VALUES ('598CD65B-6AFD-493C-AF68-AC5ADE57A69D', 'BDDF39A0-D30C-466A-AC4E-34D03471B446', 'CB127108-AA42-42A4-9CD0-2E194BC0C83B');
INSERT INTO `Sys_RolePower` VALUES ('5C1CAEC4-3BE1-415F-A36B-C98C151018E6', '20813EA9-8252-4F0F-BCE7-49D2637DC457', '036BBC7E-6F06-4CE9-BD91-D50B0D63355C');
INSERT INTO `Sys_RolePower` VALUES ('60C921DA-8080-4898-9F07-7F3133F3E828', '20813EA9-8252-4F0F-BCE7-49D2637DC457', '2E78189A-F7B0-4954-B90C-679606BBCA21');
INSERT INTO `Sys_RolePower` VALUES ('63CD3AE8-5191-4CCD-8898-81C1F2FF1A0F', '45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', 'A8ED6E2E-57BC-47FA-A1E0-D2E109AA8E42');
INSERT INTO `Sys_RolePower` VALUES ('642F4230-8E77-4067-B666-251B4899AE23', '20813EA9-8252-4F0F-BCE7-49D2637DC457', '0613AC75-0849-42AB-9324-8F66AA7CF87F');
INSERT INTO `Sys_RolePower` VALUES ('64647B29-E82A-4046-96AC-63EC742DF2D4', '20813EA9-8252-4F0F-BCE7-49D2637DC457', '30A06F2A-1270-4F1B-B7E1-B07663499450');
INSERT INTO `Sys_RolePower` VALUES ('65D87D91-5F3B-4062-B19E-01A83E91A679', '45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', '0E2C14EA-870E-41BD-B229-D06427313DC2');
INSERT INTO `Sys_RolePower` VALUES ('6920C4EE-2E8F-44A7-8808-CCFA450C3550', '45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', '0F61A3CE-2F7F-4594-97EE-70A008B2A767');
INSERT INTO `Sys_RolePower` VALUES ('6CB9E70E-EA15-47B4-A044-ED990703E054', '15AAE006-71F8-4775-85CD-06224FD57180', '0E2C14EA-870E-41BD-B229-D06427313DC2');
INSERT INTO `Sys_RolePower` VALUES ('6F424536-4ECE-4303-B286-578623E01B3A', '20813EA9-8252-4F0F-BCE7-49D2637DC457', '0E2C14EA-870E-41BD-B229-D06427313DC2');
INSERT INTO `Sys_RolePower` VALUES ('7264E31C-ED96-4643-806D-6A014F5481D6', '45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', 'CEE73221-EE0C-442A-B53D-31021DC8836E');
INSERT INTO `Sys_RolePower` VALUES ('736A9FC8-9481-45BF-9F5F-F780AC210EAD', '20813EA9-8252-4F0F-BCE7-49D2637DC457', '553089CD-882F-47C6-8EB4-74A28C7AECC0');
INSERT INTO `Sys_RolePower` VALUES ('7508CB00-A693-4F23-8436-3AB81D2AACD2', '20813EA9-8252-4F0F-BCE7-49D2637DC457', 'BDE4354E-766B-4A55-A0DD-05A4740191DA');
INSERT INTO `Sys_RolePower` VALUES ('7AFC5773-90FE-444A-BA17-595F4880A270', '45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', '80F773D3-2E05-41C2-B33F-64880A63264D');
INSERT INTO `Sys_RolePower` VALUES ('7E29B443-7930-446E-B323-8D8FE1D55516', '45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', 'F4EB78E0-9783-45F0-BA53-A0F18263228C');
INSERT INTO `Sys_RolePower` VALUES ('7E4DF0C9-92FD-4146-879D-EE6E2E892435', '20813EA9-8252-4F0F-BCE7-49D2637DC457', '5D2F0A1D-8C79-4253-BB35-4D304AC70ED2');
INSERT INTO `Sys_RolePower` VALUES ('807E91D2-5603-4BCC-B797-3454066A58DA', '20813EA9-8252-4F0F-BCE7-49D2637DC457', 'A8ED6E2E-57BC-47FA-A1E0-D2E109AA8E42');
INSERT INTO `Sys_RolePower` VALUES ('81998671-BD80-457B-ADAF-ACEA74522BF8', 'D5B0D24B-9C5F-4ECC-B278-9A5B8A9F6F22', '886906DC-BC49-4BE9-B8DD-7DAF4BD103CB');
INSERT INTO `Sys_RolePower` VALUES ('841A48D1-0BB8-43AB-8CA5-F7AC28819447', '773B10E5-AC44-45A3-A6E0-FBA17ACD34C5', 'CB127108-AA42-42A4-9CD0-2E194BC0C83B');
INSERT INTO `Sys_RolePower` VALUES ('85F0075D-AFF3-4AA5-A8EA-D72957986DE5', 'D5B0D24B-9C5F-4ECC-B278-9A5B8A9F6F22', 'EADF9CB3-A81C-42D7-9E88-15FAD08AED00');
INSERT INTO `Sys_RolePower` VALUES ('8652EF78-6AE1-493C-964D-0BBC5530EE03', 'D5B0D24B-9C5F-4ECC-B278-9A5B8A9F6F22', '602A7D4E-4299-43B1-B6DD-EB7FCE409609');
INSERT INTO `Sys_RolePower` VALUES ('878C783D-1AB4-4509-905F-14C91534397D', '20813EA9-8252-4F0F-BCE7-49D2637DC457', '602A7D4E-4299-43B1-B6DD-EB7FCE409609');
INSERT INTO `Sys_RolePower` VALUES ('8B60BD4A-C2E8-4CAD-BD8E-B1D7E748F209', '20813EA9-8252-4F0F-BCE7-49D2637DC457', '2AB67949-470B-4D54-814E-490D046DE392');
INSERT INTO `Sys_RolePower` VALUES ('95659D2C-AF7F-4318-8A17-03BF7B0EB369', '20813EA9-8252-4F0F-BCE7-49D2637DC457', 'C8E8AAE1-2177-4EDE-9E44-D24DADD2FF6E');
INSERT INTO `Sys_RolePower` VALUES ('95928337-2FA8-4EE5-89D2-FCC6DA30AF24', '20813EA9-8252-4F0F-BCE7-49D2637DC457', 'B54EBA59-D23B-4BE6-B3E4-6BCC5B6D13FE');
INSERT INTO `Sys_RolePower` VALUES ('97C60D0A-7784-4954-9840-F1D57AB02925', '45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', '3639F31F-6F68-40C6-AC12-74FB387B8960');
INSERT INTO `Sys_RolePower` VALUES ('9D35D7BD-3D99-4C2F-90CA-21B7D1D376EC', '20813EA9-8252-4F0F-BCE7-49D2637DC457', '5D4FE5C0-D927-4689-9481-B3D8BECA68DE');
INSERT INTO `Sys_RolePower` VALUES ('A0F1C236-6F34-4223-8FC2-820F35F594F0', '20813EA9-8252-4F0F-BCE7-49D2637DC457', '477DE876-4D91-49CD-B209-996FE605279D');
INSERT INTO `Sys_RolePower` VALUES ('A1B2E367-D886-41F9-9FC8-BC04D248C481', '20813EA9-8252-4F0F-BCE7-49D2637DC457', 'F4EB78E0-9783-45F0-BA53-A0F18263228C');
INSERT INTO `Sys_RolePower` VALUES ('A23DB918-C56B-4793-B9DD-8689EBF97FA2', '20813EA9-8252-4F0F-BCE7-49D2637DC457', '886906DC-BC49-4BE9-B8DD-7DAF4BD103CB');
INSERT INTO `Sys_RolePower` VALUES ('A31AFE3E-CA19-4FF7-9446-41967E8C75F3', '20813EA9-8252-4F0F-BCE7-49D2637DC457', 'EADF9CB3-A81C-42D7-9E88-15FAD08AED00');
INSERT INTO `Sys_RolePower` VALUES ('A461E1C6-8381-4849-8392-92CE41024C83', '20813EA9-8252-4F0F-BCE7-49D2637DC457', '875A2C25-25BC-4766-9609-703942573AB0');
INSERT INTO `Sys_RolePower` VALUES ('A4E09A58-F9CB-4B97-B47A-7DD4CDCCB14F', '7DFC33AB-0EB3-416A-A2F5-3DB6A25977CA', 'CB127108-AA42-42A4-9CD0-2E194BC0C83B');
INSERT INTO `Sys_RolePower` VALUES ('A7C3C3E7-BDF2-41C5-844E-42596D8706E0', 'D5B0D24B-9C5F-4ECC-B278-9A5B8A9F6F22', 'A388DB44-82BD-458D-A0FA-E54FCAEE91B7');
INSERT INTO `Sys_RolePower` VALUES ('A8C837F7-1A8F-45C0-9D6D-FF20ACCB1702', '20813EA9-8252-4F0F-BCE7-49D2637DC457', '7E1350CF-765A-41E9-AF80-84C5CBFC7E5C');
INSERT INTO `Sys_RolePower` VALUES ('AADC9324-BB6D-4971-8C77-6DD676402B15', '20813EA9-8252-4F0F-BCE7-49D2637DC457', 'C00F0F28-8FDC-43F6-84FD-560D65A8D256');
INSERT INTO `Sys_RolePower` VALUES ('B4727BE3-93A5-49D8-B8ED-1377B01B101A', '20813EA9-8252-4F0F-BCE7-49D2637DC457', '3639F31F-6F68-40C6-AC12-74FB387B8960');
INSERT INTO `Sys_RolePower` VALUES ('B9628B39-8C34-4EC3-AABA-CE922CE36173', '20813EA9-8252-4F0F-BCE7-49D2637DC457', '66B84E36-F2D0-4847-97A9-2ACFFC9EE6FE');
INSERT INTO `Sys_RolePower` VALUES ('B9C6F5EE-F662-4781-B5FB-15DC8EB358B0', '45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', '886906DC-BC49-4BE9-B8DD-7DAF4BD103CB');
INSERT INTO `Sys_RolePower` VALUES ('BB55C83B-28C2-4BDE-9118-9665DF56E3F0', 'D5B0D24B-9C5F-4ECC-B278-9A5B8A9F6F22', '67D7CDCE-CC5E-41B3-B9F6-55A4D2DCC8D8');
INSERT INTO `Sys_RolePower` VALUES ('CA5BCA43-EDA5-40F0-B737-559907F3FFC3', '20813EA9-8252-4F0F-BCE7-49D2637DC457', '364F325B-B927-471C-A89D-DCB91B823B2C');
INSERT INTO `Sys_RolePower` VALUES ('CC4CC4CE-92AE-4BBC-AD4B-1472FCB14568', '20813EA9-8252-4F0F-BCE7-49D2637DC457', 'CEE73221-EE0C-442A-B53D-31021DC8836E');
INSERT INTO `Sys_RolePower` VALUES ('CC7BCB2F-3051-4B4D-8C12-C4454B6384A4', 'D5B0D24B-9C5F-4ECC-B278-9A5B8A9F6F22', 'C00F0F28-8FDC-43F6-84FD-560D65A8D256');
INSERT INTO `Sys_RolePower` VALUES ('CDAE2498-77FE-45AD-9FE3-AAB00E05E911', '20813EA9-8252-4F0F-BCE7-49D2637DC457', '96DB4CA9-9F93-4ED1-BE55-DC12B467F778');
INSERT INTO `Sys_RolePower` VALUES ('CF19821E-BDFD-471D-9075-5F49A60B28FC', '20813EA9-8252-4F0F-BCE7-49D2637DC457', '96C5BD50-B365-48A1-BDA7-6703DC1A3049');
INSERT INTO `Sys_RolePower` VALUES ('D31FD274-7326-44E2-9D47-3A2CD17AD62D', '20813EA9-8252-4F0F-BCE7-49D2637DC457', '85DD7A0C-D06F-427D-8450-D95ED2D308CA');
INSERT INTO `Sys_RolePower` VALUES ('D598FB7D-150C-4C0D-85DE-0B94869C37F6', '20813EA9-8252-4F0F-BCE7-49D2637DC457', '67D7CDCE-CC5E-41B3-B9F6-55A4D2DCC8D8');
INSERT INTO `Sys_RolePower` VALUES ('D66FCB62-65E6-48DA-A426-755C4BAD2F1D', '20813EA9-8252-4F0F-BCE7-49D2637DC457', '023091F4-5F0E-468C-B019-B39103AE5956');
INSERT INTO `Sys_RolePower` VALUES ('D7F3842B-E64B-4469-A8A9-6877755110F6', '20813EA9-8252-4F0F-BCE7-49D2637DC457', 'E702C145-BF21-4896-92CD-447936C680C3');
INSERT INTO `Sys_RolePower` VALUES ('D8589140-EC0C-47B8-A7F9-8326F4C581C8', '45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', 'A388DB44-82BD-458D-A0FA-E54FCAEE91B7');
INSERT INTO `Sys_RolePower` VALUES ('DCF232CF-4352-47D4-A729-DA093B9390B0', '20813EA9-8252-4F0F-BCE7-49D2637DC457', 'CB127108-AA42-42A4-9CD0-2E194BC0C83B');
INSERT INTO `Sys_RolePower` VALUES ('DECA5546-78CA-41A8-9E6A-B59CD7DFC67F', '20813EA9-8252-4F0F-BCE7-49D2637DC457', '6649B278-C5D2-4601-98E1-57FE4A531A74');
INSERT INTO `Sys_RolePower` VALUES ('E19CAFDD-73FC-488F-ADD4-312D507B1FE2', '20813EA9-8252-4F0F-BCE7-49D2637DC457', 'C814983F-3700-49A3-A53D-53ECFC7A2B4A');
INSERT INTO `Sys_RolePower` VALUES ('E38133AA-39FB-4642-89C3-D4A58D809F50', '20813EA9-8252-4F0F-BCE7-49D2637DC457', 'B551C6A4-2987-470D-B33B-BDB7488FD65E');
INSERT INTO `Sys_RolePower` VALUES ('E51F74D9-CDDE-4812-81C8-79476F2DBAD4', '45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', 'C00F0F28-8FDC-43F6-84FD-560D65A8D256');
INSERT INTO `Sys_RolePower` VALUES ('E9007407-9A6C-4E06-A6BF-4E12536A096F', '45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', '036BBC7E-6F06-4CE9-BD91-D50B0D63355C');
INSERT INTO `Sys_RolePower` VALUES ('E97A87EA-C113-4D8F-AF90-F6E553529CA0', '20813EA9-8252-4F0F-BCE7-49D2637DC457', '15BECF0F-6F81-4117-9427-CA8C98618D88');
INSERT INTO `Sys_RolePower` VALUES ('EBD1AB6D-2D3E-4CD5-8DB3-A33F87D2174A', 'E23A6C64-4B30-4D70-B4FB-2DEEE7BFB7F6', 'CB127108-AA42-42A4-9CD0-2E194BC0C83B');
INSERT INTO `Sys_RolePower` VALUES ('EFD3C82C-5553-4F3F-A1DC-C757CFD27819', '20813EA9-8252-4F0F-BCE7-49D2637DC457', '52D8FA71-7252-44B5-9B17-FFC0640D631D');
INSERT INTO `Sys_RolePower` VALUES ('F817E744-2CB2-4840-9467-4F76D7A8DA84', '45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', '449A124A-92C5-4872-8BEE-D71F894EDA0F');
INSERT INTO `Sys_RolePower` VALUES ('FC35BB29-C959-40E6-B578-D50075BA89B2', 'FE5D4E1E-9C40-4DDE-A7EA-E2CC2AD92105', 'CB127108-AA42-42A4-9CD0-2E194BC0C83B');
INSERT INTO `Sys_RolePower` VALUES ('FCC73425-641C-478B-AADC-AC6D0E8BDA53', '20813EA9-8252-4F0F-BCE7-49D2637DC457', 'A388DB44-82BD-458D-A0FA-E54FCAEE91B7');
INSERT INTO `Sys_RolePower` VALUES ('FFB2D804-FA4F-43D4-9C45-9F12B704954A', '45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', '6999B413-3C9B-471C-B1EF-48AA2D4DE794');

-- ----------------------------
-- Table structure for Sys_TasksQz
-- ----------------------------
DROP TABLE IF EXISTS `Sys_TasksQz`;
CREATE TABLE `Sys_TasksQz`  (
  `ID` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'UID',
  `Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `JobGroup` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务分组',
  `Cron` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '运行时间表达式',
  `AssemblyName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '程序集名称',
  `ClassName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务所在类',
  `Remark` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '任务描述',
  `RunTimes` int(11) NOT NULL COMMENT '执行次数',
  `BeginTime` datetime NULL DEFAULT NULL COMMENT '开始时间',
  `EndTime` datetime NULL DEFAULT NULL COMMENT '结束时间',
  `TriggerType` int(11) NOT NULL COMMENT '触发器类型（0、simple 1、cron）',
  `IntervalSecond` int(11) NOT NULL COMMENT '执行间隔时间(单位:秒)',
  `IsStart` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否启动',
  `JobParams` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '传入参数',
  `CreateTime` datetime NOT NULL COMMENT '创建时间',
  `UpdateTime` datetime NOT NULL COMMENT '最后更新时间',
  `CreateID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人编码',
  `CreateName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `UpdateID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新人编码',
  `UpdateName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新人',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '计划任务' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of Sys_TasksQz
-- ----------------------------
INSERT INTO `Sys_TasksQz` VALUES ('E29F2D63-B1B0-4CE6-9CDC-A5F86C52B887', '生产订单同步', '数据同步', '0 0 0/1 * * ? ', 'Meiam.System.Tasks', 'Job_SyncProductOrder', '[2020-10-20 21:00:00:012] => Run Job [Id：E29F2D63-B1B0-4CE6-9CDC-A5F86C52B887，Group：数据同步]， Succeed ， Elapsed：2.7464 ms', 756, '2020-06-19 09:59:29', '9999-12-31 00:00:00', 1, 1, b'1', NULL, '2020-06-19 09:33:53', '2020-06-19 15:00:45', '9999', '系统管理员', '9999', '系统管理员');

-- ----------------------------
-- Table structure for Sys_UserRelation
-- ----------------------------
DROP TABLE IF EXISTS `Sys_UserRelation`;
CREATE TABLE `Sys_UserRelation`  (
  `ID` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'UUID',
  `UserID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户ID',
  `ObjectID` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '数据权限ID',
  `ObjectType` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '数据权限类型',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户权限' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of Sys_UserRelation
-- ----------------------------
INSERT INTO `Sys_UserRelation` VALUES ('0DE36B24-0280-41C0-A11C-3B77E684FAED', '9999', '9FCB9642-CE69-43C5-9D71-400F0B1D64A1', 'ProductProcess');
INSERT INTO `Sys_UserRelation` VALUES ('0F9E8395-4212-4E3C-90DB-EC622B5E3C2C', '9999', '21A0F4ED-FA2E-4786-93DC-0222F54B4286', 'Factory');
INSERT INTO `Sys_UserRelation` VALUES ('20CA7047-217B-46C4-AB0B-A79C8D1EB867', '9999', '74887F03-4422-4851-8802-B3057ACC5F30', 'Company');
INSERT INTO `Sys_UserRelation` VALUES ('275B426E-7742-46D9-B5C5-EA2A99CBA889', '9999', '8EE174C5-4430-4196-AEF8-4D72EF69C6C3', 'WorkShop');
INSERT INTO `Sys_UserRelation` VALUES ('3DB3E1F9-BC32-411F-B9C2-F262D37C97F7', '9999', '1E910EDA-534E-469D-9B12-6C1DEF56A706', 'Company');
INSERT INTO `Sys_UserRelation` VALUES ('475E1E19-9029-4AD1-9260-DD90ABD4AA96', '9999', '1D524B11-DBF0-475F-8D95-D1F35515174A', 'WorkShop');
INSERT INTO `Sys_UserRelation` VALUES ('564DB10C-B19C-456D-BEBE-C30F9BA47954', '9999', 'AFE35E8D-83B4-48A3-889F-30A1BC07AFB4', 'Factory');
INSERT INTO `Sys_UserRelation` VALUES ('92984E51-8A8E-4723-8A0A-582F84BA106C', '9999', '9E4C1AD4-40AB-4D93-8EE1-B07688360228', 'ProductProcess');
INSERT INTO `Sys_UserRelation` VALUES ('A951B240-0105-4F73-B505-7B388D41941A', '9999', '82AE52A6-00F2-420C-AB28-1B2E227D6122', 'WorkShop');
INSERT INTO `Sys_UserRelation` VALUES ('B241DF09-C88A-458C-B830-37EC228B64B7', '9999', '06EE680E-8DDF-4557-BA37-52416E3FA197', 'WorkShop');
INSERT INTO `Sys_UserRelation` VALUES ('B68C33D9-31F6-4347-9979-EF51CF3B625B', '9999', 'CA97D772-FFD2-484C-AE53-22A6C8B095A2', 'Factory');

-- ----------------------------
-- Table structure for Sys_UserRole
-- ----------------------------
DROP TABLE IF EXISTS `Sys_UserRole`;
CREATE TABLE `Sys_UserRole`  (
  `ID` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'UUID',
  `UserID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户ID',
  `RoleID` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户角色' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of Sys_UserRole
-- ----------------------------
INSERT INTO `Sys_UserRole` VALUES ('85CBF9DB-C4BF-4AC5-89E1-A3C4ED4B88E6', '103151', '45F8F52C-7154-4B15-B5FE-BA84F4FFBA37');
INSERT INTO `Sys_UserRole` VALUES ('A8364573-20FA-45FB-8C49-B35F7A027301', '147445', '20813EA9-8252-4F0F-BCE7-49D2637DC457');
INSERT INTO `Sys_UserRole` VALUES ('F112F9A6-3983-480D-8BCC-8F340964261E', '9999', '20813EA9-8252-4F0F-BCE7-49D2637DC457');

-- ----------------------------
-- Table structure for Sys_Users
-- ----------------------------
DROP TABLE IF EXISTS `Sys_Users`;
CREATE TABLE `Sys_Users`  (
  `UserID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户账号',
  `UserName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名称',
  `NickName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `Email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `Password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `Sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '性别',
  `AvatarUrl` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像地址',
  `QQ` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'QQ',
  `Phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `ProvinceID` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户所在省份编码',
  `Province` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户所在省份',
  `CityID` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户所在城市编码',
  `City` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户所在城市',
  `CountyID` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户所在县/区编码',
  `County` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户所在县/区',
  `Address` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '地址',
  `Remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '备注',
  `IdentityCard` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证',
  `Birthday` datetime NULL DEFAULT NULL COMMENT '生日',
  `LastLoginTime` datetime NULL DEFAULT NULL COMMENT '上次登录时间',
  `Enabled` bit(1) NOT NULL DEFAULT b'1' COMMENT '是否启用',
  `OneSession` bit(1) NOT NULL DEFAULT b'0' COMMENT '单用户模式',
  `CreateTime` datetime NOT NULL COMMENT '创建时间',
  `UpdateTime` datetime NOT NULL COMMENT '最后更新时间',
  `CreateID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人编码',
  `CreateName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `UpdateID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新人编码',
  `UpdateName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新人',
  `Administrator` bit(1) NOT NULL DEFAULT b'0' COMMENT '超级管理员',
  PRIMARY KEY (`UserID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户管理' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of Sys_Users
-- ----------------------------
INSERT INTO `Sys_Users` VALUES ('9999', '系统管理员', '系统管理员', '91270@QQ.COM', 'FC4509EFEA3AC97ED753F53DFA601161', '男', '/static/avatars/20200619/637281528723366669.png', '91270', '13344445555', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-18 16:00:00', '2020-10-20 20:42:12', b'1', b'0', '2020-05-31 10:20:55', '2020-06-19 08:41:12', '9999', '系统管理员', '9999', '系统管理员', b'1');

-- ----------------------------
-- Table structure for Test_Cap01
-- ----------------------------
DROP TABLE IF EXISTS `Test_Cap01`;
CREATE TABLE `Test_Cap01`  (
  `ID` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of Test_Cap01
-- ----------------------------
INSERT INTO `Test_Cap01` VALUES ('2A281F02-261A-4292-ADDB-59A2E489D0BB');
INSERT INTO `Test_Cap01` VALUES ('41B2D4C2-4398-416F-BD89-2CD3201250C8');
INSERT INTO `Test_Cap01` VALUES ('4F326171-49CD-4459-9726-063368AF0810');
INSERT INTO `Test_Cap01` VALUES ('55186EEC-3751-443D-88B5-6C1E868E339C');
INSERT INTO `Test_Cap01` VALUES ('7A4BBA68-A51D-49F2-A47C-1B7787FDEAED');
INSERT INTO `Test_Cap01` VALUES ('7A6F05A1-DF85-48C9-97E5-F725F3400EE3');
INSERT INTO `Test_Cap01` VALUES ('80C5586A-3788-4ABE-9F36-1E01B17A5A11');
INSERT INTO `Test_Cap01` VALUES ('8C4F8098-596A-4E65-B4BA-5F07530BD16B');
INSERT INTO `Test_Cap01` VALUES ('ADC7EB18-014E-4AFE-A807-B0D7DC18E5E6');
INSERT INTO `Test_Cap01` VALUES ('B281BCF4-BBBE-43D1-9A89-7698E2E6DBF3');

-- ----------------------------
-- Table structure for Test_Cap02
-- ----------------------------
DROP TABLE IF EXISTS `Test_Cap02`;
CREATE TABLE `Test_Cap02`  (
  `ID` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of Test_Cap02
-- ----------------------------
INSERT INTO `Test_Cap02` VALUES ('2A281F02-261A-4292-ADDB-59A2E489D0BB');
INSERT INTO `Test_Cap02` VALUES ('41B2D4C2-4398-416F-BD89-2CD3201250C8');
INSERT INTO `Test_Cap02` VALUES ('4F326171-49CD-4459-9726-063368AF0810');
INSERT INTO `Test_Cap02` VALUES ('55186EEC-3751-443D-88B5-6C1E868E339C');
INSERT INTO `Test_Cap02` VALUES ('7A4BBA68-A51D-49F2-A47C-1B7787FDEAED');
INSERT INTO `Test_Cap02` VALUES ('7A6F05A1-DF85-48C9-97E5-F725F3400EE3');
INSERT INTO `Test_Cap02` VALUES ('80C5586A-3788-4ABE-9F36-1E01B17A5A11');
INSERT INTO `Test_Cap02` VALUES ('8C4F8098-596A-4E65-B4BA-5F07530BD16B');
INSERT INTO `Test_Cap02` VALUES ('ADC7EB18-014E-4AFE-A807-B0D7DC18E5E6');
INSERT INTO `Test_Cap02` VALUES ('B281BCF4-BBBE-43D1-9A89-7698E2E6DBF3');

SET FOREIGN_KEY_CHECKS = 1;
