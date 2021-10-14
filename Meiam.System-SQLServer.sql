/*
 Navicat Premium Data Transfer

 Source Server         : 172.16.16.219_测试
 Source Server Type    : SQL Server
 Source Server Version : 15002000
 Source Host           : 172.16.16.219:1433
 Source Catalog        : MeiamSystem
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 15002000
 File Encoding         : 65001

 Date: 03/08/2021 17:27:31
*/


-- ----------------------------
-- Table structure for Base_Company
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Base_Company]') AND type IN ('U'))
	DROP TABLE [dbo].[Base_Company]
GO

CREATE TABLE [dbo].[Base_Company] (
  [ID] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CompanyNo] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CompanyName] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Remark] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Enable] bit DEFAULT 1 NOT NULL,
  [CreateTime] datetime  NOT NULL,
  [UpdateTime] datetime  NOT NULL,
  [CreateID] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CreateName] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [UpdateID] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [UpdateName] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[Base_Company] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'UUID',
'SCHEMA', N'dbo',
'TABLE', N'Base_Company',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'公司编码',
'SCHEMA', N'dbo',
'TABLE', N'Base_Company',
'COLUMN', N'CompanyNo'
GO

EXEC sp_addextendedproperty
'MS_Description', N'公司名称',
'SCHEMA', N'dbo',
'TABLE', N'Base_Company',
'COLUMN', N'CompanyName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'Base_Company',
'COLUMN', N'Remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否启用',
'SCHEMA', N'dbo',
'TABLE', N'Base_Company',
'COLUMN', N'Enable'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'Base_Company',
'COLUMN', N'CreateTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'最后更新时间',
'SCHEMA', N'dbo',
'TABLE', N'Base_Company',
'COLUMN', N'UpdateTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人编码',
'SCHEMA', N'dbo',
'TABLE', N'Base_Company',
'COLUMN', N'CreateID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'Base_Company',
'COLUMN', N'CreateName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人编码',
'SCHEMA', N'dbo',
'TABLE', N'Base_Company',
'COLUMN', N'UpdateID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'Base_Company',
'COLUMN', N'UpdateName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'公司定义',
'SCHEMA', N'dbo',
'TABLE', N'Base_Company'
GO


-- ----------------------------
-- Records of Base_Company
-- ----------------------------
INSERT INTO [dbo].[Base_Company] ([ID], [CompanyNo], [CompanyName], [Remark], [Enable], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'1E910EDA-534E-469D-9B12-6C1DEF56A706', N'1001', N'最赚钱的公司', NULL, N'1', N'2020-06-20 10:50:32.890', N'2020-06-20 10:50:32.890', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Base_Company] ([ID], [CompanyNo], [CompanyName], [Remark], [Enable], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'74887F03-4422-4851-8802-B3057ACC5F30', N'1002', N'最赔钱的公司', NULL, N'1', N'2020-06-20 10:50:44.897', N'2020-06-20 10:50:44.897', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO


-- ----------------------------
-- Table structure for Base_Equipment
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Base_Equipment]') AND type IN ('U'))
	DROP TABLE [dbo].[Base_Equipment]
GO

CREATE TABLE [dbo].[Base_Equipment] (
  [ID] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [EquipNo] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [EquipName] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Remark] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Enable] bit DEFAULT 1 NOT NULL,
  [CreateTime] datetime  NOT NULL,
  [UpdateTime] datetime  NOT NULL,
  [CreateID] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CreateName] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [UpdateID] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [UpdateName] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[Base_Equipment] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'UID',
'SCHEMA', N'dbo',
'TABLE', N'Base_Equipment',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'设备编号',
'SCHEMA', N'dbo',
'TABLE', N'Base_Equipment',
'COLUMN', N'EquipNo'
GO

EXEC sp_addextendedproperty
'MS_Description', N'设备名称',
'SCHEMA', N'dbo',
'TABLE', N'Base_Equipment',
'COLUMN', N'EquipName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'Base_Equipment',
'COLUMN', N'Remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否启用',
'SCHEMA', N'dbo',
'TABLE', N'Base_Equipment',
'COLUMN', N'Enable'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'Base_Equipment',
'COLUMN', N'CreateTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'最后更新时间',
'SCHEMA', N'dbo',
'TABLE', N'Base_Equipment',
'COLUMN', N'UpdateTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人编码',
'SCHEMA', N'dbo',
'TABLE', N'Base_Equipment',
'COLUMN', N'CreateID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'Base_Equipment',
'COLUMN', N'CreateName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人编码',
'SCHEMA', N'dbo',
'TABLE', N'Base_Equipment',
'COLUMN', N'UpdateID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'Base_Equipment',
'COLUMN', N'UpdateName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'设备定义',
'SCHEMA', N'dbo',
'TABLE', N'Base_Equipment'
GO


-- ----------------------------
-- Records of Base_Equipment
-- ----------------------------

-- ----------------------------
-- Table structure for Base_Factory
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Base_Factory]') AND type IN ('U'))
	DROP TABLE [dbo].[Base_Factory]
GO

CREATE TABLE [dbo].[Base_Factory] (
  [ID] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [FactoryNo] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [FactoryName] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Remark] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Enable] bit DEFAULT 1 NOT NULL,
  [CreateTime] datetime  NOT NULL,
  [UpdateTime] datetime  NOT NULL,
  [CreateID] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CreateName] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [UpdateID] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [UpdateName] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[Base_Factory] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'UUID',
'SCHEMA', N'dbo',
'TABLE', N'Base_Factory',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'工厂编码',
'SCHEMA', N'dbo',
'TABLE', N'Base_Factory',
'COLUMN', N'FactoryNo'
GO

EXEC sp_addextendedproperty
'MS_Description', N'工厂名称',
'SCHEMA', N'dbo',
'TABLE', N'Base_Factory',
'COLUMN', N'FactoryName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'Base_Factory',
'COLUMN', N'Remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否启用',
'SCHEMA', N'dbo',
'TABLE', N'Base_Factory',
'COLUMN', N'Enable'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'Base_Factory',
'COLUMN', N'CreateTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'最后更新时间',
'SCHEMA', N'dbo',
'TABLE', N'Base_Factory',
'COLUMN', N'UpdateTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人编码',
'SCHEMA', N'dbo',
'TABLE', N'Base_Factory',
'COLUMN', N'CreateID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'Base_Factory',
'COLUMN', N'CreateName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人编码',
'SCHEMA', N'dbo',
'TABLE', N'Base_Factory',
'COLUMN', N'UpdateID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'Base_Factory',
'COLUMN', N'UpdateName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'工厂定义',
'SCHEMA', N'dbo',
'TABLE', N'Base_Factory'
GO


-- ----------------------------
-- Records of Base_Factory
-- ----------------------------
INSERT INTO [dbo].[Base_Factory] ([ID], [FactoryNo], [FactoryName], [Remark], [Enable], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'21A0F4ED-FA2E-4786-93DC-0222F54B4286', N'2002', N'华南二期', NULL, N'1', N'2020-06-20 10:51:35.077', N'2020-06-20 10:51:35.077', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Base_Factory] ([ID], [FactoryNo], [FactoryName], [Remark], [Enable], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'AFE35E8D-83B4-48A3-889F-30A1BC07AFB4', N'2001', N'华西一期', NULL, N'1', N'2020-06-20 10:51:15.947', N'2020-06-20 10:51:15.947', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Base_Factory] ([ID], [FactoryNo], [FactoryName], [Remark], [Enable], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'CA97D772-FFD2-484C-AE53-22A6C8B095A2', N'2003', N'华东三期', NULL, N'1', N'2020-06-20 10:51:51.003', N'2020-06-20 10:51:51.003', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO


-- ----------------------------
-- Table structure for Base_ProductLine
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Base_ProductLine]') AND type IN ('U'))
	DROP TABLE [dbo].[Base_ProductLine]
GO

CREATE TABLE [dbo].[Base_ProductLine] (
  [ID] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [LineNo] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [LineName] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Remark] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Enable] bit DEFAULT 1 NOT NULL,
  [CreateTime] datetime  NOT NULL,
  [UpdateTime] datetime  NOT NULL,
  [CreateID] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CreateName] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [UpdateID] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [UpdateName] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[Base_ProductLine] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'UUID',
'SCHEMA', N'dbo',
'TABLE', N'Base_ProductLine',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'生产线编码',
'SCHEMA', N'dbo',
'TABLE', N'Base_ProductLine',
'COLUMN', N'LineNo'
GO

EXEC sp_addextendedproperty
'MS_Description', N'生产线名称',
'SCHEMA', N'dbo',
'TABLE', N'Base_ProductLine',
'COLUMN', N'LineName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'Base_ProductLine',
'COLUMN', N'Remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否启用',
'SCHEMA', N'dbo',
'TABLE', N'Base_ProductLine',
'COLUMN', N'Enable'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'Base_ProductLine',
'COLUMN', N'CreateTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'最后更新时间',
'SCHEMA', N'dbo',
'TABLE', N'Base_ProductLine',
'COLUMN', N'UpdateTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人编码',
'SCHEMA', N'dbo',
'TABLE', N'Base_ProductLine',
'COLUMN', N'CreateID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'Base_ProductLine',
'COLUMN', N'CreateName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人编码',
'SCHEMA', N'dbo',
'TABLE', N'Base_ProductLine',
'COLUMN', N'UpdateID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'Base_ProductLine',
'COLUMN', N'UpdateName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'产线定义',
'SCHEMA', N'dbo',
'TABLE', N'Base_ProductLine'
GO


-- ----------------------------
-- Records of Base_ProductLine
-- ----------------------------

-- ----------------------------
-- Table structure for Base_ProductProcess
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Base_ProductProcess]') AND type IN ('U'))
	DROP TABLE [dbo].[Base_ProductProcess]
GO

CREATE TABLE [dbo].[Base_ProductProcess] (
  [ID] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [ProcessNo] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [ProcessName] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Remark] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Enable] bit DEFAULT 1 NOT NULL,
  [CreateTime] datetime  NOT NULL,
  [UpdateTime] datetime  NOT NULL,
  [CreateID] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CreateName] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [UpdateID] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [UpdateName] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[Base_ProductProcess] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'UUID',
'SCHEMA', N'dbo',
'TABLE', N'Base_ProductProcess',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'工序编码',
'SCHEMA', N'dbo',
'TABLE', N'Base_ProductProcess',
'COLUMN', N'ProcessNo'
GO

EXEC sp_addextendedproperty
'MS_Description', N'工序名称',
'SCHEMA', N'dbo',
'TABLE', N'Base_ProductProcess',
'COLUMN', N'ProcessName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'Base_ProductProcess',
'COLUMN', N'Remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否启用',
'SCHEMA', N'dbo',
'TABLE', N'Base_ProductProcess',
'COLUMN', N'Enable'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'Base_ProductProcess',
'COLUMN', N'CreateTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'最后更新时间',
'SCHEMA', N'dbo',
'TABLE', N'Base_ProductProcess',
'COLUMN', N'UpdateTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人编码',
'SCHEMA', N'dbo',
'TABLE', N'Base_ProductProcess',
'COLUMN', N'CreateID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'Base_ProductProcess',
'COLUMN', N'CreateName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人编码',
'SCHEMA', N'dbo',
'TABLE', N'Base_ProductProcess',
'COLUMN', N'UpdateID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'Base_ProductProcess',
'COLUMN', N'UpdateName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'工序定义',
'SCHEMA', N'dbo',
'TABLE', N'Base_ProductProcess'
GO


-- ----------------------------
-- Records of Base_ProductProcess
-- ----------------------------
INSERT INTO [dbo].[Base_ProductProcess] ([ID], [ProcessNo], [ProcessName], [Remark], [Enable], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'9E4C1AD4-40AB-4D93-8EE1-B07688360228', N'20010101', N'铸焊浇筑', NULL, N'1', N'2020-06-20 10:54:34.773', N'2020-06-20 10:55:19.977', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Base_ProductProcess] ([ID], [ProcessNo], [ProcessName], [Remark], [Enable], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'9FCB9642-CE69-43C5-9D71-400F0B1D64A1', N'20010102', N'铸焊锻造', NULL, N'1', N'2020-06-20 10:54:58.147', N'2020-06-20 10:54:58.147', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO


-- ----------------------------
-- Table structure for Base_WorkShop
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Base_WorkShop]') AND type IN ('U'))
	DROP TABLE [dbo].[Base_WorkShop]
GO

CREATE TABLE [dbo].[Base_WorkShop] (
  [ID] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [WorkShopNo] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [WorkShopName] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Remark] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Enable] bit DEFAULT 1 NOT NULL,
  [CreateTime] datetime  NOT NULL,
  [UpdateTime] datetime  NOT NULL,
  [CreateID] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CreateName] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [UpdateID] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [UpdateName] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[Base_WorkShop] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'UUID',
'SCHEMA', N'dbo',
'TABLE', N'Base_WorkShop',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'车间编码',
'SCHEMA', N'dbo',
'TABLE', N'Base_WorkShop',
'COLUMN', N'WorkShopNo'
GO

EXEC sp_addextendedproperty
'MS_Description', N'车间名称',
'SCHEMA', N'dbo',
'TABLE', N'Base_WorkShop',
'COLUMN', N'WorkShopName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'Base_WorkShop',
'COLUMN', N'Remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否启用',
'SCHEMA', N'dbo',
'TABLE', N'Base_WorkShop',
'COLUMN', N'Enable'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'Base_WorkShop',
'COLUMN', N'CreateTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'最后更新时间',
'SCHEMA', N'dbo',
'TABLE', N'Base_WorkShop',
'COLUMN', N'UpdateTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人编码',
'SCHEMA', N'dbo',
'TABLE', N'Base_WorkShop',
'COLUMN', N'CreateID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'Base_WorkShop',
'COLUMN', N'CreateName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人编码',
'SCHEMA', N'dbo',
'TABLE', N'Base_WorkShop',
'COLUMN', N'UpdateID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'Base_WorkShop',
'COLUMN', N'UpdateName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'车间定义',
'SCHEMA', N'dbo',
'TABLE', N'Base_WorkShop'
GO


-- ----------------------------
-- Records of Base_WorkShop
-- ----------------------------
INSERT INTO [dbo].[Base_WorkShop] ([ID], [WorkShopNo], [WorkShopName], [Remark], [Enable], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'06EE680E-8DDF-4557-BA37-52416E3FA197', N'200202', N'极板车间', NULL, N'1', N'2020-06-20 10:53:55.527', N'2020-06-20 10:53:55.527', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Base_WorkShop] ([ID], [WorkShopNo], [WorkShopName], [Remark], [Enable], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'1D524B11-DBF0-475F-8D95-D1F35515174A', N'200102', N'极板车间', NULL, N'1', N'2020-06-20 10:53:16.577', N'2020-06-20 10:53:16.577', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Base_WorkShop] ([ID], [WorkShopNo], [WorkShopName], [Remark], [Enable], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'82AE52A6-00F2-420C-AB28-1B2E227D6122', N'200101', N'铸焊车间', NULL, N'1', N'2020-06-20 10:52:54.310', N'2020-06-20 10:52:54.310', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Base_WorkShop] ([ID], [WorkShopNo], [WorkShopName], [Remark], [Enable], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'8EE174C5-4430-4196-AEF8-4D72EF69C6C3', N'200201', N'铸焊车间', NULL, N'1', N'2020-06-20 10:53:38.647', N'2020-06-20 10:53:38.647', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO


-- ----------------------------
-- Table structure for Sys_DataRelation
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Sys_DataRelation]') AND type IN ('U'))
	DROP TABLE [dbo].[Sys_DataRelation]
GO

CREATE TABLE [dbo].[Sys_DataRelation] (
  [ID] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Form] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [To] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Type] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Sys_DataRelation] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'UID',
'SCHEMA', N'dbo',
'TABLE', N'Sys_DataRelation',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'来源ID',
'SCHEMA', N'dbo',
'TABLE', N'Sys_DataRelation',
'COLUMN', N'Form'
GO

EXEC sp_addextendedproperty
'MS_Description', N'对应ID',
'SCHEMA', N'dbo',
'TABLE', N'Sys_DataRelation',
'COLUMN', N'To'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据关系',
'SCHEMA', N'dbo',
'TABLE', N'Sys_DataRelation'
GO


-- ----------------------------
-- Records of Sys_DataRelation
-- ----------------------------
INSERT INTO [dbo].[Sys_DataRelation] ([ID], [Form], [To], [Type]) VALUES (N'236E2C08-3A87-4F71-BC2B-4B46099429AD', N'21A0F4ED-FA2E-4786-93DC-0222F54B4286', N'1E910EDA-534E-469D-9B12-6C1DEF56A706', N'Factory_To_Company')
GO

INSERT INTO [dbo].[Sys_DataRelation] ([ID], [Form], [To], [Type]) VALUES (N'6B9F5197-BFF0-4677-9813-BFAB0ACD31B2', N'82AE52A6-00F2-420C-AB28-1B2E227D6122', N'AFE35E8D-83B4-48A3-889F-30A1BC07AFB4', N'WorkShop_To_Factory')
GO

INSERT INTO [dbo].[Sys_DataRelation] ([ID], [Form], [To], [Type]) VALUES (N'70E5F36F-BE18-406F-9319-FF49CF4C66DE', N'CA97D772-FFD2-484C-AE53-22A6C8B095A2', N'74887F03-4422-4851-8802-B3057ACC5F30', N'Factory_To_Company')
GO

INSERT INTO [dbo].[Sys_DataRelation] ([ID], [Form], [To], [Type]) VALUES (N'84E788F1-C13B-4F47-84C2-B71772D3152C', N'9FCB9642-CE69-43C5-9D71-400F0B1D64A1', N'82AE52A6-00F2-420C-AB28-1B2E227D6122', N'Process_To_WorkShop')
GO

INSERT INTO [dbo].[Sys_DataRelation] ([ID], [Form], [To], [Type]) VALUES (N'8BECD5B4-2897-44A9-B6FB-E3F2B14AC422', N'9E4C1AD4-40AB-4D93-8EE1-B07688360228', N'82AE52A6-00F2-420C-AB28-1B2E227D6122', N'Process_To_WorkShop')
GO

INSERT INTO [dbo].[Sys_DataRelation] ([ID], [Form], [To], [Type]) VALUES (N'BC944632-4825-41F1-AABF-33A3AEF44ACE', N'1D524B11-DBF0-475F-8D95-D1F35515174A', N'AFE35E8D-83B4-48A3-889F-30A1BC07AFB4', N'WorkShop_To_Factory')
GO

INSERT INTO [dbo].[Sys_DataRelation] ([ID], [Form], [To], [Type]) VALUES (N'EC41BA6C-14A7-4776-B8C7-832B934B2BC0', N'AFE35E8D-83B4-48A3-889F-30A1BC07AFB4', N'1E910EDA-534E-469D-9B12-6C1DEF56A706', N'Factory_To_Company')
GO

INSERT INTO [dbo].[Sys_DataRelation] ([ID], [Form], [To], [Type]) VALUES (N'EFFCFE70-0402-4FD7-BC8E-CAD15AB71D60', N'8EE174C5-4430-4196-AEF8-4D72EF69C6C3', N'21A0F4ED-FA2E-4786-93DC-0222F54B4286', N'WorkShop_To_Factory')
GO

INSERT INTO [dbo].[Sys_DataRelation] ([ID], [Form], [To], [Type]) VALUES (N'F89CC5FC-726C-4BB2-9C7F-4E1D6562A71F', N'06EE680E-8DDF-4557-BA37-52416E3FA197', N'21A0F4ED-FA2E-4786-93DC-0222F54B4286', N'WorkShop_To_Factory')
GO


-- ----------------------------
-- Table structure for Sys_Logs
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Sys_Logs]') AND type IN ('U'))
	DROP TABLE [dbo].[Sys_Logs]
GO

CREATE TABLE [dbo].[Sys_Logs] (
  [ID] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Logger] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [Level] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [Url] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Host] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [Method] nvarchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [UserAgent] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Cookie] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [QueryString] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [Body] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [Message] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [Elapsed] int  NULL,
  [CreateTime] datetime2(6)  NULL,
  [IPAddress] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Sys_Logs] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'ID',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Logs',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'日志类型',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Logs',
'COLUMN', N'Logger'
GO

EXEC sp_addextendedproperty
'MS_Description', N'日志等级',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Logs',
'COLUMN', N'Level'
GO

EXEC sp_addextendedproperty
'MS_Description', N'日志来源',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Logs',
'COLUMN', N'Url'
GO

EXEC sp_addextendedproperty
'MS_Description', N'主机地址',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Logs',
'COLUMN', N'Host'
GO

EXEC sp_addextendedproperty
'MS_Description', N'请求方式',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Logs',
'COLUMN', N'Method'
GO

EXEC sp_addextendedproperty
'MS_Description', N'浏览器标识',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Logs',
'COLUMN', N'UserAgent'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Cookie',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Logs',
'COLUMN', N'Cookie'
GO

EXEC sp_addextendedproperty
'MS_Description', N'URL参数',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Logs',
'COLUMN', N'QueryString'
GO

EXEC sp_addextendedproperty
'MS_Description', N'请求内容',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Logs',
'COLUMN', N'Body'
GO

EXEC sp_addextendedproperty
'MS_Description', N'日志信息',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Logs',
'COLUMN', N'Message'
GO

EXEC sp_addextendedproperty
'MS_Description', N'请求耗时',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Logs',
'COLUMN', N'Elapsed'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Logs',
'COLUMN', N'CreateTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户来源',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Logs',
'COLUMN', N'IPAddress'
GO

EXEC sp_addextendedproperty
'MS_Description', N'日志管理',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Logs'
GO


-- ----------------------------
-- Records of Sys_Logs
-- ----------------------------

-- ----------------------------
-- Table structure for Sys_Menu
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Sys_Menu]') AND type IN ('U'))
	DROP TABLE [dbo].[Sys_Menu]
GO

CREATE TABLE [dbo].[Sys_Menu] (
  [ID] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [Icon] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [Path] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [Component] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [SortIndex] int  NOT NULL,
  [ViewPower] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [ParentUID] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NULL,
  [Remark] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [System] int DEFAULT 0 NOT NULL,
  [isFrame] bit DEFAULT 0 NOT NULL,
  [Hidden] bit DEFAULT 0 NOT NULL,
  [KeepAlive] bit DEFAULT 0 NOT NULL,
  [CreateTime] datetime  NOT NULL,
  [UpdateTime] datetime  NOT NULL,
  [CreateID] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CreateName] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [UpdateID] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [UpdateName] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[Sys_Menu] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'UUID',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Menu',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'菜单名称',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Menu',
'COLUMN', N'Name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'图标',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Menu',
'COLUMN', N'Icon'
GO

EXEC sp_addextendedproperty
'MS_Description', N'路由地址',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Menu',
'COLUMN', N'Path'
GO

EXEC sp_addextendedproperty
'MS_Description', N'组件路径',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Menu',
'COLUMN', N'Component'
GO

EXEC sp_addextendedproperty
'MS_Description', N'默认排序',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Menu',
'COLUMN', N'SortIndex'
GO

EXEC sp_addextendedproperty
'MS_Description', N'浏览权限',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Menu',
'COLUMN', N'ViewPower'
GO

EXEC sp_addextendedproperty
'MS_Description', N'上级菜单',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Menu',
'COLUMN', N'ParentUID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Menu',
'COLUMN', N'Remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'可用系统(0-PC，1-Wx)',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Menu',
'COLUMN', N'System'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否外链',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Menu',
'COLUMN', N'isFrame'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否可见',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Menu',
'COLUMN', N'Hidden'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否缓存',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Menu',
'COLUMN', N'KeepAlive'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Menu',
'COLUMN', N'CreateTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'最后更新时间',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Menu',
'COLUMN', N'UpdateTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人编码',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Menu',
'COLUMN', N'CreateID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Menu',
'COLUMN', N'CreateName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人编码',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Menu',
'COLUMN', N'UpdateID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Menu',
'COLUMN', N'UpdateName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统菜单',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Menu'
GO


-- ----------------------------
-- Records of Sys_Menu
-- ----------------------------
INSERT INTO [dbo].[Sys_Menu] ([ID], [Name], [Icon], [Path], [Component], [SortIndex], [ViewPower], [ParentUID], [Remark], [System], [isFrame], [Hidden], [KeepAlive], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'25041C8B-A18C-4D7C-9212-EB60F0EB7100', N'工序定义', N'app', N'productprocess', N'basic/productprocess/index', N'4', N'PRIV_PRODUCTPROCESS_VIEW', N'A2EDE2E3-CCC5-4A88-89A1-A84CDAF35DEE', NULL, N'0', N'0', N'0', N'0', N'2020-06-01 11:01:20.080', N'2020-06-19 16:12:01.500', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Menu] ([ID], [Name], [Icon], [Path], [Component], [SortIndex], [ViewPower], [ParentUID], [Remark], [System], [isFrame], [Hidden], [KeepAlive], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'30580EEA-A24D-4B52-B35B-E6489080705D', N'字典定义', N'doc', N'options', N'system/options/index', N'3', N'PRIV_OPTIONS_VIEW', N'651BBACF-7AB6-457C-88CC-BF4223B2D390', NULL, N'0', N'0', N'0', N'1', N'2020-06-01 21:43:49.150', N'2020-06-06 08:53:27.323', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Menu] ([ID], [Name], [Icon], [Path], [Component], [SortIndex], [ViewPower], [ParentUID], [Remark], [System], [isFrame], [Hidden], [KeepAlive], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'54F26B7C-1958-42D5-B5CA-0ED22A3976F7', N'权限定义', N'validCode', N'powers', N'system/powers/index', N'2', N'PRIV_POWERS_VIEW', N'651BBACF-7AB6-457C-88CC-BF4223B2D390', NULL, N'0', N'0', N'0', N'1', N'2020-06-01 11:03:03.653', N'2020-06-13 16:28:14.790', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Menu] ([ID], [Name], [Icon], [Path], [Component], [SortIndex], [ViewPower], [ParentUID], [Remark], [System], [isFrame], [Hidden], [KeepAlive], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'59081379-67BA-459B-B5F3-EB5EED51BB60', N'在线统计', N'international', N'online', N'system/online/index', N'5', N'PRIV_ONLINE_VIEW', N'651BBACF-7AB6-457C-88CC-BF4223B2D390', NULL, N'0', N'0', N'0', N'0', N'2020-06-11 19:20:46.740', N'2020-06-11 21:42:25.183', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Menu] ([ID], [Name], [Icon], [Path], [Component], [SortIndex], [ViewPower], [ParentUID], [Remark], [System], [isFrame], [Hidden], [KeepAlive], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'651BBACF-7AB6-457C-88CC-BF4223B2D390', N'系统管理', N'system1', N'system', 'Layout', N'99', NULL, NULL, NULL, N'0', N'0', N'0', N'0', N'2020-06-05 17:20:34.447', N'2020-06-05 17:20:41.913', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Menu] ([ID], [Name], [Icon], [Path], [Component], [SortIndex], [ViewPower], [ParentUID], [Remark], [System], [isFrame], [Hidden], [KeepAlive], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'6F3EEB92-7AB6-4E81-AE48-135A195EAC4D', N'用户角色', N'people', N'roleusers', N'users/roleusers/index', N'4', N'PRIV_ROLEUSERS_VIEW', N'7B670227-DE9C-4457-8AA3-D14295B07530', NULL, N'0', N'0', N'0', N'0', N'2020-06-04 16:14:25.717', N'2020-06-09 08:42:10.453', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Menu] ([ID], [Name], [Icon], [Path], [Component], [SortIndex], [ViewPower], [ParentUID], [Remark], [System], [isFrame], [Hidden], [KeepAlive], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'6F8FFE5E-EE0E-4A36-B96F-5F48875CFC85', N'角色定义', N'role', N'roles', N'users/roles/index', N'2', N'PRIV_ROLES_VIEW', N'7B670227-DE9C-4457-8AA3-D14295B07530', NULL, N'0', N'0', N'0', N'1', N'2020-05-31 11:20:55.000', N'2020-06-14 01:19:41.440', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Menu] ([ID], [Name], [Icon], [Path], [Component], [SortIndex], [ViewPower], [ParentUID], [Remark], [System], [isFrame], [Hidden], [KeepAlive], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'77893F2F-F8EB-4A75-B7B9-CBD28B994973', N'公司定义', N'app', N'company', N'basic/company/index', N'1', N'PRIV_COMPANY_VIEW', N'A2EDE2E3-CCC5-4A88-89A1-A84CDAF35DEE', NULL, N'0', N'0', N'0', N'0', N'2020-05-31 11:20:55.000', N'2020-06-19 16:11:29.310', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Menu] ([ID], [Name], [Icon], [Path], [Component], [SortIndex], [ViewPower], [ParentUID], [Remark], [System], [isFrame], [Hidden], [KeepAlive], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'7B3B2EB8-45BB-458D-B4A8-0E1442531316', N'设备定义', N'app', N'equipment', N'basic/equipment/index', N'6', N'PRIV_EQUIPMENT_VIEW', N'A2EDE2E3-CCC5-4A88-89A1-A84CDAF35DEE', NULL, N'0', N'0', N'0', N'0', N'2020-06-16 12:59:13.750', N'2020-06-19 16:12:47.223', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Menu] ([ID], [Name], [Icon], [Path], [Component], [SortIndex], [ViewPower], [ParentUID], [Remark], [System], [isFrame], [Hidden], [KeepAlive], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'7B670227-DE9C-4457-8AA3-D14295B07530', N'用户管理', N'peoples', N'users', 'Layout', N'98', NULL, NULL, NULL, N'0', N'0', N'0', N'0', N'2020-06-09 08:16:22.453', N'2020-06-09 08:16:30.773', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Menu] ([ID], [Name], [Icon], [Path], [Component], [SortIndex], [ViewPower], [ParentUID], [Remark], [System], [isFrame], [Hidden], [KeepAlive], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'8C8F01CC-A34C-48A8-9774-01123161916B', N'系统日志', N'log', N'logger', N'system/logger/index', N'4', N'PRIV_LOGS_VIEW', N'651BBACF-7AB6-457C-88CC-BF4223B2D390', NULL, N'0', N'0', N'0', N'0', N'2020-06-11 13:34:51.017', N'2020-06-11 21:42:49.823', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Menu] ([ID], [Name], [Icon], [Path], [Component], [SortIndex], [ViewPower], [ParentUID], [Remark], [System], [isFrame], [Hidden], [KeepAlive], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'93D4E4F0-11C4-4C4C-B838-05CF3A565A81', N'个人中心', N'Steve-Jobs', N'center', N'users/center/index', N'6', NULL, N'7B670227-DE9C-4457-8AA3-D14295B07530', NULL, N'0', N'0', N'1', N'0', N'2020-06-16 22:00:17.763', N'2020-06-16 22:00:17.763', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Menu] ([ID], [Name], [Icon], [Path], [Component], [SortIndex], [ViewPower], [ParentUID], [Remark], [System], [isFrame], [Hidden], [KeepAlive], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'A2EDE2E3-CCC5-4A88-89A1-A84CDAF35DEE', N'基础信息', N'tree', N'basic', 'Layout', N'1', NULL, NULL, NULL, N'0', N'0', N'0', N'0', N'2020-05-31 11:20:55.000', N'2020-06-06 08:51:05.487', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Menu] ([ID], [Name], [Icon], [Path], [Component], [SortIndex], [ViewPower], [ParentUID], [Remark], [System], [isFrame], [Hidden], [KeepAlive], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'A86D8C2E-87CB-4BE2-B55D-A64165D1C3FE', N'角色权限', N'permission', N'rolepowers', N'users/rolepowers/index', N'3', N'PRIV_ROLEPOWERS_VIEW', N'7B670227-DE9C-4457-8AA3-D14295B07530', NULL, N'0', N'0', N'0', N'1', N'2020-06-01 11:06:39.710', N'2020-06-14 01:19:48.680', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Menu] ([ID], [Name], [Icon], [Path], [Component], [SortIndex], [ViewPower], [ParentUID], [Remark], [System], [isFrame], [Hidden], [KeepAlive], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'B11607C3-F1C5-435D-B4DF-8F2C5A487E50', N'任务调度', N'timing', N'tasks', N'system/tasks/index', N'6', N'PRIV_TASKS_VIEW', N'651BBACF-7AB6-457C-88CC-BF4223B2D390', NULL, N'0', N'0', N'0', N'0', N'2020-06-18 14:58:58.970', N'2020-06-18 16:37:09.133', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Menu] ([ID], [Name], [Icon], [Path], [Component], [SortIndex], [ViewPower], [ParentUID], [Remark], [System], [isFrame], [Hidden], [KeepAlive], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'B182CDE0-610A-43D8-8619-BEE44AE4C2F8', N'产线定义', N'app', N'productline', N'basic/productline/index', N'5', N'PRIV_PRODUCTLINE_VIEW', N'A2EDE2E3-CCC5-4A88-89A1-A84CDAF35DEE', NULL, N'0', N'0', N'0', N'0', N'2020-06-01 10:59:36.203', N'2020-06-19 16:12:39.743', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Menu] ([ID], [Name], [Icon], [Path], [Component], [SortIndex], [ViewPower], [ParentUID], [Remark], [System], [isFrame], [Hidden], [KeepAlive], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'C3006273-F75D-11E8-9BA4-00059A3C7A00', N'菜单管理', N'menu', N'menus', N'system/menus/index', N'1', N'PRIV_MENUS_VIEW', N'651BBACF-7AB6-457C-88CC-BF4223B2D390', NULL, N'0', N'0', N'0', N'1', N'2020-05-31 11:20:55.000', N'2020-06-06 08:53:19.183', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Menu] ([ID], [Name], [Icon], [Path], [Component], [SortIndex], [ViewPower], [ParentUID], [Remark], [System], [isFrame], [Hidden], [KeepAlive], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'E01AE23A-F75C-11E8-9BA4-00059A3C7A00', N'用户列表', N'user', N'users', N'users/users/index', N'1', N'PRIV_USERS_VIEW', N'7B670227-DE9C-4457-8AA3-D14295B07530', NULL, N'0', N'0', N'0', N'1', N'2020-05-31 11:20:55.000', N'2020-06-14 01:19:30.747', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Menu] ([ID], [Name], [Icon], [Path], [Component], [SortIndex], [ViewPower], [ParentUID], [Remark], [System], [isFrame], [Hidden], [KeepAlive], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'E8716862-C10B-4A74-844C-A0F378F7D2C3', N'工厂定义', N'app', N'factory', N'basic/factory/index', N'2', N'PRIV_FACTORY_VIEW', N'A2EDE2E3-CCC5-4A88-89A1-A84CDAF35DEE', NULL, N'0', N'0', N'0', N'0', N'2020-05-31 11:20:55.000', N'2020-06-19 16:11:40.923', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Menu] ([ID], [Name], [Icon], [Path], [Component], [SortIndex], [ViewPower], [ParentUID], [Remark], [System], [isFrame], [Hidden], [KeepAlive], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'F200F0E2-4B9C-4A3C-8102-8130096BF975', N'车间定义', N'app', N'workshop', N'basic/workshop/index', N'3', N'PRIV_WORKSHOP_VIEW', N'A2EDE2E3-CCC5-4A88-89A1-A84CDAF35DEE', NULL, N'0', N'0', N'0', N'0', N'2020-06-01 10:46:08.287', N'2020-06-19 16:12:08.960', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO


-- ----------------------------
-- Table structure for Sys_Online
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Sys_Online]') AND type IN ('U'))
	DROP TABLE [dbo].[Sys_Online]
GO

CREATE TABLE [dbo].[Sys_Online] (
  [UserID] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [SessionID] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [IPAddress] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [LoginTime] datetime  NULL,
  [UpdateTime] datetime  NULL,
  [Source] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Sys_Online] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Online',
'COLUMN', N'UserID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'会话',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Online',
'COLUMN', N'SessionID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'IP地址',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Online',
'COLUMN', N'IPAddress'
GO

EXEC sp_addextendedproperty
'MS_Description', N'登录时间',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Online',
'COLUMN', N'LoginTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'最后操作时间',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Online',
'COLUMN', N'UpdateTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'来源',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Online',
'COLUMN', N'Source'
GO

EXEC sp_addextendedproperty
'MS_Description', N'在线用户',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Online'
GO


-- ----------------------------
-- Records of Sys_Online
-- ----------------------------
INSERT INTO [dbo].[Sys_Online] ([UserID], [SessionID], [IPAddress], [LoginTime], [UpdateTime], [Source]) VALUES (N'9999', N'6873A54A-70D5-4192-BED0-5FA06909653A', N'127.0.0.1', N'2021-08-03 15:45:20.617', N'2021-08-03 15:52:22.177', N'Web')
GO


-- ----------------------------
-- Table structure for Sys_Options
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Sys_Options]') AND type IN ('U'))
	DROP TABLE [dbo].[Sys_Options]
GO

CREATE TABLE [dbo].[Sys_Options] (
  [ID] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Option] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Label] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Value] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [SortIndex] int  NOT NULL,
  [Remark] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [CreateTime] datetime  NOT NULL,
  [UpdateTime] datetime  NOT NULL,
  [CreateID] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CreateName] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [UpdateID] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [UpdateName] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[Sys_Options] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'UUID',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Options',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'分组（System_Menus_Status）',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Options',
'COLUMN', N'Option'
GO

EXEC sp_addextendedproperty
'MS_Description', N'名称',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Options',
'COLUMN', N'Label'
GO

EXEC sp_addextendedproperty
'MS_Description', N'内容',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Options',
'COLUMN', N'Value'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Options',
'COLUMN', N'SortIndex'
GO

EXEC sp_addextendedproperty
'MS_Description', N'描述',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Options',
'COLUMN', N'Remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Options',
'COLUMN', N'CreateTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'最后更新时间',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Options',
'COLUMN', N'UpdateTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人编码',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Options',
'COLUMN', N'CreateID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Options',
'COLUMN', N'CreateName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人编码',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Options',
'COLUMN', N'UpdateID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Options',
'COLUMN', N'UpdateName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'选项框字典',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Options'
GO


-- ----------------------------
-- Records of Sys_Options
-- ----------------------------
INSERT INTO [dbo].[Sys_Options] ([ID], [Option], [Label], [Value], [SortIndex], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'0F2EED72-EFF0-4DD5-8E68-316F0D2CC07B', N'SYSTEM_POWER_DESCRIPTION', N'审核', N'审核', N'5', NULL, N'2020-06-02 17:24:01.797', N'2020-06-02 17:24:01.797', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Options] ([ID], [Option], [Label], [Value], [SortIndex], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'2A769FEA-4D41-4D48-A7CF-CD410207B96D', N'SYSTEM_MENU_SYSTEM', N'微信小程序', N'1', N'2', NULL, N'2020-06-02 14:05:33.683', N'2020-06-02 14:05:41.033', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Options] ([ID], [Option], [Label], [Value], [SortIndex], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'35E47F7B-27A1-44BB-9924-D9F5FAB2073D', N'SYSTEM_POWER_DESCRIPTION', N'导出', N'导出', N'8', NULL, N'2020-06-02 17:24:55.433', N'2020-06-02 17:24:55.433', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Options] ([ID], [Option], [Label], [Value], [SortIndex], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'4F2875AC-509E-45F7-B36E-0095FE4320D8', N'SYSTEM_POWER_DESCRIPTION', N'新增', N'新增', N'2', NULL, N'2020-06-02 17:23:18.970', N'2020-06-02 17:23:18.970', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Options] ([ID], [Option], [Label], [Value], [SortIndex], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'518CEFB2-593A-40AB-A521-C875A74F2734', N'SYSTEM_MENU_SYSTEM', N'后台系统', N'0', N'1', NULL, N'2020-06-02 14:05:14.647', N'2020-06-04 20:49:40.110', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Options] ([ID], [Option], [Label], [Value], [SortIndex], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'5EC52E51-8E96-4B90-BF8E-3917A47A2B85', N'SYSTEM_POWER_DESCRIPTION', N'撤销', N'撤销', N'6', NULL, N'2020-06-02 17:24:20.193', N'2020-06-02 17:24:20.193', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Options] ([ID], [Option], [Label], [Value], [SortIndex], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'5F811745-CB10-489C-B392-1067EDE802E2', N'SYSTEM_POWER_DESCRIPTION', N'冲销', N'冲销', N'7', NULL, N'2020-06-02 17:24:41.450', N'2020-06-02 17:24:41.450', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Options] ([ID], [Option], [Label], [Value], [SortIndex], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'68B49C70-21FB-49E8-921C-BCA641794588', N'SYSTEM_POWER_DESCRIPTION', N'删除', N'删除', N'4', NULL, N'2020-06-02 17:23:51.187', N'2020-06-02 17:23:51.187', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Options] ([ID], [Option], [Label], [Value], [SortIndex], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'89C043F5-9230-4D27-8C1A-6B900586AD5A', N'SYSTEM_POWER_DESCRIPTION', N'浏览', N'浏览', N'1', NULL, N'2020-06-02 17:22:44.983', N'2020-06-02 17:22:44.983', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Options] ([ID], [Option], [Label], [Value], [SortIndex], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'97D59D40-5BAE-4BC0-8772-C2CBECDD5418', N'SYSTEM_POWER_DESCRIPTION', N'编辑', N'编辑', N'3', NULL, N'2020-06-02 17:23:35.830', N'2020-06-02 17:23:35.830', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO


-- ----------------------------
-- Table structure for Sys_Power
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Sys_Power]') AND type IN ('U'))
	DROP TABLE [dbo].[Sys_Power]
GO

CREATE TABLE [dbo].[Sys_Power] (
  [ID] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Page] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Description] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Remark] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [CreateTime] datetime  NOT NULL,
  [UpdateTime] datetime  NOT NULL,
  [CreateID] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CreateName] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [UpdateID] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [UpdateName] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[Sys_Power] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'UUID',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Power',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'权限标识',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Power',
'COLUMN', N'Name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统页面',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Power',
'COLUMN', N'Page'
GO

EXEC sp_addextendedproperty
'MS_Description', N'权限描述',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Power',
'COLUMN', N'Description'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Power',
'COLUMN', N'Remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Power',
'COLUMN', N'CreateTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'最后更新时间',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Power',
'COLUMN', N'UpdateTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人编码',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Power',
'COLUMN', N'CreateID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Power',
'COLUMN', N'CreateName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人编码',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Power',
'COLUMN', N'UpdateID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Power',
'COLUMN', N'UpdateName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'权限定义',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Power'
GO


-- ----------------------------
-- Records of Sys_Power
-- ----------------------------
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'023091F4-5F0E-468C-B019-B39103AE5956', N'PRIV_COMPANY_UPDATE', N'公司定义', N'编辑', NULL, N'2020-06-09 13:39:53.447', N'2020-06-09 13:39:53.447', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'036BBC7E-6F06-4CE9-BD91-D50B0D63355C', N'PRIV_USERS_VIEW', N'用户管理', N'浏览', NULL, N'2020-05-31 11:20:18.000', N'2020-05-31 11:20:55.000', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'0613AC75-0849-42AB-9324-8F66AA7CF87F', N'PRIV_WORKSHOP_DELETE', N'车间定义', N'删除', NULL, N'2020-06-10 09:07:40.303', N'2020-06-10 09:07:40.303', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'07B70D40-89DF-43C3-BDF6-2725677522F8', N'PRIV_POWERS_VIEW', N'权限定义', N'浏览', NULL, N'2020-05-31 11:12:11.000', N'2020-05-31 11:20:55.000', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'0E2C14EA-870E-41BD-B229-D06427313DC2', N'PRIV_LOGS_VIEW', N'查看日志', N'浏览', NULL, N'2020-06-11 13:36:42.047', N'2020-06-11 13:36:42.047', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'0F61A3CE-2F7F-4594-97EE-70A008B2A767', N'PRIV_ROLEPOWERS_VIEW', N'角色权限', N'浏览', NULL, N'2020-05-31 11:13:09.000', N'2020-05-31 11:20:55.000', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'15BECF0F-6F81-4117-9427-CA8C98618D88', N'PRIV_ROLEPOWERS_UPDATE', N'角色权限', N'编辑', NULL, N'2020-05-31 11:13:10.000', N'2020-05-31 11:20:55.000', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'16B7F104-BADD-4B61-B81E-034651BC20D5', N'PRIV_OPTIONS_UPDATE', N'字典定义', N'编辑', NULL, N'2020-05-02 13:40:28.707', N'2020-06-02 13:40:05.707', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'2AB67949-470B-4D54-814E-490D046DE392', N'PRIV_WORKSHOP_VIEW', N'车间定义', N'浏览', NULL, N'2020-06-10 09:06:50.753', N'2020-06-10 09:06:50.753', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'2E78189A-F7B0-4954-B90C-679606BBCA21', N'PRIV_FACTORY_CREATE', N'工厂定义', N'新增', NULL, N'2020-06-09 15:16:55.193', N'2020-06-09 15:16:55.193', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'30A06F2A-1270-4F1B-B7E1-B07663499450', N'PRIV_MENUS_UPDATE', N'菜单管理', N'编辑', NULL, N'2020-05-31 11:10:03.000', N'2020-05-31 11:20:55.000', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'359506E3-1335-41AA-8C86-36E2294D195F', N'PRIV_TASKS_DELETE', N'计划任务', N'删除', NULL, N'2020-06-18 15:03:44.180', N'2020-06-18 15:03:44.180', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'3639F31F-6F68-40C6-AC12-74FB387B8960', N'PRIV_USERS_DELETE', N'用户管理', N'删除', NULL, N'2020-05-31 11:20:19.000', N'2020-05-31 11:20:55.000', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'364F325B-B927-471C-A89D-DCB91B823B2C', N'PRIV_MENUS_CREATE', N'菜单管理', N'新增', NULL, N'2020-05-31 11:10:02.000', N'2020-05-31 11:20:55.000', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'3F8D1153-E456-446F-9D61-3AFFAFF07F3C', N'PRIV_FACTORY_DELETE', N'工厂定义', N'删除', NULL, N'2020-06-09 15:17:24.903', N'2020-06-09 15:17:24.903', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'449A124A-92C5-4872-8BEE-D71F894EDA0F', N'PRIV_PRODUCTLINE_VIEW', N'产线定义', N'浏览', NULL, N'2020-06-10 09:47:09.477', N'2020-06-10 09:47:09.477', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'45665B2E-5AE3-4692-8B80-03D2CBDE876C', N'PRIV_TASKS_CREATE', N'计划任务', N'新增', NULL, N'2020-06-18 15:02:48.760', N'2020-06-18 15:02:48.760', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'477DE876-4D91-49CD-B209-996FE605279D', N'PRIV_COMPANY_DELETE', N'公司定义', N'删除', NULL, N'2020-06-09 13:40:39.613', N'2020-06-09 13:40:39.613', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'4E2A1592-ED10-4A18-9C37-876D7CAF6727', N'PRIV_EQUIPMENT_UPDATE', N'设备定义', N'编辑', NULL, N'2020-06-16 13:02:12.873', N'2020-06-16 13:02:12.873', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'520D7B3D-4AC5-41B1-A9FD-7436DC17935C', N'PRIV_PRODUCTPROCESS_UPDATE', N'工序定义', N'编辑', NULL, N'2020-06-10 20:08:03.447', N'2020-06-10 20:08:03.447', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'52D8FA71-7252-44B5-9B17-FFC0640D631D', N'PRIV_OPTIONS_DELETE', N'字典定义', N'删除', NULL, N'2020-05-02 13:40:29.660', N'2020-06-02 13:40:21.660', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'52DB0AA1-6D36-4AD4-9036-0533C096B740', N'PRIV_TASKS_VIEW', N'计划任务', N'浏览', NULL, N'2020-06-18 15:02:31.927', N'2020-06-18 15:02:31.927', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'553089CD-882F-47C6-8EB4-74A28C7AECC0', N'PRIV_PRODUCTPROCESS_CREATE', N'工序定义', N'新增', NULL, N'2020-06-10 20:07:52.263', N'2020-06-10 20:07:52.263', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'5D2F0A1D-8C79-4253-BB35-4D304AC70ED2', N'PRIV_FACTORY_VIEW', N'工厂定义', N'浏览', NULL, N'2020-06-09 15:16:36.190', N'2020-06-09 15:16:36.190', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'5D4FE5C0-D927-4689-9481-B3D8BECA68DE', N'PRIV_EQUIPMENT_VIEW', N'设备定义', N'浏览', NULL, N'2020-06-16 13:01:20.503', N'2020-06-16 13:01:20.503', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'602A7D4E-4299-43B1-B6DD-EB7FCE409609', N'PRIV_ROLES_VIEW', N'角色定义', N'浏览', NULL, N'2020-05-31 11:11:05.000', N'2020-05-31 11:20:55.000', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'60E6CA5B-9B96-41CE-8E7F-C84C514D1DFD', N'PRIV_PRODUCTLINE_UPDATE', N'产线定义', N'编辑', NULL, N'2020-06-10 09:47:36.977', N'2020-06-10 09:47:36.977', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'61DF6DFD-6D26-448C-8D80-00341535617D', N'PRIV_MENUS_VIEW', N'菜单管理', N'浏览', NULL, N'2020-05-31 11:10:01.000', N'2020-05-31 11:20:55.000', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'6649B278-C5D2-4601-98E1-57FE4A531A74', N'PRIV_COMPANY_CREATE', N'公司定义', N'新增', NULL, N'2020-06-09 13:38:25.437', N'2020-06-09 13:38:25.437', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'66B84E36-F2D0-4847-97A9-2ACFFC9EE6FE', N'PRIV_POWERS_UPDATE', N'权限定义', N'编辑', NULL, N'2020-05-31 11:12:13.000', N'2020-05-31 11:20:55.000', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'67D7CDCE-CC5E-41B3-B9F6-55A4D2DCC8D8', N'PRIV_ROLES_UPDATE', N'角色定义', N'编辑', NULL, N'2020-05-31 11:11:07.000', N'2020-05-31 11:20:55.000', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'6999B413-3C9B-471C-B1EF-48AA2D4DE794', N'PRIV_USERS_RESETPASSWD', N'用户管理', N'重置密码', NULL, N'2020-05-31 11:20:20.000', N'2020-05-31 11:20:55.000', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'7E1350CF-765A-41E9-AF80-84C5CBFC7E5C', N'PRIV_TASKS_UPDATE', N'计划任务', N'编辑', NULL, N'2020-06-18 15:03:07.823', N'2020-06-18 15:03:07.823', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'80F773D3-2E05-41C2-B33F-64880A63264D', N'PRIV_EQUIPMENT_CREATE', N'设备定义', N'新增', NULL, N'2020-06-16 13:01:50.803', N'2020-06-16 13:01:50.803', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'8291C9BB-04B7-4DAE-BB81-F1CB3368A292', N'PRIV_MENUS_DELETE', N'菜单管理', N'删除', NULL, N'2020-05-31 11:10:04.000', N'2020-05-31 11:20:55.000', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'85DD7A0C-D06F-427D-8450-D95ED2D308CA', N'PRIV_ROLES_CREATE', N'角色定义', N'新增', NULL, N'2020-05-31 11:11:06.000', N'2020-05-31 11:20:55.000', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'8660B6E2-2A99-4C6B-9E96-0C1CF2CA0D63', N'PRIV_PRODUCTLINE_CREATE', N'产线定义', N'新增', NULL, N'2020-06-10 09:47:22.787', N'2020-06-10 09:47:22.787', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'875A2C25-25BC-4766-9609-703942573AB0', N'PRIV_POWERS_CREATE', N'权限定义', N'新增', NULL, N'2020-05-31 11:12:12.000', N'2020-05-31 11:20:55.000', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'886906DC-BC49-4BE9-B8DD-7DAF4BD103CB', N'PRIV_ROLEUSERS_DELETE', N'用户角色', N'删除', NULL, N'2020-05-31 11:13:23.000', N'2020-05-31 11:20:55.000', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'96C5BD50-B365-48A1-BDA7-6703DC1A3049', N'PRIV_PRODUCTPROCESS_DELETE', N'工序定义', N'删除', NULL, N'2020-06-10 20:08:15.350', N'2020-06-10 20:08:15.350', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'96DB4CA9-9F93-4ED1-BE55-DC12B467F778', N'PRIV_FACTORY_UPDATE', N'工厂定义', N'编辑', NULL, N'2020-06-09 15:17:09.520', N'2020-06-09 15:17:09.520', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'A3641961-3EB9-46C9-91E6-4AE0C7D3467E', N'PRIV_OPTIONS_CREATE', N'字典定义', N'新增', NULL, N'2020-05-02 13:39:27.830', N'2020-06-02 13:39:48.830', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'A388DB44-82BD-458D-A0FA-E54FCAEE91B7', N'PRIV_ROLEUSERS_CREATE', N'用户角色', N'新增', NULL, N'2020-05-31 11:13:22.000', N'2020-05-31 11:20:55.000', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'A8ED6E2E-57BC-47FA-A1E0-D2E109AA8E42', N'PRIV_USERS_UPDATE', N'用户管理', N'编辑', NULL, N'2020-05-31 11:20:17.000', N'2020-05-31 11:20:55.000', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'B1D2FF18-089F-4138-92DC-DF280F50BE87', N'PRIV_POWERS_DELETE', N'权限定义', N'删除', NULL, N'2020-05-31 11:12:14.000', N'2020-05-31 11:20:55.000', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'B240D13D-C29E-4A38-8888-F77BDD527FD7', N'PRIV_COMPANY_VIEW', N'公司定义', N'浏览', NULL, N'2020-06-09 13:40:19.087', N'2020-06-09 13:40:19.087', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'B54EBA59-D23B-4BE6-B3E4-6BCC5B6D13FE', N'PRIV_EQUIPMENT_DELETE', N'设备定义', N'删除', NULL, N'2020-06-16 13:02:37.713', N'2020-06-16 13:02:37.713', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'B551C6A4-2987-470D-B33B-BDB7488FD65E', N'PRIV_WORKSHOP_UPDATE', N'车间定义', N'编辑', NULL, N'2020-06-10 09:07:27.753', N'2020-06-10 09:07:27.753', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'BDE4354E-766B-4A55-A0DD-05A4740191DA', N'PRIV_ONLINE_DELETE', N'在线统计', N'删除', NULL, N'2020-05-31 11:20:25.000', N'2020-05-31 11:20:55.000', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'C00F0F28-8FDC-43F6-84FD-560D65A8D256', N'PRIV_ROLEUSERS_VIEW', N'用户角色', N'浏览', NULL, N'2020-05-31 11:13:21.000', N'2020-05-31 11:20:55.000', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'C814983F-3700-49A3-A53D-53ECFC7A2B4A', N'PRIV_PRODUCTPROCESS_VIEW', N'工序定义', N'浏览', NULL, N'2020-06-10 20:07:33.373', N'2020-06-10 20:07:33.373', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'C8E8AAE1-2177-4EDE-9E44-D24DADD2FF6E', N'PRIV_WORKSHOP_CREATE', N'车间定义', N'新增', NULL, N'2020-06-10 09:07:05.593', N'2020-06-10 09:07:05.593', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'CB127108-AA42-42A4-9CD0-2E194BC0C83B', N'PRIV_ONLINE_VIEW', N'在线统计', N'浏览', NULL, N'2020-05-31 11:20:24.000', N'2020-05-31 11:20:55.000', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'CEE73221-EE0C-442A-B53D-31021DC8836E', N'PRIV_USERS_CREATE', N'用户管理', N'新增', NULL, N'2020-05-31 11:20:16.000', N'2020-05-31 11:20:55.000', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'E702C145-BF21-4896-92CD-447936C680C3', N'PRIV_OPTIONS_VIEW', N'字典定义', N'浏览', NULL, N'2020-05-02 13:39:26.360', N'2020-06-02 13:39:33.360', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'EADF9CB3-A81C-42D7-9E88-15FAD08AED00', N'PRIV_ROLES_DELETE', N'角色定义', N'删除', NULL, N'2020-05-31 11:11:08.000', N'2020-05-31 11:20:55.000', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO

INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'F4EB78E0-9783-45F0-BA53-A0F18263228C', N'PRIV_PRODUCTLINE_DELETE', N'产线定义', N'删除', NULL, N'2020-06-10 09:47:51.867', N'2020-06-10 09:47:51.867', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO


-- ----------------------------
-- Table structure for Sys_Role
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Sys_Role]') AND type IN ('U'))
	DROP TABLE [dbo].[Sys_Role]
GO

CREATE TABLE [dbo].[Sys_Role] (
  [ID] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Remark] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [CreateTime] datetime  NOT NULL,
  [UpdateTime] datetime  NOT NULL,
  [CreateID] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CreateName] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [UpdateID] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [UpdateName] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Administrator] bit DEFAULT 0 NOT NULL
)
GO

ALTER TABLE [dbo].[Sys_Role] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'ID',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Role',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色名称',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Role',
'COLUMN', N'Name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Role',
'COLUMN', N'Remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Role',
'COLUMN', N'CreateTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'最后更新时间',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Role',
'COLUMN', N'UpdateTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人编码',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Role',
'COLUMN', N'CreateID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Role',
'COLUMN', N'CreateName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人编码',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Role',
'COLUMN', N'UpdateID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Role',
'COLUMN', N'UpdateName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'超级管理员可见',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Role',
'COLUMN', N'Administrator'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色定义',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Role'
GO


-- ----------------------------
-- Records of Sys_Role
-- ----------------------------
INSERT INTO [dbo].[Sys_Role] ([ID], [Name], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName], [Administrator]) VALUES (N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'系统管理员', N'系统内置', N'2020-05-31 10:20:55.000', N'2020-06-04 20:52:52.133', N'9999', N'系统管理员', N'9999', N'系统管理员', N'1')
GO


-- ----------------------------
-- Table structure for Sys_RolePower
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Sys_RolePower]') AND type IN ('U'))
	DROP TABLE [dbo].[Sys_RolePower]
GO

CREATE TABLE [dbo].[Sys_RolePower] (
  [ID] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [RoleUID] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [PowerUID] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[Sys_RolePower] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'UUID',
'SCHEMA', N'dbo',
'TABLE', N'Sys_RolePower',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色ID',
'SCHEMA', N'dbo',
'TABLE', N'Sys_RolePower',
'COLUMN', N'RoleUID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'权限ID',
'SCHEMA', N'dbo',
'TABLE', N'Sys_RolePower',
'COLUMN', N'PowerUID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色权限',
'SCHEMA', N'dbo',
'TABLE', N'Sys_RolePower'
GO


-- ----------------------------
-- Records of Sys_RolePower
-- ----------------------------
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'01B31388-CF9D-4B5D-9C69-B71FC1A11FF8', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'B240D13D-C29E-4A38-8888-F77BDD527FD7')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'03554A78-6B94-4058-A648-3F2D294DC8A8', N'D5B0D24B-9C5F-4ECC-B278-9A5B8A9F6F22', N'85DD7A0C-D06F-427D-8450-D95ED2D308CA')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'054E2027-240A-4E9C-8E59-48EC4A295EF9', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'8660B6E2-2A99-4C6B-9E96-0C1CF2CA0D63')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'05E4C301-B78A-42CE-AB4A-32F5578DE065', N'773B10E5-AC44-45A3-A6E0-FBA17ACD34C5', N'0E2C14EA-870E-41BD-B229-D06427313DC2')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'0EC29179-FCC6-40E8-81D8-A845138BBC98', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'07B70D40-89DF-43C3-BDF6-2725677522F8')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'12E0C44B-EB8F-4CA4-BBC8-1DDDF76BEEFE', N'D5B0D24B-9C5F-4ECC-B278-9A5B8A9F6F22', N'07B70D40-89DF-43C3-BDF6-2725677522F8')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'19427C14-FDB7-476A-94CF-36E6799D0E39', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'0F61A3CE-2F7F-4594-97EE-70A008B2A767')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'1A263746-371D-43D5-9EF3-ACC00687C290', N'45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', N'8660B6E2-2A99-4C6B-9E96-0C1CF2CA0D63')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'1FB863D0-5238-43C3-84BD-22D02F6DBE39', N'45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', N'4E2A1592-ED10-4A18-9C37-876D7CAF6727')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'205D7FEA-D2B2-4070-AFA2-8DBDC0297530', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'520D7B3D-4AC5-41B1-A9FD-7436DC17935C')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'20F802F7-C9F3-4F75-9334-4B15240363C3', N'45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', N'60E6CA5B-9B96-41CE-8E7F-C84C514D1DFD')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'21D24C70-EBFF-4D79-83F2-165A413A563B', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'80F773D3-2E05-41C2-B33F-64880A63264D')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'2440AACE-904C-425C-A452-88D7F713EFCE', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'60E6CA5B-9B96-41CE-8E7F-C84C514D1DFD')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'26C3DF20-BB95-49E8-9008-D2882D408306', N'D5B0D24B-9C5F-4ECC-B278-9A5B8A9F6F22', N'B1D2FF18-089F-4138-92DC-DF280F50BE87')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'26DF9BEE-0368-4B41-8F2D-AC49BEBA8399', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'61DF6DFD-6D26-448C-8D80-00341535617D')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'2A53B71D-6F77-4818-94FB-40EB70F0E563', N'D5B0D24B-9C5F-4ECC-B278-9A5B8A9F6F22', N'0F61A3CE-2F7F-4594-97EE-70A008B2A767')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'2DE180B9-38AF-484C-B1F8-1FF1ECFD4391', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'45665B2E-5AE3-4692-8B80-03D2CBDE876C')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'2EDE54EE-2DBC-4845-B0EF-BE4F45D32AC6', N'45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', N'15BECF0F-6F81-4117-9427-CA8C98618D88')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'328BF647-3A41-4155-992A-E597CA03A189', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'3F8D1153-E456-446F-9D61-3AFFAFF07F3C')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'368FF0C2-D1AD-45F1-803B-7EF5F05159EE', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'6999B413-3C9B-471C-B1EF-48AA2D4DE794')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'379BE734-7D15-498A-815A-9AF25A7AA75C', N'45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', N'B54EBA59-D23B-4BE6-B3E4-6BCC5B6D13FE')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'37C9F8CD-39B6-4D5C-9BE0-14CF0B90B9D7', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'8291C9BB-04B7-4DAE-BB81-F1CB3368A292')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'38E52DA2-B2F4-4751-80C2-AD1FA03FBAC0', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'A3641961-3EB9-46C9-91E6-4AE0C7D3467E')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'3C143662-AD4B-4870-B1C1-737969927BD7', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'449A124A-92C5-4872-8BEE-D71F894EDA0F')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'3CC6A98E-7D7A-4397-98B2-3EF5D384FE59', N'45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', N'CB127108-AA42-42A4-9CD0-2E194BC0C83B')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'3E370C05-4420-4E6F-B80D-B3543A3497E2', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'52DB0AA1-6D36-4AD4-9036-0533C096B740')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'3E78F3DE-FF25-4066-81AA-20E21D9EB6C2', N'45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', N'5D4FE5C0-D927-4689-9481-B3D8BECA68DE')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'40B73275-0AE6-488F-B5CB-4A956B61E3B8', N'D5B0D24B-9C5F-4ECC-B278-9A5B8A9F6F22', N'15BECF0F-6F81-4117-9427-CA8C98618D88')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'4878BA09-0CB3-45D8-9C87-0C197BB6BB29', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'359506E3-1335-41AA-8C86-36E2294D195F')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'4BB7A016-7EA5-4BBB-B2E2-73031E2174E1', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'B1D2FF18-089F-4138-92DC-DF280F50BE87')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'4DA7E3EB-73FE-40CC-AC01-0EB847E45A2C', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'16B7F104-BADD-4B61-B81E-034651BC20D5')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'4E131188-75F3-4E26-BF38-1A304BB5FA64', N'D5B0D24B-9C5F-4ECC-B278-9A5B8A9F6F22', N'875A2C25-25BC-4766-9609-703942573AB0')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'4EC59F71-3CAB-437E-BED2-E5F6F3108A3E', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'4E2A1592-ED10-4A18-9C37-876D7CAF6727')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'521013FE-EF59-44E8-812D-E06D46D1AFE7', N'D5B0D24B-9C5F-4ECC-B278-9A5B8A9F6F22', N'66B84E36-F2D0-4847-97A9-2ACFFC9EE6FE')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'598CD65B-6AFD-493C-AF68-AC5ADE57A69D', N'BDDF39A0-D30C-466A-AC4E-34D03471B446', N'CB127108-AA42-42A4-9CD0-2E194BC0C83B')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'5C1CAEC4-3BE1-415F-A36B-C98C151018E6', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'036BBC7E-6F06-4CE9-BD91-D50B0D63355C')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'60C921DA-8080-4898-9F07-7F3133F3E828', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'2E78189A-F7B0-4954-B90C-679606BBCA21')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'63CD3AE8-5191-4CCD-8898-81C1F2FF1A0F', N'45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', N'A8ED6E2E-57BC-47FA-A1E0-D2E109AA8E42')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'642F4230-8E77-4067-B666-251B4899AE23', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'0613AC75-0849-42AB-9324-8F66AA7CF87F')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'64647B29-E82A-4046-96AC-63EC742DF2D4', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'30A06F2A-1270-4F1B-B7E1-B07663499450')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'65D87D91-5F3B-4062-B19E-01A83E91A679', N'45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', N'0E2C14EA-870E-41BD-B229-D06427313DC2')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'6920C4EE-2E8F-44A7-8808-CCFA450C3550', N'45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', N'0F61A3CE-2F7F-4594-97EE-70A008B2A767')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'6CB9E70E-EA15-47B4-A044-ED990703E054', N'15AAE006-71F8-4775-85CD-06224FD57180', N'0E2C14EA-870E-41BD-B229-D06427313DC2')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'6F424536-4ECE-4303-B286-578623E01B3A', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'0E2C14EA-870E-41BD-B229-D06427313DC2')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'7264E31C-ED96-4643-806D-6A014F5481D6', N'45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', N'CEE73221-EE0C-442A-B53D-31021DC8836E')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'736A9FC8-9481-45BF-9F5F-F780AC210EAD', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'553089CD-882F-47C6-8EB4-74A28C7AECC0')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'7508CB00-A693-4F23-8436-3AB81D2AACD2', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'BDE4354E-766B-4A55-A0DD-05A4740191DA')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'7AFC5773-90FE-444A-BA17-595F4880A270', N'45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', N'80F773D3-2E05-41C2-B33F-64880A63264D')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'7E29B443-7930-446E-B323-8D8FE1D55516', N'45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', N'F4EB78E0-9783-45F0-BA53-A0F18263228C')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'7E4DF0C9-92FD-4146-879D-EE6E2E892435', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'5D2F0A1D-8C79-4253-BB35-4D304AC70ED2')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'807E91D2-5603-4BCC-B797-3454066A58DA', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'A8ED6E2E-57BC-47FA-A1E0-D2E109AA8E42')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'81998671-BD80-457B-ADAF-ACEA74522BF8', N'D5B0D24B-9C5F-4ECC-B278-9A5B8A9F6F22', N'886906DC-BC49-4BE9-B8DD-7DAF4BD103CB')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'841A48D1-0BB8-43AB-8CA5-F7AC28819447', N'773B10E5-AC44-45A3-A6E0-FBA17ACD34C5', N'CB127108-AA42-42A4-9CD0-2E194BC0C83B')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'85F0075D-AFF3-4AA5-A8EA-D72957986DE5', N'D5B0D24B-9C5F-4ECC-B278-9A5B8A9F6F22', N'EADF9CB3-A81C-42D7-9E88-15FAD08AED00')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'8652EF78-6AE1-493C-964D-0BBC5530EE03', N'D5B0D24B-9C5F-4ECC-B278-9A5B8A9F6F22', N'602A7D4E-4299-43B1-B6DD-EB7FCE409609')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'878C783D-1AB4-4509-905F-14C91534397D', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'602A7D4E-4299-43B1-B6DD-EB7FCE409609')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'8B60BD4A-C2E8-4CAD-BD8E-B1D7E748F209', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'2AB67949-470B-4D54-814E-490D046DE392')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'95659D2C-AF7F-4318-8A17-03BF7B0EB369', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'C8E8AAE1-2177-4EDE-9E44-D24DADD2FF6E')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'95928337-2FA8-4EE5-89D2-FCC6DA30AF24', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'B54EBA59-D23B-4BE6-B3E4-6BCC5B6D13FE')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'97C60D0A-7784-4954-9840-F1D57AB02925', N'45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', N'3639F31F-6F68-40C6-AC12-74FB387B8960')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'9D35D7BD-3D99-4C2F-90CA-21B7D1D376EC', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'5D4FE5C0-D927-4689-9481-B3D8BECA68DE')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'A0F1C236-6F34-4223-8FC2-820F35F594F0', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'477DE876-4D91-49CD-B209-996FE605279D')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'A1B2E367-D886-41F9-9FC8-BC04D248C481', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'F4EB78E0-9783-45F0-BA53-A0F18263228C')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'A23DB918-C56B-4793-B9DD-8689EBF97FA2', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'886906DC-BC49-4BE9-B8DD-7DAF4BD103CB')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'A31AFE3E-CA19-4FF7-9446-41967E8C75F3', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'EADF9CB3-A81C-42D7-9E88-15FAD08AED00')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'A461E1C6-8381-4849-8392-92CE41024C83', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'875A2C25-25BC-4766-9609-703942573AB0')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'A4E09A58-F9CB-4B97-B47A-7DD4CDCCB14F', N'7DFC33AB-0EB3-416A-A2F5-3DB6A25977CA', N'CB127108-AA42-42A4-9CD0-2E194BC0C83B')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'A7C3C3E7-BDF2-41C5-844E-42596D8706E0', N'D5B0D24B-9C5F-4ECC-B278-9A5B8A9F6F22', N'A388DB44-82BD-458D-A0FA-E54FCAEE91B7')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'A8C837F7-1A8F-45C0-9D6D-FF20ACCB1702', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'7E1350CF-765A-41E9-AF80-84C5CBFC7E5C')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'AADC9324-BB6D-4971-8C77-6DD676402B15', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'C00F0F28-8FDC-43F6-84FD-560D65A8D256')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'B4727BE3-93A5-49D8-B8ED-1377B01B101A', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'3639F31F-6F68-40C6-AC12-74FB387B8960')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'B9628B39-8C34-4EC3-AABA-CE922CE36173', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'66B84E36-F2D0-4847-97A9-2ACFFC9EE6FE')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'B9C6F5EE-F662-4781-B5FB-15DC8EB358B0', N'45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', N'886906DC-BC49-4BE9-B8DD-7DAF4BD103CB')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'BB55C83B-28C2-4BDE-9118-9665DF56E3F0', N'D5B0D24B-9C5F-4ECC-B278-9A5B8A9F6F22', N'67D7CDCE-CC5E-41B3-B9F6-55A4D2DCC8D8')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'CA5BCA43-EDA5-40F0-B737-559907F3FFC3', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'364F325B-B927-471C-A89D-DCB91B823B2C')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'CC4CC4CE-92AE-4BBC-AD4B-1472FCB14568', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'CEE73221-EE0C-442A-B53D-31021DC8836E')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'CC7BCB2F-3051-4B4D-8C12-C4454B6384A4', N'D5B0D24B-9C5F-4ECC-B278-9A5B8A9F6F22', N'C00F0F28-8FDC-43F6-84FD-560D65A8D256')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'CDAE2498-77FE-45AD-9FE3-AAB00E05E911', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'96DB4CA9-9F93-4ED1-BE55-DC12B467F778')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'CF19821E-BDFD-471D-9075-5F49A60B28FC', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'96C5BD50-B365-48A1-BDA7-6703DC1A3049')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'D31FD274-7326-44E2-9D47-3A2CD17AD62D', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'85DD7A0C-D06F-427D-8450-D95ED2D308CA')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'D598FB7D-150C-4C0D-85DE-0B94869C37F6', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'67D7CDCE-CC5E-41B3-B9F6-55A4D2DCC8D8')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'D66FCB62-65E6-48DA-A426-755C4BAD2F1D', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'023091F4-5F0E-468C-B019-B39103AE5956')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'D7F3842B-E64B-4469-A8A9-6877755110F6', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'E702C145-BF21-4896-92CD-447936C680C3')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'D8589140-EC0C-47B8-A7F9-8326F4C581C8', N'45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', N'A388DB44-82BD-458D-A0FA-E54FCAEE91B7')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'DCF232CF-4352-47D4-A729-DA093B9390B0', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'CB127108-AA42-42A4-9CD0-2E194BC0C83B')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'DECA5546-78CA-41A8-9E6A-B59CD7DFC67F', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'6649B278-C5D2-4601-98E1-57FE4A531A74')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'E19CAFDD-73FC-488F-ADD4-312D507B1FE2', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'C814983F-3700-49A3-A53D-53ECFC7A2B4A')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'E38133AA-39FB-4642-89C3-D4A58D809F50', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'B551C6A4-2987-470D-B33B-BDB7488FD65E')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'E51F74D9-CDDE-4812-81C8-79476F2DBAD4', N'45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', N'C00F0F28-8FDC-43F6-84FD-560D65A8D256')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'E9007407-9A6C-4E06-A6BF-4E12536A096F', N'45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', N'036BBC7E-6F06-4CE9-BD91-D50B0D63355C')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'E97A87EA-C113-4D8F-AF90-F6E553529CA0', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'15BECF0F-6F81-4117-9427-CA8C98618D88')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'EBD1AB6D-2D3E-4CD5-8DB3-A33F87D2174A', N'E23A6C64-4B30-4D70-B4FB-2DEEE7BFB7F6', N'CB127108-AA42-42A4-9CD0-2E194BC0C83B')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'EFD3C82C-5553-4F3F-A1DC-C757CFD27819', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'52D8FA71-7252-44B5-9B17-FFC0640D631D')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'F817E744-2CB2-4840-9467-4F76D7A8DA84', N'45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', N'449A124A-92C5-4872-8BEE-D71F894EDA0F')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'FC35BB29-C959-40E6-B578-D50075BA89B2', N'FE5D4E1E-9C40-4DDE-A7EA-E2CC2AD92105', N'CB127108-AA42-42A4-9CD0-2E194BC0C83B')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'FCC73425-641C-478B-AADC-AC6D0E8BDA53', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'A388DB44-82BD-458D-A0FA-E54FCAEE91B7')
GO

INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'FFB2D804-FA4F-43D4-9C45-9F12B704954A', N'45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', N'6999B413-3C9B-471C-B1EF-48AA2D4DE794')
GO


-- ----------------------------
-- Table structure for Sys_TasksQz
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Sys_TasksQz]') AND type IN ('U'))
	DROP TABLE [dbo].[Sys_TasksQz]
GO

CREATE TABLE [dbo].[Sys_TasksQz] (
  [ID] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [JobGroup] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Cron] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [AssemblyName] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [ClassName] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Remark] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [RunTimes] int DEFAULT 0 NOT NULL,
  [BeginTime] datetime  NULL,
  [EndTime] datetime  NULL,
  [TriggerType] int DEFAULT 1 NOT NULL,
  [IntervalSecond] int DEFAULT 0 NOT NULL,
  [IsStart] bit DEFAULT 0 NOT NULL,
  [JobParams] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [CreateTime] datetime  NOT NULL,
  [UpdateTime] datetime  NOT NULL,
  [CreateID] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CreateName] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [UpdateID] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [UpdateName] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[Sys_TasksQz] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'UID',
'SCHEMA', N'dbo',
'TABLE', N'Sys_TasksQz',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'任务名称',
'SCHEMA', N'dbo',
'TABLE', N'Sys_TasksQz',
'COLUMN', N'Name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'任务分组',
'SCHEMA', N'dbo',
'TABLE', N'Sys_TasksQz',
'COLUMN', N'JobGroup'
GO

EXEC sp_addextendedproperty
'MS_Description', N'运行时间表达式',
'SCHEMA', N'dbo',
'TABLE', N'Sys_TasksQz',
'COLUMN', N'Cron'
GO

EXEC sp_addextendedproperty
'MS_Description', N'程序集名称',
'SCHEMA', N'dbo',
'TABLE', N'Sys_TasksQz',
'COLUMN', N'AssemblyName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'任务所在类',
'SCHEMA', N'dbo',
'TABLE', N'Sys_TasksQz',
'COLUMN', N'ClassName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'任务描述',
'SCHEMA', N'dbo',
'TABLE', N'Sys_TasksQz',
'COLUMN', N'Remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'执行次数',
'SCHEMA', N'dbo',
'TABLE', N'Sys_TasksQz',
'COLUMN', N'RunTimes'
GO

EXEC sp_addextendedproperty
'MS_Description', N'开始时间',
'SCHEMA', N'dbo',
'TABLE', N'Sys_TasksQz',
'COLUMN', N'BeginTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'结束时间',
'SCHEMA', N'dbo',
'TABLE', N'Sys_TasksQz',
'COLUMN', N'EndTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'触发器类型（0、simple 1、cron）',
'SCHEMA', N'dbo',
'TABLE', N'Sys_TasksQz',
'COLUMN', N'TriggerType'
GO

EXEC sp_addextendedproperty
'MS_Description', N'执行间隔时间(单位:秒)',
'SCHEMA', N'dbo',
'TABLE', N'Sys_TasksQz',
'COLUMN', N'IntervalSecond'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否启动',
'SCHEMA', N'dbo',
'TABLE', N'Sys_TasksQz',
'COLUMN', N'IsStart'
GO

EXEC sp_addextendedproperty
'MS_Description', N'传入参数',
'SCHEMA', N'dbo',
'TABLE', N'Sys_TasksQz',
'COLUMN', N'JobParams'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'Sys_TasksQz',
'COLUMN', N'CreateTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'最后更新时间',
'SCHEMA', N'dbo',
'TABLE', N'Sys_TasksQz',
'COLUMN', N'UpdateTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人编码',
'SCHEMA', N'dbo',
'TABLE', N'Sys_TasksQz',
'COLUMN', N'CreateID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'Sys_TasksQz',
'COLUMN', N'CreateName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人编码',
'SCHEMA', N'dbo',
'TABLE', N'Sys_TasksQz',
'COLUMN', N'UpdateID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'Sys_TasksQz',
'COLUMN', N'UpdateName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'计划任务',
'SCHEMA', N'dbo',
'TABLE', N'Sys_TasksQz'
GO


-- ----------------------------
-- Records of Sys_TasksQz
-- ----------------------------
INSERT INTO [dbo].[Sys_TasksQz] ([ID], [Name], [JobGroup], [Cron], [AssemblyName], [ClassName], [Remark], [RunTimes], [BeginTime], [EndTime], [TriggerType], [IntervalSecond], [IsStart], [JobParams], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'E29F2D63-B1B0-4CE6-9CDC-A5F86C52B887', N'生产订单同步', N'数据同步', N'0 0 0/1 * * ? ', N'Meiam.System.Tasks', N'Job_SyncProductOrder', N'[2021-08-03 15:48:51:173] => Run Job [Id：E29F2D63-B1B0-4CE6-9CDC-A5F86C52B887，Group：数据同步]， Succeed ， Elapsed：16.1686 ms', N'786', N'2020-06-19 09:59:29.000', N'9999-12-31 00:00:00.000', N'1', N'1', N'1', NULL, N'2020-06-19 09:33:53.533', N'2020-06-19 15:00:45.693', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO


-- ----------------------------
-- Table structure for Sys_UserRelation
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Sys_UserRelation]') AND type IN ('U'))
	DROP TABLE [dbo].[Sys_UserRelation]
GO

CREATE TABLE [dbo].[Sys_UserRelation] (
  [ID] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [UserID] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [ObjectID] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [ObjectType] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[Sys_UserRelation] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'UUID',
'SCHEMA', N'dbo',
'TABLE', N'Sys_UserRelation',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户ID',
'SCHEMA', N'dbo',
'TABLE', N'Sys_UserRelation',
'COLUMN', N'UserID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据权限ID',
'SCHEMA', N'dbo',
'TABLE', N'Sys_UserRelation',
'COLUMN', N'ObjectID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据权限类型',
'SCHEMA', N'dbo',
'TABLE', N'Sys_UserRelation',
'COLUMN', N'ObjectType'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户权限',
'SCHEMA', N'dbo',
'TABLE', N'Sys_UserRelation'
GO


-- ----------------------------
-- Records of Sys_UserRelation
-- ----------------------------
INSERT INTO [dbo].[Sys_UserRelation] ([ID], [UserID], [ObjectID], [ObjectType]) VALUES (N'0DE36B24-0280-41C0-A11C-3B77E684FAED', N'9999', N'9FCB9642-CE69-43C5-9D71-400F0B1D64A1', N'ProductProcess')
GO

INSERT INTO [dbo].[Sys_UserRelation] ([ID], [UserID], [ObjectID], [ObjectType]) VALUES (N'0F9E8395-4212-4E3C-90DB-EC622B5E3C2C', N'9999', N'21A0F4ED-FA2E-4786-93DC-0222F54B4286', N'Factory')
GO

INSERT INTO [dbo].[Sys_UserRelation] ([ID], [UserID], [ObjectID], [ObjectType]) VALUES (N'20CA7047-217B-46C4-AB0B-A79C8D1EB867', N'9999', N'74887F03-4422-4851-8802-B3057ACC5F30', N'Company')
GO

INSERT INTO [dbo].[Sys_UserRelation] ([ID], [UserID], [ObjectID], [ObjectType]) VALUES (N'275B426E-7742-46D9-B5C5-EA2A99CBA889', N'9999', N'8EE174C5-4430-4196-AEF8-4D72EF69C6C3', N'WorkShop')
GO

INSERT INTO [dbo].[Sys_UserRelation] ([ID], [UserID], [ObjectID], [ObjectType]) VALUES (N'3DB3E1F9-BC32-411F-B9C2-F262D37C97F7', N'9999', N'1E910EDA-534E-469D-9B12-6C1DEF56A706', N'Company')
GO

INSERT INTO [dbo].[Sys_UserRelation] ([ID], [UserID], [ObjectID], [ObjectType]) VALUES (N'475E1E19-9029-4AD1-9260-DD90ABD4AA96', N'9999', N'1D524B11-DBF0-475F-8D95-D1F35515174A', N'WorkShop')
GO

INSERT INTO [dbo].[Sys_UserRelation] ([ID], [UserID], [ObjectID], [ObjectType]) VALUES (N'564DB10C-B19C-456D-BEBE-C30F9BA47954', N'9999', N'AFE35E8D-83B4-48A3-889F-30A1BC07AFB4', N'Factory')
GO

INSERT INTO [dbo].[Sys_UserRelation] ([ID], [UserID], [ObjectID], [ObjectType]) VALUES (N'92984E51-8A8E-4723-8A0A-582F84BA106C', N'9999', N'9E4C1AD4-40AB-4D93-8EE1-B07688360228', N'ProductProcess')
GO

INSERT INTO [dbo].[Sys_UserRelation] ([ID], [UserID], [ObjectID], [ObjectType]) VALUES (N'A951B240-0105-4F73-B505-7B388D41941A', N'9999', N'82AE52A6-00F2-420C-AB28-1B2E227D6122', N'WorkShop')
GO

INSERT INTO [dbo].[Sys_UserRelation] ([ID], [UserID], [ObjectID], [ObjectType]) VALUES (N'B241DF09-C88A-458C-B830-37EC228B64B7', N'9999', N'06EE680E-8DDF-4557-BA37-52416E3FA197', N'WorkShop')
GO

INSERT INTO [dbo].[Sys_UserRelation] ([ID], [UserID], [ObjectID], [ObjectType]) VALUES (N'B68C33D9-31F6-4347-9979-EF51CF3B625B', N'9999', N'CA97D772-FFD2-484C-AE53-22A6C8B095A2', N'Factory')
GO


-- ----------------------------
-- Table structure for Sys_UserRole
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Sys_UserRole]') AND type IN ('U'))
	DROP TABLE [dbo].[Sys_UserRole]
GO

CREATE TABLE [dbo].[Sys_UserRole] (
  [ID] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [UserID] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [RoleID] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[Sys_UserRole] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'UUID',
'SCHEMA', N'dbo',
'TABLE', N'Sys_UserRole',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户ID',
'SCHEMA', N'dbo',
'TABLE', N'Sys_UserRole',
'COLUMN', N'UserID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色ID',
'SCHEMA', N'dbo',
'TABLE', N'Sys_UserRole',
'COLUMN', N'RoleID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户角色',
'SCHEMA', N'dbo',
'TABLE', N'Sys_UserRole'
GO


-- ----------------------------
-- Records of Sys_UserRole
-- ----------------------------
INSERT INTO [dbo].[Sys_UserRole] ([ID], [UserID], [RoleID]) VALUES (N'85CBF9DB-C4BF-4AC5-89E1-A3C4ED4B88E6', N'103151', N'45F8F52C-7154-4B15-B5FE-BA84F4FFBA37')
GO

INSERT INTO [dbo].[Sys_UserRole] ([ID], [UserID], [RoleID]) VALUES (N'A8364573-20FA-45FB-8C49-B35F7A027301', N'147445', N'20813EA9-8252-4F0F-BCE7-49D2637DC457')
GO

INSERT INTO [dbo].[Sys_UserRole] ([ID], [UserID], [RoleID]) VALUES (N'F112F9A6-3983-480D-8BCC-8F340964261E', N'9999', N'20813EA9-8252-4F0F-BCE7-49D2637DC457')
GO


-- ----------------------------
-- Table structure for Sys_Users
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Sys_Users]') AND type IN ('U'))
	DROP TABLE [dbo].[Sys_Users]
GO

CREATE TABLE [dbo].[Sys_Users] (
  [UserID] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [UserName] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [NickName] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [Email] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [Password] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Sex] nvarchar(10) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [AvatarUrl] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [QQ] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [Phone] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [ProvinceID] nvarchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [Province] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [CityID] nvarchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [City] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [CountyID] nvarchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [County] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [Address] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [Remark] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [IdentityCard] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [Birthday] datetime  NULL,
  [LastLoginTime] datetime  NULL,
  [Enabled] bit DEFAULT 1 NOT NULL,
  [OneSession] bit DEFAULT 0 NOT NULL,
  [CreateTime] datetime  NOT NULL,
  [UpdateTime] datetime  NOT NULL,
  [CreateID] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CreateName] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [UpdateID] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [UpdateName] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Administrator] bit DEFAULT 0 NOT NULL
)
GO

ALTER TABLE [dbo].[Sys_Users] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户账号',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Users',
'COLUMN', N'UserID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户名称',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Users',
'COLUMN', N'UserName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户昵称',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Users',
'COLUMN', N'NickName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'邮箱',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Users',
'COLUMN', N'Email'
GO

EXEC sp_addextendedproperty
'MS_Description', N'密码',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Users',
'COLUMN', N'Password'
GO

EXEC sp_addextendedproperty
'MS_Description', N'性别',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Users',
'COLUMN', N'Sex'
GO

EXEC sp_addextendedproperty
'MS_Description', N'头像地址',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Users',
'COLUMN', N'AvatarUrl'
GO

EXEC sp_addextendedproperty
'MS_Description', N'QQ',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Users',
'COLUMN', N'QQ'
GO

EXEC sp_addextendedproperty
'MS_Description', N'手机号码',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Users',
'COLUMN', N'Phone'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户所在省份编码',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Users',
'COLUMN', N'ProvinceID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户所在省份',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Users',
'COLUMN', N'Province'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户所在城市编码',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Users',
'COLUMN', N'CityID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户所在城市',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Users',
'COLUMN', N'City'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户所在县/区编码',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Users',
'COLUMN', N'CountyID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户所在县/区',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Users',
'COLUMN', N'County'
GO

EXEC sp_addextendedproperty
'MS_Description', N'地址',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Users',
'COLUMN', N'Address'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Users',
'COLUMN', N'Remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'身份证',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Users',
'COLUMN', N'IdentityCard'
GO

EXEC sp_addextendedproperty
'MS_Description', N'生日',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Users',
'COLUMN', N'Birthday'
GO

EXEC sp_addextendedproperty
'MS_Description', N'上次登录时间',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Users',
'COLUMN', N'LastLoginTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否启用',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Users',
'COLUMN', N'Enabled'
GO

EXEC sp_addextendedproperty
'MS_Description', N'单用户模式',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Users',
'COLUMN', N'OneSession'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Users',
'COLUMN', N'CreateTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'最后更新时间',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Users',
'COLUMN', N'UpdateTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人编码',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Users',
'COLUMN', N'CreateID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Users',
'COLUMN', N'CreateName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人编码',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Users',
'COLUMN', N'UpdateID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Users',
'COLUMN', N'UpdateName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'超级管理员',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Users',
'COLUMN', N'Administrator'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户管理',
'SCHEMA', N'dbo',
'TABLE', N'Sys_Users'
GO


-- ----------------------------
-- Records of Sys_Users
-- ----------------------------
INSERT INTO [dbo].[Sys_Users] ([UserID], [UserName], [NickName], [Email], [Password], [Sex], [AvatarUrl], [QQ], [Phone], [ProvinceID], [Province], [CityID], [City], [CountyID], [County], [Address], [Remark], [IdentityCard], [Birthday], [LastLoginTime], [Enabled], [OneSession], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName], [Administrator]) VALUES (N'9999', N'系统管理员', N'系统管理员', N'91270@QQ.COM', N'FC4509EFEA3AC97ED753F53DFA601161', N'男', N'/static/avatars/20200619/637281528723366669.png', N'91270', N'13344445555', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2020-06-18 16:00:00.000', N'2021-08-03 15:45:20.807', N'1', N'0', N'2020-05-31 10:20:55.000', N'2020-06-19 08:41:12.340', N'9999', N'系统管理员', N'9999', N'系统管理员', N'1')
GO


-- ----------------------------
-- Table structure for Test_Cap01
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Test_Cap01]') AND type IN ('U'))
	DROP TABLE [dbo].[Test_Cap01]
GO

CREATE TABLE [dbo].[Test_Cap01] (
  [ID] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[Test_Cap01] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Test_Cap01
-- ----------------------------
INSERT INTO [dbo].[Test_Cap01] ([ID]) VALUES (N'2A281F02-261A-4292-ADDB-59A2E489D0BB')
GO

INSERT INTO [dbo].[Test_Cap01] ([ID]) VALUES (N'41B2D4C2-4398-416F-BD89-2CD3201250C8')
GO

INSERT INTO [dbo].[Test_Cap01] ([ID]) VALUES (N'4F326171-49CD-4459-9726-063368AF0810')
GO

INSERT INTO [dbo].[Test_Cap01] ([ID]) VALUES (N'55186EEC-3751-443D-88B5-6C1E868E339C')
GO

INSERT INTO [dbo].[Test_Cap01] ([ID]) VALUES (N'7A4BBA68-A51D-49F2-A47C-1B7787FDEAED')
GO

INSERT INTO [dbo].[Test_Cap01] ([ID]) VALUES (N'7A6F05A1-DF85-48C9-97E5-F725F3400EE3')
GO

INSERT INTO [dbo].[Test_Cap01] ([ID]) VALUES (N'80C5586A-3788-4ABE-9F36-1E01B17A5A11')
GO

INSERT INTO [dbo].[Test_Cap01] ([ID]) VALUES (N'8C4F8098-596A-4E65-B4BA-5F07530BD16B')
GO

INSERT INTO [dbo].[Test_Cap01] ([ID]) VALUES (N'ADC7EB18-014E-4AFE-A807-B0D7DC18E5E6')
GO

INSERT INTO [dbo].[Test_Cap01] ([ID]) VALUES (N'B281BCF4-BBBE-43D1-9A89-7698E2E6DBF3')
GO


-- ----------------------------
-- Table structure for Test_Cap02
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Test_Cap02]') AND type IN ('U'))
	DROP TABLE [dbo].[Test_Cap02]
GO

CREATE TABLE [dbo].[Test_Cap02] (
  [ID] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[Test_Cap02] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Test_Cap02
-- ----------------------------
INSERT INTO [dbo].[Test_Cap02] ([ID]) VALUES (N'2A281F02-261A-4292-ADDB-59A2E489D0BB')
GO

INSERT INTO [dbo].[Test_Cap02] ([ID]) VALUES (N'41B2D4C2-4398-416F-BD89-2CD3201250C8')
GO

INSERT INTO [dbo].[Test_Cap02] ([ID]) VALUES (N'4F326171-49CD-4459-9726-063368AF0810')
GO

INSERT INTO [dbo].[Test_Cap02] ([ID]) VALUES (N'55186EEC-3751-443D-88B5-6C1E868E339C')
GO

INSERT INTO [dbo].[Test_Cap02] ([ID]) VALUES (N'7A4BBA68-A51D-49F2-A47C-1B7787FDEAED')
GO

INSERT INTO [dbo].[Test_Cap02] ([ID]) VALUES (N'7A6F05A1-DF85-48C9-97E5-F725F3400EE3')
GO

INSERT INTO [dbo].[Test_Cap02] ([ID]) VALUES (N'80C5586A-3788-4ABE-9F36-1E01B17A5A11')
GO

INSERT INTO [dbo].[Test_Cap02] ([ID]) VALUES (N'8C4F8098-596A-4E65-B4BA-5F07530BD16B')
GO

INSERT INTO [dbo].[Test_Cap02] ([ID]) VALUES (N'ADC7EB18-014E-4AFE-A807-B0D7DC18E5E6')
GO

INSERT INTO [dbo].[Test_Cap02] ([ID]) VALUES (N'B281BCF4-BBBE-43D1-9A89-7698E2E6DBF3')
GO


-- ----------------------------
-- Primary Key structure for table Base_Company
-- ----------------------------
ALTER TABLE [dbo].[Base_Company] ADD CONSTRAINT [PK__Base_Com__3214EC2750DE127B] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Base_Equipment
-- ----------------------------
ALTER TABLE [dbo].[Base_Equipment] ADD CONSTRAINT [PK__Base_Equ__3214EC2737002A35] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Base_Factory
-- ----------------------------
ALTER TABLE [dbo].[Base_Factory] ADD CONSTRAINT [PK__Base_Fac__3214EC27E75B0A0E] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Base_ProductLine
-- ----------------------------
ALTER TABLE [dbo].[Base_ProductLine] ADD CONSTRAINT [PK__Base_Pro__3214EC2772E824CF] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Base_ProductProcess
-- ----------------------------
ALTER TABLE [dbo].[Base_ProductProcess] ADD CONSTRAINT [PK__Base_Pro__3214EC274C1D6143] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Base_WorkShop
-- ----------------------------
ALTER TABLE [dbo].[Base_WorkShop] ADD CONSTRAINT [PK__Base_Wor__3214EC27B2468458] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Sys_DataRelation
-- ----------------------------
ALTER TABLE [dbo].[Sys_DataRelation] ADD CONSTRAINT [PK__Sys_Data__3214EC2755A41270] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Sys_Logs
-- ----------------------------
ALTER TABLE [dbo].[Sys_Logs] ADD CONSTRAINT [PK__Sys_Logs__3214EC27121E7837] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Sys_Menu
-- ----------------------------
ALTER TABLE [dbo].[Sys_Menu] ADD CONSTRAINT [PK__Sys_Menu__3214EC2703B64B6E] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Sys_Online
-- ----------------------------
ALTER TABLE [dbo].[Sys_Online] ADD CONSTRAINT [PK__Sys_Onli__C9F492705011E24B] PRIMARY KEY CLUSTERED ([SessionID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Sys_Options
-- ----------------------------
ALTER TABLE [dbo].[Sys_Options] ADD CONSTRAINT [PK__Sys_Opti__3214EC27C242CA44] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Sys_Power
-- ----------------------------
ALTER TABLE [dbo].[Sys_Power] ADD CONSTRAINT [PK__Sys_Powe__3214EC27760F3F31] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Sys_Role
-- ----------------------------
ALTER TABLE [dbo].[Sys_Role] ADD CONSTRAINT [PK__Sys_Role__3214EC27A35B3E1C] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Sys_RolePower
-- ----------------------------
ALTER TABLE [dbo].[Sys_RolePower] ADD CONSTRAINT [PK__Sys_Role__3214EC2739218D48] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Sys_TasksQz
-- ----------------------------
ALTER TABLE [dbo].[Sys_TasksQz] ADD CONSTRAINT [PK__Sys_Task__3214EC27988E391E] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Sys_UserRelation
-- ----------------------------
ALTER TABLE [dbo].[Sys_UserRelation] ADD CONSTRAINT [PK__Sys_User__3214EC274A33AAB2] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Sys_UserRole
-- ----------------------------
ALTER TABLE [dbo].[Sys_UserRole] ADD CONSTRAINT [PK__Sys_User__3214EC27E320303C] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Sys_Users
-- ----------------------------
ALTER TABLE [dbo].[Sys_Users] ADD CONSTRAINT [PK__Sys_User__1788CCACD2A77D3D] PRIMARY KEY CLUSTERED ([UserID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Test_Cap01
-- ----------------------------
ALTER TABLE [dbo].[Test_Cap01] ADD CONSTRAINT [PK__Test_Cap__3214EC27C6A4BBA4] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Test_Cap02
-- ----------------------------
ALTER TABLE [dbo].[Test_Cap02] ADD CONSTRAINT [PK__Test_Cap__3214EC272ACE0204] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

