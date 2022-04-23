# Meiam.System.Web

Meiam.System 前端源码

[![NODE](https://img.shields.io/badge/NODE-14.x.x-d.svg)](#)
[![NPM](https://img.shields.io/badge/NPM-6.14.x-d.svg)](#)

#### 前端模板

初始模板基于： [https://github.com/elunez/eladmin-web](https://github.com/elunez/eladmin-web)

模板文档： [https://docs.auauz.net/#/](https://docs.auauz.net/#/)

#### Build Setup
``` bash
# 配置镜像加速
npm config set registry https://registry.npm.taobao.org

# 安装依赖
npm install

# 启动服务 localhost:8013
npm run dev

# 构建生产环境
npm run build

```

#### VSCODE 配置

请安装 ESLint & Vetur & Element UI Snippets & Vue 2 Snippets 插件

``` bash

{
  // vscode默认启用了根据文件类型自动设置tabsize的选项
  "editor.detectIndentation": false,
  // 重新设定tabsize
  "editor.tabSize": 2,
  "editor.formatOnSave": true,
  "editor.codeActionsOnSave": {
    "source.fixAll.eslint": true
  },
  "eslint.validate": [
    "vue",
    "html",
    "javascript",
    "typescript"
  ],
  "vetur.validation.template": false, // 使用eslint插件时需要把此项设置为false
  "vetur.validation.script": true, //检查js代码
  "vetur.validation.style": true, //能检查css的属性是否存在,分隔符是否正确，
  "vetur.format.defaultFormatter.html": "js-beautify-html",
  //"prettier"
  "vetur.format.defaultFormatter.js": "prettier",
  "vetur.format.defaultFormatterOptions": {
    "prettier": {
      "semi": false, //分号,默认为true
      "singleQuote": true, //单引号
      //禁止随时添加逗号,这个很重要。找了好久
      "trailingComma": "none"
    },
    "js-beautify-html": {
      "wrap_attributes": "auto",
      // Wrap attributes to new lines [auto|force|force-aligned|force-expand-multiline] ["auto"]
    }
  },
}

``` 


