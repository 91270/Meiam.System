<template>
  <div class="app-container">
    <!-- 搜索区域设置 -->
    <el-row v-if="searchToggle" :gutter="20">
      <el-col>
        <el-form ref="queryForm" :model="queryParams" :inline="true" @submit.native.prevent>
          <el-form-item prop="name">
            <el-input v-model="queryParams.name" placeholder="请输入要查询权限名称/系统页面" clearable prefix-icon="el-icon-search" @keyup.enter.native="handleQuery" @clear="handleQuery" />
          </el-form-item>
          <el-form-item>
            <el-button type="primary" icon="el-icon-search" @click="handleQuery">搜索</el-button>
            <el-button icon="el-icon-refresh" @click="handleReset">重置
            </el-button>
          </el-form-item>
        </el-form>
      </el-col>
    </el-row>

    <!-- 相关操作按钮 -->

    <el-row type="flex" class="mb8">
      <el-button v-permission="['PRIV_POWERS_CREATE']" type="success" icon="el-icon-plus" size="mini" @click="handleCreate()">新增</el-button>
      <el-button-group class="ml">
        <el-button size="mini" plain type="info" icon="el-icon-search" @click="handleSearch" />
        <el-button size="mini" icon="el-icon-refresh" @click="handleQuery" />
      </el-button-group>
    </el-row>

    <!-- 表格内容设置 -->

    <el-row>
      <el-table v-loading="loading" :height="tableHeight" :data="dataResult.dataSource" row-key="id" stripe border :default-sort="{prop: queryParams.orderby, order: queryParams.sort}" @sort-change="handleSortable">
        <el-table-column type="index" :index="handleIndexCalc" label="#" align="center" />
        <el-table-column prop="name" label="权限标识" sortable :show-overflow-tooltip="true" />
        <el-table-column prop="page" label="系统页面" sortable align="center" />
        <el-table-column prop="description" label="权限描述" align="center" />
        <el-table-column prop="remark" :show-overflow-tooltip="true" label="备注" align="center" />
        <el-table-column prop="createTime" label="创建时间" sortable align="center" />
        <el-table-column label="操作" align="center" width="200" class-name="small-padding fixed-width">
          <template slot-scope="scope">
            <el-button-group>
              <el-button v-permission="['PRIV_POWERS_UPDATE']" type="info" size="mini" icon="el-icon-edit" @click="handleUpdate(scope.row)" />
              <el-button v-permission="['PRIV_POWERS_DELETE']" type="danger" size="mini" icon="el-icon-delete" @click="handleDelete(scope.row)" />
            </el-button-group>
          </template>
        </el-table-column>
      </el-table>
      <pagination v-show="total > 0" :total="total" :page.sync="queryParams.pageIndex" :limit.sync="queryParams.pageSize" @pagination="getList" />
    </el-row>

    <!-- 添加或修改权限对话框 -->

    <el-dialog :title="title" :visible.sync="open" width="800px" append-to-body :close-on-click-modal="false" @close="cancel">
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-row>
          <el-col :span="24">
            <el-form-item label="系统页面" prop="page">
              <treeselect v-model="form.page" value="name" :load-options="loadOptions" :options="menuOptions" :normalizer="normalizer" :show-count="true" no-results-text="没有查询到菜单" placeholder="请输入权限所属的系统页面" />
            </el-form-item>
          </el-col>
          <el-col :span="24">
            <el-form-item label="权限名称" maxlength="50" prop="name">
              <el-input v-model="form.name" placeholder="请输入权限名,称命令规范（PRIV_[页面]_[动作]）" />
            </el-form-item>
          </el-col>
          <el-col :span="24">
            <el-form-item label="权限描述" prop="description">
              <el-select v-model="form.description" placeholder="请选择权限描述" clearable filterable allow-create default-first-option>
                <el-option v-for="item in descriptionOptions" :key="item.value" :label="item.label" :value="item.value" />
              </el-select>
            </el-form-item>
          </el-col>
          <el-col :span="24">
            <el-form-item label="权限备注" prop="remark">
              <el-input v-model="form.remark" type="textarea" :autosize="{minRows:2}" maxlength="100" show-word-limit placeholder="请输入权限备注" />
            </el-form-item>
          </el-col>
        </el-row>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button v-preventReClick type="primary" @click="submitForm">确 定
        </el-button>
        <el-button @click="open = false">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import {
  queryPower,
  createPower,
  updatePower,
  deletePower
} from '@/api/system/powers'
import { getOption } from '@/api/system/options'
import { queryMenu } from '@/api/system/menus'
import Treeselect from '@riophae/vue-treeselect'
import '@riophae/vue-treeselect/dist/vue-treeselect.css'
export default {
  name: 'powers',
  components: { Treeselect },
  data() {
    return {
      // 表格高度
      tableHeight: window.innerHeight - 275,
      // 遮罩层
      loading: true,
      // 返回结果集
      dataResult: [],
      // 菜单树选项
      menuOptions: [],
      // 权限描述选择框
      descriptionOptions: [],
      // 弹出层标题
      title: '',
      // 是否显示弹出层
      open: false,
      // 合计条数
      total: 0,
      // 查询参数
      queryParams: {
        name: undefined,
        pageIndex: 1,
        pageSize: 10,
        orderby: 'createTime',
        sort: 'descending'
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        name: [
          { required: true, message: '权限名称不能为空', trigger: 'blur' }
        ],
        page: [
          {
            required: true,
            message: '权限所属的系统页面不能为空',
            trigger: 'blur'
          }
        ],
        description: [
          { required: true, message: '权限描述不能为空', trigger: 'blur' }
        ]
      },
      // 搜索条显示
      searchToggle: true
    }
  },
  created() {
    getOption('SYSTEM_POWER_DESCRIPTION').then(response => {
      this.descriptionOptions = response.data
    })
    this.getList()
  },
  methods: {
    loadOptions({ action, parentNode, callback }) {},
    // 隐藏搜索
    handleSearch() {
      this.searchToggle = !this.searchToggle
    },
    /** 查询列表 */
    getList() {
      this.loading = true
      queryPower(this.queryParams).then(response => {
        this.dataResult = response.data
        this.total = this.dataResult.totalCount
        this.loading = false
      })
    },
    /** 转换菜单数据结构 */
    normalizer(node) {
      if (node.children && !node.children.length) {
        delete node.children
      }
      return {
        id: node.name,
        label: node.name,
        children: node.children
      }
    },
    /** 查询菜单下拉树结构 */
    getTreeselect() {
      queryMenu({}).then(response => {
        this.menuOptions = response.data
      })
    },
    // 取消按钮
    cancel() {
      this.open = false
      this.reset()
    },
    // 表单重置
    reset() {
      this.form = {
        id: undefined,
        name: undefined,
        page: undefined,
        description: undefined,
        remark: undefined
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
    handleCreate(row) {
      this.reset()
      this.getTreeselect()
      this.open = true
      this.title = '添加权限'
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset()
      this.getTreeselect()
      this.form = row
      this.open = true
      this.title = '修改权限'
    },
    /** 提交按钮 */
    submitForm: function() {
      this.$refs['form'].validate(valid => {
        if (valid) {
          if (this.form.id !== undefined) {
            updatePower(this.form).then(response => {
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
            createPower(this.form).then(response => {
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
      })
        .then(() => {
          deletePower(row.id).then(response => {
            if (response.statusCode === 200) {
              this.getList()
              this.$message({
                message: '删除成功',
                type: 'success'
              })
            }
          })
        })
        .catch(function() {})
    },
    // 自动计算分页 Id
    handleIndexCalc(index) {
      return (
        (this.queryParams.pageIndex - 1) * this.queryParams.pageSize + index + 1
      )
    },
    // 排序操作
    handleSortable(val) {
      this.queryParams.orderby = val.prop
      this.queryParams.sort = val.order
      this.getList()
    }
  }
}
</script>
