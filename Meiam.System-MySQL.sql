/*
Navicat MySQL Data Transfer

Source Server         : demo.meiam.top
Source Server Version : 50649
Source Host           : demo.meiam.top:3306
Source Database       : MeiamSystem

Target Server Type    : MYSQL
Target Server Version : 50649
File Encoding         : 65001

Date: 2020-10-20 21:23:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for Base_Company
-- ----------------------------
DROP TABLE IF EXISTS `Base_Company`;
CREATE TABLE `Base_Company` (
  `ID` varchar(36) NOT NULL COMMENT 'UUID',
  `CompanyNo` varchar(20) NOT NULL COMMENT '公司编码',
  `CompanyName` varchar(50) NOT NULL COMMENT '公司名称',
  `Remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `Enable` tinyint(4) NOT NULL COMMENT '是否启用',
  `CreateTime` datetime NOT NULL COMMENT '创建时间',
  `UpdateTime` datetime NOT NULL COMMENT '最后更新时间',
  `CreateID` varchar(50) NOT NULL COMMENT '创建人编码',
  `CreateName` varchar(100) NOT NULL COMMENT '创建人',
  `UpdateID` varchar(50) NOT NULL COMMENT '更新人编码',
  `UpdateName` varchar(100) NOT NULL COMMENT '更新人',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公司定义';

-- ----------------------------
-- Records of Base_Company
-- ----------------------------
INSERT INTO `Base_Company` VALUES ('1E910EDA-534E-469D-9B12-6C1DEF56A706', '1001', '最赚钱的公司', null, '1', '2020-06-20 10:50:32', '2020-06-20 10:50:32', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Base_Company` VALUES ('74887F03-4422-4851-8802-B3057ACC5F30', '1002', '最赔钱的公司', null, '1', '2020-06-20 10:50:44', '2020-06-20 10:50:44', '9999', '系统管理员', '9999', '系统管理员');

-- ----------------------------
-- Table structure for Base_Equipment
-- ----------------------------
DROP TABLE IF EXISTS `Base_Equipment`;
CREATE TABLE `Base_Equipment` (
  `ID` varchar(36) NOT NULL COMMENT 'UID',
  `EquipNo` varchar(20) DEFAULT NULL COMMENT '设备编号',
  `EquipName` varchar(50) NOT NULL COMMENT '设备名称',
  `Remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `Enable` tinyint(4) NOT NULL COMMENT '是否启用',
  `CreateTime` datetime NOT NULL COMMENT '创建时间',
  `UpdateTime` datetime NOT NULL COMMENT '最后更新时间',
  `CreateID` varchar(50) NOT NULL COMMENT '创建人编码',
  `CreateName` varchar(100) NOT NULL COMMENT '创建人',
  `UpdateID` varchar(50) NOT NULL COMMENT '更新人编码',
  `UpdateName` varchar(100) NOT NULL COMMENT '更新人',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设备定义';

-- ----------------------------
-- Records of Base_Equipment
-- ----------------------------

-- ----------------------------
-- Table structure for Base_Factory
-- ----------------------------
DROP TABLE IF EXISTS `Base_Factory`;
CREATE TABLE `Base_Factory` (
  `ID` varchar(36) NOT NULL COMMENT 'UUID',
  `FactoryNo` varchar(20) NOT NULL COMMENT '工厂编码',
  `FactoryName` varchar(50) NOT NULL COMMENT '工厂名称',
  `Remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `Enable` tinyint(4) NOT NULL COMMENT '是否启用',
  `CreateTime` datetime NOT NULL COMMENT '创建时间',
  `UpdateTime` datetime NOT NULL COMMENT '最后更新时间',
  `CreateID` varchar(50) NOT NULL COMMENT '创建人编码',
  `CreateName` varchar(100) NOT NULL COMMENT '创建人',
  `UpdateID` varchar(50) NOT NULL COMMENT '更新人编码',
  `UpdateName` varchar(100) NOT NULL COMMENT '更新人',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工厂定义';

-- ----------------------------
-- Records of Base_Factory
-- ----------------------------
INSERT INTO `Base_Factory` VALUES ('21A0F4ED-FA2E-4786-93DC-0222F54B4286', '2002', '华南二期', null, '1', '2020-06-20 10:51:35', '2020-06-20 10:51:35', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Base_Factory` VALUES ('AFE35E8D-83B4-48A3-889F-30A1BC07AFB4', '2001', '华西一期', null, '1', '2020-06-20 10:51:15', '2020-06-20 10:51:15', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Base_Factory` VALUES ('CA97D772-FFD2-484C-AE53-22A6C8B095A2', '2003', '华东三期', null, '1', '2020-06-20 10:51:51', '2020-06-20 10:51:51', '9999', '系统管理员', '9999', '系统管理员');

-- ----------------------------
-- Table structure for Base_ProductLine
-- ----------------------------
DROP TABLE IF EXISTS `Base_ProductLine`;
CREATE TABLE `Base_ProductLine` (
  `ID` varchar(36) NOT NULL COMMENT 'UUID',
  `LineNo` varchar(20) NOT NULL COMMENT '生产线编码',
  `LineName` varchar(50) NOT NULL COMMENT '生产线名称',
  `Remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `Enable` tinyint(4) NOT NULL COMMENT '是否启用',
  `CreateTime` datetime NOT NULL COMMENT '创建时间',
  `UpdateTime` datetime NOT NULL COMMENT '最后更新时间',
  `CreateID` varchar(50) NOT NULL COMMENT '创建人编码',
  `CreateName` varchar(100) NOT NULL COMMENT '创建人',
  `UpdateID` varchar(50) NOT NULL COMMENT '更新人编码',
  `UpdateName` varchar(100) NOT NULL COMMENT '更新人',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产线定义';

-- ----------------------------
-- Records of Base_ProductLine
-- ----------------------------

-- ----------------------------
-- Table structure for Base_ProductProcess
-- ----------------------------
DROP TABLE IF EXISTS `Base_ProductProcess`;
CREATE TABLE `Base_ProductProcess` (
  `ID` varchar(36) NOT NULL COMMENT 'UUID',
  `ProcessNo` varchar(20) NOT NULL COMMENT '工序编码',
  `ProcessName` varchar(50) NOT NULL COMMENT '工序名称',
  `Remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `Enable` tinyint(4) NOT NULL COMMENT '是否启用',
  `CreateTime` datetime NOT NULL COMMENT '创建时间',
  `UpdateTime` datetime NOT NULL COMMENT '最后更新时间',
  `CreateID` varchar(50) NOT NULL COMMENT '创建人编码',
  `CreateName` varchar(100) NOT NULL COMMENT '创建人',
  `UpdateID` varchar(50) NOT NULL COMMENT '更新人编码',
  `UpdateName` varchar(100) NOT NULL COMMENT '更新人',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工序定义';

-- ----------------------------
-- Records of Base_ProductProcess
-- ----------------------------
INSERT INTO `Base_ProductProcess` VALUES ('9E4C1AD4-40AB-4D93-8EE1-B07688360228', '20010101', '铸焊浇筑', null, '1', '2020-06-20 10:54:34', '2020-06-20 10:55:19', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Base_ProductProcess` VALUES ('9FCB9642-CE69-43C5-9D71-400F0B1D64A1', '20010102', '铸焊锻造', null, '1', '2020-06-20 10:54:58', '2020-06-20 10:54:58', '9999', '系统管理员', '9999', '系统管理员');

-- ----------------------------
-- Table structure for Base_WorkShop
-- ----------------------------
DROP TABLE IF EXISTS `Base_WorkShop`;
CREATE TABLE `Base_WorkShop` (
  `ID` varchar(36) NOT NULL COMMENT 'UUID',
  `WorkShopNo` varchar(20) NOT NULL COMMENT '车间编码',
  `WorkShopName` varchar(50) NOT NULL COMMENT '车间名称',
  `Remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `Enable` tinyint(4) NOT NULL COMMENT '是否启用',
  `CreateTime` datetime NOT NULL COMMENT '创建时间',
  `UpdateTime` datetime NOT NULL COMMENT '最后更新时间',
  `CreateID` varchar(50) NOT NULL COMMENT '创建人编码',
  `CreateName` varchar(100) NOT NULL COMMENT '创建人',
  `UpdateID` varchar(50) NOT NULL COMMENT '更新人编码',
  `UpdateName` varchar(100) NOT NULL COMMENT '更新人',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='车间定义';

-- ----------------------------
-- Records of Base_WorkShop
-- ----------------------------
INSERT INTO `Base_WorkShop` VALUES ('06EE680E-8DDF-4557-BA37-52416E3FA197', '200202', '极板车间', null, '1', '2020-06-20 10:53:55', '2020-06-20 10:53:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Base_WorkShop` VALUES ('1D524B11-DBF0-475F-8D95-D1F35515174A', '200102', '极板车间', null, '1', '2020-06-20 10:53:16', '2020-06-20 10:53:16', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Base_WorkShop` VALUES ('82AE52A6-00F2-420C-AB28-1B2E227D6122', '200101', '铸焊车间', null, '1', '2020-06-20 10:52:54', '2020-06-20 10:52:54', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Base_WorkShop` VALUES ('8EE174C5-4430-4196-AEF8-4D72EF69C6C3', '200201', '铸焊车间', null, '1', '2020-06-20 10:53:38', '2020-06-20 10:53:38', '9999', '系统管理员', '9999', '系统管理员');

-- ----------------------------
-- Table structure for Sys_DataRelation
-- ----------------------------
DROP TABLE IF EXISTS `Sys_DataRelation`;
CREATE TABLE `Sys_DataRelation` (
  `ID` varchar(36) NOT NULL COMMENT 'UID',
  `Form` varchar(36) NOT NULL COMMENT '来源ID',
  `To` varchar(36) NOT NULL COMMENT '对应ID',
  `Type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='数据关系';

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
CREATE TABLE `Sys_Logs` (
  `ID` varchar(36) NOT NULL COMMENT 'ID',
  `Logger` varchar(50) DEFAULT NULL COMMENT '日志类型',
  `Level` varchar(50) DEFAULT NULL COMMENT '日志等级',
  `Url` varchar(255) DEFAULT NULL COMMENT '日志来源',
  `Host` varchar(100) DEFAULT NULL COMMENT '主机地址',
  `Method` varchar(10) DEFAULT NULL COMMENT '请求方式',
  `UserAgent` varchar(255) DEFAULT NULL COMMENT '浏览器标识',
  `Cookie` varchar(100) DEFAULT NULL COMMENT 'Cookie',
  `QueryString` longtext COMMENT 'URL参数',
  `Body` longtext COMMENT '请求内容',
  `Message` longtext COMMENT '日志信息',
  `Elapsed` int(11) DEFAULT NULL COMMENT '请求耗时',
  `CreateTime` datetime(6) DEFAULT NULL COMMENT '创建时间',
  `IPAddress` varchar(50) DEFAULT NULL COMMENT '用户来源',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日志管理';

-- ----------------------------
-- Records of Sys_Logs
-- ----------------------------
INSERT INTO `Sys_Logs` VALUES ('02381523-C884-4F0D-947B-29664E9EAC2A', 'Quartz.Core.SchedulerSignalerImpl', 'INFO', '', '', '', '', '', '', '', 'Initialized Scheduler Signaller of type: Quartz.Core.SchedulerSignalerImpl', '0', '2020-08-07 14:45:22.000000', '');
INSERT INTO `Sys_Logs` VALUES ('03FBD15B-4C70-4F77-B2B8-670B70A409B5', 'Quartz.Core.SchedulerSignalerImpl', 'INFO', '', '', '', '', '', '', '', 'Initialized Scheduler Signaller of type: Quartz.Core.SchedulerSignalerImpl', '0', '2020-08-08 11:17:29.000000', '');
INSERT INTO `Sys_Logs` VALUES ('04890155-1B99-4E3A-9976-20FE50C8FFFB', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'JobFactory set to: Meiam.System.Tasks.JobFactory', '0', '2020-08-08 11:24:59.000000', '');
INSERT INTO `Sys_Logs` VALUES ('0500AD4A-DE8B-4B94-B5A5-B8B57DC2E8A5', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler version: 3.1.0.0', '0', '2020-08-07 14:44:45.000000', '');
INSERT INTO `Sys_Logs` VALUES ('098D81A3-5091-41A4-9022-D7135EEE4852', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Quartz Scheduler v.3.1.0.0 created.', '0', '2020-08-07 14:46:10.000000', '');
INSERT INTO `Sys_Logs` VALUES ('0A51194D-C16D-4949-9C61-761F89A59F03', 'Quartz.Core.SchedulerSignalerImpl', 'INFO', '', '', '', '', '', '', '', 'Initialized Scheduler Signaller of type: Quartz.Core.SchedulerSignalerImpl', '0', '2020-08-07 15:19:59.000000', '');
INSERT INTO `Sys_Logs` VALUES ('0A7F357E-6BE5-4405-BA49-F353405EE063', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Using object serializer: Quartz.Simpl.BinaryObjectSerializer, Quartz', '0', '2020-08-07 15:19:58.000000', '');
INSERT INTO `Sys_Logs` VALUES ('0B05C375-2ECF-426C-8C5E-B8F25FA94598', 'Quartz.Simpl.RAMJobStore', 'INFO', '', '', '', '', '', '', '', 'RAMJobStore initialized.', '0', '2020-08-08 11:15:48.000000', '');
INSERT INTO `Sys_Logs` VALUES ('0B4F7CDD-3A88-490A-8A5E-0AAF2FE90CF2', 'Quartz.Core.SchedulerSignalerImpl', 'INFO', '', '', '', '', '', '', '', 'Initialized Scheduler Signaller of type: Quartz.Core.SchedulerSignalerImpl', '0', '2020-08-08 11:15:48.000000', '');
INSERT INTO `Sys_Logs` VALUES ('0F9B7EBC-12D2-11EB-AE11-02001700DA73', 'Meiam.System.Hostd.Middleware.RequestMiddleware', 'TRACE', '/api/company/query', 'api.meiam.top', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', 'D854D7E8-C0E3-46A0-816D-3D06674DDD02', '', '{\"pageIndex\":1,\"pageSize\":10,\"orderby\":\"createTime\",\"sort\":\"descending\"}', 'Success', '3', '2020-10-20 20:44:57.916300', '115.56.231.94');
INSERT INTO `Sys_Logs` VALUES ('10BF7702-12D2-11EB-AE11-02001700DA73', 'Meiam.System.Hostd.Middleware.RequestMiddleware', 'TRACE', '/api/company/getAll', 'api.meiam.top', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', 'D854D7E8-C0E3-46A0-816D-3D06674DDD02', '[{\"enable\":\"true\"}]', '', 'Success', '8', '2020-10-20 20:44:59.831600', '115.56.231.94');
INSERT INTO `Sys_Logs` VALUES ('10E0F66F-12D2-11EB-AE11-02001700DA73', 'Meiam.System.Hostd.Middleware.RequestMiddleware', 'TRACE', '/api/factory/query', 'api.meiam.top', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', 'D854D7E8-C0E3-46A0-816D-3D06674DDD02', '', '{\"pageIndex\":1,\"pageSize\":10,\"orderby\":\"factoryNo\",\"sort\":\"descending\"}', 'Success', '26', '2020-10-20 20:45:00.052300', '115.56.231.94');
INSERT INTO `Sys_Logs` VALUES ('114ED8F4-B105-4687-B193-5A9BEAFDA7A5', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Scheduler meta-data: Quartz Scheduler (v3.1.0.0) \'QuartzScheduler\' with instanceId \'NON_CLUSTERED\'\n  Scheduler class: \'Quartz.Core.QuartzScheduler\' - running locally.\n  NOT STARTED.\n  Currently in standby mode.\n  Number of jobs executed: 0\n  Using thread pool \'Quartz.Simpl.DefaultThreadPool\' - with 10 threads.\n  Using job-store \'Quartz.Simpl.RAMJobStore\' - which does not support persistence. and is not clustered.\n', '0', '2020-08-08 11:17:29.000000', '');
INSERT INTO `Sys_Logs` VALUES ('134A383A-12D2-11EB-AE11-02001700DA73', 'Meiam.System.Hostd.Middleware.RequestMiddleware', 'TRACE', '/api/roles/query', 'api.meiam.top', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', 'D854D7E8-C0E3-46A0-816D-3D06674DDD02', '', '{\"pageIndex\":1,\"pageSize\":10,\"orderby\":\"createTime\",\"sort\":\"ascending\"}', 'Success', '875', '2020-10-20 20:45:04.098300', '115.56.231.94');
INSERT INTO `Sys_Logs` VALUES ('152D7223-C2EE-42A9-98B7-74F0BCC7C4FF', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'JobFactory set to: Meiam.System.Tasks.JobFactory', '0', '2020-08-07 14:49:19.000000', '');
INSERT INTO `Sys_Logs` VALUES ('16CA7711-C29E-4204-B23E-6D815ECFC4E0', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'JobFactory set to: Meiam.System.Tasks.JobFactory', '0', '2020-08-07 14:49:38.000000', '');
INSERT INTO `Sys_Logs` VALUES ('16E9B8D9-1B4E-4057-B17B-9D2C4C0D95D0', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler \'QuartzScheduler\' initialized', '0', '2020-08-08 11:15:48.000000', '');
INSERT INTO `Sys_Logs` VALUES ('18BAD090-4F2D-4F8A-BF6A-458525AC175E', 'Quartz.Core.SchedulerSignalerImpl', 'INFO', '', '', '', '', '', '', '', 'Initialized Scheduler Signaller of type: Quartz.Core.SchedulerSignalerImpl', '0', '2020-08-07 14:46:10.000000', '');
INSERT INTO `Sys_Logs` VALUES ('1AEE066C-A763-431A-AD30-BAAC00A28248', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler \'QuartzScheduler\' initialized', '0', '2020-08-08 11:11:07.000000', '');
INSERT INTO `Sys_Logs` VALUES ('1C3367F8-ABAD-4F89-B93E-A9A9D28DD501', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Using object serializer: Quartz.Simpl.BinaryObjectSerializer, Quartz', '0', '2020-08-07 14:45:37.000000', '');
INSERT INTO `Sys_Logs` VALUES ('1CB8A3A6-1185-4615-93D1-B91389A203DE', 'Quartz.Simpl.RAMJobStore', 'INFO', '', '', '', '', '', '', '', 'RAMJobStore initialized.', '0', '2020-08-08 11:18:44.000000', '');
INSERT INTO `Sys_Logs` VALUES ('1E5C427D-7B1A-466B-9137-CC1FF6C23A0C', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Scheduler meta-data: Quartz Scheduler (v3.1.0.0) \'QuartzScheduler\' with instanceId \'NON_CLUSTERED\'\n  Scheduler class: \'Quartz.Core.QuartzScheduler\' - running locally.\n  NOT STARTED.\n  Currently in standby mode.\n  Number of jobs executed: 0\n  Using thread pool \'Quartz.Simpl.DefaultThreadPool\' - with 10 threads.\n  Using job-store \'Quartz.Simpl.RAMJobStore\' - which does not support persistence. and is not clustered.\n', '0', '2020-08-07 14:44:45.000000', '');
INSERT INTO `Sys_Logs` VALUES ('1EC41F9E-7CA2-4E5E-AEB9-ACD5F47737C8', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler version: 3.1.0.0', '0', '2020-08-08 11:15:48.000000', '');
INSERT INTO `Sys_Logs` VALUES ('1F034A31-0A79-4394-BFB2-DD9D576B5C96', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler \'QuartzScheduler\' initialized', '0', '2020-08-07 14:49:19.000000', '');
INSERT INTO `Sys_Logs` VALUES ('1FC187A1-179A-4675-9D4F-F1A601E1BF8B', 'Quartz.Core.SchedulerSignalerImpl', 'INFO', '', '', '', '', '', '', '', 'Initialized Scheduler Signaller of type: Quartz.Core.SchedulerSignalerImpl', '0', '2020-08-08 11:20:39.000000', '');
INSERT INTO `Sys_Logs` VALUES ('2142AE62-EB61-4259-BF21-6AC7E97C3D3F', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'JobFactory set to: Meiam.System.Tasks.JobFactory', '0', '2020-08-07 14:52:11.000000', '');
INSERT INTO `Sys_Logs` VALUES ('21991349-53DF-462A-8EFE-DC10A6571BFB', 'Quartz.Core.SchedulerSignalerImpl', 'INFO', '', '', '', '', '', '', '', 'Initialized Scheduler Signaller of type: Quartz.Core.SchedulerSignalerImpl', '0', '2020-08-08 11:16:30.000000', '');
INSERT INTO `Sys_Logs` VALUES ('22A9884F-1F35-4298-84F4-855D430333DB', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Quartz Scheduler v.3.1.0.0 created.', '0', '2020-08-08 11:11:36.000000', '');
INSERT INTO `Sys_Logs` VALUES ('2421587F-D8C7-4731-935B-0734F4DCE25F', 'Quartz.Core.SchedulerSignalerImpl', 'INFO', '', '', '', '', '', '', '', 'Initialized Scheduler Signaller of type: Quartz.Core.SchedulerSignalerImpl', '0', '2020-08-07 14:44:45.000000', '');
INSERT INTO `Sys_Logs` VALUES ('24E385B6-CE86-4632-B899-7E0323C4F9A4', 'Quartz.Core.SchedulerSignalerImpl', 'INFO', '', '', '', '', '', '', '', 'Initialized Scheduler Signaller of type: Quartz.Core.SchedulerSignalerImpl', '0', '2020-08-08 11:27:27.000000', '');
INSERT INTO `Sys_Logs` VALUES ('25C63917-1F94-40CB-94FA-8C24CF2112D5', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Quartz Scheduler v.3.1.0.0 created.', '0', '2020-08-08 11:15:48.000000', '');
INSERT INTO `Sys_Logs` VALUES ('2650A5E4-A7AC-48EA-B07F-623BF2A0B1E1', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler version: 3.1.0.0', '0', '2020-08-07 14:49:38.000000', '');
INSERT INTO `Sys_Logs` VALUES ('295494A1-8864-4E83-82B3-C31CEB7DA976', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Scheduler meta-data: Quartz Scheduler (v3.1.0.0) \'QuartzScheduler\' with instanceId \'NON_CLUSTERED\'\n  Scheduler class: \'Quartz.Core.QuartzScheduler\' - running locally.\n  NOT STARTED.\n  Currently in standby mode.\n  Number of jobs executed: 0\n  Using thread pool \'Quartz.Simpl.DefaultThreadPool\' - with 10 threads.\n  Using job-store \'Quartz.Simpl.RAMJobStore\' - which does not support persistence. and is not clustered.\n', '0', '2020-08-08 11:17:06.000000', '');
INSERT INTO `Sys_Logs` VALUES ('2972879B-6BCB-4E0E-B5D3-367467B1D5E7', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Scheduler meta-data: Quartz Scheduler (v3.1.0.0) \'QuartzScheduler\' with instanceId \'NON_CLUSTERED\'\n  Scheduler class: \'Quartz.Core.QuartzScheduler\' - running locally.\n  NOT STARTED.\n  Currently in standby mode.\n  Number of jobs executed: 0\n  Using thread pool \'Quartz.Simpl.DefaultThreadPool\' - with 10 threads.\n  Using job-store \'Quartz.Simpl.RAMJobStore\' - which does not support persistence. and is not clustered.\n', '0', '2020-08-07 14:45:37.000000', '');
INSERT INTO `Sys_Logs` VALUES ('29BEFFD7-5610-4B4A-81BE-32508D4004E0', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Using object serializer: Quartz.Simpl.BinaryObjectSerializer, Quartz', '0', '2020-08-07 14:45:22.000000', '');
INSERT INTO `Sys_Logs` VALUES ('29D43F91-98FE-4427-BBB5-2141753CCAA6', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Quartz Scheduler v.3.1.0.0 created.', '0', '2020-08-07 14:52:10.000000', '');
INSERT INTO `Sys_Logs` VALUES ('2C0B518C-0934-47DF-B118-6A3BE1BE3A34', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler \'QuartzScheduler\' initialized', '0', '2020-08-07 15:19:59.000000', '');
INSERT INTO `Sys_Logs` VALUES ('2CA4D9A5-1FF4-422E-A10D-3C0E0589F86B', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Quartz Scheduler v.3.1.0.0 created.', '0', '2020-08-07 15:28:43.000000', '');
INSERT INTO `Sys_Logs` VALUES ('2E88DDA0-B341-4974-BA51-A9142F4A0BC1', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler \'QuartzScheduler\' initialized', '0', '2020-08-07 14:46:10.000000', '');
INSERT INTO `Sys_Logs` VALUES ('2EA765CF-AB02-497A-AF35-A1320674629B', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Quartz Scheduler v.3.1.0.0 created.', '0', '2020-08-07 14:47:34.000000', '');
INSERT INTO `Sys_Logs` VALUES ('2FD2B87D-C5DB-401A-B59E-63D5BDF56977', 'Quartz.Simpl.RAMJobStore', 'INFO', '', '', '', '', '', '', '', 'RAMJobStore initialized.', '0', '2020-08-07 14:47:34.000000', '');
INSERT INTO `Sys_Logs` VALUES ('2FD739F8-EFB9-4ECA-8DEE-65CFA8B1633E', 'Quartz.Simpl.RAMJobStore', 'INFO', '', '', '', '', '', '', '', 'RAMJobStore initialized.', '0', '2020-08-07 14:47:47.000000', '');
INSERT INTO `Sys_Logs` VALUES ('3079AB87-3F13-436E-A869-AE6ABA76E035', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler \'QuartzScheduler\' initialized', '0', '2020-08-07 14:46:00.000000', '');
INSERT INTO `Sys_Logs` VALUES ('30F4CD9A-4E75-444A-AE05-049451F47A36', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler version: 3.1.0.0', '0', '2020-08-07 14:47:34.000000', '');
INSERT INTO `Sys_Logs` VALUES ('31842DDA-1FD1-4AAA-9F71-24F44DB3D525', 'Quartz.Simpl.RAMJobStore', 'INFO', '', '', '', '', '', '', '', 'RAMJobStore initialized.', '0', '2020-08-07 14:44:45.000000', '');
INSERT INTO `Sys_Logs` VALUES ('31F9803D-F546-4088-9B9E-E1C797978C99', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Quartz Scheduler v.3.1.0.0 created.', '0', '2020-08-07 15:17:43.000000', '');
INSERT INTO `Sys_Logs` VALUES ('330910E6-44A9-4A7D-AE05-C83CB27E2267', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Scheduler meta-data: Quartz Scheduler (v3.1.0.0) \'QuartzScheduler\' with instanceId \'NON_CLUSTERED\'\n  Scheduler class: \'Quartz.Core.QuartzScheduler\' - running locally.\n  NOT STARTED.\n  Currently in standby mode.\n  Number of jobs executed: 0\n  Using thread pool \'Quartz.Simpl.DefaultThreadPool\' - with 10 threads.\n  Using job-store \'Quartz.Simpl.RAMJobStore\' - which does not support persistence. and is not clustered.\n', '0', '2020-08-08 11:18:44.000000', '');
INSERT INTO `Sys_Logs` VALUES ('33AE4ADF-1CC6-4B6D-BE02-6B6B24F0F3EE', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Scheduler meta-data: Quartz Scheduler (v3.1.0.0) \'QuartzScheduler\' with instanceId \'NON_CLUSTERED\'\n  Scheduler class: \'Quartz.Core.QuartzScheduler\' - running locally.\n  NOT STARTED.\n  Currently in standby mode.\n  Number of jobs executed: 0\n  Using thread pool \'Quartz.Simpl.DefaultThreadPool\' - with 10 threads.\n  Using job-store \'Quartz.Simpl.RAMJobStore\' - which does not support persistence. and is not clustered.\n', '0', '2020-08-08 11:19:15.000000', '');
INSERT INTO `Sys_Logs` VALUES ('33CB41BF-3088-4977-A41E-D44C73C265A9', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Quartz Scheduler v.3.1.0.0 created.', '0', '2020-08-08 11:21:26.000000', '');
INSERT INTO `Sys_Logs` VALUES ('356104ED-0307-43CD-8A86-0270F994743F', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Quartz Scheduler v.3.1.0.0 created.', '0', '2020-08-08 11:24:59.000000', '');
INSERT INTO `Sys_Logs` VALUES ('3780FA9D-BA74-489D-B3B8-88BA23F07BB0', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler \'QuartzScheduler\' initialized', '0', '2020-08-07 14:47:34.000000', '');
INSERT INTO `Sys_Logs` VALUES ('37E82B57-52BC-4185-B3EC-99A0C75584CB', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Scheduler meta-data: Quartz Scheduler (v3.1.0.0) \'QuartzScheduler\' with instanceId \'NON_CLUSTERED\'\n  Scheduler class: \'Quartz.Core.QuartzScheduler\' - running locally.\n  NOT STARTED.\n  Currently in standby mode.\n  Number of jobs executed: 0\n  Using thread pool \'Quartz.Simpl.DefaultThreadPool\' - with 10 threads.\n  Using job-store \'Quartz.Simpl.RAMJobStore\' - which does not support persistence. and is not clustered.\n', '0', '2020-08-07 15:19:59.000000', '');
INSERT INTO `Sys_Logs` VALUES ('3AC7D3B9-650D-45B8-906D-8246A41DF182', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Scheduler meta-data: Quartz Scheduler (v3.1.0.0) \'QuartzScheduler\' with instanceId \'NON_CLUSTERED\'\n  Scheduler class: \'Quartz.Core.QuartzScheduler\' - running locally.\n  NOT STARTED.\n  Currently in standby mode.\n  Number of jobs executed: 0\n  Using thread pool \'Quartz.Simpl.DefaultThreadPool\' - with 10 threads.\n  Using job-store \'Quartz.Simpl.RAMJobStore\' - which does not support persistence. and is not clustered.\n', '0', '2020-08-07 14:55:20.000000', '');
INSERT INTO `Sys_Logs` VALUES ('3B5AE109-2F85-41FD-98C4-206E8DEEE02F', 'Quartz.Simpl.RAMJobStore', 'INFO', '', '', '', '', '', '', '', 'RAMJobStore initialized.', '0', '2020-08-08 11:21:26.000000', '');
INSERT INTO `Sys_Logs` VALUES ('3BACD9DB-A9C6-4FC4-8668-D9F0C5151206', 'Quartz.Simpl.RAMJobStore', 'INFO', '', '', '', '', '', '', '', 'RAMJobStore initialized.', '0', '2020-08-08 11:11:36.000000', '');
INSERT INTO `Sys_Logs` VALUES ('3EF2EE40-2791-48C7-A5C3-EEE4C648F7B0', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Using object serializer: Quartz.Simpl.BinaryObjectSerializer, Quartz', '0', '2020-08-08 11:17:05.000000', '');
INSERT INTO `Sys_Logs` VALUES ('40745499-8888-4236-9365-7867DFBB7AB4', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Scheduler meta-data: Quartz Scheduler (v3.1.0.0) \'QuartzScheduler\' with instanceId \'NON_CLUSTERED\'\n  Scheduler class: \'Quartz.Core.QuartzScheduler\' - running locally.\n  NOT STARTED.\n  Currently in standby mode.\n  Number of jobs executed: 0\n  Using thread pool \'Quartz.Simpl.DefaultThreadPool\' - with 10 threads.\n  Using job-store \'Quartz.Simpl.RAMJobStore\' - which does not support persistence. and is not clustered.\n', '0', '2020-08-07 14:47:34.000000', '');
INSERT INTO `Sys_Logs` VALUES ('418E33BE-9F0E-4DAD-BF77-E64DCD3FB960', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Quartz Scheduler v.3.1.0.0 created.', '0', '2020-08-08 11:16:30.000000', '');
INSERT INTO `Sys_Logs` VALUES ('41A30DC0-27DC-41D9-80A9-6728F317D989', 'Quartz.Simpl.RAMJobStore', 'INFO', '', '', '', '', '', '', '', 'RAMJobStore initialized.', '0', '2020-08-08 11:17:29.000000', '');
INSERT INTO `Sys_Logs` VALUES ('42DB8197-7ED7-4F4C-A3F7-C202DF24356F', 'Quartz.Core.SchedulerSignalerImpl', 'INFO', '', '', '', '', '', '', '', 'Initialized Scheduler Signaller of type: Quartz.Core.SchedulerSignalerImpl', '0', '2020-08-08 11:11:36.000000', '');
INSERT INTO `Sys_Logs` VALUES ('4574116E-6DA7-4A48-ABB0-2B916DA0573E', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler \'QuartzScheduler\' initialized', '0', '2020-08-08 11:20:39.000000', '');
INSERT INTO `Sys_Logs` VALUES ('465FC38B-B011-423B-B1B9-5A500BEE8562', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Using object serializer: Quartz.Simpl.BinaryObjectSerializer, Quartz', '0', '2020-08-07 14:47:33.000000', '');
INSERT INTO `Sys_Logs` VALUES ('46A5BAA0-C637-4915-BEE1-B5DBDC65E221', 'Quartz.Simpl.RAMJobStore', 'INFO', '', '', '', '', '', '', '', 'RAMJobStore initialized.', '0', '2020-08-07 15:19:59.000000', '');
INSERT INTO `Sys_Logs` VALUES ('470CABA9-ACFA-4BB3-B8FB-B42DA9676272', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Using object serializer: Quartz.Simpl.BinaryObjectSerializer, Quartz', '0', '2020-08-08 11:19:14.000000', '');
INSERT INTO `Sys_Logs` VALUES ('48F14514-9B2A-4410-8229-195989F63C36', 'Quartz.Simpl.RAMJobStore', 'INFO', '', '', '', '', '', '', '', 'RAMJobStore initialized.', '0', '2020-08-07 14:49:38.000000', '');
INSERT INTO `Sys_Logs` VALUES ('49E308E9-17C3-461A-9D23-62DFAD6E8FF0', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Scheduler QuartzScheduler_$_NON_CLUSTERED started.', '0', '2020-08-08 11:27:28.000000', '');
INSERT INTO `Sys_Logs` VALUES ('49F9CBB3-5B63-4EB5-B434-336BDF865026', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler \'QuartzScheduler\' initialized', '0', '2020-08-08 11:11:36.000000', '');
INSERT INTO `Sys_Logs` VALUES ('4B3DEEF8-855F-4868-8051-00552D41C151', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler version: 3.1.0.0', '0', '2020-08-08 11:11:36.000000', '');
INSERT INTO `Sys_Logs` VALUES ('4BEB5875-40F8-4E8B-B5B2-E71A30AC500A', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Using object serializer: Quartz.Simpl.BinaryObjectSerializer, Quartz', '0', '2020-08-07 15:17:43.000000', '');
INSERT INTO `Sys_Logs` VALUES ('4C8420AD-4AE0-4301-82AD-3CFFF72E7ABE', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Scheduler meta-data: Quartz Scheduler (v3.1.0.0) \'QuartzScheduler\' with instanceId \'NON_CLUSTERED\'\n  Scheduler class: \'Quartz.Core.QuartzScheduler\' - running locally.\n  NOT STARTED.\n  Currently in standby mode.\n  Number of jobs executed: 0\n  Using thread pool \'Quartz.Simpl.DefaultThreadPool\' - with 10 threads.\n  Using job-store \'Quartz.Simpl.RAMJobStore\' - which does not support persistence. and is not clustered.\n', '0', '2020-08-07 15:17:43.000000', '');
INSERT INTO `Sys_Logs` VALUES ('4E2A1959-82D8-4ED4-AF86-B92C4826A505', 'Quartz.Core.SchedulerSignalerImpl', 'INFO', '', '', '', '', '', '', '', 'Initialized Scheduler Signaller of type: Quartz.Core.SchedulerSignalerImpl', '0', '2020-08-07 14:49:19.000000', '');
INSERT INTO `Sys_Logs` VALUES ('4F95B0FC-BB21-40B2-BAA6-6B3EEDDC9A64', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Using object serializer: Quartz.Simpl.BinaryObjectSerializer, Quartz', '0', '2020-08-08 11:15:48.000000', '');
INSERT INTO `Sys_Logs` VALUES ('4FD9F201-0E80-47A1-9E82-056915BF1B3A', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Quartz Scheduler v.3.1.0.0 created.', '0', '2020-08-08 11:13:44.000000', '');
INSERT INTO `Sys_Logs` VALUES ('520C2EB0-EE00-4ACF-8B09-94A0B49AD86C', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler version: 3.1.0.0', '0', '2020-08-08 11:24:59.000000', '');
INSERT INTO `Sys_Logs` VALUES ('5218F582-FAC0-4FA1-8803-55E0E701E16A', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Using object serializer: Quartz.Simpl.BinaryObjectSerializer, Quartz', '0', '2020-08-08 11:11:06.000000', '');
INSERT INTO `Sys_Logs` VALUES ('5497DD33-B437-41BA-9996-14F32F67DA0F', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Quartz Scheduler v.3.1.0.0 created.', '0', '2020-08-08 11:12:47.000000', '');
INSERT INTO `Sys_Logs` VALUES ('55071095-759C-40B7-A949-E96E3659CB9B', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Using object serializer: Quartz.Simpl.BinaryObjectSerializer, Quartz', '0', '2020-08-07 15:18:47.000000', '');
INSERT INTO `Sys_Logs` VALUES ('564841BD-A93F-4210-B7E1-C19F85AFC90B', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'JobFactory set to: Meiam.System.Tasks.JobFactory', '0', '2020-08-07 14:53:09.000000', '');
INSERT INTO `Sys_Logs` VALUES ('566C1386-D2A4-4F51-9535-436EA482077F', 'Quartz.Simpl.RAMJobStore', 'INFO', '', '', '', '', '', '', '', 'RAMJobStore initialized.', '0', '2020-08-07 14:45:37.000000', '');
INSERT INTO `Sys_Logs` VALUES ('56C662E0-7CA9-4853-ABF6-472FD065722D', 'Quartz.Core.SchedulerSignalerImpl', 'INFO', '', '', '', '', '', '', '', 'Initialized Scheduler Signaller of type: Quartz.Core.SchedulerSignalerImpl', '0', '2020-08-07 14:49:38.000000', '');
INSERT INTO `Sys_Logs` VALUES ('56D4FC77-A312-44E1-B1E4-F381CB6805B1', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler version: 3.1.0.0', '0', '2020-08-07 14:49:19.000000', '');
INSERT INTO `Sys_Logs` VALUES ('57536D63-C9DE-4176-A9A5-FBE3E7C126C0', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler \'QuartzScheduler\' initialized', '0', '2020-08-08 11:21:26.000000', '');
INSERT INTO `Sys_Logs` VALUES ('58329B9A-978D-456B-AD17-D612449A84A5', 'Quartz.Core.SchedulerSignalerImpl', 'INFO', '', '', '', '', '', '', '', 'Initialized Scheduler Signaller of type: Quartz.Core.SchedulerSignalerImpl', '0', '2020-08-07 14:46:00.000000', '');
INSERT INTO `Sys_Logs` VALUES ('59F95009-58CF-48DF-8CF6-591D08F12235', 'Quartz.Simpl.RAMJobStore', 'INFO', '', '', '', '', '', '', '', 'RAMJobStore initialized.', '0', '2020-08-07 15:18:48.000000', '');
INSERT INTO `Sys_Logs` VALUES ('5A0779C5-4D9B-463B-9C9D-E2CF7039B18D', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Scheduler meta-data: Quartz Scheduler (v3.1.0.0) \'QuartzScheduler\' with instanceId \'NON_CLUSTERED\'\n  Scheduler class: \'Quartz.Core.QuartzScheduler\' - running locally.\n  NOT STARTED.\n  Currently in standby mode.\n  Number of jobs executed: 0\n  Using thread pool \'Quartz.Simpl.DefaultThreadPool\' - with 10 threads.\n  Using job-store \'Quartz.Simpl.RAMJobStore\' - which does not support persistence. and is not clustered.\n', '0', '2020-08-07 14:46:00.000000', '');
INSERT INTO `Sys_Logs` VALUES ('5AAAB786-5F85-42CF-9E05-6455997DC24B', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler version: 3.1.0.0', '0', '2020-08-08 11:19:15.000000', '');
INSERT INTO `Sys_Logs` VALUES ('5B3338E3-DE3F-4CB0-90E4-0B296863840D', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Scheduler meta-data: Quartz Scheduler (v3.1.0.0) \'QuartzScheduler\' with instanceId \'NON_CLUSTERED\'\n  Scheduler class: \'Quartz.Core.QuartzScheduler\' - running locally.\n  NOT STARTED.\n  Currently in standby mode.\n  Number of jobs executed: 0\n  Using thread pool \'Quartz.Simpl.DefaultThreadPool\' - with 10 threads.\n  Using job-store \'Quartz.Simpl.RAMJobStore\' - which does not support persistence. and is not clustered.\n', '0', '2020-08-07 14:46:10.000000', '');
INSERT INTO `Sys_Logs` VALUES ('5C08FE58-E83F-4745-B313-584C59E90B82', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Scheduler meta-data: Quartz Scheduler (v3.1.0.0) \'QuartzScheduler\' with instanceId \'NON_CLUSTERED\'\n  Scheduler class: \'Quartz.Core.QuartzScheduler\' - running locally.\n  NOT STARTED.\n  Currently in standby mode.\n  Number of jobs executed: 0\n  Using thread pool \'Quartz.Simpl.DefaultThreadPool\' - with 10 threads.\n  Using job-store \'Quartz.Simpl.RAMJobStore\' - which does not support persistence. and is not clustered.\n', '0', '2020-08-07 14:52:11.000000', '');
INSERT INTO `Sys_Logs` VALUES ('5D25450C-05FA-4F75-B9BF-6A73DE1022F2', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Scheduler meta-data: Quartz Scheduler (v3.1.0.0) \'QuartzScheduler\' with instanceId \'NON_CLUSTERED\'\n  Scheduler class: \'Quartz.Core.QuartzScheduler\' - running locally.\n  NOT STARTED.\n  Currently in standby mode.\n  Number of jobs executed: 0\n  Using thread pool \'Quartz.Simpl.DefaultThreadPool\' - with 10 threads.\n  Using job-store \'Quartz.Simpl.RAMJobStore\' - which does not support persistence. and is not clustered.\n', '0', '2020-08-07 15:18:48.000000', '');
INSERT INTO `Sys_Logs` VALUES ('5D6E34E9-0EAB-4F98-B507-F49C85F8731B', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Using object serializer: Quartz.Simpl.BinaryObjectSerializer, Quartz', '0', '2020-08-07 14:44:44.000000', '');
INSERT INTO `Sys_Logs` VALUES ('5D7F26B3-7AA5-4274-B33B-2D569CB7E95C', 'Quartz.Core.SchedulerSignalerImpl', 'INFO', '', '', '', '', '', '', '', 'Initialized Scheduler Signaller of type: Quartz.Core.SchedulerSignalerImpl', '0', '2020-08-08 11:13:44.000000', '');
INSERT INTO `Sys_Logs` VALUES ('5DA862DC-BA5F-4831-8DF5-7152C98F6B1B', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler \'QuartzScheduler\' initialized', '0', '2020-08-08 11:24:59.000000', '');
INSERT INTO `Sys_Logs` VALUES ('61E75B61-F01E-4FA8-A223-2157D1C2F90C', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Scheduler meta-data: Quartz Scheduler (v3.1.0.0) \'QuartzScheduler\' with instanceId \'NON_CLUSTERED\'\n  Scheduler class: \'Quartz.Core.QuartzScheduler\' - running locally.\n  NOT STARTED.\n  Currently in standby mode.\n  Number of jobs executed: 0\n  Using thread pool \'Quartz.Simpl.DefaultThreadPool\' - with 10 threads.\n  Using job-store \'Quartz.Simpl.RAMJobStore\' - which does not support persistence. and is not clustered.\n', '0', '2020-08-07 15:28:43.000000', '');
INSERT INTO `Sys_Logs` VALUES ('6202B76D-F26C-49D6-B66C-542681869477', 'Quartz.Simpl.RAMJobStore', 'INFO', '', '', '', '', '', '', '', 'RAMJobStore initialized.', '0', '2020-08-08 11:16:30.000000', '');
INSERT INTO `Sys_Logs` VALUES ('621262B6-7D3E-4C2D-9CA7-75EE11A8AE1F', 'Quartz.Simpl.RAMJobStore', 'INFO', '', '', '', '', '', '', '', 'RAMJobStore initialized.', '0', '2020-08-08 11:19:15.000000', '');
INSERT INTO `Sys_Logs` VALUES ('640A1BEA-A82E-4C7F-8B9E-2BFCA5F3E34A', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Quartz Scheduler v.3.1.0.0 created.', '0', '2020-08-07 14:47:47.000000', '');
INSERT INTO `Sys_Logs` VALUES ('64DFDFE4-13F9-49E4-98E2-46454910A932', 'Quartz.Core.SchedulerSignalerImpl', 'INFO', '', '', '', '', '', '', '', 'Initialized Scheduler Signaller of type: Quartz.Core.SchedulerSignalerImpl', '0', '2020-08-08 11:19:15.000000', '');
INSERT INTO `Sys_Logs` VALUES ('656F3707-04BB-475A-B86B-B50525684AB2', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Quartz Scheduler v.3.1.0.0 created.', '0', '2020-08-08 11:17:29.000000', '');
INSERT INTO `Sys_Logs` VALUES ('6796728D-4033-4548-927F-3D913DC3379A', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler \'QuartzScheduler\' initialized', '0', '2020-08-08 11:17:29.000000', '');
INSERT INTO `Sys_Logs` VALUES ('68949A6C-774C-4CBF-8B51-16FED2FB9E6F', 'Quartz.Simpl.RAMJobStore', 'INFO', '', '', '', '', '', '', '', 'RAMJobStore initialized.', '0', '2020-08-07 14:46:10.000000', '');
INSERT INTO `Sys_Logs` VALUES ('691BB286-D203-4057-B8E7-A69D6CE55AD0', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Scheduler QuartzScheduler_$_NON_CLUSTERED started.', '0', '2020-08-07 14:52:11.000000', '');
INSERT INTO `Sys_Logs` VALUES ('69534205-C7D6-4F2C-BF09-8109EECF979C', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Using object serializer: Quartz.Simpl.BinaryObjectSerializer, Quartz', '0', '2020-08-08 11:16:30.000000', '');
INSERT INTO `Sys_Logs` VALUES ('6E8D3566-30BF-4C40-BD44-8EE5AB0B9FCE', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler version: 3.1.0.0', '0', '2020-08-07 15:17:43.000000', '');
INSERT INTO `Sys_Logs` VALUES ('6EEAE096-1FBF-4FF0-BC0C-E9AE038AA2F5', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler \'QuartzScheduler\' initialized', '0', '2020-08-07 14:52:11.000000', '');
INSERT INTO `Sys_Logs` VALUES ('70941F50-C885-4D65-91C1-45E13098BB55', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler \'QuartzScheduler\' initialized', '0', '2020-08-07 14:45:22.000000', '');
INSERT INTO `Sys_Logs` VALUES ('71D24BD5-E3FE-4568-A4AB-13FEF8128CD7', 'Quartz.Simpl.RAMJobStore', 'INFO', '', '', '', '', '', '', '', 'RAMJobStore initialized.', '0', '2020-08-07 14:53:08.000000', '');
INSERT INTO `Sys_Logs` VALUES ('74B8D0C8-EBBB-4369-8352-8BA079D67347', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Scheduler meta-data: Quartz Scheduler (v3.1.0.0) \'QuartzScheduler\' with instanceId \'NON_CLUSTERED\'\n  Scheduler class: \'Quartz.Core.QuartzScheduler\' - running locally.\n  NOT STARTED.\n  Currently in standby mode.\n  Number of jobs executed: 0\n  Using thread pool \'Quartz.Simpl.DefaultThreadPool\' - with 10 threads.\n  Using job-store \'Quartz.Simpl.RAMJobStore\' - which does not support persistence. and is not clustered.\n', '0', '2020-08-08 11:27:27.000000', '');
INSERT INTO `Sys_Logs` VALUES ('75A0B870-22B1-435C-A18A-53FA7E7DA2D5', 'Quartz.Core.SchedulerSignalerImpl', 'INFO', '', '', '', '', '', '', '', 'Initialized Scheduler Signaller of type: Quartz.Core.SchedulerSignalerImpl', '0', '2020-08-08 11:21:26.000000', '');
INSERT INTO `Sys_Logs` VALUES ('7A98BAF7-1C8D-4BF1-8936-BFFB8CB21BA8', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler version: 3.1.0.0', '0', '2020-08-08 11:12:47.000000', '');
INSERT INTO `Sys_Logs` VALUES ('7AB9933A-77B6-4E45-8F0D-F2241F0D060D', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Using object serializer: Quartz.Simpl.BinaryObjectSerializer, Quartz', '0', '2020-08-08 11:13:44.000000', '');
INSERT INTO `Sys_Logs` VALUES ('7DBD1FAF-938C-400F-900F-8537B502DD90', 'Quartz.Core.SchedulerSignalerImpl', 'INFO', '', '', '', '', '', '', '', 'Initialized Scheduler Signaller of type: Quartz.Core.SchedulerSignalerImpl', '0', '2020-08-07 14:48:29.000000', '');
INSERT INTO `Sys_Logs` VALUES ('7DCED99B-5E84-483D-BE0F-C1C2E7BF4409', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler \'QuartzScheduler\' initialized', '0', '2020-08-07 14:45:37.000000', '');
INSERT INTO `Sys_Logs` VALUES ('7DF7F449-AE25-4CC1-99B2-8909D4CA1F39', 'Quartz.Core.SchedulerSignalerImpl', 'INFO', '', '', '', '', '', '', '', 'Initialized Scheduler Signaller of type: Quartz.Core.SchedulerSignalerImpl', '0', '2020-08-07 15:18:47.000000', '');
INSERT INTO `Sys_Logs` VALUES ('7E0F9A03-695D-4904-BF34-049960E74977', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Scheduler meta-data: Quartz Scheduler (v3.1.0.0) \'QuartzScheduler\' with instanceId \'NON_CLUSTERED\'\n  Scheduler class: \'Quartz.Core.QuartzScheduler\' - running locally.\n  NOT STARTED.\n  Currently in standby mode.\n  Number of jobs executed: 0\n  Using thread pool \'Quartz.Simpl.DefaultThreadPool\' - with 10 threads.\n  Using job-store \'Quartz.Simpl.RAMJobStore\' - which does not support persistence. and is not clustered.\n', '0', '2020-08-07 14:49:19.000000', '');
INSERT INTO `Sys_Logs` VALUES ('7F3CED0F-27DD-4B03-9EA8-DA1D78A828F2', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler version: 3.1.0.0', '0', '2020-08-08 11:17:29.000000', '');
INSERT INTO `Sys_Logs` VALUES ('7F993D20-07F1-4B0F-AFF0-3162D4C0C896', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler \'QuartzScheduler\' initialized', '0', '2020-08-08 11:12:47.000000', '');
INSERT INTO `Sys_Logs` VALUES ('81CF3799-4E11-4D5C-B20D-D3ADA770DF33', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler version: 3.1.0.0', '0', '2020-08-08 11:27:27.000000', '');
INSERT INTO `Sys_Logs` VALUES ('81F04B6E-F800-4731-8D6C-0EA3113935D5', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler version: 3.1.0.0', '0', '2020-08-07 14:52:11.000000', '');
INSERT INTO `Sys_Logs` VALUES ('824FF6C4-5E01-4483-A96F-BBD2C14430D8', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Using object serializer: Quartz.Simpl.BinaryObjectSerializer, Quartz', '0', '2020-08-08 11:11:35.000000', '');
INSERT INTO `Sys_Logs` VALUES ('829AC902-B3C9-4670-A991-E87101E4D50A', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Quartz Scheduler v.3.1.0.0 created.', '0', '2020-08-08 11:18:44.000000', '');
INSERT INTO `Sys_Logs` VALUES ('8364E631-11B1-4A76-A1EA-8C787D98CFDD', 'Quartz.Core.SchedulerSignalerImpl', 'INFO', '', '', '', '', '', '', '', 'Initialized Scheduler Signaller of type: Quartz.Core.SchedulerSignalerImpl', '0', '2020-08-08 11:11:07.000000', '');
INSERT INTO `Sys_Logs` VALUES ('84CF13D3-723D-4E37-A0E5-4FBE0ED5AF33', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Scheduler meta-data: Quartz Scheduler (v3.1.0.0) \'QuartzScheduler\' with instanceId \'NON_CLUSTERED\'\n  Scheduler class: \'Quartz.Core.QuartzScheduler\' - running locally.\n  NOT STARTED.\n  Currently in standby mode.\n  Number of jobs executed: 0\n  Using thread pool \'Quartz.Simpl.DefaultThreadPool\' - with 10 threads.\n  Using job-store \'Quartz.Simpl.RAMJobStore\' - which does not support persistence. and is not clustered.\n', '0', '2020-08-08 11:15:48.000000', '');
INSERT INTO `Sys_Logs` VALUES ('84D8B8FF-2DC9-4960-95AE-5206046D7B08', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Scheduler meta-data: Quartz Scheduler (v3.1.0.0) \'QuartzScheduler\' with instanceId \'NON_CLUSTERED\'\n  Scheduler class: \'Quartz.Core.QuartzScheduler\' - running locally.\n  NOT STARTED.\n  Currently in standby mode.\n  Number of jobs executed: 0\n  Using thread pool \'Quartz.Simpl.DefaultThreadPool\' - with 10 threads.\n  Using job-store \'Quartz.Simpl.RAMJobStore\' - which does not support persistence. and is not clustered.\n', '0', '2020-08-08 11:24:59.000000', '');
INSERT INTO `Sys_Logs` VALUES ('8519089B-3C89-44C5-8649-4494184AAF96', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Quartz Scheduler v.3.1.0.0 created.', '0', '2020-08-07 14:45:22.000000', '');
INSERT INTO `Sys_Logs` VALUES ('8541C20F-1E4C-4635-8038-99393AA836F8', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler \'QuartzScheduler\' initialized', '0', '2020-08-08 11:13:44.000000', '');
INSERT INTO `Sys_Logs` VALUES ('86D79784-FB2E-4797-A240-7AAA4ED6019C', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Using object serializer: Quartz.Simpl.BinaryObjectSerializer, Quartz', '0', '2020-08-07 14:48:29.000000', '');
INSERT INTO `Sys_Logs` VALUES ('89B53872-A67D-4B65-BC9B-8BF2101E2661', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Quartz Scheduler v.3.1.0.0 created.', '0', '2020-08-08 11:27:27.000000', '');
INSERT INTO `Sys_Logs` VALUES ('8ACC4493-12A9-4885-99AB-89679164D416', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Using object serializer: Quartz.Simpl.BinaryObjectSerializer, Quartz', '0', '2020-08-07 14:52:10.000000', '');
INSERT INTO `Sys_Logs` VALUES ('8C57FA90-290A-4A0B-97EF-1E1FC10CF8B8', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler \'QuartzScheduler\' initialized', '0', '2020-08-08 11:18:44.000000', '');
INSERT INTO `Sys_Logs` VALUES ('8D12DD1E-C2B0-4522-A07F-867B7430B850', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Scheduler meta-data: Quartz Scheduler (v3.1.0.0) \'QuartzScheduler\' with instanceId \'NON_CLUSTERED\'\n  Scheduler class: \'Quartz.Core.QuartzScheduler\' - running locally.\n  NOT STARTED.\n  Currently in standby mode.\n  Number of jobs executed: 0\n  Using thread pool \'Quartz.Simpl.DefaultThreadPool\' - with 10 threads.\n  Using job-store \'Quartz.Simpl.RAMJobStore\' - which does not support persistence. and is not clustered.\n', '0', '2020-08-08 11:11:36.000000', '');
INSERT INTO `Sys_Logs` VALUES ('8E308824-12D5-11EB-AE11-02001700DA73', 'Meiam.System.Hostd.Middleware.RequestMiddleware', 'TRACE', '/api/auth/login', 'api.meiam.top', 'POST', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '', '', '{\"username\":\"9999\",\"password\":\"123456\",\"code\":\"232313\"}', 'Success', '10', '2020-10-20 21:09:58.673200', '157.61.112.7');
INSERT INTO `Sys_Logs` VALUES ('8E3B163B-5A17-4687-BF8A-A9EFE993C6A7', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Using object serializer: Quartz.Simpl.BinaryObjectSerializer, Quartz', '0', '2020-08-08 11:20:39.000000', '');
INSERT INTO `Sys_Logs` VALUES ('8FCEE3CF-DAFE-456F-B5DA-5B9158BA70A0', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Using object serializer: Quartz.Simpl.BinaryObjectSerializer, Quartz', '0', '2020-08-08 11:18:43.000000', '');
INSERT INTO `Sys_Logs` VALUES ('905B7AA1-F35C-49BD-8082-FDE3E2FDE667', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler version: 3.1.0.0', '0', '2020-08-08 11:16:31.000000', '');
INSERT INTO `Sys_Logs` VALUES ('91D3CA53-12D5-11EB-AE11-02001700DA73', 'Meiam.System.Hostd.Middleware.RequestMiddleware', 'TRACE', '/api/auth/login', 'api.meiam.top', 'POST', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '', '', '{\"username\":\"9999\",\"password\":\"123456\",\"code\":\"1234\"}', 'Success', '1', '2020-10-20 21:10:04.881400', '157.61.112.7');
INSERT INTO `Sys_Logs` VALUES ('91E30A8C-8526-4C90-A446-84C51FC1A419', 'Quartz.Simpl.RAMJobStore', 'INFO', '', '', '', '', '', '', '', 'RAMJobStore initialized.', '0', '2020-08-07 14:45:22.000000', '');
INSERT INTO `Sys_Logs` VALUES ('92403CAB-0EB1-4574-8B2B-5B415F6F1948', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Quartz Scheduler v.3.1.0.0 created.', '0', '2020-08-08 11:17:06.000000', '');
INSERT INTO `Sys_Logs` VALUES ('94C01F39-12D1-11EB-AE11-02001700DA73', 'Meiam.System.Hostd.Middleware.RequestMiddleware', 'TRACE', '/api/auth/getUserInfo', 'api.meiam.top', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', '9D35C9A8-3B3C-435F-954E-8DF5491E1A67', '', '', 'Success', '13', '2020-10-20 20:41:31.800800', '115.56.231.94');
INSERT INTO `Sys_Logs` VALUES ('94FD4234-F4AD-4832-8B62-02E7ED979D5B', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler version: 3.1.0.0', '0', '2020-08-07 14:45:37.000000', '');
INSERT INTO `Sys_Logs` VALUES ('95042C15-12D1-11EB-AE11-02001700DA73', 'Meiam.System.Hostd.Middleware.RequestMiddleware', 'TRACE', '/api/menus/getUserMenus', 'api.meiam.top', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', '9D35C9A8-3B3C-435F-954E-8DF5491E1A67', '', '', 'Success', '13', '2020-10-20 20:41:32.246800', '115.56.231.94');
INSERT INTO `Sys_Logs` VALUES ('96382DC6-4F0D-4400-8BDC-B6EA75E9F30D', 'Quartz.Simpl.RAMJobStore', 'INFO', '', '', '', '', '', '', '', 'RAMJobStore initialized.', '0', '2020-08-08 11:11:07.000000', '');
INSERT INTO `Sys_Logs` VALUES ('96B982F1-8825-424A-999E-E26CCE67A8AF', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler version: 3.1.0.0', '0', '2020-08-07 14:46:10.000000', '');
INSERT INTO `Sys_Logs` VALUES ('96F0B886-12D1-11EB-AE11-02001700DA73', 'Meiam.System.Hostd.Middleware.RequestMiddleware', 'TRACE', '/api/online/query', 'api.meiam.top', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', '9D35C9A8-3B3C-435F-954E-8DF5491E1A67', '', '{\"beginDate\":\"2020-10-13\",\"endDate\":\"2020-10-20\",\"pageSize\":10,\"orderby\":\"loginTime\",\"sort\":\"descending\",\"pageIndex\":1}', 'Success', '22', '2020-10-20 20:41:35.461000', '115.56.231.94');
INSERT INTO `Sys_Logs` VALUES ('971B6004-6852-44CD-9284-82AA6431922E', 'Quartz.Core.SchedulerSignalerImpl', 'INFO', '', '', '', '', '', '', '', 'Initialized Scheduler Signaller of type: Quartz.Core.SchedulerSignalerImpl', '0', '2020-08-07 14:52:10.000000', '');
INSERT INTO `Sys_Logs` VALUES ('976C7F30-0F46-4569-B87D-AB3D37520C3B', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Scheduler QuartzScheduler_$_NON_CLUSTERED started.', '0', '2020-08-07 14:55:20.000000', '');
INSERT INTO `Sys_Logs` VALUES ('9860661D-3AB8-43F1-8486-8972393373C4', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Quartz Scheduler v.3.1.0.0 created.', '0', '2020-08-07 15:18:48.000000', '');
INSERT INTO `Sys_Logs` VALUES ('98DF92C2-1AC0-40BF-9EDA-6A11C54EFDD4', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Using object serializer: Quartz.Simpl.BinaryObjectSerializer, Quartz', '0', '2020-08-08 11:12:46.000000', '');
INSERT INTO `Sys_Logs` VALUES ('9951AB47-AB0A-4402-BA95-750221CF711E', 'Quartz.Core.SchedulerSignalerImpl', 'INFO', '', '', '', '', '', '', '', 'Initialized Scheduler Signaller of type: Quartz.Core.SchedulerSignalerImpl', '0', '2020-08-07 14:45:37.000000', '');
INSERT INTO `Sys_Logs` VALUES ('9A371BF3-12D1-11EB-AE11-02001700DA73', 'Meiam.System.Hostd.Middleware.RequestMiddleware', 'TRACE', '/api/roles/query', 'api.meiam.top', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', '9D35C9A8-3B3C-435F-954E-8DF5491E1A67', '', '{\"pageIndex\":1,\"pageSize\":10,\"orderby\":\"createTime\",\"sort\":\"ascending\"}', 'Success', '16', '2020-10-20 20:41:40.961400', '115.56.231.94');
INSERT INTO `Sys_Logs` VALUES ('9D2A4A40-12D1-11EB-AE11-02001700DA73', 'Meiam.System.Hostd.Middleware.RequestMiddleware', 'TRACE', '/api/auth/logOut', 'api.meiam.top', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', '9D35C9A8-3B3C-435F-954E-8DF5491E1A67', '', '', 'Success', '12', '2020-10-20 20:41:45.915200', '115.56.231.94');
INSERT INTO `Sys_Logs` VALUES ('9ECC92C1-7B9B-4CCE-A52C-C526B4291B05', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler version: 3.1.0.0', '0', '2020-08-08 11:20:39.000000', '');
INSERT INTO `Sys_Logs` VALUES ('A07CF156-F330-46C3-893B-6B2E857C41F5', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler version: 3.1.0.0', '0', '2020-08-07 14:45:22.000000', '');
INSERT INTO `Sys_Logs` VALUES ('A170CBB5-3CB0-4E60-A3C4-D72D9D0FB8C1', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Scheduler meta-data: Quartz Scheduler (v3.1.0.0) \'QuartzScheduler\' with instanceId \'NON_CLUSTERED\'\n  Scheduler class: \'Quartz.Core.QuartzScheduler\' - running locally.\n  NOT STARTED.\n  Currently in standby mode.\n  Number of jobs executed: 0\n  Using thread pool \'Quartz.Simpl.DefaultThreadPool\' - with 10 threads.\n  Using job-store \'Quartz.Simpl.RAMJobStore\' - which does not support persistence. and is not clustered.\n', '0', '2020-08-07 14:49:38.000000', '');
INSERT INTO `Sys_Logs` VALUES ('A1F6062A-4407-435C-BEFB-EC6E5A354733', 'Quartz.Core.SchedulerSignalerImpl', 'INFO', '', '', '', '', '', '', '', 'Initialized Scheduler Signaller of type: Quartz.Core.SchedulerSignalerImpl', '0', '2020-08-07 15:28:43.000000', '');
INSERT INTO `Sys_Logs` VALUES ('A40AD544-63C7-48B9-9B0B-55B0F2B0E866', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Scheduler meta-data: Quartz Scheduler (v3.1.0.0) \'QuartzScheduler\' with instanceId \'NON_CLUSTERED\'\n  Scheduler class: \'Quartz.Core.QuartzScheduler\' - running locally.\n  NOT STARTED.\n  Currently in standby mode.\n  Number of jobs executed: 0\n  Using thread pool \'Quartz.Simpl.DefaultThreadPool\' - with 10 threads.\n  Using job-store \'Quartz.Simpl.RAMJobStore\' - which does not support persistence. and is not clustered.\n', '0', '2020-08-07 14:47:47.000000', '');
INSERT INTO `Sys_Logs` VALUES ('A4593A75-AD76-4027-840B-5CB35D56D0C8', 'Quartz.Core.SchedulerSignalerImpl', 'INFO', '', '', '', '', '', '', '', 'Initialized Scheduler Signaller of type: Quartz.Core.SchedulerSignalerImpl', '0', '2020-08-07 14:47:47.000000', '');
INSERT INTO `Sys_Logs` VALUES ('A4B8DD95-52ED-4284-A89A-53524679F8E5', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler \'QuartzScheduler\' initialized', '0', '2020-08-08 11:19:15.000000', '');
INSERT INTO `Sys_Logs` VALUES ('A4EEAEF3-12D1-11EB-AE11-02001700DA73', 'Meiam.System.Hostd.Middleware.RequestMiddleware', 'TRACE', '/api/auth/code', 'api.meiam.top', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', '', '[{\"t\":\"1603197720533\"}]', '', 'Success', '9', '2020-10-20 20:41:58.947100', '115.56.231.94');
INSERT INTO `Sys_Logs` VALUES ('A5DE1A4B-FA67-4D87-89B8-A0923996BA25', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler version: 3.1.0.0', '0', '2020-08-07 15:19:59.000000', '');
INSERT INTO `Sys_Logs` VALUES ('A79AF5FF-12D1-11EB-AE11-02001700DA73', 'Meiam.System.Hostd.Middleware.RequestMiddleware', 'TRACE', '/api/auth/code', 'api.meiam.top', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', '', '[{\"t\":\"1603197723741\"}]', '', 'Success', '14', '2020-10-20 20:42:03.433800', '112.65.48.84');
INSERT INTO `Sys_Logs` VALUES ('A7C43D24-2A88-44A6-B2C6-6AAC7AFE9E20', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler version: 3.1.0.0', '0', '2020-08-07 14:55:20.000000', '');
INSERT INTO `Sys_Logs` VALUES ('AAE3B780-BD3B-4631-9630-51BB9BFB6CC5', 'Quartz.Simpl.RAMJobStore', 'INFO', '', '', '', '', '', '', '', 'RAMJobStore initialized.', '0', '2020-08-08 11:12:47.000000', '');
INSERT INTO `Sys_Logs` VALUES ('AB12F54F-FE80-42DE-A128-30D183BE03DD', 'Quartz.Core.SchedulerSignalerImpl', 'INFO', '', '', '', '', '', '', '', 'Initialized Scheduler Signaller of type: Quartz.Core.SchedulerSignalerImpl', '0', '2020-08-08 11:24:59.000000', '');
INSERT INTO `Sys_Logs` VALUES ('AB5E0D67-12D1-11EB-AE11-02001700DA73', 'Meiam.System.Hostd.Middleware.RequestMiddleware', 'TRACE', '/api/auth/login', 'api.meiam.top', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', '', '', '{\"username\":\"9999\",\"password\":\"123456\",\"code\":\"6ca8\",\"uuid\":\"1AF6431F-3491-43DD-BC0F-72A321215917\"}', 'Success', '114', '2020-10-20 20:42:09.745200', '112.65.48.84');
INSERT INTO `Sys_Logs` VALUES ('AB799482-12D1-11EB-AE11-02001700DA73', 'Meiam.System.Hostd.Middleware.RequestMiddleware', 'TRACE', '/api/auth/getUserInfo', 'api.meiam.top', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', '85231312-8596-4387-86A6-1FE98F36CB02', '', '', 'Success', '8', '2020-10-20 20:42:09.925900', '112.65.48.84');
INSERT INTO `Sys_Logs` VALUES ('AB941CF2-12D1-11EB-AE11-02001700DA73', 'Meiam.System.Hostd.Middleware.RequestMiddleware', 'TRACE', '/api/menus/getUserMenus', 'api.meiam.top', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', '85231312-8596-4387-86A6-1FE98F36CB02', '', '', 'Success', '23', '2020-10-20 20:42:10.099900', '112.65.48.84');
INSERT INTO `Sys_Logs` VALUES ('ABBDCB69-12D1-11EB-AE11-02001700DA73', 'Meiam.System.Hostd.Middleware.RequestMiddleware', 'TRACE', '/api/menus/getUserMenus', 'api.meiam.top', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', '85231312-8596-4387-86A6-1FE98F36CB02', '', '', 'Success', '14', '2020-10-20 20:42:10.373300', '112.65.48.84');
INSERT INTO `Sys_Logs` VALUES ('AC835275-12D1-11EB-AE11-02001700DA73', 'Meiam.System.Hostd.Middleware.RequestMiddleware', 'TRACE', '/api/auth/login', 'api.meiam.top', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', '', '', '{\"username\":\"9999\",\"password\":\"123456\",\"code\":\"9YXD\",\"uuid\":\"07D8369A-262B-4770-B9BB-962A2FF17D0F\"}', 'Success', '108', '2020-10-20 20:42:11.667500', '115.56.231.94');
INSERT INTO `Sys_Logs` VALUES ('ACA0F47B-12D1-11EB-AE11-02001700DA73', 'Meiam.System.Hostd.Middleware.RequestMiddleware', 'TRACE', '/api/auth/getUserInfo', 'api.meiam.top', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', 'D854D7E8-C0E3-46A0-816D-3D06674DDD02', '', '', 'Success', '14', '2020-10-20 20:42:11.862000', '115.56.231.94');
INSERT INTO `Sys_Logs` VALUES ('ACD4B5A0-12D1-11EB-AE11-02001700DA73', 'Meiam.System.Hostd.Middleware.RequestMiddleware', 'TRACE', '/api/menus/getUserMenus', 'api.meiam.top', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', 'D854D7E8-C0E3-46A0-816D-3D06674DDD02', '', '', 'Success', '7', '2020-10-20 20:42:12.199300', '115.56.231.94');
INSERT INTO `Sys_Logs` VALUES ('AD161F49-12D1-11EB-AE11-02001700DA73', 'Meiam.System.Hostd.Middleware.RequestMiddleware', 'TRACE', '/api/menus/getUserMenus', 'api.meiam.top', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', 'D854D7E8-C0E3-46A0-816D-3D06674DDD02', '', '', 'Success', '4', '2020-10-20 20:42:12.629700', '115.56.231.94');
INSERT INTO `Sys_Logs` VALUES ('AE4CC701-4346-4656-B103-8ECA14885AB7', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Quartz Scheduler v.3.1.0.0 created.', '0', '2020-08-07 14:45:37.000000', '');
INSERT INTO `Sys_Logs` VALUES ('AFD15902-162D-410F-BE6B-5B4D87F09514', 'Quartz.Core.SchedulerSignalerImpl', 'INFO', '', '', '', '', '', '', '', 'Initialized Scheduler Signaller of type: Quartz.Core.SchedulerSignalerImpl', '0', '2020-08-08 11:18:44.000000', '');
INSERT INTO `Sys_Logs` VALUES ('B007D4F9-42D6-4BB0-906A-07A26B83E888', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Scheduler QuartzScheduler_$_NON_CLUSTERED started.', '0', '2020-08-07 14:49:19.000000', '');
INSERT INTO `Sys_Logs` VALUES ('B0720CBB-80EF-4CCE-BCDB-72D1B922FAA5', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler \'QuartzScheduler\' initialized', '0', '2020-08-07 15:18:48.000000', '');
INSERT INTO `Sys_Logs` VALUES ('B0B2219C-CE68-4870-BCBD-62540AF8C919', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler version: 3.1.0.0', '0', '2020-08-07 15:18:48.000000', '');
INSERT INTO `Sys_Logs` VALUES ('B1560D38-12D1-11EB-AE11-02001700DA73', 'Meiam.System.Hostd.Middleware.RequestMiddleware', 'TRACE', '/api/users/query', 'api.meiam.top', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', 'D854D7E8-C0E3-46A0-816D-3D06674DDD02', '', '{\"pageIndex\":1,\"pageSize\":10,\"orderby\":\"createTime\",\"sort\":\"descending\"}', 'Success', '6', '2020-10-20 20:42:19.759800', '115.56.231.94');
INSERT INTO `Sys_Logs` VALUES ('B157F0B6-A60E-4F68-80DF-E5BA82586789', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler version: 3.1.0.0', '0', '2020-08-07 15:28:43.000000', '');
INSERT INTO `Sys_Logs` VALUES ('B1592AFE-12D1-11EB-AE11-02001700DA73', 'Meiam.System.Hostd.Middleware.RequestMiddleware', 'TRACE', '/api/company/query', 'api.meiam.top', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', '85231312-8596-4387-86A6-1FE98F36CB02', '', '{\"pageIndex\":1,\"pageSize\":10,\"orderby\":\"createTime\",\"sort\":\"descending\"}', 'Success', '6', '2020-10-20 20:42:19.775900', '112.65.48.84');
INSERT INTO `Sys_Logs` VALUES ('B25E80A7-93CC-438E-BFE8-04AB6117145B', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler version: 3.1.0.0', '0', '2020-08-08 11:13:44.000000', '');
INSERT INTO `Sys_Logs` VALUES ('B29D7A09-12D1-11EB-AE11-02001700DA73', 'Meiam.System.Hostd.Middleware.RequestMiddleware', 'TRACE', '/api/roles/query', 'api.meiam.top', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', 'D854D7E8-C0E3-46A0-816D-3D06674DDD02', '', '{\"pageIndex\":1,\"pageSize\":10,\"orderby\":\"createTime\",\"sort\":\"ascending\"}', 'Success', '10', '2020-10-20 20:42:21.905000', '115.56.231.94');
INSERT INTO `Sys_Logs` VALUES ('B43884EE-12D1-11EB-AE11-02001700DA73', 'Meiam.System.Hostd.Middleware.RequestMiddleware', 'TRACE', '/api/rolePowers/getPowersGroup', 'api.meiam.top', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', 'D854D7E8-C0E3-46A0-816D-3D06674DDD02', '', '', 'Success', '6', '2020-10-20 20:42:24.599400', '115.56.231.94');
INSERT INTO `Sys_Logs` VALUES ('B43AB1A7-12D1-11EB-AE11-02001700DA73', 'Meiam.System.Hostd.Middleware.RequestMiddleware', 'TRACE', '/api/roles/get', 'api.meiam.top', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', 'D854D7E8-C0E3-46A0-816D-3D06674DDD02', '', '', 'Success', '6', '2020-10-20 20:42:24.613600', '115.56.231.94');
INSERT INTO `Sys_Logs` VALUES ('B6475725-CAAE-419D-B8E5-0FFA8BDEBE86', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler \'QuartzScheduler\' initialized', '0', '2020-08-07 14:48:29.000000', '');
INSERT INTO `Sys_Logs` VALUES ('B6AEF381-11CF-448F-B037-7A64B30A16E6', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'JobFactory set to: Meiam.System.Tasks.JobFactory', '0', '2020-08-07 15:19:59.000000', '');
INSERT INTO `Sys_Logs` VALUES ('B7954FE4-7684-4599-8F2C-DD21742F9CDA', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler \'QuartzScheduler\' initialized', '0', '2020-08-07 14:47:47.000000', '');
INSERT INTO `Sys_Logs` VALUES ('B7AC2631-12D1-11EB-AE11-02001700DA73', 'Meiam.System.Hostd.Middleware.RequestMiddleware', 'TRACE', '/api/company/query', 'api.meiam.top', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', '85231312-8596-4387-86A6-1FE98F36CB02', '', '{\"pageIndex\":1,\"pageSize\":10,\"orderby\":\"createTime\",\"sort\":\"descending\"}', 'Success', '15', '2020-10-20 20:42:30.390300', '112.65.48.84');
INSERT INTO `Sys_Logs` VALUES ('B7BF3059-6E77-45C8-8EB8-1040564AD858', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Using object serializer: Quartz.Simpl.BinaryObjectSerializer, Quartz', '0', '2020-08-08 11:27:27.000000', '');
INSERT INTO `Sys_Logs` VALUES ('B840C6D4-88E1-4BDE-AF4C-8789C080B108', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler \'QuartzScheduler\' initialized', '0', '2020-08-08 11:27:27.000000', '');
INSERT INTO `Sys_Logs` VALUES ('B87C246A-DB2B-42B1-97F4-B9FAF975BF1E', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Using object serializer: Quartz.Simpl.BinaryObjectSerializer, Quartz', '0', '2020-08-07 14:49:37.000000', '');
INSERT INTO `Sys_Logs` VALUES ('B896BADE-2AC5-498C-AFA9-EFFC42694941', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Scheduler meta-data: Quartz Scheduler (v3.1.0.0) \'QuartzScheduler\' with instanceId \'NON_CLUSTERED\'\n  Scheduler class: \'Quartz.Core.QuartzScheduler\' - running locally.\n  NOT STARTED.\n  Currently in standby mode.\n  Number of jobs executed: 0\n  Using thread pool \'Quartz.Simpl.DefaultThreadPool\' - with 10 threads.\n  Using job-store \'Quartz.Simpl.RAMJobStore\' - which does not support persistence. and is not clustered.\n', '0', '2020-08-07 14:45:22.000000', '');
INSERT INTO `Sys_Logs` VALUES ('B8F2F2C8-CBD5-44CF-9A7A-6360328E6BDE', 'Quartz.Simpl.RAMJobStore', 'INFO', '', '', '', '', '', '', '', 'RAMJobStore initialized.', '0', '2020-08-08 11:13:44.000000', '');
INSERT INTO `Sys_Logs` VALUES ('B9DEC5B1-12D1-11EB-AE11-02001700DA73', 'Meiam.System.Hostd.Middleware.RequestMiddleware', 'TRACE', '/api/factory/getAll', 'api.meiam.top', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', '85231312-8596-4387-86A6-1FE98F36CB02', '[{\"enable\":\"true\"}]', '', 'Success', '219', '2020-10-20 20:42:34.077200', '112.65.48.84');
INSERT INTO `Sys_Logs` VALUES ('B9F87380-12D1-11EB-AE11-02001700DA73', 'Meiam.System.Hostd.Middleware.RequestMiddleware', 'TRACE', '/api/workshop/query', 'api.meiam.top', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', '85231312-8596-4387-86A6-1FE98F36CB02', '', '{\"pageIndex\":1,\"pageSize\":10,\"orderby\":\"workShopNo\",\"sort\":\"descending\"}', 'Success', '219', '2020-10-20 20:42:34.245200', '112.65.48.84');
INSERT INTO `Sys_Logs` VALUES ('BD4FF932-7C83-442E-B3D9-A0B0A82C177E', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Quartz Scheduler v.3.1.0.0 created.', '0', '2020-08-07 14:46:00.000000', '');
INSERT INTO `Sys_Logs` VALUES ('BD981383-8F73-450F-88DD-0E5667F3E63B', 'Quartz.Simpl.RAMJobStore', 'INFO', '', '', '', '', '', '', '', 'RAMJobStore initialized.', '0', '2020-08-08 11:17:06.000000', '');
INSERT INTO `Sys_Logs` VALUES ('BE22A2D6-505C-4E00-893D-518BE9FE5CB8', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Quartz Scheduler v.3.1.0.0 created.', '0', '2020-08-07 15:19:59.000000', '');
INSERT INTO `Sys_Logs` VALUES ('BE669376-3F37-41EE-9F67-5588B2467B94', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Using object serializer: Quartz.Simpl.BinaryObjectSerializer, Quartz', '0', '2020-08-07 15:28:43.000000', '');
INSERT INTO `Sys_Logs` VALUES ('BE7F312E-0549-4A2C-BB41-0C6D109147BA', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Using object serializer: Quartz.Simpl.BinaryObjectSerializer, Quartz', '0', '2020-08-08 11:17:29.000000', '');
INSERT INTO `Sys_Logs` VALUES ('BE95B79B-7558-40ED-940E-D131B220E635', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Scheduler meta-data: Quartz Scheduler (v3.1.0.0) \'QuartzScheduler\' with instanceId \'NON_CLUSTERED\'\n  Scheduler class: \'Quartz.Core.QuartzScheduler\' - running locally.\n  NOT STARTED.\n  Currently in standby mode.\n  Number of jobs executed: 0\n  Using thread pool \'Quartz.Simpl.DefaultThreadPool\' - with 10 threads.\n  Using job-store \'Quartz.Simpl.RAMJobStore\' - which does not support persistence. and is not clustered.\n', '0', '2020-08-08 11:16:31.000000', '');
INSERT INTO `Sys_Logs` VALUES ('C02F7299-A1E3-41E2-8923-FD6767CB9B51', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Using object serializer: Quartz.Simpl.BinaryObjectSerializer, Quartz', '0', '2020-08-07 14:49:19.000000', '');
INSERT INTO `Sys_Logs` VALUES ('C116DB2D-2DCD-4AF8-9E9F-7486CF8120B6', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Scheduler QuartzScheduler_$_NON_CLUSTERED started.', '0', '2020-08-07 15:19:59.000000', '');
INSERT INTO `Sys_Logs` VALUES ('C14D7470-C787-42DA-9279-6CD1E6447080', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Scheduler meta-data: Quartz Scheduler (v3.1.0.0) \'QuartzScheduler\' with instanceId \'NON_CLUSTERED\'\n  Scheduler class: \'Quartz.Core.QuartzScheduler\' - running locally.\n  NOT STARTED.\n  Currently in standby mode.\n  Number of jobs executed: 0\n  Using thread pool \'Quartz.Simpl.DefaultThreadPool\' - with 10 threads.\n  Using job-store \'Quartz.Simpl.RAMJobStore\' - which does not support persistence. and is not clustered.\n', '0', '2020-08-08 11:12:47.000000', '');
INSERT INTO `Sys_Logs` VALUES ('C1B4A0F0-0F2A-4C1F-A7C3-618366BF8516', 'Quartz.Simpl.RAMJobStore', 'INFO', '', '', '', '', '', '', '', 'RAMJobStore initialized.', '0', '2020-08-07 14:52:11.000000', '');
INSERT INTO `Sys_Logs` VALUES ('C24E64CA-29AF-4796-9FC1-59942B4C4E9A', 'Quartz.Simpl.RAMJobStore', 'INFO', '', '', '', '', '', '', '', 'RAMJobStore initialized.', '0', '2020-08-08 11:24:59.000000', '');
INSERT INTO `Sys_Logs` VALUES ('C2C398F2-EB0D-4F4F-8E3B-215D16871F96', 'Quartz.Simpl.RAMJobStore', 'INFO', '', '', '', '', '', '', '', 'RAMJobStore initialized.', '0', '2020-08-07 14:55:20.000000', '');
INSERT INTO `Sys_Logs` VALUES ('C3D88F0E-12D1-11EB-AE11-02001700DA73', 'Meiam.System.Hostd.Middleware.RequestMiddleware', 'TRACE', '/api/users/query', 'api.meiam.top', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', '85231312-8596-4387-86A6-1FE98F36CB02', '', '{\"pageIndex\":1,\"pageSize\":10,\"orderby\":\"createTime\",\"sort\":\"descending\"}', 'Success', '15', '2020-10-20 20:42:50.812800', '112.65.48.84');
INSERT INTO `Sys_Logs` VALUES ('C4A6F70B-4D07-43BC-8B2D-1324BFD05AEA', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Quartz Scheduler v.3.1.0.0 created.', '0', '2020-08-08 11:11:07.000000', '');
INSERT INTO `Sys_Logs` VALUES ('C683EF52-896D-4B3B-B9BD-078D93D43915', 'Quartz.Simpl.RAMJobStore', 'INFO', '', '', '', '', '', '', '', 'RAMJobStore initialized.', '0', '2020-08-07 14:48:29.000000', '');
INSERT INTO `Sys_Logs` VALUES ('C68729CB-5ED1-451B-A738-36F15ECC4419', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Scheduler QuartzScheduler_$_NON_CLUSTERED started.', '0', '2020-08-08 11:24:59.000000', '');
INSERT INTO `Sys_Logs` VALUES ('C764A458-7383-4DC6-9B3C-B72B2C21A626', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler \'QuartzScheduler\' initialized', '0', '2020-08-07 14:49:38.000000', '');
INSERT INTO `Sys_Logs` VALUES ('C784E26B-963D-4338-BEA4-66CA0FAE84DD', 'Quartz.Core.SchedulerSignalerImpl', 'INFO', '', '', '', '', '', '', '', 'Initialized Scheduler Signaller of type: Quartz.Core.SchedulerSignalerImpl', '0', '2020-08-07 14:47:34.000000', '');
INSERT INTO `Sys_Logs` VALUES ('C9D52B26-D2E7-42BE-9EDD-930F43D1F1DF', 'Quartz.Simpl.RAMJobStore', 'INFO', '', '', '', '', '', '', '', 'RAMJobStore initialized.', '0', '2020-08-08 11:27:27.000000', '');
INSERT INTO `Sys_Logs` VALUES ('CB7609D0-12D1-11EB-AE11-02001700DA73', 'Meiam.System.Hostd.Middleware.RequestMiddleware', 'TRACE', '/api/options/getOption', 'api.meiam.top', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', '85231312-8596-4387-86A6-1FE98F36CB02', '[{\"option\":\"SYSTEM_MENU_SYSTEM\"}]', '', 'Success', '39', '2020-10-20 20:43:03.590000', '112.65.48.84');
INSERT INTO `Sys_Logs` VALUES ('CB81515C-12D1-11EB-AE11-02001700DA73', 'Meiam.System.Hostd.Middleware.RequestMiddleware', 'TRACE', '/api/menus/query', 'api.meiam.top', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', '85231312-8596-4387-86A6-1FE98F36CB02', '', '{}', 'Success', '39', '2020-10-20 20:43:03.664000', '112.65.48.84');
INSERT INTO `Sys_Logs` VALUES ('CBCC988F-77AE-4D0F-9516-39DCBCADC5E4', 'Quartz.Simpl.RAMJobStore', 'INFO', '', '', '', '', '', '', '', 'RAMJobStore initialized.', '0', '2020-08-07 15:17:43.000000', '');
INSERT INTO `Sys_Logs` VALUES ('CD3A37C0-0E6A-49FC-9E08-B9108757E81E', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler version: 3.1.0.0', '0', '2020-08-08 11:18:44.000000', '');
INSERT INTO `Sys_Logs` VALUES ('CF86DF98-4250-46FD-9844-E957A8E92239', 'Quartz.Core.SchedulerSignalerImpl', 'INFO', '', '', '', '', '', '', '', 'Initialized Scheduler Signaller of type: Quartz.Core.SchedulerSignalerImpl', '0', '2020-08-08 11:17:06.000000', '');
INSERT INTO `Sys_Logs` VALUES ('D2E3957F-7FC5-4954-98E3-7A7280166D89', 'Quartz.Simpl.RAMJobStore', 'INFO', '', '', '', '', '', '', '', 'RAMJobStore initialized.', '0', '2020-08-07 14:49:19.000000', '');
INSERT INTO `Sys_Logs` VALUES ('D324A428-0B17-4FFF-9569-F415DCE0298B', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Using object serializer: Quartz.Simpl.BinaryObjectSerializer, Quartz', '0', '2020-08-08 11:24:58.000000', '');
INSERT INTO `Sys_Logs` VALUES ('D3F36C47-3771-4897-A465-212738723187', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Using object serializer: Quartz.Simpl.BinaryObjectSerializer, Quartz', '0', '2020-08-07 14:53:08.000000', '');
INSERT INTO `Sys_Logs` VALUES ('D43C7802-F996-4573-81FD-A3EBC2C468B8', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler \'QuartzScheduler\' initialized', '0', '2020-08-07 14:55:20.000000', '');
INSERT INTO `Sys_Logs` VALUES ('D4CC83FD-D2A4-4DC3-A6B9-B395776CCB89', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Using object serializer: Quartz.Simpl.BinaryObjectSerializer, Quartz', '0', '2020-08-08 11:21:26.000000', '');
INSERT INTO `Sys_Logs` VALUES ('D52EA523-B9CB-4C0A-9A76-AA0186596E31', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Using object serializer: Quartz.Simpl.BinaryObjectSerializer, Quartz', '0', '2020-08-07 14:55:19.000000', '');
INSERT INTO `Sys_Logs` VALUES ('D599AD6B-48A1-434A-A101-9EA725CA6555', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Scheduler meta-data: Quartz Scheduler (v3.1.0.0) \'QuartzScheduler\' with instanceId \'NON_CLUSTERED\'\n  Scheduler class: \'Quartz.Core.QuartzScheduler\' - running locally.\n  NOT STARTED.\n  Currently in standby mode.\n  Number of jobs executed: 0\n  Using thread pool \'Quartz.Simpl.DefaultThreadPool\' - with 10 threads.\n  Using job-store \'Quartz.Simpl.RAMJobStore\' - which does not support persistence. and is not clustered.\n', '0', '2020-08-08 11:20:39.000000', '');
INSERT INTO `Sys_Logs` VALUES ('D6F4A807-8401-4DA3-B0DD-521A2DCEC62F', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Scheduler meta-data: Quartz Scheduler (v3.1.0.0) \'QuartzScheduler\' with instanceId \'NON_CLUSTERED\'\n  Scheduler class: \'Quartz.Core.QuartzScheduler\' - running locally.\n  NOT STARTED.\n  Currently in standby mode.\n  Number of jobs executed: 0\n  Using thread pool \'Quartz.Simpl.DefaultThreadPool\' - with 10 threads.\n  Using job-store \'Quartz.Simpl.RAMJobStore\' - which does not support persistence. and is not clustered.\n', '0', '2020-08-07 14:48:29.000000', '');
INSERT INTO `Sys_Logs` VALUES ('D773F52F-8515-498C-9589-6B885DDEE0C5', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Scheduler QuartzScheduler_$_NON_CLUSTERED started.', '0', '2020-08-07 14:53:09.000000', '');
INSERT INTO `Sys_Logs` VALUES ('D8501359-7E7A-4A18-8C89-9D42CFB164EC', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Using object serializer: Quartz.Simpl.BinaryObjectSerializer, Quartz', '0', '2020-08-07 14:46:10.000000', '');
INSERT INTO `Sys_Logs` VALUES ('D8F85101-A7A1-4CC8-9AB6-0EC5BCD7E32B', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Quartz Scheduler v.3.1.0.0 created.', '0', '2020-08-08 11:19:15.000000', '');
INSERT INTO `Sys_Logs` VALUES ('D9E647F4-FCA7-4B5E-B604-F67CDDFAFDD6', 'Quartz.Simpl.RAMJobStore', 'INFO', '', '', '', '', '', '', '', 'RAMJobStore initialized.', '0', '2020-08-08 11:20:39.000000', '');
INSERT INTO `Sys_Logs` VALUES ('DA09F3C0-2C0D-4137-A138-CD228B21D6F2', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Scheduler meta-data: Quartz Scheduler (v3.1.0.0) \'QuartzScheduler\' with instanceId \'NON_CLUSTERED\'\n  Scheduler class: \'Quartz.Core.QuartzScheduler\' - running locally.\n  NOT STARTED.\n  Currently in standby mode.\n  Number of jobs executed: 0\n  Using thread pool \'Quartz.Simpl.DefaultThreadPool\' - with 10 threads.\n  Using job-store \'Quartz.Simpl.RAMJobStore\' - which does not support persistence. and is not clustered.\n', '0', '2020-08-08 11:11:07.000000', '');
INSERT INTO `Sys_Logs` VALUES ('DAEE91B6-80DC-4B50-9469-3DE00124FB5D', 'Quartz.Core.SchedulerSignalerImpl', 'INFO', '', '', '', '', '', '', '', 'Initialized Scheduler Signaller of type: Quartz.Core.SchedulerSignalerImpl', '0', '2020-08-08 11:12:47.000000', '');
INSERT INTO `Sys_Logs` VALUES ('DAFBA46B-9918-4916-9F4E-243E4F3A6573', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'JobFactory set to: Meiam.System.Tasks.JobFactory', '0', '2020-08-07 14:55:20.000000', '');
INSERT INTO `Sys_Logs` VALUES ('DD07742D-8399-47A2-9A73-05C683238C34', 'Quartz.Core.SchedulerSignalerImpl', 'INFO', '', '', '', '', '', '', '', 'Initialized Scheduler Signaller of type: Quartz.Core.SchedulerSignalerImpl', '0', '2020-08-07 14:55:20.000000', '');
INSERT INTO `Sys_Logs` VALUES ('DDF84CBE-414C-4405-A38C-1F364D1BEF0A', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Quartz Scheduler v.3.1.0.0 created.', '0', '2020-08-07 14:55:20.000000', '');
INSERT INTO `Sys_Logs` VALUES ('E000B9F3-92D6-4339-918B-E76CE8BB50DA', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Scheduler QuartzScheduler_$_NON_CLUSTERED started.', '0', '2020-08-07 14:49:38.000000', '');
INSERT INTO `Sys_Logs` VALUES ('E095DEF8-8B96-46D7-90F8-7D70B0F8AF26', 'Quartz.Core.SchedulerSignalerImpl', 'INFO', '', '', '', '', '', '', '', 'Initialized Scheduler Signaller of type: Quartz.Core.SchedulerSignalerImpl', '0', '2020-08-07 15:17:43.000000', '');
INSERT INTO `Sys_Logs` VALUES ('E0BB84DD-12D1-11EB-AE11-02001700DA73', 'Meiam.System.Hostd.Middleware.RequestMiddleware', 'TRACE', '/api/auth/getUserInfo', 'api.meiam.top', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', 'D854D7E8-C0E3-46A0-816D-3D06674DDD02', '', '', 'Success', '4', '2020-10-20 20:43:39.275800', '115.56.231.94');
INSERT INTO `Sys_Logs` VALUES ('E0BC3DF4-12D1-11EB-AE11-02001700DA73', 'Meiam.System.Hostd.Middleware.RequestMiddleware', 'TRACE', '/api/auth/getUserInfo', 'api.meiam.top', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', 'D854D7E8-C0E3-46A0-816D-3D06674DDD02', '', '', 'Success', '4', '2020-10-20 20:43:39.280900', '115.56.231.94');
INSERT INTO `Sys_Logs` VALUES ('E0D6F1A3-EC40-4F52-B0DE-BB7E653721DE', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Quartz Scheduler v.3.1.0.0 created.', '0', '2020-08-07 14:49:38.000000', '');
INSERT INTO `Sys_Logs` VALUES ('E11188F9-12D1-11EB-AE11-02001700DA73', 'Meiam.System.Hostd.Middleware.RequestMiddleware', 'TRACE', '/api/menus/getUserMenus', 'api.meiam.top', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', 'D854D7E8-C0E3-46A0-816D-3D06674DDD02', '', '', 'Success', '6', '2020-10-20 20:43:39.734300', '115.56.231.94');
INSERT INTO `Sys_Logs` VALUES ('E120E824-12D1-11EB-AE11-02001700DA73', 'Meiam.System.Hostd.Middleware.RequestMiddleware', 'TRACE', '/api/menus/getUserMenus', 'api.meiam.top', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', 'D854D7E8-C0E3-46A0-816D-3D06674DDD02', '', '', 'Success', '4', '2020-10-20 20:43:39.762500', '115.56.231.94');
INSERT INTO `Sys_Logs` VALUES ('E1443EC5-FFA1-49A0-B74E-C5CA050A1FDB', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Quartz Scheduler v.3.1.0.0 created.', '0', '2020-08-07 14:48:29.000000', '');
INSERT INTO `Sys_Logs` VALUES ('E14768A7-EE76-4F1A-B4E6-5D58A76B31A0', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler version: 3.1.0.0', '0', '2020-08-07 14:48:29.000000', '');
INSERT INTO `Sys_Logs` VALUES ('E34EED65-12D1-11EB-AE11-02001700DA73', 'Meiam.System.Hostd.Middleware.RequestMiddleware', 'TRACE', '/api/rolePowers/getPowersGroup', 'api.meiam.top', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', 'D854D7E8-C0E3-46A0-816D-3D06674DDD02', '', '', 'Success', '911', '2020-10-20 20:43:43.596400', '115.56.231.94');
INSERT INTO `Sys_Logs` VALUES ('E34F5EB1-12D1-11EB-AE11-02001700DA73', 'Meiam.System.Hostd.Middleware.RequestMiddleware', 'TRACE', '/api/roles/get', 'api.meiam.top', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', 'D854D7E8-C0E3-46A0-816D-3D06674DDD02', '', '', 'Success', '911', '2020-10-20 20:43:43.597300', '115.56.231.94');
INSERT INTO `Sys_Logs` VALUES ('E35DE930-6E58-40DC-8750-98A7D7B9A2CB', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Scheduler meta-data: Quartz Scheduler (v3.1.0.0) \'QuartzScheduler\' with instanceId \'NON_CLUSTERED\'\n  Scheduler class: \'Quartz.Core.QuartzScheduler\' - running locally.\n  NOT STARTED.\n  Currently in standby mode.\n  Number of jobs executed: 0\n  Using thread pool \'Quartz.Simpl.DefaultThreadPool\' - with 10 threads.\n  Using job-store \'Quartz.Simpl.RAMJobStore\' - which does not support persistence. and is not clustered.\n', '0', '2020-08-07 14:53:09.000000', '');
INSERT INTO `Sys_Logs` VALUES ('E62DCE27-B0E3-41A2-9AFF-480E4134545B', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Quartz Scheduler v.3.1.0.0 created.', '0', '2020-08-07 14:53:08.000000', '');
INSERT INTO `Sys_Logs` VALUES ('E68CFD30-3FB0-49AB-8871-592507056B67', 'Quartz.Core.SchedulerSignalerImpl', 'INFO', '', '', '', '', '', '', '', 'Initialized Scheduler Signaller of type: Quartz.Core.SchedulerSignalerImpl', '0', '2020-08-07 14:53:08.000000', '');
INSERT INTO `Sys_Logs` VALUES ('E6F0A8C6-8178-49CE-945A-CAB5A87B548C', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler version: 3.1.0.0', '0', '2020-08-07 14:53:09.000000', '');
INSERT INTO `Sys_Logs` VALUES ('E7659A6C-2E1F-4B43-84E9-2F0B40EFD0D6', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Scheduler meta-data: Quartz Scheduler (v3.1.0.0) \'QuartzScheduler\' with instanceId \'NON_CLUSTERED\'\n  Scheduler class: \'Quartz.Core.QuartzScheduler\' - running locally.\n  NOT STARTED.\n  Currently in standby mode.\n  Number of jobs executed: 0\n  Using thread pool \'Quartz.Simpl.DefaultThreadPool\' - with 10 threads.\n  Using job-store \'Quartz.Simpl.RAMJobStore\' - which does not support persistence. and is not clustered.\n', '0', '2020-08-08 11:13:44.000000', '');
INSERT INTO `Sys_Logs` VALUES ('EA85E9DD-10D5-4DFF-9D1B-BBA18A2C4AF5', 'Quartz.Simpl.RAMJobStore', 'INFO', '', '', '', '', '', '', '', 'RAMJobStore initialized.', '0', '2020-08-07 14:46:00.000000', '');
INSERT INTO `Sys_Logs` VALUES ('EBAC3C14-337B-493E-9E52-81ACC3935065', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler \'QuartzScheduler\' initialized', '0', '2020-08-07 14:53:09.000000', '');
INSERT INTO `Sys_Logs` VALUES ('EC31FE7B-7499-432E-A3E2-B31DDBE69999', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Using object serializer: Quartz.Simpl.BinaryObjectSerializer, Quartz', '0', '2020-08-07 14:47:47.000000', '');
INSERT INTO `Sys_Logs` VALUES ('F27E0960-09D0-44FF-B49E-17658400EBD5', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler \'QuartzScheduler\' initialized', '0', '2020-08-08 11:17:06.000000', '');
INSERT INTO `Sys_Logs` VALUES ('F282D94A-0DF0-4715-95F9-0B339D309A34', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler \'QuartzScheduler\' initialized', '0', '2020-08-07 15:17:43.000000', '');
INSERT INTO `Sys_Logs` VALUES ('F323567B-8938-4627-ADC2-09DCF7978E02', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler \'QuartzScheduler\' initialized', '0', '2020-08-08 11:16:31.000000', '');
INSERT INTO `Sys_Logs` VALUES ('F3A9BE31-BEC1-49B2-AC46-83CDFC3093BD', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Quartz Scheduler v.3.1.0.0 created.', '0', '2020-08-08 11:20:39.000000', '');
INSERT INTO `Sys_Logs` VALUES ('F580D212-800F-401E-BAB6-E37C1433809F', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler \'QuartzScheduler\' initialized', '0', '2020-08-07 15:28:43.000000', '');
INSERT INTO `Sys_Logs` VALUES ('F61621B3-12D1-11EB-AE11-02001700DA73', 'Meiam.System.Hostd.Middleware.RequestMiddleware', 'TRACE', '/api/auth/getUserInfo', 'api.meiam.top', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', 'D854D7E8-C0E3-46A0-816D-3D06674DDD02', '', '', 'Success', '877', '2020-10-20 20:44:15.102800', '115.56.231.94');
INSERT INTO `Sys_Logs` VALUES ('F6708602-12D1-11EB-AE11-02001700DA73', 'Meiam.System.Hostd.Middleware.RequestMiddleware', 'TRACE', '/api/menus/getUserMenus', 'api.meiam.top', 'GET', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', 'D854D7E8-C0E3-46A0-816D-3D06674DDD02', '', '', 'Success', '8', '2020-10-20 20:44:15.695100', '115.56.231.94');
INSERT INTO `Sys_Logs` VALUES ('F6B2409F-0688-4C27-8137-D82F2E5F4DEF', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler version: 3.1.0.0', '0', '2020-08-07 14:47:47.000000', '');
INSERT INTO `Sys_Logs` VALUES ('F6CD3EA1-266F-4100-96C6-BA9CDFD9CB62', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler version: 3.1.0.0', '0', '2020-08-07 14:46:00.000000', '');
INSERT INTO `Sys_Logs` VALUES ('F71A0199-B50F-4643-9D68-2AB309D73769', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler version: 3.1.0.0', '0', '2020-08-08 11:21:26.000000', '');
INSERT INTO `Sys_Logs` VALUES ('F9232F05-8249-41E0-B1E1-8365AEED1C91', 'Quartz.Simpl.RAMJobStore', 'INFO', '', '', '', '', '', '', '', 'RAMJobStore initialized.', '0', '2020-08-07 15:28:43.000000', '');
INSERT INTO `Sys_Logs` VALUES ('F93A1AE0-0FB2-4CB8-BF99-C23295032DC8', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Quartz Scheduler v.3.1.0.0 created.', '0', '2020-08-07 14:44:45.000000', '');
INSERT INTO `Sys_Logs` VALUES ('FD7A5BD3-441C-4D92-BA52-62990FC8D5B5', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Scheduler meta-data: Quartz Scheduler (v3.1.0.0) \'QuartzScheduler\' with instanceId \'NON_CLUSTERED\'\n  Scheduler class: \'Quartz.Core.QuartzScheduler\' - running locally.\n  NOT STARTED.\n  Currently in standby mode.\n  Number of jobs executed: 0\n  Using thread pool \'Quartz.Simpl.DefaultThreadPool\' - with 10 threads.\n  Using job-store \'Quartz.Simpl.RAMJobStore\' - which does not support persistence. and is not clustered.\n', '0', '2020-08-08 11:21:26.000000', '');
INSERT INTO `Sys_Logs` VALUES ('FD9FE240-7C65-40E0-976E-6B832E0F51EE', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler version: 3.1.0.0', '0', '2020-08-08 11:17:06.000000', '');
INSERT INTO `Sys_Logs` VALUES ('FE653997-A4B2-4660-8995-9EB2EA099CAA', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Using object serializer: Quartz.Simpl.BinaryObjectSerializer, Quartz', '0', '2020-08-07 14:45:59.000000', '');
INSERT INTO `Sys_Logs` VALUES ('FE8E4C6A-3324-44A0-B0C4-D4A70465AC39', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'JobFactory set to: Meiam.System.Tasks.JobFactory', '0', '2020-08-08 11:27:28.000000', '');
INSERT INTO `Sys_Logs` VALUES ('FED0F09A-8D7D-47B4-AABA-3BA1B156C0CD', 'Quartz.Core.QuartzScheduler', 'INFO', '', '', '', '', '', '', '', 'Quartz Scheduler v.3.1.0.0 created.', '0', '2020-08-07 14:49:19.000000', '');
INSERT INTO `Sys_Logs` VALUES ('FEF4D319-1FBE-43DB-BD5E-8BC083503A14', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler \'QuartzScheduler\' initialized', '0', '2020-08-07 14:44:45.000000', '');
INSERT INTO `Sys_Logs` VALUES ('FF5A4BE6-D306-4672-A55B-596B052A1C19', 'Quartz.Impl.StdSchedulerFactory', 'INFO', '', '', '', '', '', '', '', 'Quartz scheduler version: 3.1.0.0', '0', '2020-08-08 11:11:07.000000', '');

-- ----------------------------
-- Table structure for Sys_Menu
-- ----------------------------
DROP TABLE IF EXISTS `Sys_Menu`;
CREATE TABLE `Sys_Menu` (
  `ID` varchar(36) NOT NULL COMMENT 'UUID',
  `Name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `Icon` varchar(50) DEFAULT NULL COMMENT '图标',
  `Path` varchar(50) DEFAULT NULL COMMENT '路由地址',
  `Component` varchar(255) DEFAULT NULL COMMENT '组件路径',
  `SortIndex` int(11) NOT NULL COMMENT '默认排序',
  `ViewPower` varchar(50) DEFAULT NULL COMMENT '浏览权限',
  `ParentUID` varchar(36) DEFAULT NULL COMMENT '上级菜单',
  `Remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `System` int(11) NOT NULL COMMENT '可用系统(0-PC，1-Wx)',
  `isFrame` tinyint(4) NOT NULL COMMENT '是否外链',
  `Hidden` tinyint(4) NOT NULL COMMENT '是否可见',
  `KeepAlive` tinyint(4) NOT NULL COMMENT '是否缓存',
  `CreateTime` datetime NOT NULL COMMENT '创建时间',
  `UpdateTime` datetime NOT NULL COMMENT '最后更新时间',
  `CreateID` varchar(50) NOT NULL COMMENT '创建人编码',
  `CreateName` varchar(100) NOT NULL COMMENT '创建人',
  `UpdateID` varchar(50) NOT NULL COMMENT '更新人编码',
  `UpdateName` varchar(100) NOT NULL COMMENT '更新人',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统菜单';

-- ----------------------------
-- Records of Sys_Menu
-- ----------------------------
INSERT INTO `Sys_Menu` VALUES ('25041C8B-A18C-4D7C-9212-EB60F0EB7100', '工序定义', 'app', 'productprocess', 'basic/productprocess/index', '4', 'PRIV_PRODUCTPROCESS_VIEW', 'A2EDE2E3-CCC5-4A88-89A1-A84CDAF35DEE', null, '0', '0', '0', '0', '2020-06-01 11:01:20', '2020-06-19 16:12:01', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Menu` VALUES ('30580EEA-A24D-4B52-B35B-E6489080705D', '字典定义', 'doc', 'options', 'system/options/index', '3', 'PRIV_OPTIONS_VIEW', '651BBACF-7AB6-457C-88CC-BF4223B2D390', null, '0', '0', '0', '1', '2020-06-01 21:43:49', '2020-06-06 08:53:27', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Menu` VALUES ('54F26B7C-1958-42D5-B5CA-0ED22A3976F7', '权限定义', 'validCode', 'powers', 'system/powers/index', '2', 'PRIV_POWERS_VIEW', '651BBACF-7AB6-457C-88CC-BF4223B2D390', null, '0', '0', '0', '1', '2020-06-01 11:03:03', '2020-06-13 16:28:14', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Menu` VALUES ('59081379-67BA-459B-B5F3-EB5EED51BB60', '在线统计', 'international', 'online', 'system/online/index', '5', 'PRIV_ONLINE_VIEW', '651BBACF-7AB6-457C-88CC-BF4223B2D390', null, '0', '0', '0', '0', '2020-06-11 19:20:46', '2020-06-11 21:42:25', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Menu` VALUES ('651BBACF-7AB6-457C-88CC-BF4223B2D390', '系统管理', 'system1', 'system', null, '99', null, null, null, '0', '0', '0', '0', '2020-06-05 17:20:34', '2020-06-05 17:20:41', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Menu` VALUES ('6F3EEB92-7AB6-4E81-AE48-135A195EAC4D', '用户角色', 'people', 'roleusers', 'users/roleusers/index', '4', 'PRIV_ROLEUSERS_VIEW', '7B670227-DE9C-4457-8AA3-D14295B07530', null, '0', '0', '0', '0', '2020-06-04 16:14:25', '2020-06-09 08:42:10', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Menu` VALUES ('6F8FFE5E-EE0E-4A36-B96F-5F48875CFC85', '角色定义', 'role', 'roles', 'users/roles/index', '2', 'PRIV_ROLES_VIEW', '7B670227-DE9C-4457-8AA3-D14295B07530', null, '0', '0', '0', '1', '2020-05-31 11:20:55', '2020-06-14 01:19:41', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Menu` VALUES ('77893F2F-F8EB-4A75-B7B9-CBD28B994973', '公司定义', 'app', 'company', 'basic/company/index', '1', 'PRIV_COMPANY_VIEW', 'A2EDE2E3-CCC5-4A88-89A1-A84CDAF35DEE', null, '0', '0', '0', '0', '2020-05-31 11:20:55', '2020-06-19 16:11:29', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Menu` VALUES ('7B3B2EB8-45BB-458D-B4A8-0E1442531316', '设备定义', 'app', 'equipment', 'basic/equipment/index', '6', 'PRIV_EQUIPMENT_VIEW', 'A2EDE2E3-CCC5-4A88-89A1-A84CDAF35DEE', null, '0', '0', '0', '0', '2020-06-16 12:59:13', '2020-06-19 16:12:47', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Menu` VALUES ('7B670227-DE9C-4457-8AA3-D14295B07530', '用户管理', 'peoples', 'users', null, '98', null, null, null, '0', '0', '0', '0', '2020-06-09 08:16:22', '2020-06-09 08:16:30', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Menu` VALUES ('8C8F01CC-A34C-48A8-9774-01123161916B', '系统日志', 'log', 'logger', 'system/logger/index', '4', 'PRIV_LOGS_VIEW', '651BBACF-7AB6-457C-88CC-BF4223B2D390', null, '0', '0', '0', '0', '2020-06-11 13:34:51', '2020-06-11 21:42:49', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Menu` VALUES ('93D4E4F0-11C4-4C4C-B838-05CF3A565A81', '个人中心', 'Steve-Jobs', 'center', 'users/center/index', '6', null, '7B670227-DE9C-4457-8AA3-D14295B07530', null, '0', '0', '1', '0', '2020-06-16 22:00:17', '2020-06-16 22:00:17', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Menu` VALUES ('A2EDE2E3-CCC5-4A88-89A1-A84CDAF35DEE', '基础信息', 'tree', 'basic', null, '1', null, null, null, '0', '0', '0', '0', '2020-05-31 11:20:55', '2020-06-06 08:51:05', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Menu` VALUES ('A86D8C2E-87CB-4BE2-B55D-A64165D1C3FE', '角色权限', 'permission', 'rolepowers', 'users/rolepowers/index', '3', 'PRIV_ROLEPOWERS_VIEW', '7B670227-DE9C-4457-8AA3-D14295B07530', null, '0', '0', '0', '1', '2020-06-01 11:06:39', '2020-06-14 01:19:48', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Menu` VALUES ('B11607C3-F1C5-435D-B4DF-8F2C5A487E50', '任务调度', 'timing', 'tasks', 'system/tasks/index', '6', 'PRIV_TASKS_VIEW', '651BBACF-7AB6-457C-88CC-BF4223B2D390', null, '0', '0', '0', '0', '2020-06-18 14:58:58', '2020-06-18 16:37:09', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Menu` VALUES ('B182CDE0-610A-43D8-8619-BEE44AE4C2F8', '设备定义', 'app', 'productline', 'basic/productline/index', '5', 'PRIV_PRODUCTLINE_VIEW', 'A2EDE2E3-CCC5-4A88-89A1-A84CDAF35DEE', null, '0', '0', '0', '0', '2020-06-01 10:59:36', '2020-06-19 16:12:39', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Menu` VALUES ('C3006273-F75D-11E8-9BA4-00059A3C7A00', '菜单管理', 'menu', 'menus', 'system/menus/index', '1', 'PRIV_MENUS_VIEW', '651BBACF-7AB6-457C-88CC-BF4223B2D390', null, '0', '0', '0', '1', '2020-05-31 11:20:55', '2020-06-06 08:53:19', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Menu` VALUES ('E01AE23A-F75C-11E8-9BA4-00059A3C7A00', '用户列表', 'user', 'users', 'users/users/index', '1', 'PRIV_USERS_VIEW', '7B670227-DE9C-4457-8AA3-D14295B07530', null, '0', '0', '0', '1', '2020-05-31 11:20:55', '2020-06-14 01:19:30', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Menu` VALUES ('E8716862-C10B-4A74-844C-A0F378F7D2C3', '工厂定义', 'app', 'factory', 'basic/factory/index', '2', 'PRIV_FACTORY_VIEW', 'A2EDE2E3-CCC5-4A88-89A1-A84CDAF35DEE', null, '0', '0', '0', '0', '2020-05-31 11:20:55', '2020-06-19 16:11:40', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Menu` VALUES ('F200F0E2-4B9C-4A3C-8102-8130096BF975', '车间定义', 'app', 'workshop', 'basic/workshop/index', '3', 'PRIV_WORKSHOP_VIEW', 'A2EDE2E3-CCC5-4A88-89A1-A84CDAF35DEE', null, '0', '0', '0', '0', '2020-06-01 10:46:08', '2020-06-19 16:12:08', '9999', '系统管理员', '9999', '系统管理员');

-- ----------------------------
-- Table structure for Sys_Online
-- ----------------------------
DROP TABLE IF EXISTS `Sys_Online`;
CREATE TABLE `Sys_Online` (
  `UserID` varchar(50) NOT NULL COMMENT '用户',
  `SessionID` varchar(36) NOT NULL COMMENT '会话',
  `IPAddress` varchar(50) DEFAULT NULL COMMENT 'IP地址',
  `LoginTime` datetime DEFAULT NULL COMMENT '登录时间',
  `UpdateTime` datetime DEFAULT NULL COMMENT '最后操作时间',
  `Source` varchar(50) DEFAULT NULL COMMENT '来源',
  PRIMARY KEY (`SessionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='在线用户';

-- ----------------------------
-- Records of Sys_Online
-- ----------------------------
INSERT INTO `Sys_Online` VALUES ('9999', '85231312-8596-4387-86A6-1FE98F36CB02', '112.65.48.84', '2020-10-20 20:42:10', '2020-10-20 20:42:10', 'Web');

-- ----------------------------
-- Table structure for Sys_Options
-- ----------------------------
DROP TABLE IF EXISTS `Sys_Options`;
CREATE TABLE `Sys_Options` (
  `ID` varchar(36) NOT NULL COMMENT 'UUID',
  `Option` varchar(50) NOT NULL COMMENT '分组（System_Menus_Status）',
  `Label` varchar(50) NOT NULL COMMENT '名称',
  `Value` varchar(50) NOT NULL COMMENT '内容',
  `SortIndex` int(11) NOT NULL COMMENT '排序',
  `Remark` varchar(100) DEFAULT NULL COMMENT '描述',
  `CreateTime` datetime NOT NULL COMMENT '创建时间',
  `UpdateTime` datetime NOT NULL COMMENT '最后更新时间',
  `CreateID` varchar(50) NOT NULL COMMENT '创建人编码',
  `CreateName` varchar(100) NOT NULL COMMENT '创建人',
  `UpdateID` varchar(50) NOT NULL COMMENT '更新人编码',
  `UpdateName` varchar(100) NOT NULL COMMENT '更新人',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='选项框字典';

-- ----------------------------
-- Records of Sys_Options
-- ----------------------------
INSERT INTO `Sys_Options` VALUES ('0F2EED72-EFF0-4DD5-8E68-316F0D2CC07B', 'SYSTEM_POWER_DESCRIPTION', '审核', '审核', '5', null, '2020-06-02 17:24:01', '2020-06-02 17:24:01', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Options` VALUES ('2A769FEA-4D41-4D48-A7CF-CD410207B96D', 'SYSTEM_MENU_SYSTEM', '微信小程序', '1', '2', null, '2020-06-02 14:05:33', '2020-06-02 14:05:41', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Options` VALUES ('35E47F7B-27A1-44BB-9924-D9F5FAB2073D', 'SYSTEM_POWER_DESCRIPTION', '导出', '导出', '8', null, '2020-06-02 17:24:55', '2020-06-02 17:24:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Options` VALUES ('4F2875AC-509E-45F7-B36E-0095FE4320D8', 'SYSTEM_POWER_DESCRIPTION', '新增', '新增', '2', null, '2020-06-02 17:23:18', '2020-06-02 17:23:18', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Options` VALUES ('518CEFB2-593A-40AB-A521-C875A74F2734', 'SYSTEM_MENU_SYSTEM', '后台系统', '0', '1', null, '2020-06-02 14:05:14', '2020-06-04 20:49:40', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Options` VALUES ('5EC52E51-8E96-4B90-BF8E-3917A47A2B85', 'SYSTEM_POWER_DESCRIPTION', '撤销', '撤销', '6', null, '2020-06-02 17:24:20', '2020-06-02 17:24:20', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Options` VALUES ('5F811745-CB10-489C-B392-1067EDE802E2', 'SYSTEM_POWER_DESCRIPTION', '冲销', '冲销', '7', null, '2020-06-02 17:24:41', '2020-06-02 17:24:41', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Options` VALUES ('68B49C70-21FB-49E8-921C-BCA641794588', 'SYSTEM_POWER_DESCRIPTION', '删除', '删除', '4', null, '2020-06-02 17:23:51', '2020-06-02 17:23:51', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Options` VALUES ('89C043F5-9230-4D27-8C1A-6B900586AD5A', 'SYSTEM_POWER_DESCRIPTION', '浏览', '浏览', '1', null, '2020-06-02 17:22:44', '2020-06-02 17:22:44', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Options` VALUES ('97D59D40-5BAE-4BC0-8772-C2CBECDD5418', 'SYSTEM_POWER_DESCRIPTION', '编辑', '编辑', '3', null, '2020-06-02 17:23:35', '2020-06-02 17:23:35', '9999', '系统管理员', '9999', '系统管理员');

-- ----------------------------
-- Table structure for Sys_Power
-- ----------------------------
DROP TABLE IF EXISTS `Sys_Power`;
CREATE TABLE `Sys_Power` (
  `ID` varchar(36) NOT NULL COMMENT 'UUID',
  `Name` varchar(50) NOT NULL COMMENT '权限标识',
  `Page` varchar(50) NOT NULL COMMENT '系统页面',
  `Description` varchar(50) NOT NULL COMMENT '权限描述',
  `Remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `CreateTime` datetime NOT NULL COMMENT '创建时间',
  `UpdateTime` datetime NOT NULL COMMENT '最后更新时间',
  `CreateID` varchar(50) NOT NULL COMMENT '创建人编码',
  `CreateName` varchar(100) NOT NULL COMMENT '创建人',
  `UpdateID` varchar(50) NOT NULL COMMENT '更新人编码',
  `UpdateName` varchar(100) NOT NULL COMMENT '更新人',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限定义';

-- ----------------------------
-- Records of Sys_Power
-- ----------------------------
INSERT INTO `Sys_Power` VALUES ('023091F4-5F0E-468C-B019-B39103AE5956', 'PRIV_COMPANY_UPDATE', '公司定义', '编辑', null, '2020-06-09 13:39:53', '2020-06-09 13:39:53', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('036BBC7E-6F06-4CE9-BD91-D50B0D63355C', 'PRIV_USERS_VIEW', '用户管理', '浏览', null, '2020-05-31 11:20:18', '2020-05-31 11:20:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('0613AC75-0849-42AB-9324-8F66AA7CF87F', 'PRIV_WORKSHOP_DELETE', '车间定义', '删除', null, '2020-06-10 09:07:40', '2020-06-10 09:07:40', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('07B70D40-89DF-43C3-BDF6-2725677522F8', 'PRIV_POWERS_VIEW', '权限定义', '浏览', null, '2020-05-31 11:12:11', '2020-05-31 11:20:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('0E2C14EA-870E-41BD-B229-D06427313DC2', 'PRIV_LOGS_VIEW', '查看日志', '浏览', null, '2020-06-11 13:36:42', '2020-06-11 13:36:42', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('0F61A3CE-2F7F-4594-97EE-70A008B2A767', 'PRIV_ROLEPOWERS_VIEW', '角色权限', '浏览', null, '2020-05-31 11:13:09', '2020-05-31 11:20:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('15BECF0F-6F81-4117-9427-CA8C98618D88', 'PRIV_ROLEPOWERS_UPDATE', '角色权限', '编辑', null, '2020-05-31 11:13:10', '2020-05-31 11:20:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('16B7F104-BADD-4B61-B81E-034651BC20D5', 'PRIV_OPTIONS_UPDATE', '字典定义', '编辑', null, '2020-05-02 13:40:28', '2020-06-02 13:40:05', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('2AB67949-470B-4D54-814E-490D046DE392', 'PRIV_WORKSHOP_VIEW', '车间定义', '浏览', null, '2020-06-10 09:06:50', '2020-06-10 09:06:50', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('2E78189A-F7B0-4954-B90C-679606BBCA21', 'PRIV_FACTORY_CREATE', '工厂定义', '新增', null, '2020-06-09 15:16:55', '2020-06-09 15:16:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('30A06F2A-1270-4F1B-B7E1-B07663499450', 'PRIV_MENUS_UPDATE', '菜单管理', '编辑', null, '2020-05-31 11:10:03', '2020-05-31 11:20:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('359506E3-1335-41AA-8C86-36E2294D195F', 'PRIV_TASKS_DELETE', '计划任务', '删除', null, '2020-06-18 15:03:44', '2020-06-18 15:03:44', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('3639F31F-6F68-40C6-AC12-74FB387B8960', 'PRIV_USERS_DELETE', '用户管理', '删除', null, '2020-05-31 11:20:19', '2020-05-31 11:20:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('364F325B-B927-471C-A89D-DCB91B823B2C', 'PRIV_MENUS_CREATE', '菜单管理', '新增', null, '2020-05-31 11:10:02', '2020-05-31 11:20:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('3F8D1153-E456-446F-9D61-3AFFAFF07F3C', 'PRIV_FACTORY_DELETE', '工厂定义', '删除', null, '2020-06-09 15:17:24', '2020-06-09 15:17:24', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('449A124A-92C5-4872-8BEE-D71F894EDA0F', 'PRIV_PRODUCTLINE_VIEW', '产线定义', '浏览', null, '2020-06-10 09:47:09', '2020-06-10 09:47:09', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('45665B2E-5AE3-4692-8B80-03D2CBDE876C', 'PRIV_TASKS_CREATE', '计划任务', '新增', null, '2020-06-18 15:02:48', '2020-06-18 15:02:48', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('477DE876-4D91-49CD-B209-996FE605279D', 'PRIV_COMPANY_DELETE', '公司定义', '删除', null, '2020-06-09 13:40:39', '2020-06-09 13:40:39', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('4E2A1592-ED10-4A18-9C37-876D7CAF6727', 'PRIV_EQUIPMENT_UPDATE', '设备定义', '编辑', null, '2020-06-16 13:02:12', '2020-06-16 13:02:12', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('520D7B3D-4AC5-41B1-A9FD-7436DC17935C', 'PRIV_PRODUCTPROCESS_UPDATE', '工序定义', '编辑', null, '2020-06-10 20:08:03', '2020-06-10 20:08:03', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('52D8FA71-7252-44B5-9B17-FFC0640D631D', 'PRIV_OPTIONS_DELETE', '字典定义', '删除', null, '2020-05-02 13:40:29', '2020-06-02 13:40:21', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('52DB0AA1-6D36-4AD4-9036-0533C096B740', 'PRIV_TASKS_VIEW', '计划任务', '浏览', null, '2020-06-18 15:02:31', '2020-06-18 15:02:31', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('553089CD-882F-47C6-8EB4-74A28C7AECC0', 'PRIV_PRODUCTPROCESS_CREATE', '工序定义', '新增', null, '2020-06-10 20:07:52', '2020-06-10 20:07:52', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('5D2F0A1D-8C79-4253-BB35-4D304AC70ED2', 'PRIV_FACTORY_VIEW', '工厂定义', '浏览', null, '2020-06-09 15:16:36', '2020-06-09 15:16:36', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('5D4FE5C0-D927-4689-9481-B3D8BECA68DE', 'PRIV_EQUIPMENT_VIEW', '设备定义', '浏览', null, '2020-06-16 13:01:20', '2020-06-16 13:01:20', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('602A7D4E-4299-43B1-B6DD-EB7FCE409609', 'PRIV_ROLES_VIEW', '角色定义', '浏览', null, '2020-05-31 11:11:05', '2020-05-31 11:20:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('60E6CA5B-9B96-41CE-8E7F-C84C514D1DFD', 'PRIV_PRODUCTLINE_UPDATE', '产线定义', '编辑', null, '2020-06-10 09:47:36', '2020-06-10 09:47:36', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('61DF6DFD-6D26-448C-8D80-00341535617D', 'PRIV_MENUS_VIEW', '菜单管理', '浏览', null, '2020-05-31 11:10:01', '2020-05-31 11:20:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('6649B278-C5D2-4601-98E1-57FE4A531A74', 'PRIV_COMPANY_CREATE', '公司定义', '新增', null, '2020-06-09 13:38:25', '2020-06-09 13:38:25', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('66B84E36-F2D0-4847-97A9-2ACFFC9EE6FE', 'PRIV_POWERS_UPDATE', '权限定义', '编辑', null, '2020-05-31 11:12:13', '2020-05-31 11:20:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('67D7CDCE-CC5E-41B3-B9F6-55A4D2DCC8D8', 'PRIV_ROLES_UPDATE', '角色定义', '编辑', null, '2020-05-31 11:11:07', '2020-05-31 11:20:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('6999B413-3C9B-471C-B1EF-48AA2D4DE794', 'PRIV_USERS_RESETPASSWD', '用户管理', '重置密码', null, '2020-05-31 11:20:20', '2020-05-31 11:20:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('7E1350CF-765A-41E9-AF80-84C5CBFC7E5C', 'PRIV_TASKS_UPDATE', '计划任务', '编辑', null, '2020-06-18 15:03:07', '2020-06-18 15:03:07', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('80F773D3-2E05-41C2-B33F-64880A63264D', 'PRIV_EQUIPMENT_CREATE', '设备定义', '新增', null, '2020-06-16 13:01:50', '2020-06-16 13:01:50', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('8291C9BB-04B7-4DAE-BB81-F1CB3368A292', 'PRIV_MENUS_DELETE', '菜单管理', '删除', null, '2020-05-31 11:10:04', '2020-05-31 11:20:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('85DD7A0C-D06F-427D-8450-D95ED2D308CA', 'PRIV_ROLES_CREATE', '角色定义', '新增', null, '2020-05-31 11:11:06', '2020-05-31 11:20:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('8660B6E2-2A99-4C6B-9E96-0C1CF2CA0D63', 'PRIV_PRODUCTLINE_CREATE', '产线定义', '新增', null, '2020-06-10 09:47:22', '2020-06-10 09:47:22', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('875A2C25-25BC-4766-9609-703942573AB0', 'PRIV_POWERS_CREATE', '权限定义', '新增', null, '2020-05-31 11:12:12', '2020-05-31 11:20:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('886906DC-BC49-4BE9-B8DD-7DAF4BD103CB', 'PRIV_ROLEUSERS_DELETE', '用户角色', '删除', null, '2020-05-31 11:13:23', '2020-05-31 11:20:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('96C5BD50-B365-48A1-BDA7-6703DC1A3049', 'PRIV_PRODUCTPROCESS_DELETE', '工序定义', '删除', null, '2020-06-10 20:08:15', '2020-06-10 20:08:15', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('96DB4CA9-9F93-4ED1-BE55-DC12B467F778', 'PRIV_FACTORY_UPDATE', '工厂定义', '编辑', null, '2020-06-09 15:17:09', '2020-06-09 15:17:09', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('A3641961-3EB9-46C9-91E6-4AE0C7D3467E', 'PRIV_OPTIONS_CREATE', '字典定义', '新增', null, '2020-05-02 13:39:27', '2020-06-02 13:39:48', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('A388DB44-82BD-458D-A0FA-E54FCAEE91B7', 'PRIV_ROLEUSERS_CREATE', '用户角色', '新增', null, '2020-05-31 11:13:22', '2020-05-31 11:20:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('A8ED6E2E-57BC-47FA-A1E0-D2E109AA8E42', 'PRIV_USERS_UPDATE', '用户管理', '编辑', null, '2020-05-31 11:20:17', '2020-05-31 11:20:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('B1D2FF18-089F-4138-92DC-DF280F50BE87', 'PRIV_POWERS_DELETE', '权限定义', '删除', null, '2020-05-31 11:12:14', '2020-05-31 11:20:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('B240D13D-C29E-4A38-8888-F77BDD527FD7', 'PRIV_COMPANY_VIEW', '公司定义', '浏览', null, '2020-06-09 13:40:19', '2020-06-09 13:40:19', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('B54EBA59-D23B-4BE6-B3E4-6BCC5B6D13FE', 'PRIV_EQUIPMENT_DELETE', '设备定义', '删除', null, '2020-06-16 13:02:37', '2020-06-16 13:02:37', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('B551C6A4-2987-470D-B33B-BDB7488FD65E', 'PRIV_WORKSHOP_UPDATE', '车间定义', '编辑', null, '2020-06-10 09:07:27', '2020-06-10 09:07:27', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('BDE4354E-766B-4A55-A0DD-05A4740191DA', 'PRIV_ONLINE_DELETE', '在线统计', '删除', null, '2020-05-31 11:20:25', '2020-05-31 11:20:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('C00F0F28-8FDC-43F6-84FD-560D65A8D256', 'PRIV_ROLEUSERS_VIEW', '用户角色', '浏览', null, '2020-05-31 11:13:21', '2020-05-31 11:20:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('C814983F-3700-49A3-A53D-53ECFC7A2B4A', 'PRIV_PRODUCTPROCESS_VIEW', '工序定义', '浏览', null, '2020-06-10 20:07:33', '2020-06-10 20:07:33', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('C8E8AAE1-2177-4EDE-9E44-D24DADD2FF6E', 'PRIV_WORKSHOP_CREATE', '车间定义', '新增', null, '2020-06-10 09:07:05', '2020-06-10 09:07:05', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('CB127108-AA42-42A4-9CD0-2E194BC0C83B', 'PRIV_ONLINE_VIEW', '在线统计', '浏览', null, '2020-05-31 11:20:24', '2020-05-31 11:20:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('CEE73221-EE0C-442A-B53D-31021DC8836E', 'PRIV_USERS_CREATE', '用户管理', '新增', null, '2020-05-31 11:20:16', '2020-05-31 11:20:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('E702C145-BF21-4896-92CD-447936C680C3', 'PRIV_OPTIONS_VIEW', '字典定义', '浏览', null, '2020-05-02 13:39:26', '2020-06-02 13:39:33', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('EADF9CB3-A81C-42D7-9E88-15FAD08AED00', 'PRIV_ROLES_DELETE', '角色定义', '删除', null, '2020-05-31 11:11:08', '2020-05-31 11:20:55', '9999', '系统管理员', '9999', '系统管理员');
INSERT INTO `Sys_Power` VALUES ('F4EB78E0-9783-45F0-BA53-A0F18263228C', 'PRIV_PRODUCTLINE_DELETE', '产线定义', '删除', null, '2020-06-10 09:47:51', '2020-06-10 09:47:51', '9999', '系统管理员', '9999', '系统管理员');

-- ----------------------------
-- Table structure for Sys_Role
-- ----------------------------
DROP TABLE IF EXISTS `Sys_Role`;
CREATE TABLE `Sys_Role` (
  `ID` varchar(36) NOT NULL COMMENT 'ID',
  `Name` varchar(50) NOT NULL COMMENT '角色名称',
  `Remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `CreateTime` datetime NOT NULL COMMENT '创建时间',
  `UpdateTime` datetime NOT NULL COMMENT '最后更新时间',
  `CreateID` varchar(50) NOT NULL COMMENT '创建人编码',
  `CreateName` varchar(100) NOT NULL COMMENT '创建人',
  `UpdateID` varchar(50) NOT NULL COMMENT '更新人编码',
  `UpdateName` varchar(100) NOT NULL COMMENT '更新人',
  `Administrator` tinyint(4) NOT NULL COMMENT '超级管理员可见',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色定义';

-- ----------------------------
-- Records of Sys_Role
-- ----------------------------
INSERT INTO `Sys_Role` VALUES ('20813EA9-8252-4F0F-BCE7-49D2637DC457', '系统管理员', '系统内置', '2020-05-31 10:20:55', '2020-06-04 20:52:52', '9999', '系统管理员', '9999', '系统管理员', '1');

-- ----------------------------
-- Table structure for Sys_RolePower
-- ----------------------------
DROP TABLE IF EXISTS `Sys_RolePower`;
CREATE TABLE `Sys_RolePower` (
  `ID` varchar(36) NOT NULL COMMENT 'UUID',
  `RoleUID` varchar(36) NOT NULL COMMENT '角色ID',
  `PowerUID` varchar(36) NOT NULL COMMENT '权限ID',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色权限';

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
CREATE TABLE `Sys_TasksQz` (
  `ID` varchar(36) NOT NULL COMMENT 'UID',
  `Name` varchar(255) NOT NULL COMMENT '任务名称',
  `JobGroup` varchar(255) NOT NULL COMMENT '任务分组',
  `Cron` varchar(255) NOT NULL COMMENT '运行时间表达式',
  `AssemblyName` varchar(255) NOT NULL COMMENT '程序集名称',
  `ClassName` varchar(255) NOT NULL COMMENT '任务所在类',
  `Remark` longtext COMMENT '任务描述',
  `RunTimes` int(11) NOT NULL COMMENT '执行次数',
  `BeginTime` datetime DEFAULT NULL COMMENT '开始时间',
  `EndTime` datetime DEFAULT NULL COMMENT '结束时间',
  `TriggerType` int(11) NOT NULL COMMENT '触发器类型（0、simple 1、cron）',
  `IntervalSecond` int(11) NOT NULL COMMENT '执行间隔时间(单位:秒)',
  `IsStart` tinyint(4) NOT NULL COMMENT '是否启动',
  `JobParams` longtext COMMENT '传入参数',
  `CreateTime` datetime NOT NULL COMMENT '创建时间',
  `UpdateTime` datetime NOT NULL COMMENT '最后更新时间',
  `CreateID` varchar(50) NOT NULL COMMENT '创建人编码',
  `CreateName` varchar(100) NOT NULL COMMENT '创建人',
  `UpdateID` varchar(50) NOT NULL COMMENT '更新人编码',
  `UpdateName` varchar(100) NOT NULL COMMENT '更新人',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='计划任务';

-- ----------------------------
-- Records of Sys_TasksQz
-- ----------------------------
INSERT INTO `Sys_TasksQz` VALUES ('E29F2D63-B1B0-4CE6-9CDC-A5F86C52B887', '生产订单同步', '数据同步', '0 0 0/1 * * ? ', 'Meiam.System.Tasks', 'Job_SyncProductOrder', '[2020-10-20 21:00:00:012] => Run Job [Id：E29F2D63-B1B0-4CE6-9CDC-A5F86C52B887，Group：数据同步]， Succeed ， Elapsed：2.7464 ms', '756', '2020-06-19 09:59:29', '9999-12-31 00:00:00', '1', '1', '1', null, '2020-06-19 09:33:53', '2020-06-19 15:00:45', '9999', '系统管理员', '9999', '系统管理员');

-- ----------------------------
-- Table structure for Sys_UserRelation
-- ----------------------------
DROP TABLE IF EXISTS `Sys_UserRelation`;
CREATE TABLE `Sys_UserRelation` (
  `ID` varchar(36) NOT NULL COMMENT 'UUID',
  `UserID` varchar(50) NOT NULL COMMENT '用户ID',
  `ObjectID` varchar(36) NOT NULL COMMENT '数据权限ID',
  `ObjectType` varchar(36) NOT NULL COMMENT '数据权限类型',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户权限';

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
CREATE TABLE `Sys_UserRole` (
  `ID` varchar(36) NOT NULL COMMENT 'UUID',
  `UserID` varchar(50) NOT NULL COMMENT '用户ID',
  `RoleID` varchar(36) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色';

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
CREATE TABLE `Sys_Users` (
  `UserID` varchar(50) NOT NULL COMMENT '用户账号',
  `UserName` varchar(100) NOT NULL COMMENT '用户名称',
  `NickName` varchar(50) DEFAULT NULL COMMENT '用户昵称',
  `Email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `Password` varchar(50) NOT NULL COMMENT '密码',
  `Sex` varchar(10) NOT NULL COMMENT '性别',
  `AvatarUrl` varchar(200) DEFAULT NULL COMMENT '头像地址',
  `QQ` varchar(50) DEFAULT NULL COMMENT 'QQ',
  `Phone` varchar(50) DEFAULT NULL COMMENT '手机号码',
  `ProvinceID` varchar(10) DEFAULT NULL COMMENT '用户所在省份编码',
  `Province` varchar(50) DEFAULT NULL COMMENT '用户所在省份',
  `CityID` varchar(10) DEFAULT NULL COMMENT '用户所在城市编码',
  `City` varchar(50) DEFAULT NULL COMMENT '用户所在城市',
  `CountyID` varchar(10) DEFAULT NULL COMMENT '用户所在县/区编码',
  `County` varchar(50) DEFAULT NULL COMMENT '用户所在县/区',
  `Address` text COMMENT '地址',
  `Remark` text COMMENT '备注',
  `IdentityCard` varchar(50) DEFAULT NULL COMMENT '身份证',
  `Birthday` datetime DEFAULT NULL COMMENT '生日',
  `LastLoginTime` datetime DEFAULT NULL COMMENT '上次登录时间',
  `Enabled` tinyint(4) NOT NULL COMMENT '是否启用',
  `OneSession` tinyint(4) NOT NULL COMMENT '单用户模式',
  `CreateTime` datetime NOT NULL COMMENT '创建时间',
  `UpdateTime` datetime NOT NULL COMMENT '最后更新时间',
  `CreateID` varchar(50) NOT NULL COMMENT '创建人编码',
  `CreateName` varchar(100) NOT NULL COMMENT '创建人',
  `UpdateID` varchar(50) NOT NULL COMMENT '更新人编码',
  `UpdateName` varchar(100) NOT NULL COMMENT '更新人',
  `Administrator` tinyint(4) NOT NULL COMMENT '超级管理员',
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户管理';

-- ----------------------------
-- Records of Sys_Users
-- ----------------------------
INSERT INTO `Sys_Users` VALUES ('9999', '系统管理员', '系统管理员', '91270@QQ.COM', 'FC4509EFEA3AC97ED753F53DFA601161', '男', '/static/avatars/20200619/637281528723366669.png', '91270', '13344445555', null, null, null, null, null, null, null, null, null, '2020-06-18 16:00:00', '2020-10-20 20:42:12', '1', '0', '2020-05-31 10:20:55', '2020-06-19 08:41:12', '9999', '系统管理员', '9999', '系统管理员', '1');
