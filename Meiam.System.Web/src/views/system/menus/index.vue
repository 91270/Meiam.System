<template>
  <div class="app-container">
    <el-row v-if="searchToggle" :gutter="20">
      <el-col>
        <el-form :inline="true" @submit.native.prevent>
          <el-form-item>
            <el-select v-model="queryParams.system" filterable placeholder="请选择系统" style="width:100%" @change="handleSelectSystem">
              <el-option v-for="item in systemOptions" :key="item.value" clearable :label="item.label" :value="item.value" />
            </el-select>
          </el-form-item>
          <el-form-item>
            <el-input v-model="queryParams.name" placeholder="请输入菜单名称" clearable prefix-icon="el-icon-search" @keyup.enter.native="handleQuery" @clear="handleQuery" />
          </el-form-item>
          <el-form-item>
            <el-button type="primary" icon="el-icon-search" @click="handleQuery">搜索</el-button>
            <el-button icon="el-icon-refresh" @click="handleReset">重置</el-button>
          </el-form-item>
        </el-form>
      </el-col>
    </el-row>
    <el-row type="flex" class="mb8">
      <el-button v-permission="['PRIV_MENUS_CREATE']" type="success" icon="el-icon-plus" size="mini" @click="handleCreate(-1)">新增</el-button>
      <el-button-group style="margin-left: auto;">
        <el-button size="mini" plain type="info" icon="el-icon-search" @click="handleSearch" />
        <el-button size="mini" icon="el-icon-refresh" @click="handleQuery" />
      </el-button-group>
    </el-row>

    <el-row>
      <el-table v-loading="loading" :data="menuList" row-key="id" stripe border :tree-props="{children: 'children', hasChildren: 'hasChildren'}">
        <el-table-column prop="name" maxlength="50" label="菜单名称" :show-overflow-tooltip="true" width="200" />
        <el-table-column prop="icon" label="图标" align="center" width="100">
          <template slot-scope="scope">
            <svg-icon :icon-class="scope.row.icon" />
          </template>
        </el-table-column>
        <el-table-column prop="sortIndex" label="排序" align="center" width="60" />
        <el-table-column prop="isFrame" :formatter="isFrameformat" label="是否外链" align="center" width="80" />
        <el-table-column prop="viewPower" label="权限标识" align="center" :show-overflow-tooltip="true" />
        <el-table-column prop="path" label="路由地址" align="center" :show-overflow-tooltip="true" />
        <el-table-column prop="component" label="组件路径" align="center" :show-overflow-tooltip="true" />
        <el-table-column prop="keepAlive" :formatter="Aliveformat" label="是否缓存" align="center" width="80" />
        <el-table-column prop="hidden" :formatter="Hiddenformat" label="状态" align="center" width="80" />
        <el-table-column label="操作" align="center" width="200" class-name="small-padding fixed-width">
          <template slot-scope="scope">
            <el-button-group>
              <el-button v-permission="['PRIV_MENUS_UPDATE']" type="info" size="mini" icon="el-icon-edit" @click="handleUpdate(scope.row)" />
              <el-button v-permission="['PRIV_MENUS_DELETE']" type="danger" size="mini" icon="el-icon-delete" @click="handleDelete(scope.row)" />
            </el-button-group>
          </template>
        </el-table-column>
      </el-table>
    </el-row>

    <!-- 添加或修改菜单对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="800px" append-to-body :close-on-click-modal="false" @close="cancel">
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-row>
          <el-col :span="24">
            <el-form-item label="菜单类型" prop="type">
              <el-radio-group v-model="form.type">
                <el-radio-button :label="0">目录</el-radio-button>
                <el-radio-button :label="1">菜单</el-radio-button>
              </el-radio-group>
            </el-form-item>
          </el-col>
          <el-col :span="24">
            <el-form-item label="上级菜单">
              <treeselect v-model="form.parentUID" :class="size" :load-options="loadOptions" :options="menuOptions" :normalizer="normalizer" :show-count="true" no-results-text="没有查询到菜单" placeholder="选择上级菜单" />
            </el-form-item>
          </el-col>
          <el-col :span="24">
            <el-form-item label="菜单图标">
              <el-popover placement="bottom-start" width="680" trigger="click" @show="$refs['iconSelect'].reset()">
                <IconSelect ref="iconSelect" @selected="selected" />
                <el-input slot="reference" v-model="form.icon" placeholder="点击选择图标" readonly>
                  <svg-icon v-if="form.icon" slot="prefix" :icon-class="form.icon" class="el-input__icon" style="height: 32px;width: 16px;" />
                  <i v-else slot="prefix" class="el-icon-search el-input__icon" />
                </el-input>
              </el-popover>
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="菜单名称" prop="name">
              <el-input v-model="form.name" maxlength="50" placeholder="请输入菜单名称" />
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="显示排序" prop="sortIndex">
              <el-input-number v-model="form.sortIndex" :max="999" step-strictly controls-position="right" :min="0" />
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="路由地址" prop="path">
              <el-input v-model="form.path" maxlength="50" placeholder="请输入路由地址" />
            </el-form-item>
          </el-col>
          <el-col v-if="form.type == 1" :span="12">
            <el-form-item label="组件路径" prop="component">
              <el-input v-model="form.component" maxlength="255" placeholder="请输入组件路径" />
            </el-form-item>
          </el-col>
          <el-col v-if="form.type == 1" :span="12">
            <el-form-item label="权限标识" prop="viewPower">
              <el-autocomplete v-model="form.viewPower" value-key="name" :maxlength="50" :fetch-suggestions="handlePowerSearch" placeholder="请选择权限标识" style="width:100%">
                <template slot-scope="{ item }">
                  {{ item.name }} | {{ item.description }}
                </template>
              </el-autocomplete>
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="是否外链" prop="isFrame">
              <el-radio-group v-model="form.isFrame">
                <el-radio :label="true">是</el-radio>
                <el-radio :label="false">否</el-radio>
              </el-radio-group>
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="显示状态" prop="hidden">
              <el-radio-group v-model="form.hidden">
                <el-radio :label="false">是</el-radio>
                <el-radio :label="true">否</el-radio>
              </el-radio-group>
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="是否缓存" prop="keepAlive">
              <el-radio-group v-model="form.keepAlive">
                <el-radio :label="true">是</el-radio>
                <el-radio :label="false">否</el-radio>
              </el-radio-group>
            </el-form-item>
          </el-col>
        </el-row>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="open = false">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import {
  queryMenu,
  createMenu,
  updateMenu,
  deleteMenu
} from '@/api/system/menus'
import { getOption } from '@/api/system/options'
import { queryPower } from '@/api/system/powers'
import Treeselect from '@riophae/vue-treeselect'
import '@riophae/vue-treeselect/dist/vue-treeselect.css'
import IconSelect from '@/components/IconSelect'
export default {
  name: 'menus',
  components: { Treeselect, IconSelect },
  data() {
    return {
      // 遮罩层
      loading: true,
      // 菜单表格树数据
      menuList: [],
      // 菜单树选项
      menuOptions: [],
      // 菜单树选项
      powerOptions: [],
      // 弹出层标题
      title: '',
      // 是否显示弹出层
      open: false,
      // 归属系统选项
      systemOptions: [],
      // 查询参数
      queryParams: {
        name: undefined,
        system: '0'
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        name: [
          { required: true, message: '菜单名称不能为空', trigger: 'blur' }
        ],
        sortIndex: [
          { required: true, message: '菜单顺序不能为空', trigger: 'blur' }
        ],
        path: [{ required: true, message: '路由地址不能为空', trigger: 'blur' }]
      },
      // 搜索条显示
      searchToggle: true
    }
  },
  computed: {
    size() {
      return this.$store.getters.size
    }
  },
  created() {
    getOption('SYSTEM_MENU_SYSTEM').then((response) => {
      this.systemOptions = response.data
    })
    this.getList()
  },
  methods: {
    loadOptions({ action, parentNode, callback }) {},
    // 选择图标
    selected(name) {
      this.form.icon = name
    },

    handleSearch() {
      this.searchToggle = !this.searchToggle
    },
    /** 查询菜单列表 */
    getList() {
      this.loading = true
      queryMenu(this.queryParams).then((response) => {
        this.menuList = response.data
        this.loading = false
      })
    },
    /** 转换菜单数据结构 */
    normalizer(node) {
      if (node.children && !node.children.length) {
        delete node.children
      }
      return {
        id: node.id,
        label: node.name,
        children: node.children
      }
    },
    /** 查询菜单下拉树结构 */
    getTreeselect() {
      queryMenu(this.queryParams).then((response) => {
        this.menuOptions = []
        const menu = {
          id: '-1',
          name: '根菜单',
          children: [],
          hasChildren: true
        }
        menu.children = response.data
        this.menuOptions.push(menu)
      })
    },
    // 取消按钮
    cancel() {
      this.open = false
      this.reset()
      this.getList()
    },
    // 表单重置
    reset() {
      this.form = {
        id: undefined,
        type: 0,
        parentUID: '-1',
        name: undefined,
        icon: undefined,
        sortIndex: 1,
        isFrame: false,
        hidden: false,
        keepAlive: false,
        system: '0'
      }
    },
    /** 重置按钮操作 */
    handleReset() {
      this.queryParams.name = ''
      this.getList()
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.getList()
    },
    /** 新增按钮操作 */
    handleCreate(id) {
      this.reset()
      this.getTreeselect()
      this.form.parentUID = id
      this.open = true
      this.title = '添加菜单'
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset()
      this.getTreeselect()
      row.parentUID = row.parentUID === null ? '-1' : row.parentUID
      this.form = row
      this.open = true
      this.title = '修改菜单'
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs['form'].validate((valid) => {
        if (valid) {
          debugger
          this.form.system = this.queryParams.system
          if (this.form.id !== undefined) {
            updateMenu(this.form).then((response) => {
              if (response.statusCode === 200) {
                this.$message({
                  message: '修改成功',
                  type: 'success'
                })
                this.open = false
                this.getList()
              }
            })
          } else {
            createMenu(this.form).then((response) => {
              if (response.statusCode === 200) {
                this.$message({
                  message: '新增成功',
                  type: 'success'
                })
                this.open = false
                this.getList()
              }
            })
          }
        }
      })
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      this.$confirm('是否确认删除名称为"' + row.name + '"的数据项?', '警告', {
        confirmButtonText: '确定',
        cancelButtonText: '取消',
        type: 'warning'
      }).then(() => {
        deleteMenu(row.id).then((response) => {
          if (response.statusCode === 200) {
            this.getList()
            this.$message({
              message: '删除成功',
              type: 'success'
            })
          }
        })
      })
    },
    // 转化表格内容是否为外链
    isFrameformat(row, column) {
      if (row.isFrame === true) {
        return '是'
      } else {
        return '否'
      }
    },
    // 转化表格内容是否为显示
    Hiddenformat(row, column) {
      if (row.hidden === true) {
        return '隐藏'
      } else {
        return '显示'
      }
    },
    // 转化是否缓存
    Aliveformat(row, column) {
      if (row.keepAlive === true) {
        return '是'
      } else {
        return '否'
      }
    },

    handlePowerSearch(queryString, cb) {
      queryPower({ name: queryString }).then((response) => {
        cb(response.data.dataSource)
      })
    },
    // 选择用户层级
    handleSelectSystem(e) {
      console.log(e)
      this.queryParams.system = e
      this.getList()
    }
  }
}
</script>
