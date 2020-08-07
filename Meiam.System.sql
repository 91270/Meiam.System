/*
Navicat SQL Server Data Transfer

Source Server         : TEST_QRCODE
Source Server Version : 110000
Source Host           : 192.168.0.3:1433
Source Database       : MeiamSystem
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 110000
File Encoding         : 65001

Date: 2020-08-07 14:53:37
*/


-- ----------------------------
-- Table structure for Base_Company
-- ----------------------------
DROP TABLE [dbo].[Base_Company]
GO
CREATE TABLE [dbo].[Base_Company] (
[ID] nvarchar(36) NOT NULL ,
[CompanyNo] nvarchar(20) NOT NULL ,
[CompanyName] nvarchar(50) NOT NULL ,
[Remark] nvarchar(255) NULL ,
[Enable] bit NOT NULL DEFAULT ((1)) ,
[CreateTime] datetime NOT NULL ,
[UpdateTime] datetime NOT NULL ,
[CreateID] nvarchar(50) NOT NULL ,
[CreateName] nvarchar(100) NOT NULL ,
[UpdateID] nvarchar(50) NOT NULL ,
[UpdateName] nvarchar(100) NOT NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_Company', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'公司定义'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Company'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'公司定义'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Company'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_Company', 
'COLUMN', N'ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'UUID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Company'
, @level2type = 'COLUMN', @level2name = N'ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'UUID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Company'
, @level2type = 'COLUMN', @level2name = N'ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_Company', 
'COLUMN', N'CompanyNo')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'公司编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Company'
, @level2type = 'COLUMN', @level2name = N'CompanyNo'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'公司编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Company'
, @level2type = 'COLUMN', @level2name = N'CompanyNo'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_Company', 
'COLUMN', N'CompanyName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'公司名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Company'
, @level2type = 'COLUMN', @level2name = N'CompanyName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'公司名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Company'
, @level2type = 'COLUMN', @level2name = N'CompanyName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_Company', 
'COLUMN', N'Remark')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Company'
, @level2type = 'COLUMN', @level2name = N'Remark'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Company'
, @level2type = 'COLUMN', @level2name = N'Remark'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_Company', 
'COLUMN', N'Enable')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否启用'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Company'
, @level2type = 'COLUMN', @level2name = N'Enable'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否启用'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Company'
, @level2type = 'COLUMN', @level2name = N'Enable'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_Company', 
'COLUMN', N'CreateTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Company'
, @level2type = 'COLUMN', @level2name = N'CreateTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Company'
, @level2type = 'COLUMN', @level2name = N'CreateTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_Company', 
'COLUMN', N'UpdateTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Company'
, @level2type = 'COLUMN', @level2name = N'UpdateTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Company'
, @level2type = 'COLUMN', @level2name = N'UpdateTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_Company', 
'COLUMN', N'CreateID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建人编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Company'
, @level2type = 'COLUMN', @level2name = N'CreateID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建人编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Company'
, @level2type = 'COLUMN', @level2name = N'CreateID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_Company', 
'COLUMN', N'CreateName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Company'
, @level2type = 'COLUMN', @level2name = N'CreateName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Company'
, @level2type = 'COLUMN', @level2name = N'CreateName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_Company', 
'COLUMN', N'UpdateID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新人编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Company'
, @level2type = 'COLUMN', @level2name = N'UpdateID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新人编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Company'
, @level2type = 'COLUMN', @level2name = N'UpdateID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_Company', 
'COLUMN', N'UpdateName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Company'
, @level2type = 'COLUMN', @level2name = N'UpdateName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Company'
, @level2type = 'COLUMN', @level2name = N'UpdateName'
GO

-- ----------------------------
-- Records of Base_Company
-- ----------------------------
INSERT INTO [dbo].[Base_Company] ([ID], [CompanyNo], [CompanyName], [Remark], [Enable], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'1E910EDA-534E-469D-9B12-6C1DEF56A706', N'1001', N'最赚钱的公司', null, N'1', N'2020-06-20 10:50:32.890', N'2020-06-20 10:50:32.890', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO
GO
INSERT INTO [dbo].[Base_Company] ([ID], [CompanyNo], [CompanyName], [Remark], [Enable], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'74887F03-4422-4851-8802-B3057ACC5F30', N'1002', N'最赔钱的公司', null, N'1', N'2020-06-20 10:50:44.897', N'2020-06-20 10:50:44.897', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO
GO

-- ----------------------------
-- Table structure for Base_Equipment
-- ----------------------------
DROP TABLE [dbo].[Base_Equipment]
GO
CREATE TABLE [dbo].[Base_Equipment] (
[ID] nvarchar(36) NOT NULL ,
[EquipNo] nvarchar(20) NULL ,
[EquipName] nvarchar(50) NOT NULL ,
[Remark] nvarchar(255) NULL ,
[Enable] bit NOT NULL DEFAULT ((1)) ,
[CreateTime] datetime NOT NULL ,
[UpdateTime] datetime NOT NULL ,
[CreateID] nvarchar(50) NOT NULL ,
[CreateName] nvarchar(100) NOT NULL ,
[UpdateID] nvarchar(50) NOT NULL ,
[UpdateName] nvarchar(100) NOT NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_Equipment', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'设备定义'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Equipment'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'设备定义'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Equipment'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_Equipment', 
'COLUMN', N'ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'UID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Equipment'
, @level2type = 'COLUMN', @level2name = N'ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'UID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Equipment'
, @level2type = 'COLUMN', @level2name = N'ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_Equipment', 
'COLUMN', N'EquipNo')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'设备编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Equipment'
, @level2type = 'COLUMN', @level2name = N'EquipNo'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'设备编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Equipment'
, @level2type = 'COLUMN', @level2name = N'EquipNo'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_Equipment', 
'COLUMN', N'EquipName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'设备名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Equipment'
, @level2type = 'COLUMN', @level2name = N'EquipName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'设备名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Equipment'
, @level2type = 'COLUMN', @level2name = N'EquipName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_Equipment', 
'COLUMN', N'Remark')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Equipment'
, @level2type = 'COLUMN', @level2name = N'Remark'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Equipment'
, @level2type = 'COLUMN', @level2name = N'Remark'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_Equipment', 
'COLUMN', N'Enable')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否启用'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Equipment'
, @level2type = 'COLUMN', @level2name = N'Enable'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否启用'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Equipment'
, @level2type = 'COLUMN', @level2name = N'Enable'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_Equipment', 
'COLUMN', N'CreateTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Equipment'
, @level2type = 'COLUMN', @level2name = N'CreateTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Equipment'
, @level2type = 'COLUMN', @level2name = N'CreateTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_Equipment', 
'COLUMN', N'UpdateTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Equipment'
, @level2type = 'COLUMN', @level2name = N'UpdateTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Equipment'
, @level2type = 'COLUMN', @level2name = N'UpdateTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_Equipment', 
'COLUMN', N'CreateID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建人编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Equipment'
, @level2type = 'COLUMN', @level2name = N'CreateID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建人编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Equipment'
, @level2type = 'COLUMN', @level2name = N'CreateID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_Equipment', 
'COLUMN', N'CreateName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Equipment'
, @level2type = 'COLUMN', @level2name = N'CreateName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Equipment'
, @level2type = 'COLUMN', @level2name = N'CreateName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_Equipment', 
'COLUMN', N'UpdateID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新人编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Equipment'
, @level2type = 'COLUMN', @level2name = N'UpdateID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新人编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Equipment'
, @level2type = 'COLUMN', @level2name = N'UpdateID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_Equipment', 
'COLUMN', N'UpdateName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Equipment'
, @level2type = 'COLUMN', @level2name = N'UpdateName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Equipment'
, @level2type = 'COLUMN', @level2name = N'UpdateName'
GO

-- ----------------------------
-- Records of Base_Equipment
-- ----------------------------

-- ----------------------------
-- Table structure for Base_Factory
-- ----------------------------
DROP TABLE [dbo].[Base_Factory]
GO
CREATE TABLE [dbo].[Base_Factory] (
[ID] nvarchar(36) NOT NULL ,
[FactoryNo] nvarchar(20) NOT NULL ,
[FactoryName] nvarchar(50) NOT NULL ,
[Remark] nvarchar(255) NULL ,
[Enable] bit NOT NULL DEFAULT ((1)) ,
[CreateTime] datetime NOT NULL ,
[UpdateTime] datetime NOT NULL ,
[CreateID] nvarchar(50) NOT NULL ,
[CreateName] nvarchar(100) NOT NULL ,
[UpdateID] nvarchar(50) NOT NULL ,
[UpdateName] nvarchar(100) NOT NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_Factory', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'工厂定义'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Factory'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'工厂定义'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Factory'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_Factory', 
'COLUMN', N'ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'UUID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Factory'
, @level2type = 'COLUMN', @level2name = N'ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'UUID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Factory'
, @level2type = 'COLUMN', @level2name = N'ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_Factory', 
'COLUMN', N'FactoryNo')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'工厂编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Factory'
, @level2type = 'COLUMN', @level2name = N'FactoryNo'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'工厂编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Factory'
, @level2type = 'COLUMN', @level2name = N'FactoryNo'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_Factory', 
'COLUMN', N'FactoryName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'工厂名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Factory'
, @level2type = 'COLUMN', @level2name = N'FactoryName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'工厂名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Factory'
, @level2type = 'COLUMN', @level2name = N'FactoryName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_Factory', 
'COLUMN', N'Remark')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Factory'
, @level2type = 'COLUMN', @level2name = N'Remark'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Factory'
, @level2type = 'COLUMN', @level2name = N'Remark'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_Factory', 
'COLUMN', N'Enable')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否启用'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Factory'
, @level2type = 'COLUMN', @level2name = N'Enable'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否启用'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Factory'
, @level2type = 'COLUMN', @level2name = N'Enable'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_Factory', 
'COLUMN', N'CreateTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Factory'
, @level2type = 'COLUMN', @level2name = N'CreateTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Factory'
, @level2type = 'COLUMN', @level2name = N'CreateTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_Factory', 
'COLUMN', N'UpdateTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Factory'
, @level2type = 'COLUMN', @level2name = N'UpdateTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Factory'
, @level2type = 'COLUMN', @level2name = N'UpdateTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_Factory', 
'COLUMN', N'CreateID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建人编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Factory'
, @level2type = 'COLUMN', @level2name = N'CreateID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建人编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Factory'
, @level2type = 'COLUMN', @level2name = N'CreateID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_Factory', 
'COLUMN', N'CreateName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Factory'
, @level2type = 'COLUMN', @level2name = N'CreateName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Factory'
, @level2type = 'COLUMN', @level2name = N'CreateName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_Factory', 
'COLUMN', N'UpdateID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新人编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Factory'
, @level2type = 'COLUMN', @level2name = N'UpdateID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新人编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Factory'
, @level2type = 'COLUMN', @level2name = N'UpdateID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_Factory', 
'COLUMN', N'UpdateName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Factory'
, @level2type = 'COLUMN', @level2name = N'UpdateName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_Factory'
, @level2type = 'COLUMN', @level2name = N'UpdateName'
GO

-- ----------------------------
-- Records of Base_Factory
-- ----------------------------
INSERT INTO [dbo].[Base_Factory] ([ID], [FactoryNo], [FactoryName], [Remark], [Enable], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'21A0F4ED-FA2E-4786-93DC-0222F54B4286', N'2002', N'华南二期', null, N'1', N'2020-06-20 10:51:35.077', N'2020-06-20 10:51:35.077', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO
GO
INSERT INTO [dbo].[Base_Factory] ([ID], [FactoryNo], [FactoryName], [Remark], [Enable], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'AFE35E8D-83B4-48A3-889F-30A1BC07AFB4', N'2001', N'华西一期', null, N'1', N'2020-06-20 10:51:15.947', N'2020-06-20 10:51:15.947', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO
GO
INSERT INTO [dbo].[Base_Factory] ([ID], [FactoryNo], [FactoryName], [Remark], [Enable], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'CA97D772-FFD2-484C-AE53-22A6C8B095A2', N'2003', N'华东三期', null, N'1', N'2020-06-20 10:51:51.003', N'2020-06-20 10:51:51.003', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO
GO

-- ----------------------------
-- Table structure for Base_ProductLine
-- ----------------------------
DROP TABLE [dbo].[Base_ProductLine]
GO
CREATE TABLE [dbo].[Base_ProductLine] (
[ID] nvarchar(36) NOT NULL ,
[LineNo] nvarchar(20) NOT NULL ,
[LineName] nvarchar(50) NOT NULL ,
[Remark] nvarchar(255) NULL ,
[Enable] bit NOT NULL DEFAULT ((1)) ,
[CreateTime] datetime NOT NULL ,
[UpdateTime] datetime NOT NULL ,
[CreateID] nvarchar(50) NOT NULL ,
[CreateName] nvarchar(100) NOT NULL ,
[UpdateID] nvarchar(50) NOT NULL ,
[UpdateName] nvarchar(100) NOT NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_ProductLine', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'产线定义'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_ProductLine'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'产线定义'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_ProductLine'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_ProductLine', 
'COLUMN', N'ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'UUID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_ProductLine'
, @level2type = 'COLUMN', @level2name = N'ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'UUID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_ProductLine'
, @level2type = 'COLUMN', @level2name = N'ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_ProductLine', 
'COLUMN', N'LineNo')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'生产线编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_ProductLine'
, @level2type = 'COLUMN', @level2name = N'LineNo'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'生产线编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_ProductLine'
, @level2type = 'COLUMN', @level2name = N'LineNo'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_ProductLine', 
'COLUMN', N'LineName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'生产线名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_ProductLine'
, @level2type = 'COLUMN', @level2name = N'LineName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'生产线名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_ProductLine'
, @level2type = 'COLUMN', @level2name = N'LineName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_ProductLine', 
'COLUMN', N'Remark')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_ProductLine'
, @level2type = 'COLUMN', @level2name = N'Remark'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_ProductLine'
, @level2type = 'COLUMN', @level2name = N'Remark'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_ProductLine', 
'COLUMN', N'Enable')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否启用'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_ProductLine'
, @level2type = 'COLUMN', @level2name = N'Enable'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否启用'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_ProductLine'
, @level2type = 'COLUMN', @level2name = N'Enable'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_ProductLine', 
'COLUMN', N'CreateTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_ProductLine'
, @level2type = 'COLUMN', @level2name = N'CreateTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_ProductLine'
, @level2type = 'COLUMN', @level2name = N'CreateTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_ProductLine', 
'COLUMN', N'UpdateTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_ProductLine'
, @level2type = 'COLUMN', @level2name = N'UpdateTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_ProductLine'
, @level2type = 'COLUMN', @level2name = N'UpdateTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_ProductLine', 
'COLUMN', N'CreateID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建人编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_ProductLine'
, @level2type = 'COLUMN', @level2name = N'CreateID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建人编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_ProductLine'
, @level2type = 'COLUMN', @level2name = N'CreateID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_ProductLine', 
'COLUMN', N'CreateName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_ProductLine'
, @level2type = 'COLUMN', @level2name = N'CreateName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_ProductLine'
, @level2type = 'COLUMN', @level2name = N'CreateName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_ProductLine', 
'COLUMN', N'UpdateID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新人编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_ProductLine'
, @level2type = 'COLUMN', @level2name = N'UpdateID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新人编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_ProductLine'
, @level2type = 'COLUMN', @level2name = N'UpdateID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_ProductLine', 
'COLUMN', N'UpdateName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_ProductLine'
, @level2type = 'COLUMN', @level2name = N'UpdateName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_ProductLine'
, @level2type = 'COLUMN', @level2name = N'UpdateName'
GO

-- ----------------------------
-- Records of Base_ProductLine
-- ----------------------------

-- ----------------------------
-- Table structure for Base_ProductProcess
-- ----------------------------
DROP TABLE [dbo].[Base_ProductProcess]
GO
CREATE TABLE [dbo].[Base_ProductProcess] (
[ID] nvarchar(36) NOT NULL ,
[ProcessNo] nvarchar(20) NOT NULL ,
[ProcessName] nvarchar(50) NOT NULL ,
[Remark] nvarchar(255) NULL ,
[Enable] bit NOT NULL DEFAULT ((1)) ,
[CreateTime] datetime NOT NULL ,
[UpdateTime] datetime NOT NULL ,
[CreateID] nvarchar(50) NOT NULL ,
[CreateName] nvarchar(100) NOT NULL ,
[UpdateID] nvarchar(50) NOT NULL ,
[UpdateName] nvarchar(100) NOT NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_ProductProcess', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'工序定义'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_ProductProcess'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'工序定义'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_ProductProcess'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_ProductProcess', 
'COLUMN', N'ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'UUID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_ProductProcess'
, @level2type = 'COLUMN', @level2name = N'ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'UUID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_ProductProcess'
, @level2type = 'COLUMN', @level2name = N'ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_ProductProcess', 
'COLUMN', N'ProcessNo')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'工序编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_ProductProcess'
, @level2type = 'COLUMN', @level2name = N'ProcessNo'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'工序编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_ProductProcess'
, @level2type = 'COLUMN', @level2name = N'ProcessNo'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_ProductProcess', 
'COLUMN', N'ProcessName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'工序名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_ProductProcess'
, @level2type = 'COLUMN', @level2name = N'ProcessName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'工序名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_ProductProcess'
, @level2type = 'COLUMN', @level2name = N'ProcessName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_ProductProcess', 
'COLUMN', N'Remark')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_ProductProcess'
, @level2type = 'COLUMN', @level2name = N'Remark'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_ProductProcess'
, @level2type = 'COLUMN', @level2name = N'Remark'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_ProductProcess', 
'COLUMN', N'Enable')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否启用'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_ProductProcess'
, @level2type = 'COLUMN', @level2name = N'Enable'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否启用'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_ProductProcess'
, @level2type = 'COLUMN', @level2name = N'Enable'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_ProductProcess', 
'COLUMN', N'CreateTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_ProductProcess'
, @level2type = 'COLUMN', @level2name = N'CreateTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_ProductProcess'
, @level2type = 'COLUMN', @level2name = N'CreateTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_ProductProcess', 
'COLUMN', N'UpdateTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_ProductProcess'
, @level2type = 'COLUMN', @level2name = N'UpdateTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_ProductProcess'
, @level2type = 'COLUMN', @level2name = N'UpdateTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_ProductProcess', 
'COLUMN', N'CreateID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建人编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_ProductProcess'
, @level2type = 'COLUMN', @level2name = N'CreateID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建人编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_ProductProcess'
, @level2type = 'COLUMN', @level2name = N'CreateID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_ProductProcess', 
'COLUMN', N'CreateName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_ProductProcess'
, @level2type = 'COLUMN', @level2name = N'CreateName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_ProductProcess'
, @level2type = 'COLUMN', @level2name = N'CreateName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_ProductProcess', 
'COLUMN', N'UpdateID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新人编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_ProductProcess'
, @level2type = 'COLUMN', @level2name = N'UpdateID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新人编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_ProductProcess'
, @level2type = 'COLUMN', @level2name = N'UpdateID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_ProductProcess', 
'COLUMN', N'UpdateName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_ProductProcess'
, @level2type = 'COLUMN', @level2name = N'UpdateName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_ProductProcess'
, @level2type = 'COLUMN', @level2name = N'UpdateName'
GO

-- ----------------------------
-- Records of Base_ProductProcess
-- ----------------------------
INSERT INTO [dbo].[Base_ProductProcess] ([ID], [ProcessNo], [ProcessName], [Remark], [Enable], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'9E4C1AD4-40AB-4D93-8EE1-B07688360228', N'20010101', N'铸焊浇筑', null, N'1', N'2020-06-20 10:54:34.773', N'2020-06-20 10:55:19.977', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO
GO
INSERT INTO [dbo].[Base_ProductProcess] ([ID], [ProcessNo], [ProcessName], [Remark], [Enable], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'9FCB9642-CE69-43C5-9D71-400F0B1D64A1', N'20010102', N'铸焊锻造', null, N'1', N'2020-06-20 10:54:58.147', N'2020-06-20 10:54:58.147', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO
GO

-- ----------------------------
-- Table structure for Base_WorkShop
-- ----------------------------
DROP TABLE [dbo].[Base_WorkShop]
GO
CREATE TABLE [dbo].[Base_WorkShop] (
[ID] nvarchar(36) NOT NULL ,
[WorkShopNo] nvarchar(20) NOT NULL ,
[WorkShopName] nvarchar(50) NOT NULL ,
[Remark] nvarchar(255) NULL ,
[Enable] bit NOT NULL DEFAULT ((1)) ,
[CreateTime] datetime NOT NULL ,
[UpdateTime] datetime NOT NULL ,
[CreateID] nvarchar(50) NOT NULL ,
[CreateName] nvarchar(100) NOT NULL ,
[UpdateID] nvarchar(50) NOT NULL ,
[UpdateName] nvarchar(100) NOT NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_WorkShop', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'车间定义'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_WorkShop'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'车间定义'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_WorkShop'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_WorkShop', 
'COLUMN', N'ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'UUID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_WorkShop'
, @level2type = 'COLUMN', @level2name = N'ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'UUID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_WorkShop'
, @level2type = 'COLUMN', @level2name = N'ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_WorkShop', 
'COLUMN', N'WorkShopNo')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'车间编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_WorkShop'
, @level2type = 'COLUMN', @level2name = N'WorkShopNo'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'车间编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_WorkShop'
, @level2type = 'COLUMN', @level2name = N'WorkShopNo'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_WorkShop', 
'COLUMN', N'WorkShopName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'车间名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_WorkShop'
, @level2type = 'COLUMN', @level2name = N'WorkShopName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'车间名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_WorkShop'
, @level2type = 'COLUMN', @level2name = N'WorkShopName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_WorkShop', 
'COLUMN', N'Remark')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_WorkShop'
, @level2type = 'COLUMN', @level2name = N'Remark'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_WorkShop'
, @level2type = 'COLUMN', @level2name = N'Remark'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_WorkShop', 
'COLUMN', N'Enable')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否启用'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_WorkShop'
, @level2type = 'COLUMN', @level2name = N'Enable'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否启用'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_WorkShop'
, @level2type = 'COLUMN', @level2name = N'Enable'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_WorkShop', 
'COLUMN', N'CreateTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_WorkShop'
, @level2type = 'COLUMN', @level2name = N'CreateTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_WorkShop'
, @level2type = 'COLUMN', @level2name = N'CreateTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_WorkShop', 
'COLUMN', N'UpdateTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_WorkShop'
, @level2type = 'COLUMN', @level2name = N'UpdateTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_WorkShop'
, @level2type = 'COLUMN', @level2name = N'UpdateTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_WorkShop', 
'COLUMN', N'CreateID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建人编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_WorkShop'
, @level2type = 'COLUMN', @level2name = N'CreateID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建人编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_WorkShop'
, @level2type = 'COLUMN', @level2name = N'CreateID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_WorkShop', 
'COLUMN', N'CreateName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_WorkShop'
, @level2type = 'COLUMN', @level2name = N'CreateName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_WorkShop'
, @level2type = 'COLUMN', @level2name = N'CreateName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_WorkShop', 
'COLUMN', N'UpdateID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新人编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_WorkShop'
, @level2type = 'COLUMN', @level2name = N'UpdateID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新人编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_WorkShop'
, @level2type = 'COLUMN', @level2name = N'UpdateID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Base_WorkShop', 
'COLUMN', N'UpdateName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_WorkShop'
, @level2type = 'COLUMN', @level2name = N'UpdateName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Base_WorkShop'
, @level2type = 'COLUMN', @level2name = N'UpdateName'
GO

-- ----------------------------
-- Records of Base_WorkShop
-- ----------------------------
INSERT INTO [dbo].[Base_WorkShop] ([ID], [WorkShopNo], [WorkShopName], [Remark], [Enable], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'06EE680E-8DDF-4557-BA37-52416E3FA197', N'200202', N'极板车间', null, N'1', N'2020-06-20 10:53:55.527', N'2020-06-20 10:53:55.527', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO
GO
INSERT INTO [dbo].[Base_WorkShop] ([ID], [WorkShopNo], [WorkShopName], [Remark], [Enable], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'1D524B11-DBF0-475F-8D95-D1F35515174A', N'200102', N'极板车间', null, N'1', N'2020-06-20 10:53:16.577', N'2020-06-20 10:53:16.577', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO
GO
INSERT INTO [dbo].[Base_WorkShop] ([ID], [WorkShopNo], [WorkShopName], [Remark], [Enable], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'82AE52A6-00F2-420C-AB28-1B2E227D6122', N'200101', N'铸焊车间', null, N'1', N'2020-06-20 10:52:54.310', N'2020-06-20 10:52:54.310', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO
GO
INSERT INTO [dbo].[Base_WorkShop] ([ID], [WorkShopNo], [WorkShopName], [Remark], [Enable], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'8EE174C5-4430-4196-AEF8-4D72EF69C6C3', N'200201', N'铸焊车间', null, N'1', N'2020-06-20 10:53:38.647', N'2020-06-20 10:53:38.647', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO
GO

-- ----------------------------
-- Table structure for Sys_DataRelation
-- ----------------------------
DROP TABLE [dbo].[Sys_DataRelation]
GO
CREATE TABLE [dbo].[Sys_DataRelation] (
[ID] nvarchar(36) NOT NULL ,
[Form] nvarchar(36) NOT NULL ,
[To] nvarchar(36) NOT NULL ,
[Type] nvarchar(50) NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_DataRelation', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'数据关系'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_DataRelation'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'数据关系'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_DataRelation'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_DataRelation', 
'COLUMN', N'ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'UID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_DataRelation'
, @level2type = 'COLUMN', @level2name = N'ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'UID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_DataRelation'
, @level2type = 'COLUMN', @level2name = N'ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_DataRelation', 
'COLUMN', N'Form')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'来源ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_DataRelation'
, @level2type = 'COLUMN', @level2name = N'Form'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'来源ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_DataRelation'
, @level2type = 'COLUMN', @level2name = N'Form'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_DataRelation', 
'COLUMN', N'To')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'对应ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_DataRelation'
, @level2type = 'COLUMN', @level2name = N'To'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'对应ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_DataRelation'
, @level2type = 'COLUMN', @level2name = N'To'
GO

-- ----------------------------
-- Records of Sys_DataRelation
-- ----------------------------
INSERT INTO [dbo].[Sys_DataRelation] ([ID], [Form], [To], [Type]) VALUES (N'236E2C08-3A87-4F71-BC2B-4B46099429AD', N'21A0F4ED-FA2E-4786-93DC-0222F54B4286', N'1E910EDA-534E-469D-9B12-6C1DEF56A706', N'Factory_To_Company')
GO
GO
INSERT INTO [dbo].[Sys_DataRelation] ([ID], [Form], [To], [Type]) VALUES (N'6B9F5197-BFF0-4677-9813-BFAB0ACD31B2', N'82AE52A6-00F2-420C-AB28-1B2E227D6122', N'AFE35E8D-83B4-48A3-889F-30A1BC07AFB4', N'WorkShop_To_Factory')
GO
GO
INSERT INTO [dbo].[Sys_DataRelation] ([ID], [Form], [To], [Type]) VALUES (N'70E5F36F-BE18-406F-9319-FF49CF4C66DE', N'CA97D772-FFD2-484C-AE53-22A6C8B095A2', N'74887F03-4422-4851-8802-B3057ACC5F30', N'Factory_To_Company')
GO
GO
INSERT INTO [dbo].[Sys_DataRelation] ([ID], [Form], [To], [Type]) VALUES (N'84E788F1-C13B-4F47-84C2-B71772D3152C', N'9FCB9642-CE69-43C5-9D71-400F0B1D64A1', N'82AE52A6-00F2-420C-AB28-1B2E227D6122', N'Process_To_WorkShop')
GO
GO
INSERT INTO [dbo].[Sys_DataRelation] ([ID], [Form], [To], [Type]) VALUES (N'8BECD5B4-2897-44A9-B6FB-E3F2B14AC422', N'9E4C1AD4-40AB-4D93-8EE1-B07688360228', N'82AE52A6-00F2-420C-AB28-1B2E227D6122', N'Process_To_WorkShop')
GO
GO
INSERT INTO [dbo].[Sys_DataRelation] ([ID], [Form], [To], [Type]) VALUES (N'BC944632-4825-41F1-AABF-33A3AEF44ACE', N'1D524B11-DBF0-475F-8D95-D1F35515174A', N'AFE35E8D-83B4-48A3-889F-30A1BC07AFB4', N'WorkShop_To_Factory')
GO
GO
INSERT INTO [dbo].[Sys_DataRelation] ([ID], [Form], [To], [Type]) VALUES (N'EC41BA6C-14A7-4776-B8C7-832B934B2BC0', N'AFE35E8D-83B4-48A3-889F-30A1BC07AFB4', N'1E910EDA-534E-469D-9B12-6C1DEF56A706', N'Factory_To_Company')
GO
GO
INSERT INTO [dbo].[Sys_DataRelation] ([ID], [Form], [To], [Type]) VALUES (N'EFFCFE70-0402-4FD7-BC8E-CAD15AB71D60', N'8EE174C5-4430-4196-AEF8-4D72EF69C6C3', N'21A0F4ED-FA2E-4786-93DC-0222F54B4286', N'WorkShop_To_Factory')
GO
GO
INSERT INTO [dbo].[Sys_DataRelation] ([ID], [Form], [To], [Type]) VALUES (N'F89CC5FC-726C-4BB2-9C7F-4E1D6562A71F', N'06EE680E-8DDF-4557-BA37-52416E3FA197', N'21A0F4ED-FA2E-4786-93DC-0222F54B4286', N'WorkShop_To_Factory')
GO
GO

-- ----------------------------
-- Table structure for Sys_Logs
-- ----------------------------
DROP TABLE [dbo].[Sys_Logs]
GO
CREATE TABLE [dbo].[Sys_Logs] (
[ID] nvarchar(36) NOT NULL ,
[Logger] nvarchar(50) NULL ,
[Level] nvarchar(50) NULL ,
[Url] nvarchar(255) NULL ,
[Host] nvarchar(100) NULL ,
[Method] nvarchar(10) NULL ,
[UserAgent] nvarchar(255) NULL ,
[Cookie] nvarchar(100) NULL ,
[QueryString] nvarchar(MAX) NULL ,
[Body] nvarchar(MAX) NULL ,
[Message] nvarchar(MAX) NULL ,
[Elapsed] int NULL ,
[CreateTime] datetime2(6) NULL ,
[IPAddress] nvarchar(50) NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Logs', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'日志管理'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Logs'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'日志管理'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Logs'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Logs', 
'COLUMN', N'ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Logs'
, @level2type = 'COLUMN', @level2name = N'ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Logs'
, @level2type = 'COLUMN', @level2name = N'ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Logs', 
'COLUMN', N'Logger')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'日志类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Logs'
, @level2type = 'COLUMN', @level2name = N'Logger'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'日志类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Logs'
, @level2type = 'COLUMN', @level2name = N'Logger'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Logs', 
'COLUMN', N'Level')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'日志等级'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Logs'
, @level2type = 'COLUMN', @level2name = N'Level'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'日志等级'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Logs'
, @level2type = 'COLUMN', @level2name = N'Level'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Logs', 
'COLUMN', N'Url')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'日志来源'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Logs'
, @level2type = 'COLUMN', @level2name = N'Url'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'日志来源'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Logs'
, @level2type = 'COLUMN', @level2name = N'Url'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Logs', 
'COLUMN', N'Host')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'主机地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Logs'
, @level2type = 'COLUMN', @level2name = N'Host'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'主机地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Logs'
, @level2type = 'COLUMN', @level2name = N'Host'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Logs', 
'COLUMN', N'Method')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'请求方式'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Logs'
, @level2type = 'COLUMN', @level2name = N'Method'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'请求方式'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Logs'
, @level2type = 'COLUMN', @level2name = N'Method'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Logs', 
'COLUMN', N'UserAgent')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'浏览器标识'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Logs'
, @level2type = 'COLUMN', @level2name = N'UserAgent'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'浏览器标识'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Logs'
, @level2type = 'COLUMN', @level2name = N'UserAgent'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Logs', 
'COLUMN', N'Cookie')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'Cookie'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Logs'
, @level2type = 'COLUMN', @level2name = N'Cookie'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Cookie'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Logs'
, @level2type = 'COLUMN', @level2name = N'Cookie'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Logs', 
'COLUMN', N'QueryString')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'URL参数'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Logs'
, @level2type = 'COLUMN', @level2name = N'QueryString'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'URL参数'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Logs'
, @level2type = 'COLUMN', @level2name = N'QueryString'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Logs', 
'COLUMN', N'Body')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'请求内容'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Logs'
, @level2type = 'COLUMN', @level2name = N'Body'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'请求内容'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Logs'
, @level2type = 'COLUMN', @level2name = N'Body'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Logs', 
'COLUMN', N'Message')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'日志信息'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Logs'
, @level2type = 'COLUMN', @level2name = N'Message'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'日志信息'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Logs'
, @level2type = 'COLUMN', @level2name = N'Message'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Logs', 
'COLUMN', N'Elapsed')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'请求耗时'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Logs'
, @level2type = 'COLUMN', @level2name = N'Elapsed'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'请求耗时'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Logs'
, @level2type = 'COLUMN', @level2name = N'Elapsed'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Logs', 
'COLUMN', N'CreateTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Logs'
, @level2type = 'COLUMN', @level2name = N'CreateTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Logs'
, @level2type = 'COLUMN', @level2name = N'CreateTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Logs', 
'COLUMN', N'IPAddress')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户来源'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Logs'
, @level2type = 'COLUMN', @level2name = N'IPAddress'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户来源'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Logs'
, @level2type = 'COLUMN', @level2name = N'IPAddress'
GO

-- ----------------------------
-- Records of Sys_Logs
-- ----------------------------
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'02381523-C884-4F0D-947B-29664E9EAC2A', N'Quartz.Core.SchedulerSignalerImpl', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Initialized Scheduler Signaller of type: Quartz.Core.SchedulerSignalerImpl', N'0', N'2020-08-07 14:45:22.529400', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'0500AD4A-DE8B-4B94-B5A5-B8B57DC2E8A5', N'Quartz.Impl.StdSchedulerFactory', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Quartz scheduler version: 3.1.0.0', N'0', N'2020-08-07 14:44:45.174100', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'098D81A3-5091-41A4-9022-D7135EEE4852', N'Quartz.Core.QuartzScheduler', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Quartz Scheduler v.3.1.0.0 created.', N'0', N'2020-08-07 14:46:10.855900', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'152D7223-C2EE-42A9-98B7-74F0BCC7C4FF', N'Quartz.Core.QuartzScheduler', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'JobFactory set to: Meiam.System.Tasks.JobFactory', N'0', N'2020-08-07 14:49:19.716800', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'16CA7711-C29E-4204-B23E-6D815ECFC4E0', N'Quartz.Core.QuartzScheduler', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'JobFactory set to: Meiam.System.Tasks.JobFactory', N'0', N'2020-08-07 14:49:38.273700', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'18BAD090-4F2D-4F8A-BF6A-458525AC175E', N'Quartz.Core.SchedulerSignalerImpl', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Initialized Scheduler Signaller of type: Quartz.Core.SchedulerSignalerImpl', N'0', N'2020-08-07 14:46:10.830500', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'1C3367F8-ABAD-4F89-B93E-A9A9D28DD501', N'Quartz.Impl.StdSchedulerFactory', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Using object serializer: Quartz.Simpl.BinaryObjectSerializer, Quartz', N'0', N'2020-08-07 14:45:37.358700', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'1E5C427D-7B1A-466B-9137-CC1FF6C23A0C', N'Quartz.Core.QuartzScheduler', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Scheduler meta-data: Quartz Scheduler (v3.1.0.0) ''QuartzScheduler'' with instanceId ''NON_CLUSTERED''
  Scheduler class: ''Quartz.Core.QuartzScheduler'' - running locally.
  NOT STARTED.
  Currently in standby mode.
  Number of jobs executed: 0
  Using thread pool ''Quartz.Simpl.DefaultThreadPool'' - with 10 threads.
  Using job-store ''Quartz.Simpl.RAMJobStore'' - which does not support persistence. and is not clustered.
', N'0', N'2020-08-07 14:44:45.125200', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'1F034A31-0A79-4394-BFB2-DD9D576B5C96', N'Quartz.Impl.StdSchedulerFactory', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Quartz scheduler ''QuartzScheduler'' initialized', N'0', N'2020-08-07 14:49:19.604900', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'2142AE62-EB61-4259-BF21-6AC7E97C3D3F', N'Quartz.Core.QuartzScheduler', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'JobFactory set to: Meiam.System.Tasks.JobFactory', N'0', N'2020-08-07 14:52:11.147700', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'2421587F-D8C7-4731-935B-0734F4DCE25F', N'Quartz.Core.SchedulerSignalerImpl', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Initialized Scheduler Signaller of type: Quartz.Core.SchedulerSignalerImpl', N'0', N'2020-08-07 14:44:45.042100', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'2650A5E4-A7AC-48EA-B07F-623BF2A0B1E1', N'Quartz.Impl.StdSchedulerFactory', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Quartz scheduler version: 3.1.0.0', N'0', N'2020-08-07 14:49:38.190300', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'2972879B-6BCB-4E0E-B5D3-367467B1D5E7', N'Quartz.Core.QuartzScheduler', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Scheduler meta-data: Quartz Scheduler (v3.1.0.0) ''QuartzScheduler'' with instanceId ''NON_CLUSTERED''
  Scheduler class: ''Quartz.Core.QuartzScheduler'' - running locally.
  NOT STARTED.
  Currently in standby mode.
  Number of jobs executed: 0
  Using thread pool ''Quartz.Simpl.DefaultThreadPool'' - with 10 threads.
  Using job-store ''Quartz.Simpl.RAMJobStore'' - which does not support persistence. and is not clustered.
', N'0', N'2020-08-07 14:45:37.754200', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'29BEFFD7-5610-4B4A-81BE-32508D4004E0', N'Quartz.Impl.StdSchedulerFactory', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Using object serializer: Quartz.Simpl.BinaryObjectSerializer, Quartz', N'0', N'2020-08-07 14:45:22.164500', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'29D43F91-98FE-4427-BBB5-2141753CCAA6', N'Quartz.Core.QuartzScheduler', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Quartz Scheduler v.3.1.0.0 created.', N'0', N'2020-08-07 14:52:10.983300', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'2E88DDA0-B341-4974-BA51-A9142F4A0BC1', N'Quartz.Impl.StdSchedulerFactory', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Quartz scheduler ''QuartzScheduler'' initialized', N'0', N'2020-08-07 14:46:10.936400', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'2EA765CF-AB02-497A-AF35-A1320674629B', N'Quartz.Core.QuartzScheduler', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Quartz Scheduler v.3.1.0.0 created.', N'0', N'2020-08-07 14:47:34.192000', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'2FD2B87D-C5DB-401A-B59E-63D5BDF56977', N'Quartz.Simpl.RAMJobStore', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'RAMJobStore initialized.', N'0', N'2020-08-07 14:47:34.222400', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'2FD739F8-EFB9-4ECA-8DEE-65CFA8B1633E', N'Quartz.Simpl.RAMJobStore', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'RAMJobStore initialized.', N'0', N'2020-08-07 14:47:47.825800', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'3079AB87-3F13-436E-A869-AE6ABA76E035', N'Quartz.Impl.StdSchedulerFactory', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Quartz scheduler ''QuartzScheduler'' initialized', N'0', N'2020-08-07 14:46:00.127700', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'30F4CD9A-4E75-444A-AE05-049451F47A36', N'Quartz.Impl.StdSchedulerFactory', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Quartz scheduler version: 3.1.0.0', N'0', N'2020-08-07 14:47:34.301100', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'31842DDA-1FD1-4AAA-9F71-24F44DB3D525', N'Quartz.Simpl.RAMJobStore', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'RAMJobStore initialized.', N'0', N'2020-08-07 14:44:45.099500', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'3780FA9D-BA74-489D-B3B8-88BA23F07BB0', N'Quartz.Impl.StdSchedulerFactory', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Quartz scheduler ''QuartzScheduler'' initialized', N'0', N'2020-08-07 14:47:34.276500', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'40745499-8888-4236-9365-7867DFBB7AB4', N'Quartz.Core.QuartzScheduler', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Scheduler meta-data: Quartz Scheduler (v3.1.0.0) ''QuartzScheduler'' with instanceId ''NON_CLUSTERED''
  Scheduler class: ''Quartz.Core.QuartzScheduler'' - running locally.
  NOT STARTED.
  Currently in standby mode.
  Number of jobs executed: 0
  Using thread pool ''Quartz.Simpl.DefaultThreadPool'' - with 10 threads.
  Using job-store ''Quartz.Simpl.RAMJobStore'' - which does not support persistence. and is not clustered.
', N'0', N'2020-08-07 14:47:34.251700', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'465FC38B-B011-423B-B1B9-5A500BEE8562', N'Quartz.Impl.StdSchedulerFactory', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Using object serializer: Quartz.Simpl.BinaryObjectSerializer, Quartz', N'0', N'2020-08-07 14:47:33.833200', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'48F14514-9B2A-4410-8229-195989F63C36', N'Quartz.Simpl.RAMJobStore', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'RAMJobStore initialized.', N'0', N'2020-08-07 14:49:38.114500', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'4E2A1959-82D8-4ED4-AF86-B92C4826A505', N'Quartz.Core.SchedulerSignalerImpl', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Initialized Scheduler Signaller of type: Quartz.Core.SchedulerSignalerImpl', N'0', N'2020-08-07 14:49:19.502000', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'564841BD-A93F-4210-B7E1-C19F85AFC90B', N'Quartz.Core.QuartzScheduler', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'JobFactory set to: Meiam.System.Tasks.JobFactory', N'0', N'2020-08-07 14:53:09.173400', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'566C1386-D2A4-4F51-9535-436EA482077F', N'Quartz.Simpl.RAMJobStore', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'RAMJobStore initialized.', N'0', N'2020-08-07 14:45:37.724700', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'56C662E0-7CA9-4853-ABF6-472FD065722D', N'Quartz.Core.SchedulerSignalerImpl', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Initialized Scheduler Signaller of type: Quartz.Core.SchedulerSignalerImpl', N'0', N'2020-08-07 14:49:38.059200', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'56D4FC77-A312-44E1-B1E4-F381CB6805B1', N'Quartz.Impl.StdSchedulerFactory', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Quartz scheduler version: 3.1.0.0', N'0', N'2020-08-07 14:49:19.628900', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'58329B9A-978D-456B-AD17-D612449A84A5', N'Quartz.Core.SchedulerSignalerImpl', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Initialized Scheduler Signaller of type: Quartz.Core.SchedulerSignalerImpl', N'0', N'2020-08-07 14:46:00.024600', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'5A0779C5-4D9B-463B-9C9D-E2CF7039B18D', N'Quartz.Core.QuartzScheduler', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Scheduler meta-data: Quartz Scheduler (v3.1.0.0) ''QuartzScheduler'' with instanceId ''NON_CLUSTERED''
  Scheduler class: ''Quartz.Core.QuartzScheduler'' - running locally.
  NOT STARTED.
  Currently in standby mode.
  Number of jobs executed: 0
  Using thread pool ''Quartz.Simpl.DefaultThreadPool'' - with 10 threads.
  Using job-store ''Quartz.Simpl.RAMJobStore'' - which does not support persistence. and is not clustered.
', N'0', N'2020-08-07 14:46:00.102600', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'5B3338E3-DE3F-4CB0-90E4-0B296863840D', N'Quartz.Core.QuartzScheduler', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Scheduler meta-data: Quartz Scheduler (v3.1.0.0) ''QuartzScheduler'' with instanceId ''NON_CLUSTERED''
  Scheduler class: ''Quartz.Core.QuartzScheduler'' - running locally.
  NOT STARTED.
  Currently in standby mode.
  Number of jobs executed: 0
  Using thread pool ''Quartz.Simpl.DefaultThreadPool'' - with 10 threads.
  Using job-store ''Quartz.Simpl.RAMJobStore'' - which does not support persistence. and is not clustered.
', N'0', N'2020-08-07 14:46:10.912300', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'5C08FE58-E83F-4745-B313-584C59E90B82', N'Quartz.Core.QuartzScheduler', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Scheduler meta-data: Quartz Scheduler (v3.1.0.0) ''QuartzScheduler'' with instanceId ''NON_CLUSTERED''
  Scheduler class: ''Quartz.Core.QuartzScheduler'' - running locally.
  NOT STARTED.
  Currently in standby mode.
  Number of jobs executed: 0
  Using thread pool ''Quartz.Simpl.DefaultThreadPool'' - with 10 threads.
  Using job-store ''Quartz.Simpl.RAMJobStore'' - which does not support persistence. and is not clustered.
', N'0', N'2020-08-07 14:52:11.043600', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'5D6E34E9-0EAB-4F98-B507-F49C85F8731B', N'Quartz.Impl.StdSchedulerFactory', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Using object serializer: Quartz.Simpl.BinaryObjectSerializer, Quartz', N'0', N'2020-08-07 14:44:44.753700', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'640A1BEA-A82E-4C7F-8B9E-2BFCA5F3E34A', N'Quartz.Core.QuartzScheduler', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Quartz Scheduler v.3.1.0.0 created.', N'0', N'2020-08-07 14:47:47.792900', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'68949A6C-774C-4CBF-8B51-16FED2FB9E6F', N'Quartz.Simpl.RAMJobStore', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'RAMJobStore initialized.', N'0', N'2020-08-07 14:46:10.884200', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'691BB286-D203-4057-B8E7-A69D6CE55AD0', N'Quartz.Core.QuartzScheduler', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Scheduler QuartzScheduler_$_NON_CLUSTERED started.', N'0', N'2020-08-07 14:52:11.185500', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'6EEAE096-1FBF-4FF0-BC0C-E9AE038AA2F5', N'Quartz.Impl.StdSchedulerFactory', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Quartz scheduler ''QuartzScheduler'' initialized', N'0', N'2020-08-07 14:52:11.067200', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'70941F50-C885-4D65-91C1-45E13098BB55', N'Quartz.Impl.StdSchedulerFactory', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Quartz scheduler ''QuartzScheduler'' initialized', N'0', N'2020-08-07 14:45:22.661900', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'71D24BD5-E3FE-4568-A4AB-13FEF8128CD7', N'Quartz.Simpl.RAMJobStore', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'RAMJobStore initialized.', N'0', N'2020-08-07 14:53:08.998300', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'7DBD1FAF-938C-400F-900F-8537B502DD90', N'Quartz.Core.SchedulerSignalerImpl', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Initialized Scheduler Signaller of type: Quartz.Core.SchedulerSignalerImpl', N'0', N'2020-08-07 14:48:29.801800', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'7DCED99B-5E84-483D-BE0F-C1C2E7BF4409', N'Quartz.Impl.StdSchedulerFactory', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Quartz scheduler ''QuartzScheduler'' initialized', N'0', N'2020-08-07 14:45:37.779500', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'7E0F9A03-695D-4904-BF34-049960E74977', N'Quartz.Core.QuartzScheduler', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Scheduler meta-data: Quartz Scheduler (v3.1.0.0) ''QuartzScheduler'' with instanceId ''NON_CLUSTERED''
  Scheduler class: ''Quartz.Core.QuartzScheduler'' - running locally.
  NOT STARTED.
  Currently in standby mode.
  Number of jobs executed: 0
  Using thread pool ''Quartz.Simpl.DefaultThreadPool'' - with 10 threads.
  Using job-store ''Quartz.Simpl.RAMJobStore'' - which does not support persistence. and is not clustered.
', N'0', N'2020-08-07 14:49:19.578800', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'81F04B6E-F800-4731-8D6C-0EA3113935D5', N'Quartz.Impl.StdSchedulerFactory', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Quartz scheduler version: 3.1.0.0', N'0', N'2020-08-07 14:52:11.091300', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'8519089B-3C89-44C5-8649-4494184AAF96', N'Quartz.Core.QuartzScheduler', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Quartz Scheduler v.3.1.0.0 created.', N'0', N'2020-08-07 14:45:22.555100', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'86D79784-FB2E-4797-A240-7AAA4ED6019C', N'Quartz.Impl.StdSchedulerFactory', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Using object serializer: Quartz.Simpl.BinaryObjectSerializer, Quartz', N'0', N'2020-08-07 14:48:29.464200', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'8ACC4493-12A9-4885-99AB-89679164D416', N'Quartz.Impl.StdSchedulerFactory', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Using object serializer: Quartz.Simpl.BinaryObjectSerializer, Quartz', N'0', N'2020-08-07 14:52:10.542800', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'91E30A8C-8526-4C90-A446-84C51FC1A419', N'Quartz.Simpl.RAMJobStore', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'RAMJobStore initialized.', N'0', N'2020-08-07 14:45:22.587900', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'94FD4234-F4AD-4832-8B62-02E7ED979D5B', N'Quartz.Impl.StdSchedulerFactory', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Quartz scheduler version: 3.1.0.0', N'0', N'2020-08-07 14:45:37.802900', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'96B982F1-8825-424A-999E-E26CCE67A8AF', N'Quartz.Impl.StdSchedulerFactory', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Quartz scheduler version: 3.1.0.0', N'0', N'2020-08-07 14:46:10.960700', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'971B6004-6852-44CD-9284-82AA6431922E', N'Quartz.Core.SchedulerSignalerImpl', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Initialized Scheduler Signaller of type: Quartz.Core.SchedulerSignalerImpl', N'0', N'2020-08-07 14:52:10.955600', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'9951AB47-AB0A-4402-BA95-750221CF711E', N'Quartz.Core.SchedulerSignalerImpl', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Initialized Scheduler Signaller of type: Quartz.Core.SchedulerSignalerImpl', N'0', N'2020-08-07 14:45:37.668200', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'A07CF156-F330-46C3-893B-6B2E857C41F5', N'Quartz.Impl.StdSchedulerFactory', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Quartz scheduler version: 3.1.0.0', N'0', N'2020-08-07 14:45:22.692900', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'A170CBB5-3CB0-4E60-A3C4-D72D9D0FB8C1', N'Quartz.Core.QuartzScheduler', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Scheduler meta-data: Quartz Scheduler (v3.1.0.0) ''QuartzScheduler'' with instanceId ''NON_CLUSTERED''
  Scheduler class: ''Quartz.Core.QuartzScheduler'' - running locally.
  NOT STARTED.
  Currently in standby mode.
  Number of jobs executed: 0
  Using thread pool ''Quartz.Simpl.DefaultThreadPool'' - with 10 threads.
  Using job-store ''Quartz.Simpl.RAMJobStore'' - which does not support persistence. and is not clustered.
', N'0', N'2020-08-07 14:49:38.139800', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'A40AD544-63C7-48B9-9B0B-55B0F2B0E866', N'Quartz.Core.QuartzScheduler', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Scheduler meta-data: Quartz Scheduler (v3.1.0.0) ''QuartzScheduler'' with instanceId ''NON_CLUSTERED''
  Scheduler class: ''Quartz.Core.QuartzScheduler'' - running locally.
  NOT STARTED.
  Currently in standby mode.
  Number of jobs executed: 0
  Using thread pool ''Quartz.Simpl.DefaultThreadPool'' - with 10 threads.
  Using job-store ''Quartz.Simpl.RAMJobStore'' - which does not support persistence. and is not clustered.
', N'0', N'2020-08-07 14:47:47.857900', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'A4593A75-AD76-4027-840B-5CB35D56D0C8', N'Quartz.Core.SchedulerSignalerImpl', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Initialized Scheduler Signaller of type: Quartz.Core.SchedulerSignalerImpl', N'0', N'2020-08-07 14:47:47.766800', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'AE4CC701-4346-4656-B103-8ECA14885AB7', N'Quartz.Core.QuartzScheduler', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Quartz Scheduler v.3.1.0.0 created.', N'0', N'2020-08-07 14:45:37.693400', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'B007D4F9-42D6-4BB0-906A-07A26B83E888', N'Quartz.Core.QuartzScheduler', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Scheduler QuartzScheduler_$_NON_CLUSTERED started.', N'0', N'2020-08-07 14:49:19.757000', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'B6475725-CAAE-419D-B8E5-0FFA8BDEBE86', N'Quartz.Impl.StdSchedulerFactory', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Quartz scheduler ''QuartzScheduler'' initialized', N'0', N'2020-08-07 14:48:29.915600', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'B7954FE4-7684-4599-8F2C-DD21742F9CDA', N'Quartz.Impl.StdSchedulerFactory', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Quartz scheduler ''QuartzScheduler'' initialized', N'0', N'2020-08-07 14:47:47.883900', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'B87C246A-DB2B-42B1-97F4-B9FAF975BF1E', N'Quartz.Impl.StdSchedulerFactory', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Using object serializer: Quartz.Simpl.BinaryObjectSerializer, Quartz', N'0', N'2020-08-07 14:49:37.743100', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'B896BADE-2AC5-498C-AFA9-EFFC42694941', N'Quartz.Core.QuartzScheduler', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Scheduler meta-data: Quartz Scheduler (v3.1.0.0) ''QuartzScheduler'' with instanceId ''NON_CLUSTERED''
  Scheduler class: ''Quartz.Core.QuartzScheduler'' - running locally.
  NOT STARTED.
  Currently in standby mode.
  Number of jobs executed: 0
  Using thread pool ''Quartz.Simpl.DefaultThreadPool'' - with 10 threads.
  Using job-store ''Quartz.Simpl.RAMJobStore'' - which does not support persistence. and is not clustered.
', N'0', N'2020-08-07 14:45:22.620400', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'BD4FF932-7C83-442E-B3D9-A0B0A82C177E', N'Quartz.Core.QuartzScheduler', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Quartz Scheduler v.3.1.0.0 created.', N'0', N'2020-08-07 14:46:00.049900', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'C02F7299-A1E3-41E2-8923-FD6767CB9B51', N'Quartz.Impl.StdSchedulerFactory', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Using object serializer: Quartz.Simpl.BinaryObjectSerializer, Quartz', N'0', N'2020-08-07 14:49:19.173000', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'C1B4A0F0-0F2A-4C1F-A7C3-618366BF8516', N'Quartz.Simpl.RAMJobStore', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'RAMJobStore initialized.', N'0', N'2020-08-07 14:52:11.016400', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'C683EF52-896D-4B3B-B9BD-078D93D43915', N'Quartz.Simpl.RAMJobStore', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'RAMJobStore initialized.', N'0', N'2020-08-07 14:48:29.858100', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'C764A458-7383-4DC6-9B3C-B72B2C21A626', N'Quartz.Impl.StdSchedulerFactory', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Quartz scheduler ''QuartzScheduler'' initialized', N'0', N'2020-08-07 14:49:38.166000', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'C784E26B-963D-4338-BEA4-66CA0FAE84DD', N'Quartz.Core.SchedulerSignalerImpl', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Initialized Scheduler Signaller of type: Quartz.Core.SchedulerSignalerImpl', N'0', N'2020-08-07 14:47:34.167200', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'D2E3957F-7FC5-4954-98E3-7A7280166D89', N'Quartz.Simpl.RAMJobStore', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'RAMJobStore initialized.', N'0', N'2020-08-07 14:49:19.554900', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'D3F36C47-3771-4897-A465-212738723187', N'Quartz.Impl.StdSchedulerFactory', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Using object serializer: Quartz.Simpl.BinaryObjectSerializer, Quartz', N'0', N'2020-08-07 14:53:08.612800', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'D6F4A807-8401-4DA3-B0DD-521A2DCEC62F', N'Quartz.Core.QuartzScheduler', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Scheduler meta-data: Quartz Scheduler (v3.1.0.0) ''QuartzScheduler'' with instanceId ''NON_CLUSTERED''
  Scheduler class: ''Quartz.Core.QuartzScheduler'' - running locally.
  NOT STARTED.
  Currently in standby mode.
  Number of jobs executed: 0
  Using thread pool ''Quartz.Simpl.DefaultThreadPool'' - with 10 threads.
  Using job-store ''Quartz.Simpl.RAMJobStore'' - which does not support persistence. and is not clustered.
', N'0', N'2020-08-07 14:48:29.891300', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'D773F52F-8515-498C-9589-6B885DDEE0C5', N'Quartz.Core.QuartzScheduler', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Scheduler QuartzScheduler_$_NON_CLUSTERED started.', N'0', N'2020-08-07 14:53:09.205500', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'D8501359-7E7A-4A18-8C89-9D42CFB164EC', N'Quartz.Impl.StdSchedulerFactory', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Using object serializer: Quartz.Simpl.BinaryObjectSerializer, Quartz', N'0', N'2020-08-07 14:46:10.505700', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'E000B9F3-92D6-4339-918B-E76CE8BB50DA', N'Quartz.Core.QuartzScheduler', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Scheduler QuartzScheduler_$_NON_CLUSTERED started.', N'0', N'2020-08-07 14:49:38.305100', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'E0D6F1A3-EC40-4F52-B0DE-BB7E653721DE', N'Quartz.Core.QuartzScheduler', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Quartz Scheduler v.3.1.0.0 created.', N'0', N'2020-08-07 14:49:38.085600', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'E1443EC5-FFA1-49A0-B74E-C5CA050A1FDB', N'Quartz.Core.QuartzScheduler', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Quartz Scheduler v.3.1.0.0 created.', N'0', N'2020-08-07 14:48:29.827300', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'E14768A7-EE76-4F1A-B4E6-5D58A76B31A0', N'Quartz.Impl.StdSchedulerFactory', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Quartz scheduler version: 3.1.0.0', N'0', N'2020-08-07 14:48:29.939400', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'E35DE930-6E58-40DC-8750-98A7D7B9A2CB', N'Quartz.Core.QuartzScheduler', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Scheduler meta-data: Quartz Scheduler (v3.1.0.0) ''QuartzScheduler'' with instanceId ''NON_CLUSTERED''
  Scheduler class: ''Quartz.Core.QuartzScheduler'' - running locally.
  NOT STARTED.
  Currently in standby mode.
  Number of jobs executed: 0
  Using thread pool ''Quartz.Simpl.DefaultThreadPool'' - with 10 threads.
  Using job-store ''Quartz.Simpl.RAMJobStore'' - which does not support persistence. and is not clustered.
', N'0', N'2020-08-07 14:53:09.018900', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'E62DCE27-B0E3-41A2-9AFF-480E4134545B', N'Quartz.Core.QuartzScheduler', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Quartz Scheduler v.3.1.0.0 created.', N'0', N'2020-08-07 14:53:08.969000', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'E68CFD30-3FB0-49AB-8871-592507056B67', N'Quartz.Core.SchedulerSignalerImpl', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Initialized Scheduler Signaller of type: Quartz.Core.SchedulerSignalerImpl', N'0', N'2020-08-07 14:53:08.943300', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'E6F0A8C6-8178-49CE-945A-CAB5A87B548C', N'Quartz.Impl.StdSchedulerFactory', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Quartz scheduler version: 3.1.0.0', N'0', N'2020-08-07 14:53:09.074800', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'EA85E9DD-10D5-4DFF-9D1B-BBA18A2C4AF5', N'Quartz.Simpl.RAMJobStore', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'RAMJobStore initialized.', N'0', N'2020-08-07 14:46:00.077300', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'EBAC3C14-337B-493E-9E52-81ACC3935065', N'Quartz.Impl.StdSchedulerFactory', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Quartz scheduler ''QuartzScheduler'' initialized', N'0', N'2020-08-07 14:53:09.050900', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'EC31FE7B-7499-432E-A3E2-B31DDBE69999', N'Quartz.Impl.StdSchedulerFactory', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Using object serializer: Quartz.Simpl.BinaryObjectSerializer, Quartz', N'0', N'2020-08-07 14:47:47.419700', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'F6B2409F-0688-4C27-8137-D82F2E5F4DEF', N'Quartz.Impl.StdSchedulerFactory', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Quartz scheduler version: 3.1.0.0', N'0', N'2020-08-07 14:47:47.907800', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'F6CD3EA1-266F-4100-96C6-BA9CDFD9CB62', N'Quartz.Impl.StdSchedulerFactory', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Quartz scheduler version: 3.1.0.0', N'0', N'2020-08-07 14:46:00.151800', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'F93A1AE0-0FB2-4CB8-BF99-C23295032DC8', N'Quartz.Core.QuartzScheduler', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Quartz Scheduler v.3.1.0.0 created.', N'0', N'2020-08-07 14:44:45.071100', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'FE653997-A4B2-4660-8995-9EB2EA099CAA', N'Quartz.Impl.StdSchedulerFactory', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Using object serializer: Quartz.Simpl.BinaryObjectSerializer, Quartz', N'0', N'2020-08-07 14:45:59.664100', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'FED0F09A-8D7D-47B4-AABA-3BA1B156C0CD', N'Quartz.Core.QuartzScheduler', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Quartz Scheduler v.3.1.0.0 created.', N'0', N'2020-08-07 14:49:19.526800', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'FEF4D319-1FBE-43DB-BD5E-8BC083503A14', N'Quartz.Impl.StdSchedulerFactory', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Quartz scheduler ''QuartzScheduler'' initialized', N'0', N'2020-08-07 14:44:45.150300', N'')
GO
GO

-- ----------------------------
-- Table structure for Sys_Menu
-- ----------------------------
DROP TABLE [dbo].[Sys_Menu]
GO
CREATE TABLE [dbo].[Sys_Menu] (
[ID] nvarchar(36) NOT NULL ,
[Name] nvarchar(50) NULL ,
[Icon] nvarchar(50) NULL ,
[Path] nvarchar(50) NULL ,
[Component] nvarchar(255) NULL ,
[SortIndex] int NOT NULL ,
[ViewPower] nvarchar(50) NULL ,
[ParentUID] nvarchar(36) NULL ,
[Remark] nvarchar(100) NULL ,
[System] int NOT NULL DEFAULT ((0)) ,
[isFrame] bit NOT NULL DEFAULT ((0)) ,
[Hidden] bit NOT NULL DEFAULT ((0)) ,
[KeepAlive] bit NOT NULL DEFAULT ((0)) ,
[CreateTime] datetime NOT NULL ,
[UpdateTime] datetime NOT NULL ,
[CreateID] nvarchar(50) NOT NULL ,
[CreateName] nvarchar(100) NOT NULL ,
[UpdateID] nvarchar(50) NOT NULL ,
[UpdateName] nvarchar(100) NOT NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Menu', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'系统菜单'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Menu'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'系统菜单'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Menu'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Menu', 
'COLUMN', N'ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'UUID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Menu'
, @level2type = 'COLUMN', @level2name = N'ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'UUID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Menu'
, @level2type = 'COLUMN', @level2name = N'ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Menu', 
'COLUMN', N'Name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'菜单名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Menu'
, @level2type = 'COLUMN', @level2name = N'Name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'菜单名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Menu'
, @level2type = 'COLUMN', @level2name = N'Name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Menu', 
'COLUMN', N'Icon')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'图标'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Menu'
, @level2type = 'COLUMN', @level2name = N'Icon'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'图标'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Menu'
, @level2type = 'COLUMN', @level2name = N'Icon'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Menu', 
'COLUMN', N'Path')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'路由地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Menu'
, @level2type = 'COLUMN', @level2name = N'Path'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'路由地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Menu'
, @level2type = 'COLUMN', @level2name = N'Path'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Menu', 
'COLUMN', N'Component')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'组件路径'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Menu'
, @level2type = 'COLUMN', @level2name = N'Component'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'组件路径'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Menu'
, @level2type = 'COLUMN', @level2name = N'Component'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Menu', 
'COLUMN', N'SortIndex')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'默认排序'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Menu'
, @level2type = 'COLUMN', @level2name = N'SortIndex'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'默认排序'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Menu'
, @level2type = 'COLUMN', @level2name = N'SortIndex'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Menu', 
'COLUMN', N'ViewPower')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'浏览权限'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Menu'
, @level2type = 'COLUMN', @level2name = N'ViewPower'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'浏览权限'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Menu'
, @level2type = 'COLUMN', @level2name = N'ViewPower'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Menu', 
'COLUMN', N'ParentUID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'上级菜单'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Menu'
, @level2type = 'COLUMN', @level2name = N'ParentUID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'上级菜单'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Menu'
, @level2type = 'COLUMN', @level2name = N'ParentUID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Menu', 
'COLUMN', N'Remark')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Menu'
, @level2type = 'COLUMN', @level2name = N'Remark'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Menu'
, @level2type = 'COLUMN', @level2name = N'Remark'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Menu', 
'COLUMN', N'System')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'可用系统(0-PC，1-Wx)'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Menu'
, @level2type = 'COLUMN', @level2name = N'System'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'可用系统(0-PC，1-Wx)'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Menu'
, @level2type = 'COLUMN', @level2name = N'System'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Menu', 
'COLUMN', N'isFrame')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否外链'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Menu'
, @level2type = 'COLUMN', @level2name = N'isFrame'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否外链'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Menu'
, @level2type = 'COLUMN', @level2name = N'isFrame'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Menu', 
'COLUMN', N'Hidden')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否可见'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Menu'
, @level2type = 'COLUMN', @level2name = N'Hidden'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否可见'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Menu'
, @level2type = 'COLUMN', @level2name = N'Hidden'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Menu', 
'COLUMN', N'KeepAlive')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否缓存'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Menu'
, @level2type = 'COLUMN', @level2name = N'KeepAlive'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否缓存'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Menu'
, @level2type = 'COLUMN', @level2name = N'KeepAlive'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Menu', 
'COLUMN', N'CreateTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Menu'
, @level2type = 'COLUMN', @level2name = N'CreateTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Menu'
, @level2type = 'COLUMN', @level2name = N'CreateTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Menu', 
'COLUMN', N'UpdateTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Menu'
, @level2type = 'COLUMN', @level2name = N'UpdateTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Menu'
, @level2type = 'COLUMN', @level2name = N'UpdateTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Menu', 
'COLUMN', N'CreateID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建人编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Menu'
, @level2type = 'COLUMN', @level2name = N'CreateID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建人编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Menu'
, @level2type = 'COLUMN', @level2name = N'CreateID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Menu', 
'COLUMN', N'CreateName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Menu'
, @level2type = 'COLUMN', @level2name = N'CreateName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Menu'
, @level2type = 'COLUMN', @level2name = N'CreateName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Menu', 
'COLUMN', N'UpdateID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新人编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Menu'
, @level2type = 'COLUMN', @level2name = N'UpdateID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新人编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Menu'
, @level2type = 'COLUMN', @level2name = N'UpdateID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Menu', 
'COLUMN', N'UpdateName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Menu'
, @level2type = 'COLUMN', @level2name = N'UpdateName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Menu'
, @level2type = 'COLUMN', @level2name = N'UpdateName'
GO

-- ----------------------------
-- Records of Sys_Menu
-- ----------------------------
INSERT INTO [dbo].[Sys_Menu] ([ID], [Name], [Icon], [Path], [Component], [SortIndex], [ViewPower], [ParentUID], [Remark], [System], [isFrame], [Hidden], [KeepAlive], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'25041C8B-A18C-4D7C-9212-EB60F0EB7100', N'工序定义', N'app', N'productprocess', N'basic/productprocess/index', N'4', N'PRIV_PRODUCTPROCESS_VIEW', N'A2EDE2E3-CCC5-4A88-89A1-A84CDAF35DEE', null, N'0', N'0', N'0', N'0', N'2020-06-01 11:01:20.080', N'2020-06-19 16:12:01.500', N'9999', N'超威电源有限公司', N'9999', N'系统管理员')
GO
GO
INSERT INTO [dbo].[Sys_Menu] ([ID], [Name], [Icon], [Path], [Component], [SortIndex], [ViewPower], [ParentUID], [Remark], [System], [isFrame], [Hidden], [KeepAlive], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'30580EEA-A24D-4B52-B35B-E6489080705D', N'字典定义', N'doc', N'options', N'system/options/index', N'3', N'PRIV_OPTIONS_VIEW', N'651BBACF-7AB6-457C-88CC-BF4223B2D390', null, N'0', N'0', N'0', N'1', N'2020-06-01 21:43:49.150', N'2020-06-06 08:53:27.323', N'9999', N'超威电源有限公司', N'9999', N'超威电源有限公司')
GO
GO
INSERT INTO [dbo].[Sys_Menu] ([ID], [Name], [Icon], [Path], [Component], [SortIndex], [ViewPower], [ParentUID], [Remark], [System], [isFrame], [Hidden], [KeepAlive], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'54F26B7C-1958-42D5-B5CA-0ED22A3976F7', N'权限定义', N'validCode', N'powers', N'system/powers/index', N'2', N'PRIV_POWERS_VIEW', N'651BBACF-7AB6-457C-88CC-BF4223B2D390', null, N'0', N'0', N'0', N'1', N'2020-06-01 11:03:03.653', N'2020-06-13 16:28:14.790', N'9999', N'超威电源有限公司', N'9999', N'系统管理员')
GO
GO
INSERT INTO [dbo].[Sys_Menu] ([ID], [Name], [Icon], [Path], [Component], [SortIndex], [ViewPower], [ParentUID], [Remark], [System], [isFrame], [Hidden], [KeepAlive], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'59081379-67BA-459B-B5F3-EB5EED51BB60', N'在线统计', N'international', N'online', N'system/online/index', N'5', N'PRIV_ONLINE_VIEW', N'651BBACF-7AB6-457C-88CC-BF4223B2D390', null, N'0', N'0', N'0', N'0', N'2020-06-11 19:20:46.740', N'2020-06-11 21:42:25.183', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO
GO
INSERT INTO [dbo].[Sys_Menu] ([ID], [Name], [Icon], [Path], [Component], [SortIndex], [ViewPower], [ParentUID], [Remark], [System], [isFrame], [Hidden], [KeepAlive], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'651BBACF-7AB6-457C-88CC-BF4223B2D390', N'系统管理', N'system1', N'system', null, N'99', null, null, null, N'0', N'0', N'0', N'0', N'2020-06-05 17:20:34.447', N'2020-06-05 17:20:41.913', N'9999', N'超威电源有限公司', N'9999', N'超威电源有限公司')
GO
GO
INSERT INTO [dbo].[Sys_Menu] ([ID], [Name], [Icon], [Path], [Component], [SortIndex], [ViewPower], [ParentUID], [Remark], [System], [isFrame], [Hidden], [KeepAlive], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'6F3EEB92-7AB6-4E81-AE48-135A195EAC4D', N'用户角色', N'people', N'roleusers', N'users/roleusers/index', N'4', N'PRIV_ROLEUSERS_VIEW', N'7B670227-DE9C-4457-8AA3-D14295B07530', null, N'0', N'0', N'0', N'0', N'2020-06-04 16:14:25.717', N'2020-06-09 08:42:10.453', N'9999', N'超威电源有限公司', N'9999', N'超威电源有限公司')
GO
GO
INSERT INTO [dbo].[Sys_Menu] ([ID], [Name], [Icon], [Path], [Component], [SortIndex], [ViewPower], [ParentUID], [Remark], [System], [isFrame], [Hidden], [KeepAlive], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'6F8FFE5E-EE0E-4A36-B96F-5F48875CFC85', N'角色定义', N'role', N'roles', N'users/roles/index', N'2', N'PRIV_ROLES_VIEW', N'7B670227-DE9C-4457-8AA3-D14295B07530', null, N'0', N'0', N'0', N'1', N'2020-05-31 11:20:55.000', N'2020-06-14 01:19:41.440', N'9999', N'超威电源有限公司', N'9999', N'系统管理员')
GO
GO
INSERT INTO [dbo].[Sys_Menu] ([ID], [Name], [Icon], [Path], [Component], [SortIndex], [ViewPower], [ParentUID], [Remark], [System], [isFrame], [Hidden], [KeepAlive], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'77893F2F-F8EB-4A75-B7B9-CBD28B994973', N'公司定义', N'app', N'company', N'basic/company/index', N'1', N'PRIV_COMPANY_VIEW', N'A2EDE2E3-CCC5-4A88-89A1-A84CDAF35DEE', null, N'0', N'0', N'0', N'0', N'2020-05-31 11:20:55.000', N'2020-06-19 16:11:29.310', N'9999', N'超威电源有限公司', N'9999', N'系统管理员')
GO
GO
INSERT INTO [dbo].[Sys_Menu] ([ID], [Name], [Icon], [Path], [Component], [SortIndex], [ViewPower], [ParentUID], [Remark], [System], [isFrame], [Hidden], [KeepAlive], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'7B3B2EB8-45BB-458D-B4A8-0E1442531316', N'子设备定义', N'app', N'equipment', N'basic/equipment/index', N'6', N'PRIV_EQUIPMENT_VIEW', N'A2EDE2E3-CCC5-4A88-89A1-A84CDAF35DEE', null, N'0', N'0', N'0', N'0', N'2020-06-16 12:59:13.750', N'2020-06-19 16:12:47.223', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO
GO
INSERT INTO [dbo].[Sys_Menu] ([ID], [Name], [Icon], [Path], [Component], [SortIndex], [ViewPower], [ParentUID], [Remark], [System], [isFrame], [Hidden], [KeepAlive], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'7B670227-DE9C-4457-8AA3-D14295B07530', N'用户管理', N'peoples', N'users', null, N'98', null, null, null, N'0', N'0', N'0', N'0', N'2020-06-09 08:16:22.453', N'2020-06-09 08:16:30.773', N'9999', N'超威电源有限公司', N'9999', N'超威电源有限公司')
GO
GO
INSERT INTO [dbo].[Sys_Menu] ([ID], [Name], [Icon], [Path], [Component], [SortIndex], [ViewPower], [ParentUID], [Remark], [System], [isFrame], [Hidden], [KeepAlive], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'8C8F01CC-A34C-48A8-9774-01123161916B', N'系统日志', N'log', N'logger', N'system/logger/index', N'4', N'PRIV_LOGS_VIEW', N'651BBACF-7AB6-457C-88CC-BF4223B2D390', null, N'0', N'0', N'0', N'0', N'2020-06-11 13:34:51.017', N'2020-06-11 21:42:49.823', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO
GO
INSERT INTO [dbo].[Sys_Menu] ([ID], [Name], [Icon], [Path], [Component], [SortIndex], [ViewPower], [ParentUID], [Remark], [System], [isFrame], [Hidden], [KeepAlive], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'93D4E4F0-11C4-4C4C-B838-05CF3A565A81', N'个人中心', N'Steve-Jobs', N'center', N'users/center/index', N'6', null, N'7B670227-DE9C-4457-8AA3-D14295B07530', null, N'0', N'0', N'1', N'0', N'2020-06-16 22:00:17.763', N'2020-06-16 22:00:17.763', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO
GO
INSERT INTO [dbo].[Sys_Menu] ([ID], [Name], [Icon], [Path], [Component], [SortIndex], [ViewPower], [ParentUID], [Remark], [System], [isFrame], [Hidden], [KeepAlive], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'A2EDE2E3-CCC5-4A88-89A1-A84CDAF35DEE', N'基础信息', N'tree', N'basic', null, N'1', null, null, null, N'0', N'0', N'0', N'0', N'2020-05-31 11:20:55.000', N'2020-06-06 08:51:05.487', N'9999', N'超威电源有限公司', N'9999', N'超威电源有限公司')
GO
GO
INSERT INTO [dbo].[Sys_Menu] ([ID], [Name], [Icon], [Path], [Component], [SortIndex], [ViewPower], [ParentUID], [Remark], [System], [isFrame], [Hidden], [KeepAlive], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'A86D8C2E-87CB-4BE2-B55D-A64165D1C3FE', N'角色权限', N'permission', N'rolepowers', N'users/rolepowers/index', N'3', N'PRIV_ROLEPOWERS_VIEW', N'7B670227-DE9C-4457-8AA3-D14295B07530', null, N'0', N'0', N'0', N'1', N'2020-06-01 11:06:39.710', N'2020-06-14 01:19:48.680', N'9999', N'超威电源有限公司', N'9999', N'系统管理员')
GO
GO
INSERT INTO [dbo].[Sys_Menu] ([ID], [Name], [Icon], [Path], [Component], [SortIndex], [ViewPower], [ParentUID], [Remark], [System], [isFrame], [Hidden], [KeepAlive], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'B11607C3-F1C5-435D-B4DF-8F2C5A487E50', N'任务调度', N'timing', N'tasks', N'system/tasks/index', N'6', N'PRIV_TASKS_VIEW', N'651BBACF-7AB6-457C-88CC-BF4223B2D390', null, N'0', N'0', N'0', N'0', N'2020-06-18 14:58:58.970', N'2020-06-18 16:37:09.133', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO
GO
INSERT INTO [dbo].[Sys_Menu] ([ID], [Name], [Icon], [Path], [Component], [SortIndex], [ViewPower], [ParentUID], [Remark], [System], [isFrame], [Hidden], [KeepAlive], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'B182CDE0-610A-43D8-8619-BEE44AE4C2F8', N'设备定义', N'app', N'productline', N'basic/productline/index', N'5', N'PRIV_PRODUCTLINE_VIEW', N'A2EDE2E3-CCC5-4A88-89A1-A84CDAF35DEE', null, N'0', N'0', N'0', N'0', N'2020-06-01 10:59:36.203', N'2020-06-19 16:12:39.743', N'9999', N'超威电源有限公司', N'9999', N'系统管理员')
GO
GO
INSERT INTO [dbo].[Sys_Menu] ([ID], [Name], [Icon], [Path], [Component], [SortIndex], [ViewPower], [ParentUID], [Remark], [System], [isFrame], [Hidden], [KeepAlive], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'C3006273-F75D-11E8-9BA4-00059A3C7A00', N'菜单管理', N'menu', N'menus', N'system/menus/index', N'1', N'PRIV_MENUS_VIEW', N'651BBACF-7AB6-457C-88CC-BF4223B2D390', null, N'0', N'0', N'0', N'1', N'2020-05-31 11:20:55.000', N'2020-06-06 08:53:19.183', N'9999', N'超威电源有限公司', N'9999', N'超威电源有限公司')
GO
GO
INSERT INTO [dbo].[Sys_Menu] ([ID], [Name], [Icon], [Path], [Component], [SortIndex], [ViewPower], [ParentUID], [Remark], [System], [isFrame], [Hidden], [KeepAlive], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'E01AE23A-F75C-11E8-9BA4-00059A3C7A00', N'用户列表', N'user', N'users', N'users/users/index', N'1', N'PRIV_USERS_VIEW', N'7B670227-DE9C-4457-8AA3-D14295B07530', null, N'0', N'0', N'0', N'1', N'2020-05-31 11:20:55.000', N'2020-06-14 01:19:30.747', N'9999', N'超威电源有限公司', N'9999', N'系统管理员')
GO
GO
INSERT INTO [dbo].[Sys_Menu] ([ID], [Name], [Icon], [Path], [Component], [SortIndex], [ViewPower], [ParentUID], [Remark], [System], [isFrame], [Hidden], [KeepAlive], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'E8716862-C10B-4A74-844C-A0F378F7D2C3', N'工厂定义', N'app', N'factory', N'basic/factory/index', N'2', N'PRIV_FACTORY_VIEW', N'A2EDE2E3-CCC5-4A88-89A1-A84CDAF35DEE', null, N'0', N'0', N'0', N'0', N'2020-05-31 11:20:55.000', N'2020-06-19 16:11:40.923', N'9999', N'超威电源有限公司', N'9999', N'系统管理员')
GO
GO
INSERT INTO [dbo].[Sys_Menu] ([ID], [Name], [Icon], [Path], [Component], [SortIndex], [ViewPower], [ParentUID], [Remark], [System], [isFrame], [Hidden], [KeepAlive], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'F200F0E2-4B9C-4A3C-8102-8130096BF975', N'车间定义', N'app', N'workshop', N'basic/workshop/index', N'3', N'PRIV_WORKSHOP_VIEW', N'A2EDE2E3-CCC5-4A88-89A1-A84CDAF35DEE', null, N'0', N'0', N'0', N'0', N'2020-06-01 10:46:08.287', N'2020-06-19 16:12:08.960', N'9999', N'超威电源有限公司', N'9999', N'系统管理员')
GO
GO

-- ----------------------------
-- Table structure for Sys_Online
-- ----------------------------
DROP TABLE [dbo].[Sys_Online]
GO
CREATE TABLE [dbo].[Sys_Online] (
[UserID] nvarchar(50) NOT NULL ,
[SessionID] nvarchar(36) NOT NULL ,
[IPAddress] nvarchar(50) NULL ,
[LoginTime] datetime NULL ,
[UpdateTime] datetime NULL ,
[Source] nvarchar(50) NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Online', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'在线用户'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Online'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'在线用户'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Online'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Online', 
'COLUMN', N'UserID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Online'
, @level2type = 'COLUMN', @level2name = N'UserID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Online'
, @level2type = 'COLUMN', @level2name = N'UserID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Online', 
'COLUMN', N'SessionID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'会话'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Online'
, @level2type = 'COLUMN', @level2name = N'SessionID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'会话'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Online'
, @level2type = 'COLUMN', @level2name = N'SessionID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Online', 
'COLUMN', N'IPAddress')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'IP地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Online'
, @level2type = 'COLUMN', @level2name = N'IPAddress'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'IP地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Online'
, @level2type = 'COLUMN', @level2name = N'IPAddress'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Online', 
'COLUMN', N'LoginTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'登录时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Online'
, @level2type = 'COLUMN', @level2name = N'LoginTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'登录时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Online'
, @level2type = 'COLUMN', @level2name = N'LoginTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Online', 
'COLUMN', N'UpdateTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后操作时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Online'
, @level2type = 'COLUMN', @level2name = N'UpdateTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后操作时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Online'
, @level2type = 'COLUMN', @level2name = N'UpdateTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Online', 
'COLUMN', N'Source')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'来源'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Online'
, @level2type = 'COLUMN', @level2name = N'Source'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'来源'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Online'
, @level2type = 'COLUMN', @level2name = N'Source'
GO

-- ----------------------------
-- Records of Sys_Online
-- ----------------------------

-- ----------------------------
-- Table structure for Sys_Options
-- ----------------------------
DROP TABLE [dbo].[Sys_Options]
GO
CREATE TABLE [dbo].[Sys_Options] (
[ID] nvarchar(36) NOT NULL ,
[Option] nvarchar(50) NOT NULL ,
[Label] nvarchar(50) NOT NULL ,
[Value] nvarchar(50) NOT NULL ,
[SortIndex] int NOT NULL ,
[Remark] nvarchar(100) NULL ,
[CreateTime] datetime NOT NULL ,
[UpdateTime] datetime NOT NULL ,
[CreateID] nvarchar(50) NOT NULL ,
[CreateName] nvarchar(100) NOT NULL ,
[UpdateID] nvarchar(50) NOT NULL ,
[UpdateName] nvarchar(100) NOT NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Options', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'选项框字典'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Options'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'选项框字典'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Options'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Options', 
'COLUMN', N'ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'UUID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Options'
, @level2type = 'COLUMN', @level2name = N'ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'UUID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Options'
, @level2type = 'COLUMN', @level2name = N'ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Options', 
'COLUMN', N'Option')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'分组（System_Menus_Status）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Options'
, @level2type = 'COLUMN', @level2name = N'Option'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'分组（System_Menus_Status）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Options'
, @level2type = 'COLUMN', @level2name = N'Option'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Options', 
'COLUMN', N'Label')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Options'
, @level2type = 'COLUMN', @level2name = N'Label'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Options'
, @level2type = 'COLUMN', @level2name = N'Label'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Options', 
'COLUMN', N'Value')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'内容'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Options'
, @level2type = 'COLUMN', @level2name = N'Value'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'内容'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Options'
, @level2type = 'COLUMN', @level2name = N'Value'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Options', 
'COLUMN', N'SortIndex')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'排序'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Options'
, @level2type = 'COLUMN', @level2name = N'SortIndex'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'排序'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Options'
, @level2type = 'COLUMN', @level2name = N'SortIndex'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Options', 
'COLUMN', N'Remark')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Options'
, @level2type = 'COLUMN', @level2name = N'Remark'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Options'
, @level2type = 'COLUMN', @level2name = N'Remark'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Options', 
'COLUMN', N'CreateTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Options'
, @level2type = 'COLUMN', @level2name = N'CreateTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Options'
, @level2type = 'COLUMN', @level2name = N'CreateTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Options', 
'COLUMN', N'UpdateTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Options'
, @level2type = 'COLUMN', @level2name = N'UpdateTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Options'
, @level2type = 'COLUMN', @level2name = N'UpdateTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Options', 
'COLUMN', N'CreateID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建人编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Options'
, @level2type = 'COLUMN', @level2name = N'CreateID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建人编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Options'
, @level2type = 'COLUMN', @level2name = N'CreateID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Options', 
'COLUMN', N'CreateName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Options'
, @level2type = 'COLUMN', @level2name = N'CreateName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Options'
, @level2type = 'COLUMN', @level2name = N'CreateName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Options', 
'COLUMN', N'UpdateID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新人编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Options'
, @level2type = 'COLUMN', @level2name = N'UpdateID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新人编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Options'
, @level2type = 'COLUMN', @level2name = N'UpdateID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Options', 
'COLUMN', N'UpdateName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Options'
, @level2type = 'COLUMN', @level2name = N'UpdateName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Options'
, @level2type = 'COLUMN', @level2name = N'UpdateName'
GO

-- ----------------------------
-- Records of Sys_Options
-- ----------------------------
INSERT INTO [dbo].[Sys_Options] ([ID], [Option], [Label], [Value], [SortIndex], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'0F2EED72-EFF0-4DD5-8E68-316F0D2CC07B', N'SYSTEM_POWER_DESCRIPTION', N'审核', N'审核', N'5', null, N'2020-06-02 17:24:01.797', N'2020-06-02 17:24:01.797', N'9999', N'超威电源有限公司', N'9999', N'超威电源有限公司')
GO
GO
INSERT INTO [dbo].[Sys_Options] ([ID], [Option], [Label], [Value], [SortIndex], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'2A769FEA-4D41-4D48-A7CF-CD410207B96D', N'SYSTEM_MENU_SYSTEM', N'微信小程序', N'1', N'2', null, N'2020-06-02 14:05:33.683', N'2020-06-02 14:05:41.033', N'9999', N'超威电源有限公司', N'9999', N'超威电源有限公司')
GO
GO
INSERT INTO [dbo].[Sys_Options] ([ID], [Option], [Label], [Value], [SortIndex], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'35E47F7B-27A1-44BB-9924-D9F5FAB2073D', N'SYSTEM_POWER_DESCRIPTION', N'导出', N'导出', N'8', null, N'2020-06-02 17:24:55.433', N'2020-06-02 17:24:55.433', N'9999', N'超威电源有限公司', N'9999', N'超威电源有限公司')
GO
GO
INSERT INTO [dbo].[Sys_Options] ([ID], [Option], [Label], [Value], [SortIndex], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'4F2875AC-509E-45F7-B36E-0095FE4320D8', N'SYSTEM_POWER_DESCRIPTION', N'新增', N'新增', N'2', null, N'2020-06-02 17:23:18.970', N'2020-06-02 17:23:18.970', N'9999', N'超威电源有限公司', N'9999', N'超威电源有限公司')
GO
GO
INSERT INTO [dbo].[Sys_Options] ([ID], [Option], [Label], [Value], [SortIndex], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'518CEFB2-593A-40AB-A521-C875A74F2734', N'SYSTEM_MENU_SYSTEM', N'后台系统', N'0', N'1', null, N'2020-06-02 14:05:14.647', N'2020-06-04 20:49:40.110', N'9999', N'超威电源有限公司', N'9999', N'超威电源有限公司')
GO
GO
INSERT INTO [dbo].[Sys_Options] ([ID], [Option], [Label], [Value], [SortIndex], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'5EC52E51-8E96-4B90-BF8E-3917A47A2B85', N'SYSTEM_POWER_DESCRIPTION', N'撤销', N'撤销', N'6', null, N'2020-06-02 17:24:20.193', N'2020-06-02 17:24:20.193', N'9999', N'超威电源有限公司', N'9999', N'超威电源有限公司')
GO
GO
INSERT INTO [dbo].[Sys_Options] ([ID], [Option], [Label], [Value], [SortIndex], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'5F811745-CB10-489C-B392-1067EDE802E2', N'SYSTEM_POWER_DESCRIPTION', N'冲销', N'冲销', N'7', null, N'2020-06-02 17:24:41.450', N'2020-06-02 17:24:41.450', N'9999', N'超威电源有限公司', N'9999', N'超威电源有限公司')
GO
GO
INSERT INTO [dbo].[Sys_Options] ([ID], [Option], [Label], [Value], [SortIndex], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'68B49C70-21FB-49E8-921C-BCA641794588', N'SYSTEM_POWER_DESCRIPTION', N'删除', N'删除', N'4', null, N'2020-06-02 17:23:51.187', N'2020-06-02 17:23:51.187', N'9999', N'超威电源有限公司', N'9999', N'超威电源有限公司')
GO
GO
INSERT INTO [dbo].[Sys_Options] ([ID], [Option], [Label], [Value], [SortIndex], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'89C043F5-9230-4D27-8C1A-6B900586AD5A', N'SYSTEM_POWER_DESCRIPTION', N'浏览', N'浏览', N'1', null, N'2020-06-02 17:22:44.983', N'2020-06-02 17:22:44.983', N'9999', N'超威电源有限公司', N'9999', N'超威电源有限公司')
GO
GO
INSERT INTO [dbo].[Sys_Options] ([ID], [Option], [Label], [Value], [SortIndex], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'97D59D40-5BAE-4BC0-8772-C2CBECDD5418', N'SYSTEM_POWER_DESCRIPTION', N'编辑', N'编辑', N'3', null, N'2020-06-02 17:23:35.830', N'2020-06-02 17:23:35.830', N'9999', N'超威电源有限公司', N'9999', N'超威电源有限公司')
GO
GO

-- ----------------------------
-- Table structure for Sys_Power
-- ----------------------------
DROP TABLE [dbo].[Sys_Power]
GO
CREATE TABLE [dbo].[Sys_Power] (
[ID] nvarchar(36) NOT NULL ,
[Name] nvarchar(50) NOT NULL ,
[Page] nvarchar(50) NOT NULL ,
[Description] nvarchar(50) NOT NULL ,
[Remark] nvarchar(100) NULL ,
[CreateTime] datetime NOT NULL ,
[UpdateTime] datetime NOT NULL ,
[CreateID] nvarchar(50) NOT NULL ,
[CreateName] nvarchar(100) NOT NULL ,
[UpdateID] nvarchar(50) NOT NULL ,
[UpdateName] nvarchar(100) NOT NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Power', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'权限定义'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Power'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'权限定义'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Power'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Power', 
'COLUMN', N'ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'UUID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Power'
, @level2type = 'COLUMN', @level2name = N'ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'UUID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Power'
, @level2type = 'COLUMN', @level2name = N'ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Power', 
'COLUMN', N'Name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'权限标识'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Power'
, @level2type = 'COLUMN', @level2name = N'Name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'权限标识'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Power'
, @level2type = 'COLUMN', @level2name = N'Name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Power', 
'COLUMN', N'Page')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'系统页面'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Power'
, @level2type = 'COLUMN', @level2name = N'Page'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'系统页面'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Power'
, @level2type = 'COLUMN', @level2name = N'Page'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Power', 
'COLUMN', N'Description')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'权限描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Power'
, @level2type = 'COLUMN', @level2name = N'Description'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'权限描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Power'
, @level2type = 'COLUMN', @level2name = N'Description'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Power', 
'COLUMN', N'Remark')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Power'
, @level2type = 'COLUMN', @level2name = N'Remark'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Power'
, @level2type = 'COLUMN', @level2name = N'Remark'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Power', 
'COLUMN', N'CreateTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Power'
, @level2type = 'COLUMN', @level2name = N'CreateTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Power'
, @level2type = 'COLUMN', @level2name = N'CreateTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Power', 
'COLUMN', N'UpdateTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Power'
, @level2type = 'COLUMN', @level2name = N'UpdateTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Power'
, @level2type = 'COLUMN', @level2name = N'UpdateTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Power', 
'COLUMN', N'CreateID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建人编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Power'
, @level2type = 'COLUMN', @level2name = N'CreateID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建人编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Power'
, @level2type = 'COLUMN', @level2name = N'CreateID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Power', 
'COLUMN', N'CreateName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Power'
, @level2type = 'COLUMN', @level2name = N'CreateName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Power'
, @level2type = 'COLUMN', @level2name = N'CreateName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Power', 
'COLUMN', N'UpdateID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新人编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Power'
, @level2type = 'COLUMN', @level2name = N'UpdateID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新人编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Power'
, @level2type = 'COLUMN', @level2name = N'UpdateID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Power', 
'COLUMN', N'UpdateName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Power'
, @level2type = 'COLUMN', @level2name = N'UpdateName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Power'
, @level2type = 'COLUMN', @level2name = N'UpdateName'
GO

-- ----------------------------
-- Records of Sys_Power
-- ----------------------------
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'023091F4-5F0E-468C-B019-B39103AE5956', N'PRIV_COMPANY_UPDATE', N'公司定义', N'编辑', null, N'2020-06-09 13:39:53.447', N'2020-06-09 13:39:53.447', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'036BBC7E-6F06-4CE9-BD91-D50B0D63355C', N'PRIV_USERS_VIEW', N'用户管理', N'浏览', null, N'2020-05-31 11:20:18.000', N'2020-05-31 11:20:55.000', N'9999', N'超威电源有限公司', N'9999', N'超威电源有限公司')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'0613AC75-0849-42AB-9324-8F66AA7CF87F', N'PRIV_WORKSHOP_DELETE', N'车间定义', N'删除', null, N'2020-06-10 09:07:40.303', N'2020-06-10 09:07:40.303', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'07B70D40-89DF-43C3-BDF6-2725677522F8', N'PRIV_POWERS_VIEW', N'权限定义', N'浏览', null, N'2020-05-31 11:12:11.000', N'2020-05-31 11:20:55.000', N'9999', N'超威电源有限公司', N'9999', N'超威电源有限公司')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'0E2C14EA-870E-41BD-B229-D06427313DC2', N'PRIV_LOGS_VIEW', N'查看日志', N'浏览', null, N'2020-06-11 13:36:42.047', N'2020-06-11 13:36:42.047', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'0F61A3CE-2F7F-4594-97EE-70A008B2A767', N'PRIV_ROLEPOWERS_VIEW', N'角色权限', N'浏览', null, N'2020-05-31 11:13:09.000', N'2020-05-31 11:20:55.000', N'9999', N'超威电源有限公司', N'9999', N'超威电源有限公司')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'15BECF0F-6F81-4117-9427-CA8C98618D88', N'PRIV_ROLEPOWERS_UPDATE', N'角色权限', N'编辑', null, N'2020-05-31 11:13:10.000', N'2020-05-31 11:20:55.000', N'9999', N'超威电源有限公司', N'9999', N'超威电源有限公司')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'16B7F104-BADD-4B61-B81E-034651BC20D5', N'PRIV_OPTIONS_UPDATE', N'字典定义', N'编辑', null, N'2020-05-02 13:40:28.707', N'2020-06-02 13:40:05.707', N'9999', N'超威电源有限公司', N'9999', N'超威电源有限公司')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'2AB67949-470B-4D54-814E-490D046DE392', N'PRIV_WORKSHOP_VIEW', N'车间定义', N'浏览', null, N'2020-06-10 09:06:50.753', N'2020-06-10 09:06:50.753', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'2E78189A-F7B0-4954-B90C-679606BBCA21', N'PRIV_FACTORY_CREATE', N'工厂定义', N'新增', null, N'2020-06-09 15:16:55.193', N'2020-06-09 15:16:55.193', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'30A06F2A-1270-4F1B-B7E1-B07663499450', N'PRIV_MENUS_UPDATE', N'菜单管理', N'编辑', null, N'2020-05-31 11:10:03.000', N'2020-05-31 11:20:55.000', N'9999', N'超威电源有限公司', N'9999', N'超威电源有限公司')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'359506E3-1335-41AA-8C86-36E2294D195F', N'PRIV_TASKS_DELETE', N'计划任务', N'删除', null, N'2020-06-18 15:03:44.180', N'2020-06-18 15:03:44.180', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'3639F31F-6F68-40C6-AC12-74FB387B8960', N'PRIV_USERS_DELETE', N'用户管理', N'删除', null, N'2020-05-31 11:20:19.000', N'2020-05-31 11:20:55.000', N'9999', N'超威电源有限公司', N'9999', N'超威电源有限公司')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'364F325B-B927-471C-A89D-DCB91B823B2C', N'PRIV_MENUS_CREATE', N'菜单管理', N'新增', null, N'2020-05-31 11:10:02.000', N'2020-05-31 11:20:55.000', N'9999', N'超威电源有限公司', N'9999', N'超威电源有限公司')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'3F8D1153-E456-446F-9D61-3AFFAFF07F3C', N'PRIV_FACTORY_DELETE', N'工厂定义', N'删除', null, N'2020-06-09 15:17:24.903', N'2020-06-09 15:17:24.903', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'449A124A-92C5-4872-8BEE-D71F894EDA0F', N'PRIV_PRODUCTLINE_VIEW', N'产线定义', N'浏览', null, N'2020-06-10 09:47:09.477', N'2020-06-10 09:47:09.477', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'45665B2E-5AE3-4692-8B80-03D2CBDE876C', N'PRIV_TASKS_CREATE', N'计划任务', N'新增', null, N'2020-06-18 15:02:48.760', N'2020-06-18 15:02:48.760', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'477DE876-4D91-49CD-B209-996FE605279D', N'PRIV_COMPANY_DELETE', N'公司定义', N'删除', null, N'2020-06-09 13:40:39.613', N'2020-06-09 13:40:39.613', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'4E2A1592-ED10-4A18-9C37-876D7CAF6727', N'PRIV_EQUIPMENT_UPDATE', N'设备定义', N'编辑', null, N'2020-06-16 13:02:12.873', N'2020-06-16 13:02:12.873', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'520D7B3D-4AC5-41B1-A9FD-7436DC17935C', N'PRIV_PRODUCTPROCESS_UPDATE', N'工序定义', N'编辑', null, N'2020-06-10 20:08:03.447', N'2020-06-10 20:08:03.447', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'52D8FA71-7252-44B5-9B17-FFC0640D631D', N'PRIV_OPTIONS_DELETE', N'字典定义', N'删除', null, N'2020-05-02 13:40:29.660', N'2020-06-02 13:40:21.660', N'9999', N'超威电源有限公司', N'9999', N'超威电源有限公司')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'52DB0AA1-6D36-4AD4-9036-0533C096B740', N'PRIV_TASKS_VIEW', N'计划任务', N'浏览', null, N'2020-06-18 15:02:31.927', N'2020-06-18 15:02:31.927', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'553089CD-882F-47C6-8EB4-74A28C7AECC0', N'PRIV_PRODUCTPROCESS_CREATE', N'工序定义', N'新增', null, N'2020-06-10 20:07:52.263', N'2020-06-10 20:07:52.263', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'5D2F0A1D-8C79-4253-BB35-4D304AC70ED2', N'PRIV_FACTORY_VIEW', N'工厂定义', N'浏览', null, N'2020-06-09 15:16:36.190', N'2020-06-09 15:16:36.190', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'5D4FE5C0-D927-4689-9481-B3D8BECA68DE', N'PRIV_EQUIPMENT_VIEW', N'设备定义', N'浏览', null, N'2020-06-16 13:01:20.503', N'2020-06-16 13:01:20.503', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'602A7D4E-4299-43B1-B6DD-EB7FCE409609', N'PRIV_ROLES_VIEW', N'角色定义', N'浏览', null, N'2020-05-31 11:11:05.000', N'2020-05-31 11:20:55.000', N'9999', N'超威电源有限公司', N'9999', N'超威电源有限公司')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'60E6CA5B-9B96-41CE-8E7F-C84C514D1DFD', N'PRIV_PRODUCTLINE_UPDATE', N'产线定义', N'编辑', null, N'2020-06-10 09:47:36.977', N'2020-06-10 09:47:36.977', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'61DF6DFD-6D26-448C-8D80-00341535617D', N'PRIV_MENUS_VIEW', N'菜单管理', N'浏览', null, N'2020-05-31 11:10:01.000', N'2020-05-31 11:20:55.000', N'9999', N'超威电源有限公司', N'9999', N'超威电源有限公司')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'6649B278-C5D2-4601-98E1-57FE4A531A74', N'PRIV_COMPANY_CREATE', N'公司定义', N'新增', null, N'2020-06-09 13:38:25.437', N'2020-06-09 13:38:25.437', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'66B84E36-F2D0-4847-97A9-2ACFFC9EE6FE', N'PRIV_POWERS_UPDATE', N'权限定义', N'编辑', null, N'2020-05-31 11:12:13.000', N'2020-05-31 11:20:55.000', N'9999', N'超威电源有限公司', N'9999', N'超威电源有限公司')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'67D7CDCE-CC5E-41B3-B9F6-55A4D2DCC8D8', N'PRIV_ROLES_UPDATE', N'角色定义', N'编辑', null, N'2020-05-31 11:11:07.000', N'2020-05-31 11:20:55.000', N'9999', N'超威电源有限公司', N'9999', N'超威电源有限公司')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'6999B413-3C9B-471C-B1EF-48AA2D4DE794', N'PRIV_USERS_RESETPASSWD', N'用户管理', N'重置密码', null, N'2020-05-31 11:20:20.000', N'2020-05-31 11:20:55.000', N'9999', N'超威电源有限公司', N'9999', N'超威电源有限公司')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'7E1350CF-765A-41E9-AF80-84C5CBFC7E5C', N'PRIV_TASKS_UPDATE', N'计划任务', N'编辑', null, N'2020-06-18 15:03:07.823', N'2020-06-18 15:03:07.823', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'80F773D3-2E05-41C2-B33F-64880A63264D', N'PRIV_EQUIPMENT_CREATE', N'设备定义', N'新增', null, N'2020-06-16 13:01:50.803', N'2020-06-16 13:01:50.803', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'8291C9BB-04B7-4DAE-BB81-F1CB3368A292', N'PRIV_MENUS_DELETE', N'菜单管理', N'删除', null, N'2020-05-31 11:10:04.000', N'2020-05-31 11:20:55.000', N'9999', N'超威电源有限公司', N'9999', N'超威电源有限公司')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'85DD7A0C-D06F-427D-8450-D95ED2D308CA', N'PRIV_ROLES_CREATE', N'角色定义', N'新增', null, N'2020-05-31 11:11:06.000', N'2020-05-31 11:20:55.000', N'9999', N'超威电源有限公司', N'9999', N'超威电源有限公司')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'8660B6E2-2A99-4C6B-9E96-0C1CF2CA0D63', N'PRIV_PRODUCTLINE_CREATE', N'产线定义', N'新增', null, N'2020-06-10 09:47:22.787', N'2020-06-10 09:47:22.787', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'875A2C25-25BC-4766-9609-703942573AB0', N'PRIV_POWERS_CREATE', N'权限定义', N'新增', null, N'2020-05-31 11:12:12.000', N'2020-05-31 11:20:55.000', N'9999', N'超威电源有限公司', N'9999', N'超威电源有限公司')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'886906DC-BC49-4BE9-B8DD-7DAF4BD103CB', N'PRIV_ROLEUSERS_DELETE', N'用户角色', N'删除', null, N'2020-05-31 11:13:23.000', N'2020-05-31 11:20:55.000', N'9999', N'超威电源有限公司', N'9999', N'超威电源有限公司')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'96C5BD50-B365-48A1-BDA7-6703DC1A3049', N'PRIV_PRODUCTPROCESS_DELETE', N'工序定义', N'删除', null, N'2020-06-10 20:08:15.350', N'2020-06-10 20:08:15.350', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'96DB4CA9-9F93-4ED1-BE55-DC12B467F778', N'PRIV_FACTORY_UPDATE', N'工厂定义', N'编辑', null, N'2020-06-09 15:17:09.520', N'2020-06-09 15:17:09.520', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'A3641961-3EB9-46C9-91E6-4AE0C7D3467E', N'PRIV_OPTIONS_CREATE', N'字典定义', N'新增', null, N'2020-05-02 13:39:27.830', N'2020-06-02 13:39:48.830', N'9999', N'超威电源有限公司', N'9999', N'超威电源有限公司')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'A388DB44-82BD-458D-A0FA-E54FCAEE91B7', N'PRIV_ROLEUSERS_CREATE', N'用户角色', N'新增', null, N'2020-05-31 11:13:22.000', N'2020-05-31 11:20:55.000', N'9999', N'超威电源有限公司', N'9999', N'超威电源有限公司')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'A8ED6E2E-57BC-47FA-A1E0-D2E109AA8E42', N'PRIV_USERS_UPDATE', N'用户管理', N'编辑', null, N'2020-05-31 11:20:17.000', N'2020-05-31 11:20:55.000', N'9999', N'超威电源有限公司', N'9999', N'超威电源有限公司')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'B1D2FF18-089F-4138-92DC-DF280F50BE87', N'PRIV_POWERS_DELETE', N'权限定义', N'删除', null, N'2020-05-31 11:12:14.000', N'2020-05-31 11:20:55.000', N'9999', N'超威电源有限公司', N'9999', N'超威电源有限公司')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'B240D13D-C29E-4A38-8888-F77BDD527FD7', N'PRIV_COMPANY_VIEW', N'公司定义', N'浏览', null, N'2020-06-09 13:40:19.087', N'2020-06-09 13:40:19.087', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'B54EBA59-D23B-4BE6-B3E4-6BCC5B6D13FE', N'PRIV_EQUIPMENT_DELETE', N'设备定义', N'删除', null, N'2020-06-16 13:02:37.713', N'2020-06-16 13:02:37.713', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'B551C6A4-2987-470D-B33B-BDB7488FD65E', N'PRIV_WORKSHOP_UPDATE', N'车间定义', N'编辑', null, N'2020-06-10 09:07:27.753', N'2020-06-10 09:07:27.753', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'BDE4354E-766B-4A55-A0DD-05A4740191DA', N'PRIV_ONLINE_DELETE', N'在线统计', N'删除', null, N'2020-05-31 11:20:25.000', N'2020-05-31 11:20:55.000', N'9999', N'超威电源有限公司', N'9999', N'超威电源有限公司')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'C00F0F28-8FDC-43F6-84FD-560D65A8D256', N'PRIV_ROLEUSERS_VIEW', N'用户角色', N'浏览', null, N'2020-05-31 11:13:21.000', N'2020-05-31 11:20:55.000', N'9999', N'超威电源有限公司', N'9999', N'超威电源有限公司')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'C814983F-3700-49A3-A53D-53ECFC7A2B4A', N'PRIV_PRODUCTPROCESS_VIEW', N'工序定义', N'浏览', null, N'2020-06-10 20:07:33.373', N'2020-06-10 20:07:33.373', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'C8E8AAE1-2177-4EDE-9E44-D24DADD2FF6E', N'PRIV_WORKSHOP_CREATE', N'车间定义', N'新增', null, N'2020-06-10 09:07:05.593', N'2020-06-10 09:07:05.593', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'CB127108-AA42-42A4-9CD0-2E194BC0C83B', N'PRIV_ONLINE_VIEW', N'在线统计', N'浏览', null, N'2020-05-31 11:20:24.000', N'2020-05-31 11:20:55.000', N'9999', N'超威电源有限公司', N'9999', N'超威电源有限公司')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'CEE73221-EE0C-442A-B53D-31021DC8836E', N'PRIV_USERS_CREATE', N'用户管理', N'新增', null, N'2020-05-31 11:20:16.000', N'2020-05-31 11:20:55.000', N'9999', N'超威电源有限公司', N'9999', N'超威电源有限公司')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'E702C145-BF21-4896-92CD-447936C680C3', N'PRIV_OPTIONS_VIEW', N'字典定义', N'浏览', null, N'2020-05-02 13:39:26.360', N'2020-06-02 13:39:33.360', N'9999', N'超威电源有限公司', N'9999', N'超威电源有限公司')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'EADF9CB3-A81C-42D7-9E88-15FAD08AED00', N'PRIV_ROLES_DELETE', N'角色定义', N'删除', null, N'2020-05-31 11:11:08.000', N'2020-05-31 11:20:55.000', N'9999', N'超威电源有限公司', N'9999', N'超威电源有限公司')
GO
GO
INSERT INTO [dbo].[Sys_Power] ([ID], [Name], [Page], [Description], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'F4EB78E0-9783-45F0-BA53-A0F18263228C', N'PRIV_PRODUCTLINE_DELETE', N'产线定义', N'删除', null, N'2020-06-10 09:47:51.867', N'2020-06-10 09:47:51.867', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO
GO

-- ----------------------------
-- Table structure for Sys_Role
-- ----------------------------
DROP TABLE [dbo].[Sys_Role]
GO
CREATE TABLE [dbo].[Sys_Role] (
[ID] nvarchar(36) NOT NULL ,
[Name] nvarchar(50) NOT NULL ,
[Remark] nvarchar(100) NULL ,
[CreateTime] datetime NOT NULL ,
[UpdateTime] datetime NOT NULL ,
[CreateID] nvarchar(50) NOT NULL ,
[CreateName] nvarchar(100) NOT NULL ,
[UpdateID] nvarchar(50) NOT NULL ,
[UpdateName] nvarchar(100) NOT NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Role', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'角色定义'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Role'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'角色定义'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Role'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Role', 
'COLUMN', N'ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Role'
, @level2type = 'COLUMN', @level2name = N'ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Role'
, @level2type = 'COLUMN', @level2name = N'ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Role', 
'COLUMN', N'Name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'角色名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Role'
, @level2type = 'COLUMN', @level2name = N'Name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'角色名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Role'
, @level2type = 'COLUMN', @level2name = N'Name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Role', 
'COLUMN', N'Remark')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Role'
, @level2type = 'COLUMN', @level2name = N'Remark'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Role'
, @level2type = 'COLUMN', @level2name = N'Remark'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Role', 
'COLUMN', N'CreateTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Role'
, @level2type = 'COLUMN', @level2name = N'CreateTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Role'
, @level2type = 'COLUMN', @level2name = N'CreateTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Role', 
'COLUMN', N'UpdateTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Role'
, @level2type = 'COLUMN', @level2name = N'UpdateTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Role'
, @level2type = 'COLUMN', @level2name = N'UpdateTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Role', 
'COLUMN', N'CreateID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建人编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Role'
, @level2type = 'COLUMN', @level2name = N'CreateID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建人编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Role'
, @level2type = 'COLUMN', @level2name = N'CreateID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Role', 
'COLUMN', N'CreateName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Role'
, @level2type = 'COLUMN', @level2name = N'CreateName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Role'
, @level2type = 'COLUMN', @level2name = N'CreateName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Role', 
'COLUMN', N'UpdateID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新人编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Role'
, @level2type = 'COLUMN', @level2name = N'UpdateID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新人编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Role'
, @level2type = 'COLUMN', @level2name = N'UpdateID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Role', 
'COLUMN', N'UpdateName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Role'
, @level2type = 'COLUMN', @level2name = N'UpdateName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Role'
, @level2type = 'COLUMN', @level2name = N'UpdateName'
GO

-- ----------------------------
-- Records of Sys_Role
-- ----------------------------
INSERT INTO [dbo].[Sys_Role] ([ID], [Name], [Remark], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'系统管理员', N'系统内置', N'2020-05-31 10:20:55.000', N'2020-06-04 20:52:52.133', N'9999', N'超威电源有限公司', N'9999', N'超威电源有限公司')
GO
GO

-- ----------------------------
-- Table structure for Sys_RolePower
-- ----------------------------
DROP TABLE [dbo].[Sys_RolePower]
GO
CREATE TABLE [dbo].[Sys_RolePower] (
[ID] nvarchar(36) NOT NULL ,
[RoleUID] nvarchar(36) NOT NULL ,
[PowerUID] nvarchar(36) NOT NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_RolePower', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'角色权限'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_RolePower'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'角色权限'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_RolePower'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_RolePower', 
'COLUMN', N'ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'UUID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_RolePower'
, @level2type = 'COLUMN', @level2name = N'ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'UUID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_RolePower'
, @level2type = 'COLUMN', @level2name = N'ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_RolePower', 
'COLUMN', N'RoleUID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'角色ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_RolePower'
, @level2type = 'COLUMN', @level2name = N'RoleUID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'角色ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_RolePower'
, @level2type = 'COLUMN', @level2name = N'RoleUID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_RolePower', 
'COLUMN', N'PowerUID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'权限ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_RolePower'
, @level2type = 'COLUMN', @level2name = N'PowerUID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'权限ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_RolePower'
, @level2type = 'COLUMN', @level2name = N'PowerUID'
GO

-- ----------------------------
-- Records of Sys_RolePower
-- ----------------------------
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'01B31388-CF9D-4B5D-9C69-B71FC1A11FF8', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'B240D13D-C29E-4A38-8888-F77BDD527FD7')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'03554A78-6B94-4058-A648-3F2D294DC8A8', N'D5B0D24B-9C5F-4ECC-B278-9A5B8A9F6F22', N'85DD7A0C-D06F-427D-8450-D95ED2D308CA')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'054E2027-240A-4E9C-8E59-48EC4A295EF9', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'8660B6E2-2A99-4C6B-9E96-0C1CF2CA0D63')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'05E4C301-B78A-42CE-AB4A-32F5578DE065', N'773B10E5-AC44-45A3-A6E0-FBA17ACD34C5', N'0E2C14EA-870E-41BD-B229-D06427313DC2')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'0EC29179-FCC6-40E8-81D8-A845138BBC98', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'07B70D40-89DF-43C3-BDF6-2725677522F8')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'12E0C44B-EB8F-4CA4-BBC8-1DDDF76BEEFE', N'D5B0D24B-9C5F-4ECC-B278-9A5B8A9F6F22', N'07B70D40-89DF-43C3-BDF6-2725677522F8')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'19427C14-FDB7-476A-94CF-36E6799D0E39', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'0F61A3CE-2F7F-4594-97EE-70A008B2A767')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'1A263746-371D-43D5-9EF3-ACC00687C290', N'45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', N'8660B6E2-2A99-4C6B-9E96-0C1CF2CA0D63')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'1FB863D0-5238-43C3-84BD-22D02F6DBE39', N'45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', N'4E2A1592-ED10-4A18-9C37-876D7CAF6727')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'205D7FEA-D2B2-4070-AFA2-8DBDC0297530', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'520D7B3D-4AC5-41B1-A9FD-7436DC17935C')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'20F802F7-C9F3-4F75-9334-4B15240363C3', N'45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', N'60E6CA5B-9B96-41CE-8E7F-C84C514D1DFD')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'21D24C70-EBFF-4D79-83F2-165A413A563B', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'80F773D3-2E05-41C2-B33F-64880A63264D')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'2440AACE-904C-425C-A452-88D7F713EFCE', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'60E6CA5B-9B96-41CE-8E7F-C84C514D1DFD')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'26C3DF20-BB95-49E8-9008-D2882D408306', N'D5B0D24B-9C5F-4ECC-B278-9A5B8A9F6F22', N'B1D2FF18-089F-4138-92DC-DF280F50BE87')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'26DF9BEE-0368-4B41-8F2D-AC49BEBA8399', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'61DF6DFD-6D26-448C-8D80-00341535617D')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'2A53B71D-6F77-4818-94FB-40EB70F0E563', N'D5B0D24B-9C5F-4ECC-B278-9A5B8A9F6F22', N'0F61A3CE-2F7F-4594-97EE-70A008B2A767')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'2DE180B9-38AF-484C-B1F8-1FF1ECFD4391', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'45665B2E-5AE3-4692-8B80-03D2CBDE876C')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'2EDE54EE-2DBC-4845-B0EF-BE4F45D32AC6', N'45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', N'15BECF0F-6F81-4117-9427-CA8C98618D88')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'328BF647-3A41-4155-992A-E597CA03A189', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'3F8D1153-E456-446F-9D61-3AFFAFF07F3C')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'368FF0C2-D1AD-45F1-803B-7EF5F05159EE', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'6999B413-3C9B-471C-B1EF-48AA2D4DE794')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'379BE734-7D15-498A-815A-9AF25A7AA75C', N'45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', N'B54EBA59-D23B-4BE6-B3E4-6BCC5B6D13FE')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'37C9F8CD-39B6-4D5C-9BE0-14CF0B90B9D7', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'8291C9BB-04B7-4DAE-BB81-F1CB3368A292')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'38E52DA2-B2F4-4751-80C2-AD1FA03FBAC0', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'A3641961-3EB9-46C9-91E6-4AE0C7D3467E')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'3C143662-AD4B-4870-B1C1-737969927BD7', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'449A124A-92C5-4872-8BEE-D71F894EDA0F')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'3CC6A98E-7D7A-4397-98B2-3EF5D384FE59', N'45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', N'CB127108-AA42-42A4-9CD0-2E194BC0C83B')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'3E370C05-4420-4E6F-B80D-B3543A3497E2', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'52DB0AA1-6D36-4AD4-9036-0533C096B740')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'3E78F3DE-FF25-4066-81AA-20E21D9EB6C2', N'45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', N'5D4FE5C0-D927-4689-9481-B3D8BECA68DE')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'40B73275-0AE6-488F-B5CB-4A956B61E3B8', N'D5B0D24B-9C5F-4ECC-B278-9A5B8A9F6F22', N'15BECF0F-6F81-4117-9427-CA8C98618D88')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'4878BA09-0CB3-45D8-9C87-0C197BB6BB29', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'359506E3-1335-41AA-8C86-36E2294D195F')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'4BB7A016-7EA5-4BBB-B2E2-73031E2174E1', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'B1D2FF18-089F-4138-92DC-DF280F50BE87')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'4DA7E3EB-73FE-40CC-AC01-0EB847E45A2C', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'16B7F104-BADD-4B61-B81E-034651BC20D5')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'4E131188-75F3-4E26-BF38-1A304BB5FA64', N'D5B0D24B-9C5F-4ECC-B278-9A5B8A9F6F22', N'875A2C25-25BC-4766-9609-703942573AB0')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'4EC59F71-3CAB-437E-BED2-E5F6F3108A3E', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'4E2A1592-ED10-4A18-9C37-876D7CAF6727')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'521013FE-EF59-44E8-812D-E06D46D1AFE7', N'D5B0D24B-9C5F-4ECC-B278-9A5B8A9F6F22', N'66B84E36-F2D0-4847-97A9-2ACFFC9EE6FE')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'598CD65B-6AFD-493C-AF68-AC5ADE57A69D', N'BDDF39A0-D30C-466A-AC4E-34D03471B446', N'CB127108-AA42-42A4-9CD0-2E194BC0C83B')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'5C1CAEC4-3BE1-415F-A36B-C98C151018E6', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'036BBC7E-6F06-4CE9-BD91-D50B0D63355C')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'60C921DA-8080-4898-9F07-7F3133F3E828', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'2E78189A-F7B0-4954-B90C-679606BBCA21')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'63CD3AE8-5191-4CCD-8898-81C1F2FF1A0F', N'45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', N'A8ED6E2E-57BC-47FA-A1E0-D2E109AA8E42')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'642F4230-8E77-4067-B666-251B4899AE23', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'0613AC75-0849-42AB-9324-8F66AA7CF87F')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'64647B29-E82A-4046-96AC-63EC742DF2D4', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'30A06F2A-1270-4F1B-B7E1-B07663499450')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'65D87D91-5F3B-4062-B19E-01A83E91A679', N'45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', N'0E2C14EA-870E-41BD-B229-D06427313DC2')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'6920C4EE-2E8F-44A7-8808-CCFA450C3550', N'45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', N'0F61A3CE-2F7F-4594-97EE-70A008B2A767')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'6CB9E70E-EA15-47B4-A044-ED990703E054', N'15AAE006-71F8-4775-85CD-06224FD57180', N'0E2C14EA-870E-41BD-B229-D06427313DC2')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'6F424536-4ECE-4303-B286-578623E01B3A', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'0E2C14EA-870E-41BD-B229-D06427313DC2')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'7264E31C-ED96-4643-806D-6A014F5481D6', N'45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', N'CEE73221-EE0C-442A-B53D-31021DC8836E')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'736A9FC8-9481-45BF-9F5F-F780AC210EAD', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'553089CD-882F-47C6-8EB4-74A28C7AECC0')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'7508CB00-A693-4F23-8436-3AB81D2AACD2', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'BDE4354E-766B-4A55-A0DD-05A4740191DA')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'7AFC5773-90FE-444A-BA17-595F4880A270', N'45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', N'80F773D3-2E05-41C2-B33F-64880A63264D')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'7E29B443-7930-446E-B323-8D8FE1D55516', N'45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', N'F4EB78E0-9783-45F0-BA53-A0F18263228C')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'7E4DF0C9-92FD-4146-879D-EE6E2E892435', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'5D2F0A1D-8C79-4253-BB35-4D304AC70ED2')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'807E91D2-5603-4BCC-B797-3454066A58DA', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'A8ED6E2E-57BC-47FA-A1E0-D2E109AA8E42')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'81998671-BD80-457B-ADAF-ACEA74522BF8', N'D5B0D24B-9C5F-4ECC-B278-9A5B8A9F6F22', N'886906DC-BC49-4BE9-B8DD-7DAF4BD103CB')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'841A48D1-0BB8-43AB-8CA5-F7AC28819447', N'773B10E5-AC44-45A3-A6E0-FBA17ACD34C5', N'CB127108-AA42-42A4-9CD0-2E194BC0C83B')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'85F0075D-AFF3-4AA5-A8EA-D72957986DE5', N'D5B0D24B-9C5F-4ECC-B278-9A5B8A9F6F22', N'EADF9CB3-A81C-42D7-9E88-15FAD08AED00')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'8652EF78-6AE1-493C-964D-0BBC5530EE03', N'D5B0D24B-9C5F-4ECC-B278-9A5B8A9F6F22', N'602A7D4E-4299-43B1-B6DD-EB7FCE409609')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'878C783D-1AB4-4509-905F-14C91534397D', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'602A7D4E-4299-43B1-B6DD-EB7FCE409609')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'8B60BD4A-C2E8-4CAD-BD8E-B1D7E748F209', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'2AB67949-470B-4D54-814E-490D046DE392')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'95659D2C-AF7F-4318-8A17-03BF7B0EB369', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'C8E8AAE1-2177-4EDE-9E44-D24DADD2FF6E')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'95928337-2FA8-4EE5-89D2-FCC6DA30AF24', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'B54EBA59-D23B-4BE6-B3E4-6BCC5B6D13FE')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'97C60D0A-7784-4954-9840-F1D57AB02925', N'45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', N'3639F31F-6F68-40C6-AC12-74FB387B8960')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'9D35D7BD-3D99-4C2F-90CA-21B7D1D376EC', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'5D4FE5C0-D927-4689-9481-B3D8BECA68DE')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'A0F1C236-6F34-4223-8FC2-820F35F594F0', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'477DE876-4D91-49CD-B209-996FE605279D')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'A1B2E367-D886-41F9-9FC8-BC04D248C481', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'F4EB78E0-9783-45F0-BA53-A0F18263228C')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'A23DB918-C56B-4793-B9DD-8689EBF97FA2', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'886906DC-BC49-4BE9-B8DD-7DAF4BD103CB')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'A31AFE3E-CA19-4FF7-9446-41967E8C75F3', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'EADF9CB3-A81C-42D7-9E88-15FAD08AED00')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'A461E1C6-8381-4849-8392-92CE41024C83', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'875A2C25-25BC-4766-9609-703942573AB0')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'A4E09A58-F9CB-4B97-B47A-7DD4CDCCB14F', N'7DFC33AB-0EB3-416A-A2F5-3DB6A25977CA', N'CB127108-AA42-42A4-9CD0-2E194BC0C83B')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'A7C3C3E7-BDF2-41C5-844E-42596D8706E0', N'D5B0D24B-9C5F-4ECC-B278-9A5B8A9F6F22', N'A388DB44-82BD-458D-A0FA-E54FCAEE91B7')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'A8C837F7-1A8F-45C0-9D6D-FF20ACCB1702', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'7E1350CF-765A-41E9-AF80-84C5CBFC7E5C')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'AADC9324-BB6D-4971-8C77-6DD676402B15', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'C00F0F28-8FDC-43F6-84FD-560D65A8D256')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'B4727BE3-93A5-49D8-B8ED-1377B01B101A', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'3639F31F-6F68-40C6-AC12-74FB387B8960')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'B9628B39-8C34-4EC3-AABA-CE922CE36173', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'66B84E36-F2D0-4847-97A9-2ACFFC9EE6FE')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'B9C6F5EE-F662-4781-B5FB-15DC8EB358B0', N'45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', N'886906DC-BC49-4BE9-B8DD-7DAF4BD103CB')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'BB55C83B-28C2-4BDE-9118-9665DF56E3F0', N'D5B0D24B-9C5F-4ECC-B278-9A5B8A9F6F22', N'67D7CDCE-CC5E-41B3-B9F6-55A4D2DCC8D8')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'CA5BCA43-EDA5-40F0-B737-559907F3FFC3', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'364F325B-B927-471C-A89D-DCB91B823B2C')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'CC4CC4CE-92AE-4BBC-AD4B-1472FCB14568', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'CEE73221-EE0C-442A-B53D-31021DC8836E')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'CC7BCB2F-3051-4B4D-8C12-C4454B6384A4', N'D5B0D24B-9C5F-4ECC-B278-9A5B8A9F6F22', N'C00F0F28-8FDC-43F6-84FD-560D65A8D256')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'CDAE2498-77FE-45AD-9FE3-AAB00E05E911', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'96DB4CA9-9F93-4ED1-BE55-DC12B467F778')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'CF19821E-BDFD-471D-9075-5F49A60B28FC', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'96C5BD50-B365-48A1-BDA7-6703DC1A3049')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'D31FD274-7326-44E2-9D47-3A2CD17AD62D', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'85DD7A0C-D06F-427D-8450-D95ED2D308CA')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'D598FB7D-150C-4C0D-85DE-0B94869C37F6', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'67D7CDCE-CC5E-41B3-B9F6-55A4D2DCC8D8')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'D66FCB62-65E6-48DA-A426-755C4BAD2F1D', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'023091F4-5F0E-468C-B019-B39103AE5956')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'D7F3842B-E64B-4469-A8A9-6877755110F6', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'E702C145-BF21-4896-92CD-447936C680C3')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'D8589140-EC0C-47B8-A7F9-8326F4C581C8', N'45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', N'A388DB44-82BD-458D-A0FA-E54FCAEE91B7')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'DCF232CF-4352-47D4-A729-DA093B9390B0', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'CB127108-AA42-42A4-9CD0-2E194BC0C83B')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'DECA5546-78CA-41A8-9E6A-B59CD7DFC67F', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'6649B278-C5D2-4601-98E1-57FE4A531A74')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'E19CAFDD-73FC-488F-ADD4-312D507B1FE2', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'C814983F-3700-49A3-A53D-53ECFC7A2B4A')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'E38133AA-39FB-4642-89C3-D4A58D809F50', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'B551C6A4-2987-470D-B33B-BDB7488FD65E')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'E51F74D9-CDDE-4812-81C8-79476F2DBAD4', N'45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', N'C00F0F28-8FDC-43F6-84FD-560D65A8D256')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'E9007407-9A6C-4E06-A6BF-4E12536A096F', N'45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', N'036BBC7E-6F06-4CE9-BD91-D50B0D63355C')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'E97A87EA-C113-4D8F-AF90-F6E553529CA0', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'15BECF0F-6F81-4117-9427-CA8C98618D88')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'EBD1AB6D-2D3E-4CD5-8DB3-A33F87D2174A', N'E23A6C64-4B30-4D70-B4FB-2DEEE7BFB7F6', N'CB127108-AA42-42A4-9CD0-2E194BC0C83B')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'EFD3C82C-5553-4F3F-A1DC-C757CFD27819', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'52D8FA71-7252-44B5-9B17-FFC0640D631D')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'F817E744-2CB2-4840-9467-4F76D7A8DA84', N'45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', N'449A124A-92C5-4872-8BEE-D71F894EDA0F')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'FC35BB29-C959-40E6-B578-D50075BA89B2', N'FE5D4E1E-9C40-4DDE-A7EA-E2CC2AD92105', N'CB127108-AA42-42A4-9CD0-2E194BC0C83B')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'FCC73425-641C-478B-AADC-AC6D0E8BDA53', N'20813EA9-8252-4F0F-BCE7-49D2637DC457', N'A388DB44-82BD-458D-A0FA-E54FCAEE91B7')
GO
GO
INSERT INTO [dbo].[Sys_RolePower] ([ID], [RoleUID], [PowerUID]) VALUES (N'FFB2D804-FA4F-43D4-9C45-9F12B704954A', N'45F8F52C-7154-4B15-B5FE-BA84F4FFBA37', N'6999B413-3C9B-471C-B1EF-48AA2D4DE794')
GO
GO

-- ----------------------------
-- Table structure for Sys_TasksQz
-- ----------------------------
DROP TABLE [dbo].[Sys_TasksQz]
GO
CREATE TABLE [dbo].[Sys_TasksQz] (
[ID] nvarchar(36) NOT NULL ,
[Name] nvarchar(255) NOT NULL ,
[JobGroup] nvarchar(255) NOT NULL ,
[Cron] nvarchar(255) NOT NULL ,
[AssemblyName] nvarchar(255) NOT NULL ,
[ClassName] nvarchar(255) NOT NULL ,
[Remark] nvarchar(MAX) NULL ,
[RunTimes] int NOT NULL DEFAULT ((0)) ,
[BeginTime] datetime NULL ,
[EndTime] datetime NULL ,
[TriggerType] int NOT NULL DEFAULT ((1)) ,
[IntervalSecond] int NOT NULL DEFAULT ((0)) ,
[IsStart] bit NOT NULL DEFAULT ((0)) ,
[JobParams] nvarchar(MAX) NULL ,
[CreateTime] datetime NOT NULL ,
[UpdateTime] datetime NOT NULL ,
[CreateID] nvarchar(50) NOT NULL ,
[CreateName] nvarchar(100) NOT NULL ,
[UpdateID] nvarchar(50) NOT NULL ,
[UpdateName] nvarchar(100) NOT NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_TasksQz', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'计划任务'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_TasksQz'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'计划任务'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_TasksQz'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_TasksQz', 
'COLUMN', N'ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'UID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_TasksQz'
, @level2type = 'COLUMN', @level2name = N'ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'UID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_TasksQz'
, @level2type = 'COLUMN', @level2name = N'ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_TasksQz', 
'COLUMN', N'Name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'任务名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_TasksQz'
, @level2type = 'COLUMN', @level2name = N'Name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'任务名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_TasksQz'
, @level2type = 'COLUMN', @level2name = N'Name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_TasksQz', 
'COLUMN', N'JobGroup')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'任务分组'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_TasksQz'
, @level2type = 'COLUMN', @level2name = N'JobGroup'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'任务分组'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_TasksQz'
, @level2type = 'COLUMN', @level2name = N'JobGroup'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_TasksQz', 
'COLUMN', N'Cron')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'运行时间表达式'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_TasksQz'
, @level2type = 'COLUMN', @level2name = N'Cron'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'运行时间表达式'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_TasksQz'
, @level2type = 'COLUMN', @level2name = N'Cron'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_TasksQz', 
'COLUMN', N'AssemblyName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'程序集名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_TasksQz'
, @level2type = 'COLUMN', @level2name = N'AssemblyName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'程序集名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_TasksQz'
, @level2type = 'COLUMN', @level2name = N'AssemblyName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_TasksQz', 
'COLUMN', N'ClassName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'任务所在类'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_TasksQz'
, @level2type = 'COLUMN', @level2name = N'ClassName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'任务所在类'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_TasksQz'
, @level2type = 'COLUMN', @level2name = N'ClassName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_TasksQz', 
'COLUMN', N'Remark')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'任务描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_TasksQz'
, @level2type = 'COLUMN', @level2name = N'Remark'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'任务描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_TasksQz'
, @level2type = 'COLUMN', @level2name = N'Remark'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_TasksQz', 
'COLUMN', N'RunTimes')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'执行次数'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_TasksQz'
, @level2type = 'COLUMN', @level2name = N'RunTimes'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'执行次数'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_TasksQz'
, @level2type = 'COLUMN', @level2name = N'RunTimes'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_TasksQz', 
'COLUMN', N'BeginTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'开始时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_TasksQz'
, @level2type = 'COLUMN', @level2name = N'BeginTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'开始时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_TasksQz'
, @level2type = 'COLUMN', @level2name = N'BeginTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_TasksQz', 
'COLUMN', N'EndTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'结束时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_TasksQz'
, @level2type = 'COLUMN', @level2name = N'EndTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'结束时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_TasksQz'
, @level2type = 'COLUMN', @level2name = N'EndTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_TasksQz', 
'COLUMN', N'TriggerType')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'触发器类型（0、simple 1、cron）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_TasksQz'
, @level2type = 'COLUMN', @level2name = N'TriggerType'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'触发器类型（0、simple 1、cron）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_TasksQz'
, @level2type = 'COLUMN', @level2name = N'TriggerType'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_TasksQz', 
'COLUMN', N'IntervalSecond')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'执行间隔时间(单位:秒)'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_TasksQz'
, @level2type = 'COLUMN', @level2name = N'IntervalSecond'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'执行间隔时间(单位:秒)'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_TasksQz'
, @level2type = 'COLUMN', @level2name = N'IntervalSecond'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_TasksQz', 
'COLUMN', N'IsStart')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否启动'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_TasksQz'
, @level2type = 'COLUMN', @level2name = N'IsStart'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否启动'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_TasksQz'
, @level2type = 'COLUMN', @level2name = N'IsStart'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_TasksQz', 
'COLUMN', N'JobParams')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'传入参数'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_TasksQz'
, @level2type = 'COLUMN', @level2name = N'JobParams'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'传入参数'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_TasksQz'
, @level2type = 'COLUMN', @level2name = N'JobParams'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_TasksQz', 
'COLUMN', N'CreateTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_TasksQz'
, @level2type = 'COLUMN', @level2name = N'CreateTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_TasksQz'
, @level2type = 'COLUMN', @level2name = N'CreateTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_TasksQz', 
'COLUMN', N'UpdateTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_TasksQz'
, @level2type = 'COLUMN', @level2name = N'UpdateTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_TasksQz'
, @level2type = 'COLUMN', @level2name = N'UpdateTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_TasksQz', 
'COLUMN', N'CreateID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建人编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_TasksQz'
, @level2type = 'COLUMN', @level2name = N'CreateID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建人编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_TasksQz'
, @level2type = 'COLUMN', @level2name = N'CreateID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_TasksQz', 
'COLUMN', N'CreateName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_TasksQz'
, @level2type = 'COLUMN', @level2name = N'CreateName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_TasksQz'
, @level2type = 'COLUMN', @level2name = N'CreateName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_TasksQz', 
'COLUMN', N'UpdateID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新人编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_TasksQz'
, @level2type = 'COLUMN', @level2name = N'UpdateID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新人编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_TasksQz'
, @level2type = 'COLUMN', @level2name = N'UpdateID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_TasksQz', 
'COLUMN', N'UpdateName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_TasksQz'
, @level2type = 'COLUMN', @level2name = N'UpdateName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_TasksQz'
, @level2type = 'COLUMN', @level2name = N'UpdateName'
GO

-- ----------------------------
-- Records of Sys_TasksQz
-- ----------------------------
INSERT INTO [dbo].[Sys_TasksQz] ([ID], [Name], [JobGroup], [Cron], [AssemblyName], [ClassName], [Remark], [RunTimes], [BeginTime], [EndTime], [TriggerType], [IntervalSecond], [IsStart], [JobParams], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'E29F2D63-B1B0-4CE6-9CDC-A5F86C52B887', N'生产订单同步', N'数据同步', N'0 0 0/1 * * ? ', N'Meiam.System.Tasks', N'Job_SyncProductOrder', N'[2020-08-07 14:53:09:478] => Run Job [Id：E29F2D63-B1B0-4CE6-9CDC-A5F86C52B887，Group：数据同步]， Succeed ， Elapsed：6.5405 ms', N'750', N'2020-06-19 09:59:29.000', N'9999-12-31 00:00:00.000', N'1', N'1', N'1', null, N'2020-06-19 09:33:53.533', N'2020-06-19 15:00:45.693', N'9999', N'系统管理员', N'9999', N'系统管理员')
GO
GO

-- ----------------------------
-- Table structure for Sys_UserRelation
-- ----------------------------
DROP TABLE [dbo].[Sys_UserRelation]
GO
CREATE TABLE [dbo].[Sys_UserRelation] (
[ID] nvarchar(36) NOT NULL ,
[UserID] nvarchar(50) NOT NULL ,
[ObjectID] nvarchar(36) NOT NULL ,
[ObjectType] nvarchar(36) NOT NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_UserRelation', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户权限'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_UserRelation'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户权限'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_UserRelation'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_UserRelation', 
'COLUMN', N'ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'UUID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_UserRelation'
, @level2type = 'COLUMN', @level2name = N'ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'UUID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_UserRelation'
, @level2type = 'COLUMN', @level2name = N'ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_UserRelation', 
'COLUMN', N'UserID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_UserRelation'
, @level2type = 'COLUMN', @level2name = N'UserID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_UserRelation'
, @level2type = 'COLUMN', @level2name = N'UserID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_UserRelation', 
'COLUMN', N'ObjectID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'数据权限ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_UserRelation'
, @level2type = 'COLUMN', @level2name = N'ObjectID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'数据权限ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_UserRelation'
, @level2type = 'COLUMN', @level2name = N'ObjectID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_UserRelation', 
'COLUMN', N'ObjectType')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'数据权限类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_UserRelation'
, @level2type = 'COLUMN', @level2name = N'ObjectType'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'数据权限类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_UserRelation'
, @level2type = 'COLUMN', @level2name = N'ObjectType'
GO

-- ----------------------------
-- Records of Sys_UserRelation
-- ----------------------------
INSERT INTO [dbo].[Sys_UserRelation] ([ID], [UserID], [ObjectID], [ObjectType]) VALUES (N'0DE36B24-0280-41C0-A11C-3B77E684FAED', N'9999', N'9FCB9642-CE69-43C5-9D71-400F0B1D64A1', N'ProductProcess')
GO
GO
INSERT INTO [dbo].[Sys_UserRelation] ([ID], [UserID], [ObjectID], [ObjectType]) VALUES (N'0F9E8395-4212-4E3C-90DB-EC622B5E3C2C', N'9999', N'21A0F4ED-FA2E-4786-93DC-0222F54B4286', N'Factory')
GO
GO
INSERT INTO [dbo].[Sys_UserRelation] ([ID], [UserID], [ObjectID], [ObjectType]) VALUES (N'20CA7047-217B-46C4-AB0B-A79C8D1EB867', N'9999', N'74887F03-4422-4851-8802-B3057ACC5F30', N'Company')
GO
GO
INSERT INTO [dbo].[Sys_UserRelation] ([ID], [UserID], [ObjectID], [ObjectType]) VALUES (N'275B426E-7742-46D9-B5C5-EA2A99CBA889', N'9999', N'8EE174C5-4430-4196-AEF8-4D72EF69C6C3', N'WorkShop')
GO
GO
INSERT INTO [dbo].[Sys_UserRelation] ([ID], [UserID], [ObjectID], [ObjectType]) VALUES (N'3DB3E1F9-BC32-411F-B9C2-F262D37C97F7', N'9999', N'1E910EDA-534E-469D-9B12-6C1DEF56A706', N'Company')
GO
GO
INSERT INTO [dbo].[Sys_UserRelation] ([ID], [UserID], [ObjectID], [ObjectType]) VALUES (N'475E1E19-9029-4AD1-9260-DD90ABD4AA96', N'9999', N'1D524B11-DBF0-475F-8D95-D1F35515174A', N'WorkShop')
GO
GO
INSERT INTO [dbo].[Sys_UserRelation] ([ID], [UserID], [ObjectID], [ObjectType]) VALUES (N'564DB10C-B19C-456D-BEBE-C30F9BA47954', N'9999', N'AFE35E8D-83B4-48A3-889F-30A1BC07AFB4', N'Factory')
GO
GO
INSERT INTO [dbo].[Sys_UserRelation] ([ID], [UserID], [ObjectID], [ObjectType]) VALUES (N'92984E51-8A8E-4723-8A0A-582F84BA106C', N'9999', N'9E4C1AD4-40AB-4D93-8EE1-B07688360228', N'ProductProcess')
GO
GO
INSERT INTO [dbo].[Sys_UserRelation] ([ID], [UserID], [ObjectID], [ObjectType]) VALUES (N'A951B240-0105-4F73-B505-7B388D41941A', N'9999', N'82AE52A6-00F2-420C-AB28-1B2E227D6122', N'WorkShop')
GO
GO
INSERT INTO [dbo].[Sys_UserRelation] ([ID], [UserID], [ObjectID], [ObjectType]) VALUES (N'B241DF09-C88A-458C-B830-37EC228B64B7', N'9999', N'06EE680E-8DDF-4557-BA37-52416E3FA197', N'WorkShop')
GO
GO
INSERT INTO [dbo].[Sys_UserRelation] ([ID], [UserID], [ObjectID], [ObjectType]) VALUES (N'B68C33D9-31F6-4347-9979-EF51CF3B625B', N'9999', N'CA97D772-FFD2-484C-AE53-22A6C8B095A2', N'Factory')
GO
GO

-- ----------------------------
-- Table structure for Sys_UserRole
-- ----------------------------
DROP TABLE [dbo].[Sys_UserRole]
GO
CREATE TABLE [dbo].[Sys_UserRole] (
[ID] nvarchar(36) NOT NULL ,
[UserID] nvarchar(50) NOT NULL ,
[RoleID] nvarchar(36) NOT NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_UserRole', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户角色'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_UserRole'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户角色'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_UserRole'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_UserRole', 
'COLUMN', N'ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'UUID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_UserRole'
, @level2type = 'COLUMN', @level2name = N'ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'UUID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_UserRole'
, @level2type = 'COLUMN', @level2name = N'ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_UserRole', 
'COLUMN', N'UserID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_UserRole'
, @level2type = 'COLUMN', @level2name = N'UserID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_UserRole'
, @level2type = 'COLUMN', @level2name = N'UserID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_UserRole', 
'COLUMN', N'RoleID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'角色ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_UserRole'
, @level2type = 'COLUMN', @level2name = N'RoleID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'角色ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_UserRole'
, @level2type = 'COLUMN', @level2name = N'RoleID'
GO

-- ----------------------------
-- Records of Sys_UserRole
-- ----------------------------
INSERT INTO [dbo].[Sys_UserRole] ([ID], [UserID], [RoleID]) VALUES (N'85CBF9DB-C4BF-4AC5-89E1-A3C4ED4B88E6', N'103151', N'45F8F52C-7154-4B15-B5FE-BA84F4FFBA37')
GO
GO
INSERT INTO [dbo].[Sys_UserRole] ([ID], [UserID], [RoleID]) VALUES (N'A8364573-20FA-45FB-8C49-B35F7A027301', N'147445', N'20813EA9-8252-4F0F-BCE7-49D2637DC457')
GO
GO
INSERT INTO [dbo].[Sys_UserRole] ([ID], [UserID], [RoleID]) VALUES (N'F112F9A6-3983-480D-8BCC-8F340964261E', N'9999', N'20813EA9-8252-4F0F-BCE7-49D2637DC457')
GO
GO

-- ----------------------------
-- Table structure for Sys_Users
-- ----------------------------
DROP TABLE [dbo].[Sys_Users]
GO
CREATE TABLE [dbo].[Sys_Users] (
[UserID] nvarchar(50) NOT NULL ,
[UserName] nvarchar(100) NOT NULL ,
[NickName] nvarchar(50) NULL ,
[Email] nvarchar(100) NULL ,
[Password] nvarchar(50) NOT NULL ,
[Sex] nvarchar(10) NOT NULL ,
[AvatarUrl] nvarchar(200) NULL ,
[QQ] nvarchar(50) NULL ,
[Phone] nvarchar(50) NULL ,
[ProvinceID] nvarchar(10) NULL ,
[Province] nvarchar(50) NULL ,
[CityID] nvarchar(10) NULL ,
[City] nvarchar(50) NULL ,
[CountyID] nvarchar(10) NULL ,
[County] nvarchar(50) NULL ,
[Address] nvarchar(500) NULL ,
[Remark] nvarchar(500) NULL ,
[IdentityCard] nvarchar(50) NULL ,
[Birthday] datetime NULL ,
[LastLoginTime] datetime NULL ,
[Enabled] bit NOT NULL DEFAULT ((1)) ,
[OneSession] bit NOT NULL DEFAULT ((0)) ,
[CreateTime] datetime NOT NULL ,
[UpdateTime] datetime NOT NULL ,
[CreateID] nvarchar(50) NOT NULL ,
[CreateName] nvarchar(100) NOT NULL ,
[UpdateID] nvarchar(50) NOT NULL ,
[UpdateName] nvarchar(100) NOT NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Users', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户管理'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户管理'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Users', 
'COLUMN', N'UserID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户账号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'UserID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户账号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'UserID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Users', 
'COLUMN', N'UserName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'UserName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'UserName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Users', 
'COLUMN', N'NickName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户昵称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'NickName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户昵称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'NickName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Users', 
'COLUMN', N'Email')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'邮箱'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'Email'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'邮箱'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'Email'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Users', 
'COLUMN', N'Password')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'密码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'Password'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'密码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'Password'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Users', 
'COLUMN', N'Sex')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'性别'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'Sex'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'性别'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'Sex'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Users', 
'COLUMN', N'AvatarUrl')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'头像地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'AvatarUrl'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'头像地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'AvatarUrl'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Users', 
'COLUMN', N'QQ')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'QQ'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'QQ'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'QQ'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'QQ'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Users', 
'COLUMN', N'Phone')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'手机号码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'Phone'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'手机号码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'Phone'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Users', 
'COLUMN', N'ProvinceID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户所在省份编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'ProvinceID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户所在省份编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'ProvinceID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Users', 
'COLUMN', N'Province')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户所在省份'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'Province'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户所在省份'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'Province'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Users', 
'COLUMN', N'CityID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户所在城市编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'CityID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户所在城市编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'CityID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Users', 
'COLUMN', N'City')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户所在城市'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'City'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户所在城市'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'City'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Users', 
'COLUMN', N'CountyID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户所在县/区编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'CountyID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户所在县/区编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'CountyID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Users', 
'COLUMN', N'County')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户所在县/区'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'County'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户所在县/区'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'County'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Users', 
'COLUMN', N'Address')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'Address'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'Address'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Users', 
'COLUMN', N'Remark')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'Remark'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'Remark'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Users', 
'COLUMN', N'IdentityCard')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'身份证'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'IdentityCard'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'身份证'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'IdentityCard'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Users', 
'COLUMN', N'Birthday')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'生日'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'Birthday'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'生日'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'Birthday'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Users', 
'COLUMN', N'LastLoginTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'上次登录时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'LastLoginTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'上次登录时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'LastLoginTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Users', 
'COLUMN', N'Enabled')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否启用'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'Enabled'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否启用'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'Enabled'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Users', 
'COLUMN', N'OneSession')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'单用户模式'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'OneSession'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'单用户模式'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'OneSession'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Users', 
'COLUMN', N'CreateTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'CreateTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'CreateTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Users', 
'COLUMN', N'UpdateTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'UpdateTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'UpdateTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Users', 
'COLUMN', N'CreateID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建人编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'CreateID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建人编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'CreateID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Users', 
'COLUMN', N'CreateName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'CreateName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'CreateName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Users', 
'COLUMN', N'UpdateID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新人编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'UpdateID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新人编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'UpdateID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Sys_Users', 
'COLUMN', N'UpdateName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'UpdateName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Sys_Users'
, @level2type = 'COLUMN', @level2name = N'UpdateName'
GO

-- ----------------------------
-- Records of Sys_Users
-- ----------------------------
INSERT INTO [dbo].[Sys_Users] ([UserID], [UserName], [NickName], [Email], [Password], [Sex], [AvatarUrl], [QQ], [Phone], [ProvinceID], [Province], [CityID], [City], [CountyID], [County], [Address], [Remark], [IdentityCard], [Birthday], [LastLoginTime], [Enabled], [OneSession], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'9999', N'系统管理员', N'许祖豪', N'91270@QQ.COM', N'FC4509EFEA3AC97ED753F53DFA601161', N'男', N'/static/avatars/20200619/637281528723366669.png', N'91270', N'13344445555', null, null, null, null, null, null, null, null, null, N'2020-06-18 16:00:00.000', N'2020-01-07 16:30:02.270', N'1', N'0', N'2020-05-31 10:20:55.000', N'2020-06-19 08:41:12.340', N'9999', N'超威电源有限公司', N'9999', N'系统管理员')
GO
GO

-- ----------------------------
-- Indexes structure for table Base_Company
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Base_Company
-- ----------------------------
ALTER TABLE [dbo].[Base_Company] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table Base_Equipment
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Base_Equipment
-- ----------------------------
ALTER TABLE [dbo].[Base_Equipment] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table Base_Factory
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Base_Factory
-- ----------------------------
ALTER TABLE [dbo].[Base_Factory] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table Base_ProductLine
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Base_ProductLine
-- ----------------------------
ALTER TABLE [dbo].[Base_ProductLine] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table Base_ProductProcess
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Base_ProductProcess
-- ----------------------------
ALTER TABLE [dbo].[Base_ProductProcess] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table Base_WorkShop
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Base_WorkShop
-- ----------------------------
ALTER TABLE [dbo].[Base_WorkShop] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table Sys_DataRelation
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Sys_DataRelation
-- ----------------------------
ALTER TABLE [dbo].[Sys_DataRelation] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table Sys_Logs
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Sys_Logs
-- ----------------------------
ALTER TABLE [dbo].[Sys_Logs] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table Sys_Menu
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Sys_Menu
-- ----------------------------
ALTER TABLE [dbo].[Sys_Menu] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table Sys_Online
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Sys_Online
-- ----------------------------
ALTER TABLE [dbo].[Sys_Online] ADD PRIMARY KEY ([SessionID])
GO

-- ----------------------------
-- Indexes structure for table Sys_Options
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Sys_Options
-- ----------------------------
ALTER TABLE [dbo].[Sys_Options] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table Sys_Power
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Sys_Power
-- ----------------------------
ALTER TABLE [dbo].[Sys_Power] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table Sys_Role
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Sys_Role
-- ----------------------------
ALTER TABLE [dbo].[Sys_Role] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table Sys_RolePower
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Sys_RolePower
-- ----------------------------
ALTER TABLE [dbo].[Sys_RolePower] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table Sys_TasksQz
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Sys_TasksQz
-- ----------------------------
ALTER TABLE [dbo].[Sys_TasksQz] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table Sys_UserRelation
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Sys_UserRelation
-- ----------------------------
ALTER TABLE [dbo].[Sys_UserRelation] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table Sys_UserRole
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Sys_UserRole
-- ----------------------------
ALTER TABLE [dbo].[Sys_UserRole] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table Sys_Users
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Sys_Users
-- ----------------------------
ALTER TABLE [dbo].[Sys_Users] ADD PRIMARY KEY ([UserID])
GO
