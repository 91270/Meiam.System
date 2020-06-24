### Meiam.System - NET Core 3.1 WebAPI + Vue 2.0 + RBAC 企业级前后端分离权限框架

[![.NET CORE](https://img.shields.io/badge/.NET%20Core-3.1-d.svg)](#)  [![SQLSUGAR](https://img.shields.io/badge/SQLSUGAR-5.X-d.svg)](#)  [![VUE](https://img.shields.io/badge/VUE-2.6.10-d.svg)](#)
[![博客](https://img.shields.io/badge/博客-Meiam's%20Home-brightgreen.svg)](https://www.592.la/)



&nbsp;

## 给个星星! ⭐️
如果你喜欢这个项目或者它帮助你, 请给 Star~（辛苦星咯）



&nbsp;

## 框架介绍

``` bash

- [x] 采用 服务 + 接口 的形式封装框架 （移除了仓库层）
- [x] 采用 REDIS 存储会话（用户信息 / 用户权限）- 更好的支持分布式应用、用户踢出、登录登出等功能
- [x] 采用 Autofac 依赖注入 IoC 容器, 实现批量自动注入所有服务
- [x] 采用 SqlSugar ORM 组件, DBFirst 开发模式, 封装 BaseService 数据库基础操作类
- [x] 采用 CSRedis 封装缓存层, 可结合 SqlSugar WithCache + RemoveDataCache 自动管理缓存
- [x] 采用 Swagger  自动生成 WebAPI 说明文档
- [x] 采用 Mapster 高性能对象映射, 代码书写更简洁 
- [x] 采用 NLog 日志组件, 集成  Microsoft.Extensions.Logging （ILogger 注入）操作日志
- [x] 采用 NLog.Web.AspNetCore 日志扩展组件, 增加 layout 更多属性
- [x] 采用 Quartz.Net 封装任务调度中心功能
- [x] 封装全局 会话 管理器 （用户 Token 会话管理）
- [x] 封装全局 权限 拦截器 （用户 Permission 权限管理）
- [x] 封装全局 异常 拦截器 （自动记录系统异常日志）
- [x] 封装全局 请求 拦截器 （自动记录接口请求日志）
- [x] 支持 用户功能权限、 用户数据权限分配
- [x] 支持 CORS 跨域配置
- [x] 支持代码生成器，自动生成 Model 、Service 、 IService 层
- [x] 支持跨方法事务方案,把事务提取到逻辑层进行统一事务提交,让你的代码更加漂亮
- [x] 支持多种数据库 Sqlite/SqlServer/MySql/PostgreSQL/Oracle 自由切换
- [x] 支持数据库 读写分离 和 多库 操作 
- [ ] 计划 RabbitMQ 消息列队集成
- [ ] 计划 ImCore 及时通讯组件集成

``` 


&nbsp;

## 后端功能 （.Net Core）

还在陆续整理中



&nbsp;

## 前端功能 （Vue）

还在陆续整理中



&nbsp;

## 使用文档 （相关配置）

还在陆续整理中



&nbsp;
