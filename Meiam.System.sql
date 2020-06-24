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

Date: 2020-06-20 11:08:27
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
[CreateTime] datetime2(7) NULL ,
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
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'01652EDD-9AEB-4598-A0A0-C9D94A4CEC65', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/factory/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"pageIndex":1,"pageSize":10,"orderby":"factoryNo","sort":"descending"}', N'Success', N'406', N'2020-06-20 10:51:36.1645000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'02F89305-F73B-49A3-99E3-0F0A359ACE5B', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/productline/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"pageIndex":1,"pageSize":10,"orderby":"lineNo","sort":"descending"}', N'Success', N'636', N'2020-06-20 10:57:01.2181000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'05691403-917D-4E66-AE5D-5B96760EC98B', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/workshop/getAll', N'127.0.0.1:19999', N'GET', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'[{"enable":"true"}]', N'', N'Success', N'908', N'2020-06-20 10:56:58.7972000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'0620621A-B602-4972-A0FA-D212BF0C0237', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/company/getAll', N'127.0.0.1:19999', N'GET', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'[{"enable":"true"}]', N'', N'Success', N'516', N'2020-06-20 10:50:49.5089000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'06DFAE47-F688-4C9B-964B-015EB91B7276', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/workshop/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"pageIndex":1,"pageSize":10,"orderby":"workShopNo","sort":"descending"}', N'Success', N'331', N'2020-06-20 10:53:39.6183000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'0A368525-CBBD-468F-B06E-F13C7D4AB570', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/factory/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"pageIndex":1,"pageSize":10,"orderby":"factoryNo","sort":"descending"}', N'Success', N'356', N'2020-06-20 10:51:16.7547000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'0A6BB2D7-025F-40CB-B7AA-7C7291ABEE20', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/workshop/getAll', N'127.0.0.1:19999', N'GET', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'[{"enable":"true"}]', N'', N'Success', N'524', N'2020-06-20 10:56:51.7564000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'0C56C208-A8FE-4AAC-A520-B795C96C46FC', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/auth/loginMiniProgram', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.3 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1 wechatdevtools/1.02.2004020 MicroMessenger/7.0.4 Language/zh_CN webview/', N'', N'', N'{"userName":"9999","passWord":"123456"}', N'Success', N'10', N'2020-06-20 10:54:10.0954000', N'115.56.231.94')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'1085C49E-4BAF-4F91-89CC-CA0BBE201282', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/Authorize/GetRelationTree', N'127.0.0.1:19999', N'GET', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'[{"userID":"9999"}]', N'', N'Success', N'820', N'2020-06-20 10:57:18.4243000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'2120F146-BF3A-41E8-BF95-6BEA61941E51', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/workshop/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"pageIndex":1,"pageSize":10,"orderby":"workShopNo","sort":"descending"}', N'Success', N'305', N'2020-06-20 10:53:17.1161000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'2481B7A0-0A71-41B2-88F6-153F51CF695E', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/tasks/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'DA939D9C-DA4F-44A6-89CA-99CD98A10244', N'', N'{"pageIndex":1,"pageSize":10,"orderby":"createTime","sort":"descending"}', N'Success', N'304', N'2020-06-20 11:06:36.7570000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'289A3247-D5D3-41BA-A014-AB170B6FB3ED', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/factory/getAll', N'127.0.0.1:19999', N'GET', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'[{"enable":"true"}]', N'', N'Success', N'524', N'2020-06-20 10:56:52.0356000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'2B46CB2A-F57B-4405-9633-D77CE79898C7', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/workshop/create', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"workShopName":"铸焊车间","workShopNo":"200101","enable":true,"factoryUID":"AFE35E8D-83B4-48A3-889F-30A1BC07AFB4"}', N'Success', N'1546', N'2020-06-20 10:52:54.5594000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'2C8394DD-3076-4769-B270-16052C466D7D', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/rolePowers/getPowersGroup', N'127.0.0.1:19999', N'GET', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'DA939D9C-DA4F-44A6-89CA-99CD98A10244', N'', N'', N'Success', N'55', N'2020-06-20 11:06:24.0880000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'2D723183-6D71-42F1-8894-CFEA1E7902FD', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/auth/loginMiniProgram', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.3 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1 wechatdevtools/1.02.2004020 MicroMessenger/7.0.4 Language/zh_CN webview/', N'', N'', N'{"userName":"9999","passWord":"132465"}', N'Success', N'1', N'2020-06-20 10:54:03.8271000', N'115.56.231.94')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'316821D0-A96E-4C86-ACDB-38BF039224D7', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/workshop/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"pageIndex":1,"pageSize":10,"orderby":"workShopNo","sort":"descending"}', N'Success', N'340', N'2020-06-20 10:53:56.0959000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'316A7567-4DE1-4503-82E4-E32CA5A507E8', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/factory/getAll', N'127.0.0.1:19999', N'GET', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'[{"enable":"true"}]', N'', N'Success', N'908', N'2020-06-20 10:56:58.8070000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'31E1035F-4FC0-4B84-997A-3CAF749DB34C', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/auth/code', N'127.0.0.1:19999', N'GET', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'', N'[{"t":"1592622363507"}]', N'', N'Success', N'241', N'2020-06-20 11:06:03.7783000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'34A34938-96FB-4FCE-8D58-BB7A80F3A6CF', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/company/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'DA939D9C-DA4F-44A6-89CA-99CD98A10244', N'', N'{"pageIndex":1,"pageSize":10,"orderby":"createTime","sort":"descending"}', N'Success', N'329', N'2020-06-20 11:06:17.5699000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'36B40F0A-7252-4D77-95EB-4360D0EF7132', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/productprocess/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"pageIndex":1,"pageSize":10,"orderby":"processNo","sort":"descending"}', N'Success', N'271', N'2020-06-20 10:55:20.4574000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'3D96EE59-446E-4AF4-A8C8-60B53ADDB39E', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/auth/loginMiniProgram', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.3 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1 wechatdevtools/1.02.2004020 MicroMessenger/7.0.4 Language/zh_CN webview/', N'', N'', N'{"userName":"9999","passWord":"123456"}', N'Success', N'11', N'2020-06-20 10:53:02.0809000', N'115.56.231.94')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'3E4B4E51-ACB2-4B4C-A631-0A6BC028F016', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/menus/getUserMenus', N'127.0.0.1:19999', N'GET', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'', N'Success', N'61', N'2020-06-20 11:05:58.5379000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'3E8ACFB2-58BE-4805-8458-8C2242D3E641', N'Quartz.Impl.StdSchedulerFactory', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Using object serializer: Quartz.Simpl.BinaryObjectSerializer, Quartz', N'0', N'2020-06-20 11:05:43.7936000', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'40683D71-1C25-4B60-9E35-20CC7EC17A47', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/options/getOption', N'127.0.0.1:19999', N'GET', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'DA939D9C-DA4F-44A6-89CA-99CD98A10244', N'[{"option":"SYSTEM_MENU_SYSTEM"}]', N'', N'Success', N'270', N'2020-06-20 11:06:28.4965000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'41EF3406-FF5A-4FB2-A94D-74CA0641FEE7', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/equipment/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"pageIndex":1,"pageSize":10,"orderby":"equipNo","sort":"descending"}', N'Success', N'280', N'2020-06-20 10:48:22.0139000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'450A5F31-B94A-488D-9CF9-1DAA3348C10B', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/workshop/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"pageIndex":1,"pageSize":10,"orderby":"workShopNo","sort":"descending"}', N'Success', N'292', N'2020-06-20 10:52:54.9371000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'46F68AD7-BE37-42D8-AAD5-D4EEF4746C55', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/productprocess/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"pageIndex":1,"pageSize":10,"orderby":"processNo","sort":"descending"}', N'Success', N'415', N'2020-06-20 10:56:49.4765000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'4A193C2C-EE85-49AB-AE0F-213E3120E4D3', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/factory/create', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"factoryName":"华西一期","factoryNo":"2001","enable":true,"companyUID":"1E910EDA-534E-469D-9B12-6C1DEF56A706"}', N'Success', N'1122', N'2020-06-20 10:51:16.1269000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'4ABA9102-F2EA-4036-A6A1-192F43B0F6BA', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/workshop/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"pageIndex":1,"pageSize":10,"orderby":"workShopNo","sort":"descending"}', N'Success', N'648', N'2020-06-20 10:55:36.1762000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'4C4C1DEC-731E-494C-BED3-FD5D2C750F9E', N'Quartz.Core.QuartzScheduler', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Scheduler QuartzScheduler_$_NON_CLUSTERED started.', N'0', N'2020-06-20 11:05:44.5580000', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'4CEBEC9B-99EF-45DB-92E6-5020AB97726C', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/factory/getAll', N'127.0.0.1:19999', N'GET', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'[{"enable":"true"}]', N'', N'Success', N'454', N'2020-06-20 10:55:27.9218000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'4DC638D9-F2EC-4A0F-A4AA-1D32FBD576B6', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/company/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"pageIndex":1,"pageSize":10,"orderby":"createTime","sort":"descending"}', N'Success', N'322', N'2020-06-20 10:50:33.6039000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'533B2658-1965-4356-944C-C6B72EC7338F', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/factory/getAll', N'127.0.0.1:19999', N'GET', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'[{"enable":"true"}]', N'', N'Success', N'648', N'2020-06-20 10:55:36.1161000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'53C8CE34-2061-4782-813E-CB878C8A1E7E', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/online/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'DA939D9C-DA4F-44A6-89CA-99CD98A10244', N'', N'{"beginDate":"2020-06-13","endDate":"2020-06-20","pageSize":10,"orderby":"loginTime","sort":"descending","pageIndex":1}', N'Success', N'271', N'2020-06-20 11:06:34.7368000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'54F7F638-C641-463A-857D-4480A88F7F98', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/productline/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"pageIndex":1,"pageSize":10,"orderby":"lineNo","sort":"descending"}', N'Success', N'524', N'2020-06-20 10:56:51.9330000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'5902B734-F37F-485C-8B4D-4D3FF0F8358A', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/productprocess/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"pageIndex":1,"pageSize":10,"orderby":"processNo","sort":"descending"}', N'Success', N'588', N'2020-06-20 10:55:30.1352000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'5A9A6165-4EB4-4B14-943C-F38D20AF358F', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/workshop/create', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"workShopName":"铸焊车间","workShopNo":"200201","enable":true,"factoryUID":"21A0F4ED-FA2E-4786-93DC-0222F54B4286"}', N'Success', N'980', N'2020-06-20 10:53:38.7954000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'5DE21B1D-82FC-40EE-89CC-B30D23FE0F1C', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/Authorize/UpdateUserRelation', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"userID":"9999","relation":[{"objectID":"1E910EDA-534E-469D-9B12-6C1DEF56A706","objectType":"Company"},{"objectID":"21A0F4ED-FA2E-4786-93DC-0222F54B4286","objectType":"Factory"},{"objectID":"AFE35E8D-83B4-48A3-889F-30A1BC07AFB4","objectType":"Factory"},{"objectID":"82AE52A6-00F2-420C-AB28-1B2E227D6122","objectType":"WorkShop"},{"objectID":"74887F03-4422-4851-8802-B3057ACC5F30","objectType":"Company"},{"objectID":"06EE680E-8DDF-4557-BA37-52416E3FA197","objectType":"WorkShop"},{"objectID":"8EE174C5-4430-4196-AEF8-4D72EF69C6C3","objectType":"WorkShop"},{"objectID":"1D524B11-DBF0-475F-8D95-D1F35515174A","objectType":"WorkShop"},{"objectID":"9E4C1AD4-40AB-4D93-8EE1-B07688360228","objectType":"ProductProcess"},{"objectID":"9FCB9642-CE69-43C5-9D71-400F0B1D64A1","objectType":"ProductProcess"},{"objectID":"CA97D772-FFD2-484C-AE53-22A6C8B095A2","objectType":"Factory"}]}', N'Success', N'4124', N'2020-06-20 10:57:41.3691000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'5F096DB9-FC11-48BF-86A9-2BE01E2BFCE7', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/productprocess/getAll', N'127.0.0.1:19999', N'GET', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'[{"enable":"true"}]', N'', N'Success', N'636', N'2020-06-20 10:57:01.2181000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'5F1BA1A8-5C39-44A7-9EE9-96D576E66B61', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/powers/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'DA939D9C-DA4F-44A6-89CA-99CD98A10244', N'', N'{"pageIndex":1,"pageSize":10,"orderby":"createTime","sort":"descending"}', N'Success', N'265', N'2020-06-20 11:06:30.4683000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'5FE5DA88-E042-498D-9666-CC3378DEC76A', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/users/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"pageIndex":1,"pageSize":10,"orderby":"userID","sort":"descending"}', N'Success', N'624', N'2020-06-20 10:57:14.9962000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'62371D8B-3EDF-4558-B992-193C2A60A667', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/options/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'DA939D9C-DA4F-44A6-89CA-99CD98A10244', N'', N'{"pageIndex":1,"pageSize":10,"orderby":"createTime","sort":"ascending"}', N'Success', N'251', N'2020-06-20 11:06:32.1216000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'65C279BB-924F-4815-BAA2-74818B19741C', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/factory/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"pageIndex":1,"pageSize":10,"orderby":"factoryNo","sort":"descending"}', N'Success', N'316', N'2020-06-20 10:51:51.5450000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'69C21707-24D5-4782-8678-3C71269A524B', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/productprocess/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"pageIndex":1,"pageSize":10,"orderby":"processNo","sort":"descending"}', N'Success', N'286', N'2020-06-20 10:54:35.4759000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'6AD252A0-F8B1-4A02-B9DC-AA0D5E57A00F', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/roles/get', N'127.0.0.1:19999', N'GET', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'DA939D9C-DA4F-44A6-89CA-99CD98A10244', N'', N'', N'Success', N'262', N'2020-06-20 11:06:25.7801000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'6C7EA847-384B-415E-9486-ED79F2499F00', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/factory/getAll', N'127.0.0.1:19999', N'GET', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'[{"enable":"true"}]', N'', N'Success', N'351', N'2020-06-20 10:56:31.5264000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'6D90C833-24CF-4D6E-BF9C-E1A5EB6DA7E5', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/workshop/getAll', N'127.0.0.1:19999', N'GET', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'[{"enable":"true"}]', N'', N'Success', N'588', N'2020-06-20 10:55:30.1965000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'6E0683BE-B097-4941-AD29-75896A223566', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/options/getOption', N'127.0.0.1:19999', N'GET', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'DA939D9C-DA4F-44A6-89CA-99CD98A10244', N'[{"option":"SYSTEM_POWER_DESCRIPTION"}]', N'', N'Success', N'265', N'2020-06-20 11:06:30.4218000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'6E9FC965-2017-4910-9F6B-9475DD4C936A', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/auth/login', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'', N'', N'{"username":"9999","password":"123456","code":"75aq","uuid":"F0F64C5C-3EDC-467E-81B6-199BBB0EBC4A"}', N'Success', N'706', N'2020-06-20 11:06:13.6047000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'70F4D21D-0A56-450D-BC34-3CFCEB06A0EB', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/workshop/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"pageIndex":1,"pageSize":10,"orderby":"workShopNo","sort":"descending"}', N'Success', N'574', N'2020-06-20 10:51:57.1629000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'713761D2-C8CF-40B6-9B6C-97345BC42716', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/menus/getUserMenus', N'127.0.0.1:19999', N'GET', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'DA939D9C-DA4F-44A6-89CA-99CD98A10244', N'', N'', N'Success', N'102', N'2020-06-20 11:06:14.3636000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'7682ED54-22ED-4E5C-AFEE-AAE72C24B926', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/roles/get', N'127.0.0.1:19999', N'GET', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'DA939D9C-DA4F-44A6-89CA-99CD98A10244', N'', N'', N'Success', N'252', N'2020-06-20 11:06:23.9830000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'7823B46A-91CA-437A-A316-CE19AADFA4E3', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/factory/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"pageIndex":1,"pageSize":10,"orderby":"factoryNo","sort":"descending"}', N'Success', N'516', N'2020-06-20 10:50:49.6885000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'7954B86D-732F-4CC0-A3A2-4B4049478740', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/productprocess/getAll', N'127.0.0.1:19999', N'GET', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'[{"enable":"true"}]', N'', N'Success', N'908', N'2020-06-20 10:56:58.2572000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'7AA7FE86-072E-4B9F-A70E-8B3A8E928234', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/productprocess/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"pageIndex":1,"pageSize":10,"orderby":"processNo","sort":"descending"}', N'Success', N'277', N'2020-06-20 10:54:58.6203000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'7B19B878-21DB-467F-BB84-0688E82E10E4', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/workshop/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"pageIndex":1,"pageSize":10,"orderby":"workShopNo","sort":"descending"}', N'Success', N'340', N'2020-06-20 10:53:56.3261000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'7B9CF94D-1B5B-4ACC-AC70-D579CC9D1C47', N'Quartz.Core.QuartzScheduler', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'JobFactory set to: Meiam.System.Tasks.JobFactory', N'0', N'2020-06-20 11:05:44.5203000', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'8057A388-7DD4-4FB6-9D23-0F203D76A100', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/auth/getUserInfo', N'127.0.0.1:19999', N'GET', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'', N'Success', N'604', N'2020-06-20 10:56:29.8007000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'82E767C9-FFE7-4B42-90EC-F09237DA7A79', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/workshop/getAll', N'127.0.0.1:19999', N'GET', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'[{"enable":"true"}]', N'', N'Success', N'280', N'2020-06-20 10:48:22.2347000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'84D771C7-D353-4C22-9327-10B43B771C95', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/productline/getAll', N'127.0.0.1:19999', N'GET', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'[{"enable":"true"}]', N'', N'Success', N'280', N'2020-06-20 10:48:22.2749000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'86885420-3062-41E6-8EE8-D134B37AAF79', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/menus/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{}', N'Success', N'192', N'2020-06-20 11:05:56.4697000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'86B406C8-C4BF-4915-A3F7-B72327F5B0A3', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/productline/getAll', N'127.0.0.1:19999', N'GET', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'[{"enable":"true"}]', N'', N'Success', N'908', N'2020-06-20 10:56:58.2572000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'86C900EE-F942-44F2-A3A3-53D0D5BE6E97', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/factory/getAll', N'127.0.0.1:19999', N'GET', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'[{"enable":"true"}]', N'', N'Success', N'574', N'2020-06-20 10:51:57.1156000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'87F23066-980D-4166-93E8-4A2427A43808', N'Quartz.Core.SchedulerSignalerImpl', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Initialized Scheduler Signaller of type: Quartz.Core.SchedulerSignalerImpl', N'0', N'2020-06-20 11:05:44.2579000', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'888D9B92-5FA0-420A-9B10-032E125D10C5', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/factory/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"pageIndex":1,"pageSize":10,"orderby":"factoryNo","sort":"descending"}', N'Success', N'316', N'2020-06-20 10:51:51.8363000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'88915701-6468-4DC5-ABE9-09A27F80098C', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/auth/loginMiniProgram', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.3 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1 wechatdevtools/1.02.2004020 MicroMessenger/7.0.4 Language/zh_CN webview/', N'DD188A69-B5AC-4E93-B030-E12F2BADFE21', N'', N'{"userName":"9999","passWord":"123456"}', N'Success', N'10', N'2020-06-20 11:00:57.5542000', N'115.56.231.94')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'8F80ED03-D4F2-4407-AB96-8F60EDEDE767', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/factory/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"pageIndex":1,"pageSize":10,"orderby":"factoryNo","sort":"descending"}', N'Success', N'406', N'2020-06-20 10:51:35.7351000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'928C3141-7FFC-4165-8027-7180E4E701CE', N'Quartz.Simpl.RAMJobStore', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'RAMJobStore initialized.', N'0', N'2020-06-20 11:05:44.3214000', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'94EF612F-345B-4722-87F7-108926B3D365', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/workshop/getAll', N'127.0.0.1:19999', N'GET', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'[{"enable":"true"}]', N'', N'Success', N'1050', N'2020-06-20 10:54:02.8070000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'95740CE6-D6AD-4509-9BF5-6E79B2C4E7CA', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/auth/loginMiniProgram', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.3 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1 wechatdevtools/1.02.2004020 MicroMessenger/7.0.4 Language/zh_CN webview/', N'E01FA775-0DFA-444E-8075-84259B49A9F9', N'', N'{"userName":"9999","passWord":"123456"}', N'Success', N'10', N'2020-06-20 10:56:28.6933000', N'115.56.231.94')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'989FD2B9-BDFE-40A7-9ED0-4B612380A733', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/company/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"pageIndex":1,"pageSize":10,"orderby":"createTime","sort":"descending"}', N'Success', N'329', N'2020-06-20 10:50:45.3347000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'99DE1174-B29A-497F-9F11-829ACDE2AA68', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/logs/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"beginDate":"2020-06-13","endDate":"2020-06-20","pageIndex":1,"pageSize":10,"orderby":"createTime","sort":"descending"}', N'Success', N'530', N'2020-06-20 11:05:50.4706000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'9BC36997-4BEF-4ADE-94D3-C6C160EC939C', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/workshop/getAll', N'127.0.0.1:19999', N'GET', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'[{"enable":"true"}]', N'', N'Success', N'415', N'2020-06-20 10:56:49.5571000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'9ED95C19-F01B-4EE9-8422-6D078372EBF8', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/roleUsers/get', N'127.0.0.1:19999', N'GET', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'DA939D9C-DA4F-44A6-89CA-99CD98A10244', N'[{"roleId":"20813EA9-8252-4F0F-BCE7-49D2637DC457"}]', N'', N'Success', N'170', N'2020-06-20 11:06:26.0021000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'A1293942-0950-461D-8D0B-95F809D223E2', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/workshop/create', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"workShopName":"极板车间","workShopNo":"200102","enable":true,"factoryUID":"AFE35E8D-83B4-48A3-889F-30A1BC07AFB4"}', N'Success', N'1067', N'2020-06-20 10:53:16.7256000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'A2A99CBF-952B-436F-AD42-AD0E21493AB0', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/factory/getAll', N'127.0.0.1:19999', N'GET', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'[{"enable":"true"}]', N'', N'Success', N'1050', N'2020-06-20 10:54:02.8070000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'A388BE8A-D198-42B1-9BAF-AA8B70934A1D', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/auth/loginMiniProgram', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.3 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1 wechatdevtools/1.02.2004020 MicroMessenger/7.0.4 Language/zh_CN webview/', N'FF0FA8D9-E8D9-4A34-AB43-F800C23FF827', N'', N'{"userName":"9999","passWord":"123456"}', N'Success', N'9', N'2020-06-20 10:59:13.3033000', N'115.56.231.94')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'A4E5E1B6-BAFF-495A-9254-279D71801200', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/auth/getUserInfo', N'127.0.0.1:19999', N'GET', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'', N'Success', N'1010', N'2020-06-20 10:48:21.0302000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'A51792A3-4891-46AA-9616-9F9C19C9107C', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/menus/getUserMenus', N'127.0.0.1:19999', N'GET', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'', N'Success', N'525', N'2020-06-20 10:56:30.5484000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'A789C322-7DDF-415C-9067-B33941C928BE', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/roles/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'DA939D9C-DA4F-44A6-89CA-99CD98A10244', N'', N'{"pageIndex":1,"pageSize":10,"orderby":"createTime","sort":"ascending"}', N'Success', N'440', N'2020-06-20 11:06:22.4046000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'A865A601-3774-4A3F-861C-CF0B96A32FBA', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/rolePowers/getRolePowers', N'127.0.0.1:19999', N'GET', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'DA939D9C-DA4F-44A6-89CA-99CD98A10244', N'[{"roleId":"20813EA9-8252-4F0F-BCE7-49D2637DC457"}]', N'', N'Success', N'55', N'2020-06-20 11:06:24.1960000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'A867BA16-1D1D-40C6-895C-678AB8D8F879', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/workshop/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"pageIndex":1,"pageSize":10,"orderby":"workShopNo","sort":"descending"}', N'Success', N'454', N'2020-06-20 10:55:27.8249000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'A99725F5-4664-42C4-95B7-D67493CE3066', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/options/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"pageIndex":1,"pageSize":10,"orderby":"createTime","sort":"ascending"}', N'Success', N'212', N'2020-06-20 11:04:47.9979000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'ABAF4500-4953-4E7B-8303-404F096D4F37', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/workshop/create', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"workShopName":"极板车间","workShopNo":"200202","enable":true,"factoryUID":"21A0F4ED-FA2E-4786-93DC-0222F54B4286"}', N'Success', N'1036', N'2020-06-20 10:53:55.6754000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'ABEBED94-734E-419E-A6CF-E445173BB401', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/auth/logOut', N'127.0.0.1:19999', N'GET', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'', N'Success', N'201', N'2020-06-20 11:06:03.1841000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'AC0A570D-BD57-48D3-B632-9579D6DDDDCC', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/company/create', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"companyName":"最赔钱的公司","companyNo":"1002","enable":true}', N'Success', N'1158', N'2020-06-20 10:50:44.9260000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'AC0DE523-4C32-453F-93EE-FF76E114C3B7', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/productprocess/create', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"processName":"铸焊工序","processNo":"20010101","enable":true,"workShopUID":"82AE52A6-00F2-420C-AB28-1B2E227D6122","factoryUID":"AFE35E8D-83B4-48A3-889F-30A1BC07AFB4"}', N'Success', N'914', N'2020-06-20 10:54:34.8916000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'ADFFB214-0917-4EBA-AB05-D3EF08726709', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/productprocess/update', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"workShopUID":"82AE52A6-00F2-420C-AB28-1B2E227D6122","workShopNo":"200101","workShopName":"铸焊车间","factoryUID":"AFE35E8D-83B4-48A3-889F-30A1BC07AFB4","factoryNo":"2001","factoryName":"华西一期","id":"9E4C1AD4-40AB-4D93-8EE1-B07688360228","processNo":"20010101","processName":"铸焊浇筑","remark":null,"enable":true,"createTime":"2020-06-20 10:54:34","updateTime":"2020-06-20 10:54:34","createID":"9999","createName":"系统管理员","updateID":"9999","updateName":"系统管理员"}', N'Success', N'966', N'2020-06-20 10:55:20.0778000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'B0486EFE-AB42-451A-8FCA-B3EA8AA1D41A', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/company/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"pageIndex":1,"pageSize":10,"orderby":"createTime","sort":"descending"}', N'Success', N'329', N'2020-06-20 10:50:45.5748000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'B3AA4993-087C-4AA4-AA3B-02DC0468DC0E', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/company/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"pageIndex":1,"pageSize":10,"orderby":"createTime","sort":"descending"}', N'Success', N'615', N'2020-06-20 10:48:24.7265000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'B443CD0E-F923-4CFF-8223-2628699C1475', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/workshop/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"pageIndex":1,"pageSize":10,"orderby":"workShopNo","sort":"descending"}', N'Success', N'305', N'2020-06-20 10:53:17.4347000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'B4AE8F0F-E1DC-48C9-8309-971F42667127', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/workshop/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"pageIndex":1,"pageSize":10,"orderby":"workShopNo","sort":"descending"}', N'Success', N'331', N'2020-06-20 10:53:39.2264000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'B80A27A5-8E60-454B-B71A-7BFED8770697', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/productprocess/getAll', N'127.0.0.1:19999', N'GET', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'[{"enable":"true"}]', N'', N'Success', N'524', N'2020-06-20 10:56:51.7564000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'B89E34DF-FC8A-4F23-A3E8-6F6219203E60', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/menus/getUserMenus', N'127.0.0.1:19999', N'GET', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'DA939D9C-DA4F-44A6-89CA-99CD98A10244', N'', N'', N'Success', N'183', N'2020-06-20 11:06:14.2132000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'B99357AF-1FCE-4CDC-99F9-6B8BDA50FA4C', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/productprocess/getAll', N'127.0.0.1:19999', N'GET', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'[{"enable":"true"}]', N'', N'Success', N'280', N'2020-06-20 10:48:22.4948000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'BC036460-8DD4-4249-B528-FE5A0C787298', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/factory/getAll', N'127.0.0.1:19999', N'GET', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'[{"enable":"true"}]', N'', N'Success', N'280', N'2020-06-20 10:48:22.3541000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'BDA0AD1D-2BA6-421F-B2BA-15AEE30510EB', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/menus/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'DA939D9C-DA4F-44A6-89CA-99CD98A10244', N'', N'{}', N'Success', N'270', N'2020-06-20 11:06:28.4788000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'BDAFC512-C4D4-4D3B-A69D-A310DD894D53', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/factory/create', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"factoryName":"华南二期","factoryNo":"2002","enable":true,"companyUID":"1E910EDA-534E-469D-9B12-6C1DEF56A706"}', N'Success', N'1032', N'2020-06-20 10:51:35.2248000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'BE9ED587-6828-479B-97F4-9F32E1559404', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/menus/getUserMenus', N'127.0.0.1:19999', N'GET', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'', N'Success', N'317', N'2020-06-20 10:48:21.4061000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'C480AF06-0166-4DCB-87D3-EA0B6AAA1A87', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/company/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"pageIndex":1,"pageSize":10,"orderby":"createTime","sort":"descending"}', N'Success', N'322', N'2020-06-20 10:50:33.3453000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'C4E2CF4F-5B68-4254-88AB-5117A2DF148B', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/productprocess/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"pageIndex":1,"pageSize":10,"orderby":"processNo","sort":"descending"}', N'Success', N'286', N'2020-06-20 10:54:35.2572000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'CA7C694B-8ACC-451C-B5FA-591024FBADE5', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/auth/loginMiniProgram', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.3 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1 wechatdevtools/1.02.2004020 MicroMessenger/7.0.4 Language/zh_CN webview/', N'', N'', N'{"userName":"9999","passWord":"123456"}', N'Success', N'10', N'2020-06-20 10:54:38.2838000', N'115.56.231.94')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'CB43226E-3361-4258-B595-FAB5F9875FF0', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/productprocess/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"pageIndex":1,"pageSize":10,"orderby":"processNo","sort":"descending"}', N'Success', N'277', N'2020-06-20 10:54:58.8610000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'CB4A2C33-5ADF-4BD7-B82F-20333636330D', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/company/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"pageIndex":1,"pageSize":10,"orderby":"createTime","sort":"descending"}', N'Success', N'632', N'2020-06-20 10:57:08.1481000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'CC166023-7E5B-4383-9815-E99136C68FF6', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/users/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'DA939D9C-DA4F-44A6-89CA-99CD98A10244', N'', N'{"pageIndex":1,"pageSize":10,"orderby":"userID","sort":"descending"}', N'Success', N'351', N'2020-06-20 11:06:20.6931000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'CC6BC6D7-EF68-4ADF-8BA4-5BE1891BE0F1', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/productline/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"pageIndex":1,"pageSize":10,"orderby":"lineNo","sort":"descending"}', N'Success', N'629', N'2020-06-20 10:57:06.5310000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'CDC0BBB8-5AF2-4E0E-8FCB-F20821146816', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/factory/getAll', N'127.0.0.1:19999', N'GET', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'[{"enable":"true"}]', N'', N'Success', N'588', N'2020-06-20 10:55:30.1965000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'CEEF9F22-FFA2-4409-825D-FB6A58F2093E', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/workshop/getAll', N'127.0.0.1:19999', N'GET', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'[{"enable":"true"}]', N'', N'Success', N'636', N'2020-06-20 10:57:01.1855000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'D32DC85C-7971-4621-B87E-EDFA8DC22A47', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/productprocess/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"pageIndex":1,"pageSize":10,"orderby":"processNo","sort":"descending"}', N'Success', N'1050', N'2020-06-20 10:54:02.9043000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'D8CD40FC-81F3-43AF-A5B8-179581A8C56F', N'Quartz.Core.QuartzScheduler', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Quartz Scheduler v.3.0.7.0 created.', N'0', N'2020-06-20 11:05:44.2959000', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'DBC6A643-75EA-4875-ABF0-1C3F248E9688', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/workshop/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"pageIndex":1,"pageSize":10,"orderby":"workShopNo","sort":"descending"}', N'Success', N'351', N'2020-06-20 10:56:31.2047000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'DC15928B-2C97-4201-A4A6-8D03C42958C1', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/productprocess/create', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"processName":"铸焊锻造","processNo":"20010102","enable":true,"workShopUID":"82AE52A6-00F2-420C-AB28-1B2E227D6122","factoryUID":"AFE35E8D-83B4-48A3-889F-30A1BC07AFB4"}', N'Success', N'1158', N'2020-06-20 10:54:58.2587000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'DE27D1A7-0EEC-440D-85AA-94986398A902', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/company/create', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"companyName":"最赚钱的公司","companyNo":"1001","enable":true}', N'Success', N'1478', N'2020-06-20 10:50:32.9252000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'DFC59173-9E35-42C0-802C-9799E4677A7D', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/auth/getUserInfo', N'127.0.0.1:19999', N'GET', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'', N'Success', N'186', N'2020-06-20 11:05:58.4084000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'E0EC0BC0-C25D-47B0-8B56-950AAD0636FA', N'Quartz.Core.QuartzScheduler', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Scheduler meta-data: Quartz Scheduler (v3.0.7.0) ''QuartzScheduler'' with instanceId ''NON_CLUSTERED''
  Scheduler class: ''Quartz.Core.QuartzScheduler'' - running locally.
  NOT STARTED.
  Currently in standby mode.
  Number of jobs executed: 0
  Using thread pool ''Quartz.Simpl.DefaultThreadPool'' - with 10 threads.
  Using job-store ''Quartz.Simpl.RAMJobStore'' - which does not support persistence. and is not clustered.
', N'0', N'2020-06-20 11:05:44.3562000', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'E10B902B-08F0-4128-A078-F4B1B67C3778', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/options/getOption', N'127.0.0.1:19999', N'GET', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'[{"option":"SYSTEM_MENU_SYSTEM"}]', N'', N'Success', N'192', N'2020-06-20 11:05:56.4779000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'E3075C9E-3F25-4B1C-B67F-4759411403A5', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/factory/getAll', N'127.0.0.1:19999', N'GET', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'[{"enable":"true"}]', N'', N'Success', N'636', N'2020-06-20 10:57:01.2876000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'E4BB6283-090A-4358-A80E-5FB7F73B295E', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/factory/getAll', N'127.0.0.1:19999', N'GET', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'[{"enable":"true"}]', N'', N'Success', N'415', N'2020-06-20 10:56:49.6764000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'E531B066-B22C-41FD-8DA9-A3E2095FE509', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/auth/getUserInfo', N'127.0.0.1:19999', N'GET', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'DA939D9C-DA4F-44A6-89CA-99CD98A10244', N'', N'', N'Success', N'304', N'2020-06-20 11:06:13.9912000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'E6EBB9C6-20D1-4742-8685-934D4F3DC58E', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/factory/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"pageIndex":1,"pageSize":10,"orderby":"factoryNo","sort":"descending"}', N'Success', N'356', N'2020-06-20 10:51:16.5626000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'EC2AEA18-0952-4F8C-A719-0C58F7D4828B', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/workshop/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"pageIndex":1,"pageSize":10,"orderby":"workShopNo","sort":"descending"}', N'Success', N'292', N'2020-06-20 10:52:55.1659000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'F4020F6E-C311-4CAF-A139-B44EDF294725', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/auth/loginMiniProgram', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.3 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1 wechatdevtools/1.02.2004020 MicroMessenger/7.0.4 Language/zh_CN webview/', N'FF0FA8D9-E8D9-4A34-AB43-F800C23FF827', N'', N'{"userName":"9999","passWord":"123456"}', N'Success', N'18', N'2020-06-20 10:57:47.5817000', N'115.56.231.94')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'F4D6D261-0E0D-4EB5-AD14-3C2E00243784', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/productprocess/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"pageIndex":1,"pageSize":10,"orderby":"processNo","sort":"descending"}', N'Success', N'271', N'2020-06-20 10:55:20.6928000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'F5B93BE6-5E8E-4A4E-A970-50B1CA64446C', N'Quartz.Impl.StdSchedulerFactory', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Quartz scheduler version: 3.0.7.0', N'0', N'2020-06-20 11:05:44.4292000', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'F679A613-1458-46D4-8D56-D45000C7086F', N'Quartz.Impl.StdSchedulerFactory', N'INFO', N'', N'', N'', N'', N'', N'', N'', N'Quartz scheduler ''QuartzScheduler'' initialized', N'0', N'2020-06-20 11:05:44.3894000', N'')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'F81CC29F-648F-41D9-AE1D-74D8E0CA6C22', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/equipment/query', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"pageIndex":1,"pageSize":10,"orderby":"equipNo","sort":"descending"}', N'Success', N'908', N'2020-06-20 10:56:58.9186000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'F92E6339-DDED-430B-9E07-B31BD248225E', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/factory/create', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', N'86400E5E-B5AC-49C5-A99C-C438DBE7B96B', N'', N'{"factoryName":"华东三期","factoryNo":"2003","enable":true,"companyUID":"74887F03-4422-4851-8802-B3057ACC5F30"}', N'Success', N'916', N'2020-06-20 10:51:51.1450000', N'127.0.0.1')
GO
GO
INSERT INTO [dbo].[Sys_Logs] ([ID], [Logger], [Level], [Url], [Host], [Method], [UserAgent], [Cookie], [QueryString], [Body], [Message], [Elapsed], [CreateTime], [IPAddress]) VALUES (N'FF8CACA3-1116-47C1-BD06-724D1A501010', N'Meiam.System.Hostd.Middleware.RequestMiddleware', N'TRACE', N'/api/auth/loginMiniProgram', N'127.0.0.1:19999', N'POST', N'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.3 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1 wechatdevtools/1.02.2004020 MicroMessenger/7.0.4 Language/zh_CN webview/', N'DD188A69-B5AC-4E93-B030-E12F2BADFE21', N'', N'{"userName":"9999","passWord":"123456"}', N'Success', N'10', N'2020-06-20 11:00:45.6782000', N'115.56.231.94')
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
INSERT INTO [dbo].[Sys_Online] ([UserID], [SessionID], [IPAddress], [LoginTime], [UpdateTime], [Source]) VALUES (N'9999', N'21E9885F-1416-42BA-8408-B84256BE3CF8', N'0.0.0.1', N'2020-06-19 13:33:56.397', N'2020-06-19 15:48:56.440', N'Web')
GO
GO
INSERT INTO [dbo].[Sys_Online] ([UserID], [SessionID], [IPAddress], [LoginTime], [UpdateTime], [Source]) VALUES (N'9999', N'53372033-70D4-4346-9B22-541990C1043A', N'115.56.231.94', N'2020-06-19 11:23:24.200', N'2020-06-19 12:53:57.337', N'Web')
GO
GO
INSERT INTO [dbo].[Sys_Online] ([UserID], [SessionID], [IPAddress], [LoginTime], [UpdateTime], [Source]) VALUES (N'9999', N'6128F024-806F-487F-AA76-59CDF129105C', N'0.0.0.1', N'2020-06-19 09:42:08.827', N'2020-06-19 09:50:33.070', N'Web')
GO
GO
INSERT INTO [dbo].[Sys_Online] ([UserID], [SessionID], [IPAddress], [LoginTime], [UpdateTime], [Source]) VALUES (N'9999', N'DA939D9C-DA4F-44A6-89CA-99CD98A10244', N'127.0.0.1', N'2020-06-20 11:06:13.530', N'2020-06-20 11:06:13.723', N'Web')
GO
GO

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
INSERT INTO [dbo].[Sys_TasksQz] ([ID], [Name], [JobGroup], [Cron], [AssemblyName], [ClassName], [Remark], [RunTimes], [BeginTime], [EndTime], [TriggerType], [IntervalSecond], [IsStart], [JobParams], [CreateTime], [UpdateTime], [CreateID], [CreateName], [UpdateID], [UpdateName]) VALUES (N'E29F2D63-B1B0-4CE6-9CDC-A5F86C52B887', N'生产订单同步', N'数据同步', N'0 0 0/1 * * ? ', N'Meiam.System.Tasks', N'Job_SyncProductOrder', N'[2020-06-20 11:05:44:828] => Run Job [Id：E29F2D63-B1B0-4CE6-9CDC-A5F86C52B887，Group：数据同步]， Succeed ， Elapsed：12.7233 ms', N'744', N'2020-06-19 09:59:29.000', N'9999-12-31 00:00:00.000', N'1', N'1', N'1', null, N'2020-06-19 09:33:53.533', N'2020-06-19 15:00:45.693', N'9999', N'系统管理员', N'9999', N'系统管理员')
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
