<template>
  <div class="app-container">
    <el-row v-if="searchToggle" :gutter="20">
      <el-col>
        <el-form :inline="true" @submit.native.prevent>
          <el-form-item>
            <el-input v-model="queryParams.queryText" placeholder="请输入计划任务名称" clearable prefix-icon="el-icon-search" @keyup.enter.native="handleQuery" @clear="handleQuery" />
          </el-form-item>
          <el-form-item>
            <el-button type="primary" icon="el-icon-search" @click="handleQuery">搜索</el-button>
            <el-button icon="el-icon-refresh" @click="handleReset">重置</el-button>
          </el-form-item>
        </el-form>
      </el-col>
    </el-row>
    <el-row type="flex" class="mb8">
      <el-button v-permission="['PRIV_TASKS_CREATE']" type="success" icon="el-icon-plus" size="mini" @click="handleCreate">新增计划任务</el-button>
      <el-button-group style="margin-left: auto;">
        <el-button size="mini" plain type="info" icon="el-icon-search" @click="handleSearch" />
        <el-button size="mini" icon="el-icon-refresh" @click="handleQuery" />
      </el-button-group>
    </el-row>
    <el-row>
      <el-table ref="tasks" v-loading="loading" :data="dataTasks" row-key="id" stripe border :height="tableHeight*0.65" :default-sort="{prop: queryParams.orderby, order: queryParams.sort}" @sort-change="handleSortable">
        <el-table-column type="index" :index="handleIndexCalc" label="#" align="center" />
        <el-table-column sortable prop="name" align="center" :show-overflow-tooltip="true" label="任务名称" width="150" />
        <el-table-column sortable prop="jobGroup" :show-overflow-tooltip="true" align="center" label="任务分组" width="150" />
        <el-table-column sortable prop="assemblyName" align="center" label="程序集名称" width="150" />
        <el-table-column sortable prop="className" align="center" label="任务类名" width="150" />
        <el-table-column sortable prop="triggerType" align="center" label="触发器类型" width="120" />
        <el-table-column sortable prop="runTimes" align="center" label="执行次数" width="120" />
        <el-table-column sortable prop="cron" align="center" label="运行时间表达式" width="150" />
        <el-table-column sortable prop="isStart" align="center" label="是否启动" width="100">
          <template slot-scope="scope">
            <el-tag size="medium" :type="scope.row.isStart ? 'success' : 'danger'" disable-transitions>{{ scope.row.isStart ? "启动":"停止" }}</el-tag>
          </template>
        </el-table-column>
        <el-table-column prop="remark" align="center" width="100" label="日志">
          <template slot-scope="scope">
            <el-popover trigger="hover" title="最后一次执行日志" width="600" placement="top">
              <p>{{ scope.row.remark }}</p>
              <div slot="reference" class="name-wrapper">
                <el-tag size="medium">查看</el-tag>
              </div>
            </el-popover>
          </template>
        </el-table-column>
        <el-table-column label="操作" align="center" width="190" class-name="small-padding fixed-width">
          <template slot-scope="scope">
            <el-button-group>
              <el-button v-show="!scope.row.isStart" v-permission="['PRIV_TASKS_UPDATE']" type="success" size="mini" icon="el-icon-video-play" @click="handleStart(scope.row)" />
              <el-button v-show="scope.row.isStart" v-permission="['PRIV_TASKS_UPDATE']" type="warning" size="mini" icon="el-icon-video-pause" @click="handleStop(scope.row)" />
              <el-button v-permission="['PRIV_TASKS_UPDATE']" type="info" size="mini" icon="el-icon-edit" @click="handleUpdate(scope.row)" />
              <el-button v-permission="['PRIV_TASKS_DELETE']" type="danger" size="mini" icon="el-icon-delete" @click="handleDelete(scope.row)" />
            </el-button-group>
          </template>
        </el-table-column>
      </el-table>
      <pagination v-show="total > 0" :total="total" :page.sync="queryParams.pageIndex" :limit.sync="queryParams.pageSize" @pagination="getList" />
    </el-row>

    <el-dialog :title="title" :visible.sync="open" width="800px" append-to-body :close-on-click-modal="false" @close="cancel">
      <el-form ref="form" :model="form" :rules="rules" label-width="150px">
        <el-row>
          <el-col :span="24">
            <el-form-item label="任务名称" maxlength="200" prop="name">
              <el-input v-model="form.name" placeholder="请输入任务名称" />
            </el-form-item>
          </el-col>
          <el-col :span="24">
            <el-form-item label="任务分组" maxlength="200" prop="jobGroup">
              <el-input v-model="form.jobGroup" placeholder="请输入任务分组" />
            </el-form-item>
          </el-col>
          <el-col :span="24">
            <el-form-item label="程序集名称" maxlength="200" prop="assemblyName">
              <el-input v-model="form.assemblyName" placeholder="请输入程序集名称" />
            </el-form-item>
          </el-col>
          <el-col :span="24">
            <el-form-item label="任务类名" maxlength="200" prop="className">
              <el-input v-model="form.className" placeholder="请输入任务类名" />
            </el-form-item>
          </el-col>
          <el-col :span="24">
            <el-form-item label="传入参数" prop="jobParams">
              <el-input v-model="form.jobParams" placeholder="传入参数" />
            </el-form-item>
          </el-col>
          <el-col :span="24">
            <el-form-item label="触发器类型" prop="triggerType">
              <el-select v-model="form.triggerType" placeholder="请选择触发器类型" style="width:100%">
                <el-option v-for="item in triggerTypeOptions" :key="item.value" :label="item.label" :value="parseInt(item.value)" />
              </el-select>
            </el-form-item>
          </el-col>
          <el-col :span="24">
            <el-form-item v-show="form.triggerType == 1" label="运行时间表达式" prop="cron">
              <el-input v-model="form.cron" placeholder="请输入运行时间表达式" />
            </el-form-item>
          </el-col>
          <el-col :span="24">
            <el-form-item v-show="form.triggerType == 0" label="开始日期" prop="beginTime">
              <el-date-picker v-model="form.beginTime" style="width:100%" type="date" placeholder="选择开始日期" />
            </el-form-item>
          </el-col>
          <el-col :span="24">
            <el-form-item v-show="form.triggerType == 0" label="结束日期" prop="endTime">
              <el-date-picker v-model="form.endTime" style="width:100%" type="date" placeholder="选择结束日期" />
            </el-form-item>
          </el-col>
          <el-col :span="24">
            <el-form-item v-show="form.triggerType == 0" label="执行间隔(单位:秒)" prop="intervalSecond">
              <el-input-number v-model="form.intervalSecond" :max="9999999999" step-strictly controls-position="right" :min="1" />
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
  queryTasks,
  createTasks,
  updateTasks,
  deleteTasks,
  startTasks,
  stopTasks
} from '@/api/system/tasks'
export default {
  name: 'tasks',
  data() {
    var cronValidate = (rule, value, callback) => {
      if (this.form.triggerType === 1) {
        if (value === '' || value === undefined) {
          callback(new Error('运行时间表达式不能为空!'))
        } else {
          callback()
        }
      } else {
        callback()
      }
    }
    var beginTimeValidate = (rule, value, callback) => {
      if (this.form.triggerType === 0) {
        if (value === '' || value === undefined) {
          callback(new Error('选择开始日期!'))
        } else {
          callback()
        }
      } else {
        callback()
      }
    }
    var endTimeValidate = (rule, value, callback) => {
      if (this.form.triggerType === 0) {
        if (value === '' || value === undefined) {
          callback(new Error('选择结束日期!'))
        } else {
          callback()
        }
      } else {
        callback()
      }
    }
    var intervalSecondValidate = (rule, value, callback) => {
      if (this.form.triggerType === 0) {
        if (value === '' || value === undefined) {
          callback(new Error('请设置执行间隔!'))
        } else {
          callback()
        }
      } else {
        callback()
      }
    }
    return {
      // 是否显示弹出层
      open: false,
      // 表单
      form: {},
      // 表单标题
      title: '',
      // 显示搜索
      searchToggle: true,
      // 表格高度
      tableHeight: window.innerHeight,
      // 合计条数
      total: 0,
      // 遮罩层
      loading: true,
      // 查询参数
      queryParams: {
        queryText: undefined,
        pageIndex: 1,
        pageSize: 10,
        orderby: 'createTime',
        sort: 'descending'
      },
      // 计划任务列表
      dataTasks: [],
      // 触发器类型
      triggerTypeOptions: [
        {
          label: 'Simple / [普通]',
          value: 0
        },
        {
          label: 'Cron / [表达式]',
          value: 1
        }
      ],
      // 表单校验
      rules: {
        name: [
          { required: true, message: '任务名称不能为空', trigger: 'blur' }
        ],
        jobGroup: [
          { required: true, message: '任务分组不能为空', trigger: 'blur' }
        ],
        assemblyName: [
          { required: true, message: '程序集名称不能为空', trigger: 'blur' }
        ],
        className: [
          { required: true, message: '任务类名不能为空', trigger: 'blur' }
        ],
        triggerType: [
          { required: true, message: '请选择触发器类型', trigger: 'blur' }
        ],
        cron: [{ validator: cronValidate, trigger: 'blur' }],
        beginTime: [{ validator: beginTimeValidate, trigger: 'blur' }],
        endTime: [{ validator: endTimeValidate, trigger: 'blur' }],
        intervalSecond: [
          { validator: intervalSecondValidate, type: 'number', trigger: 'blur' }
        ]
      }
    }
  },
  created() {
    this.getList()
  },
  methods: {
    /** 查询计划任务列表 */
    getList() {
      this.loading = true
      queryTasks(this.queryParams).then(response => {
        this.dataTasks = response.data.dataSource
        this.total = response.data.totalCount
        this.loading = false
      })
    },
    handleQuery() {
      this.getList()
    },
    /** 重置按钮操作 */
    handleReset() {
      this.queryParams.queryText = ''
      this.getList()
    },
    /** 新增按钮操作 */
    handleCreate() {
      this.reset()
      this.open = true
      this.title = '添加计划任务'
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset()
      this.form = row
      this.open = true
      this.title = '修改计划任务'
    },
    // 启动按钮
    handleStart(row) {
      startTasks(row.id).then(response => {
        if (response.statusCode === 200) {
          this.$message({
            message: response.message,
            type: 'success'
          })
          this.open = false
          this.getList()
        }
      })
    },
    // 停止按钮
    handleStop(row) {
      stopTasks(row.id).then(response => {
        if (response.statusCode === 200) {
          this.$message({
            message: response.message,
            type: 'success'
          })
          this.open = false
          this.getList()
        }
      })
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      this.$confirm('是否确认删除名称为"' + row.name + '"的计划任务?', '警告', {
        confirmButtonText: '确定',
        cancelButtonText: '取消',
        type: 'warning'
      })
        .then(() => {
          deleteTasks(row.id).then(response => {
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
    /** 提交按钮 */
    submitForm: function() {
      this.$refs['form'].validate(valid => {
        if (valid) {
          if (this.form.id !== undefined) {
            updateTasks(this.form).then(response => {
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
            createTasks(this.form).then(response => {
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
    // 显示搜索
    handleSearch() {
      this.searchToggle = !this.searchToggle
    },
    // 排序操作
    handleSortable(val) {
      this.queryParams.orderby = val.prop
      this.queryParams.sort = val.order
      this.getList()
    },
    // 表单重置
    reset() {
      this.form = {
        id: undefined,
        name: undefined,
        jobGroup: undefined,
        assemblyName: undefined,
        className: undefined,
        jobParams: undefined,
        triggerType: 1,
        beginTime: undefined,
        endTime: undefined,
        intervalSecond: 1
      }
    },
    // 自动计算分页 Id
    handleIndexCalc(index) {
      return (
        (this.queryParams.pageIndex - 1) * this.queryParams.pageSize + index + 1
      )
    },
    // 取消按钮
    cancel() {
      this.open = false
      this.reset()
      this.getList()
    }
  }
}
</script>

<style rel="stylesheet/scss" lang="scss" scoped>
@media (max-width: 1024px) {
  .chart-wrapper {
    padding: 8px;
  }
}
</style>
