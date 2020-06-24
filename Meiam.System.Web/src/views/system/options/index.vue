<template>
  <div class="app-container">
    <!-- 搜索区域设置 -->
    <el-row v-if="searchToggle" :gutter="20">
      <el-col>
        <el-form ref="queryForm" :model="queryParams" :inline="true" @submit.native.prevent>
          <el-form-item prop="queryText">
            <el-input v-model="queryParams.queryText" placeholder="请输入要查询字典名称" clearable prefix-icon="el-icon-search" @keyup.enter.native="handleQuery" @clear="handleQuery" />
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
      <el-button v-permission="['PRIV_OPTIONS_CREATE']" type="success" icon="el-icon-plus" size="mini" @click="handleCreate()">新增</el-button>
      <el-button-group class="ml">
        <el-button size="mini" plain type="info" icon="el-icon-search" @click="handleSearch" />
        <el-button size="mini" icon="el-icon-refresh" @click="handleQuery" />
      </el-button-group>
    </el-row>

    <!-- 表格内容设置 -->

    <el-row>
      <el-table v-loading="loading" :data="dataResult.dataSource" row-key="id" stripe border :default-sort="{prop: queryParams.orderby, order: queryParams.sort}" @sort-change="handleSortable">
        <el-table-column type="index" :index="handleIndexCalc" label="#" align="center" />
        <el-table-column prop="option" label="字典名称" sortable :show-overflow-tooltip="true" />
        <el-table-column prop="label" label="标签" align="center" />
        <el-table-column prop="value" label="值" sortable align="center" />
        <el-table-column prop="sortIndex" label="排序" sortable align="center" />
        <el-table-column prop="remark" :show-overflow-tooltip="true" label="备注" sortable align="center" />
        <el-table-column label="操作" align="center" width="200" class-name="small-padding fixed-width">
          <template slot-scope="scope">
            <el-button-group>
              <el-button v-permission="['PRIV_OPTIONS_UPDATE']" type="info" size="mini" icon="el-icon-edit" @click="handleUpdate(scope.row)" />
              <el-button v-permission="['PRIV_OPTIONS_DELETE']" type="danger" size="mini" icon="el-icon-delete" @click="handleDelete(scope.row)" />
            </el-button-group>
          </template>
        </el-table-column>
      </el-table>
      <pagination v-show="total > 0" :total="total" :page.sync="queryParams.pageIndex" :limit.sync="queryParams.pageSize" @pagination="getList" />
    </el-row>

    <!-- 添加或修改字典对话框 -->

    <el-dialog :title="title" :visible.sync="open" width="800px" append-to-body :close-on-click-modal="false" @close="cancel">
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-row>
          <el-col :span="24">
            <el-form-item label="字典名称" prop="option">
              <el-input v-model="form.option" maxlength="50" placeholder="请输入字典名称" />
            </el-form-item>
          </el-col>
          <el-col :span="24">
            <el-form-item label="标签" prop="label">
              <el-input v-model="form.label" maxlength="50" placeholder="请输入标签(label)" />
            </el-form-item>
          </el-col>
          <el-col :span="24">
            <el-form-item label="值" prop="value">
              <el-input v-model="form.value" maxlength="50" placeholder="请输入值(Value)" />
            </el-form-item>
          </el-col>
          <el-col :span="24">
            <el-form-item label="排序" prop="sortIndex">
              <el-input-number v-model="form.sortIndex" :max="999" step-strictly controls-position="right" :min="0" />
            </el-form-item>
          </el-col>
          <el-col :span="24">
            <el-form-item label="字典备注" prop="remark">
              <el-input v-model="form.remark" type="textarea" :autosize="{minRows:2}" show-word-limit maxlength="100" placeholder="请输入字典备注" />
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
  queryOption,
  createOption,
  updateOption,
  deleteOption
} from '@/api/system/options'
export default {
  name: 'options',
  data() {
    return {
      // 搜索条显示
      searchToggle: true,
      // 遮罩层
      loading: true,
      // 菜单表格树数据
      dataResult: [],
      // 弹出层标题
      title: '',
      // 是否显示弹出层
      open: false,
      // 合计条数
      total: 0,
      // 查询参数
      queryParams: {
        queryText: undefined,
        pageIndex: 1,
        pageSize: 10,
        orderby: 'createTime',
        sort: 'ascending'
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        option: [
          { required: true, message: '字典名称不能为空', trigger: 'blur' }
        ],
        label: [{ required: true, message: 'lable不能为空', trigger: 'blur' }],
        value: [{ required: true, message: 'value不能为空', trigger: 'blur' }],
        sortIndex: [
          { required: true, message: '排序不能为空', trigger: 'blur' }
        ]
      }
    }
  },
  created() {
    this.getList()
  },
  methods: {
    handleSearch() {
      this.searchToggle = !this.searchToggle
    },
    /** 查询菜单列表 */
    getList() {
      this.loading = true
      queryOption(this.queryParams).then(response => {
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
        option: undefined,
        label: undefined,
        value: undefined,
        sortIndex: 1,
        remark: undefined
      }
    },
    /** 重置按钮操作 */
    handleReset() {
      this.queryParams.queryText = ''
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
      this.title = '添加字典'
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset()
      this.form = row
      this.open = true
      this.title = '修改菜单'
    },
    /** 提交按钮 */
    submitForm: function() {
      this.$refs['form'].validate(valid => {
        if (valid) {
          if (this.form.id !== undefined) {
            updateOption(this.form).then(response => {
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
            createOption(this.form).then(response => {
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
      this.$confirm(
        '是否确认删除名称为"' + row.option + ' - ' + row.label + '"的数据项?',
        '警告',
        {
          confirmButtonText: '确定',
          cancelButtonText: '取消',
          type: 'warning'
        }
      )
        .then(() => {
          deleteOption(row.id).then(response => {
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
