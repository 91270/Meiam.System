<template>
  <div class="app-container">
    <!-- 搜索区域设置 -->
    <el-row v-if="searchToggle" :gutter="20">
      <el-col>
        <el-form ref="queryForm" :model="queryParams" :inline="true" @submit.native.prevent>
          <el-form-item prop="name">
            <el-input v-model="queryParams.name" placeholder="请输入要查询角色名称" clearable prefix-icon="el-icon-search" @keyup.enter.native="handleQuery" @clear="handleQuery" />
          </el-form-item>
          <el-form-item>
            <el-button type="primary" icon="el-icon-search" @click="handleQuery">搜索</el-button>
            <el-button icon="el-icon-refresh" @click="handleReset">重置</el-button>
          </el-form-item>
        </el-form>
      </el-col>
    </el-row>

    <!-- 相关操作按钮 -->

    <el-row type="flex" class="mb8">
      <el-button v-permission="['PRIV_ROLES_CREATE']" type="success" icon="el-icon-plus" size="mini" @click="handleCreate()">新增</el-button>
      <el-button-group class="ml">
        <el-button size="mini" plain type="info" icon="el-icon-search" @click="handleSearch" />
        <el-button size="mini" icon="el-icon-refresh" @click="handleQuery" />
      </el-button-group>
    </el-row>

    <!-- 表格内容设置 -->

    <el-row>
      <el-table v-loading="loading" :data="dataResult.dataSource" row-key="id" stripe border :default-sort="{prop: queryParams.orderby, order: queryParams.sort}" @sort-change="handleSortable">
        <el-table-column type="index" :index="handleIndexCalc" label="#" align="center" />
        <el-table-column prop="name" label="角色名称" sortable :show-overflow-tooltip="true" />
        <el-table-column prop="remark" :show-overflow-tooltip="true" label="角色备注" align="center" />
        <el-table-column prop="createTime" label="创建时间" sortable align="center" />
        <el-table-column label="操作" align="center" width="200" class-name="small-padding fixed-width">
          <template slot-scope="scope">
            <el-button-group>
              <el-button v-permission="['PRIV_ROLES_UPDATE']" type="info" size="mini" icon="el-icon-edit" @click="handleUpdate(scope.row)" />
              <el-button v-permission="['PRIV_ROLES_DELETE']" type="danger" size="mini" icon="el-icon-delete" @click="handleDelete(scope.row)" />
            </el-button-group>
          </template>
        </el-table-column>
      </el-table>
      <pagination v-show="total > 0" :total="total" :page.sync="queryParams.pageIndex" :limit.sync="queryParams.pageSize" @pagination="getList" />
    </el-row>

    <!-- 添加或修改角色对话框 -->

    <el-dialog :title="title" :visible.sync="open" width="800px" append-to-body :close-on-click-modal="false" @close="cancel">
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-row>
          <el-col :span="24">
            <el-form-item label="角色名称" maxlength="50" prop="name">
              <el-input v-model="form.name" placeholder="请输入角色名称" />
            </el-form-item>
          </el-col>
          <el-col :span="24">
            <el-form-item label="角色备注" prop="remark">
              <el-input v-model="form.remark" type="textarea" :autosize="{minRows:2}" show-word-limit maxlength="100" placeholder="请输入角色备注" />
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
  queryRole,
  createRole,
  updateRole,
  deleteRole
} from '@/api/users/roles'
export default {
  name: 'roles',
  data() {
    return {
      // 遮罩层
      loading: true,
      // 返回结果集
      dataResult: [],
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
        sort: 'ascending'
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        name: [{ required: true, message: '角色名称不能为空', trigger: 'blur' }]
      },
      // 搜索条显示
      searchToggle: true
    }
  },
  created() {
    this.getList()
  },
  methods: {
    handleSearch() {
      this.searchToggle = !this.searchToggle
    },
    /** 查询列表 */
    getList() {
      this.loading = true
      queryRole(this.queryParams).then(response => {
        this.dataResult = response.data
        this.total = this.dataResult.totalCount
        this.loading = false
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
      this.open = true
      this.title = '添加角色'
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset()
      this.form = row
      this.open = true
      this.title = '修改角色'
    },
    /** 提交按钮 */
    submitForm: function() {
      this.$refs['form'].validate(valid => {
        if (valid) {
          if (this.form.id !== undefined) {
            updateRole(this.form).then(response => {
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
            createRole(this.form).then(response => {
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
          deleteRole(row.id).then(response => {
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
