<template>
  <div class="app-container">
    <!-- 搜索区域设置 -->
    <el-row v-if="searchToggle" :gutter="20">
      <el-col>
        <el-form ref="queryForm" :model="queryParams" :inline="true" @submit.native.prevent>
          <el-form-item>
            <el-date-picker v-model="queryParams.beginDate" :editable="false" :clearable="false" type="date" placeholder="开始时间" value-format="yyyy-MM-dd" @change="handleQuery" />
          </el-form-item>
          <el-form-item>
            <el-date-picker v-model="queryParams.endDate" :editable="false" :clearable="false" type="date" placeholder="结束时间" value-format="yyyy-MM-dd" @change="handleQuery" />
          </el-form-item>
          <el-form-item prop="queryText">
            <el-input v-model="queryParams.queryText" placeholder="请输入用户编号" clearable prefix-icon="el-icon-search" @keyup.enter.native="handleQuery" @clear="handleQuery" />
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
      <el-button v-permission="['PRIV_ONLINE_DELETE']" type="danger" icon="el-icon-delete" size="mini" @click="handleDelete">踢出用户</el-button>
      <el-button-group class="ml">
        <el-button size="mini" plain type="info" icon="el-icon-search" @click="handleSearch" />
        <el-button size="mini" icon="el-icon-refresh" @click="handleQuery" />
      </el-button-group>
    </el-row>

    <!-- 表格内容设置 -->

    <el-row>
      <el-table ref="userOnlineList" v-loading="loading" :height="tableHeight*0.65" :data="dataResult.dataSource" row-key="id" stripe border :default-sort="{prop: queryParams.orderby, order: queryParams.sort}" @sort-change="handleSortable">
        <el-table-column sortable type="selection" width="55" align="center" />
        <el-table-column prop="userID" label="用户编号" sortable align="center" width="150" />
        <el-table-column prop="loginTime" label="登录时间" sortable align="center" width="150" />
        <el-table-column prop="sessionID" label="会话ID" align="center" />
        <el-table-column prop="ipAddress" label="IP地址" align="center" width="150" />
        <el-table-column prop="updateTime" label="最后访问" sortable align="center" width="150" />
        <el-table-column prop="source" label="来源" :show-overflow-tooltip="true" sortable align="center" width="150" />
      </el-table>
      <pagination v-show="total > 0" :total="total" :page.sync="queryParams.pageIndex" :limit.sync="queryParams.pageSize" @pagination="getList" />
    </el-row>
  </div>
</template>

<script>
import { queryOnline, deleteOnline } from '@/api/system/online'
import { formatDate } from '@/utils/index'
export default {
  name: 'online',
  data() {
    return {
      // 表格高度
      tableHeight: window.innerHeight,
      // 遮罩层
      loading: true,
      // 返回结果集
      dataResult: [],
      // 菜单树选项
      menuOptions: [],
      // 权限描述选择框
      descriptionOptions: [],
      // 删除用户列表
      delSelections: [],
      // 弹出层标题
      title: '',
      // 是否显示弹出层
      open: false,
      // 合计条数
      total: 0,
      // 查询参数
      queryParams: {
        queryText: undefined,
        beginDate: formatDate(-7),
        endDate: formatDate(),
        pageSize: 10,
        orderby: 'loginTime',
        sort: 'descending'
      },
      // 搜索条显示
      searchToggle: true
    }
  },
  created() {
    this.getList()
  },
  methods: {
    // 隐藏搜索
    handleSearch() {
      this.searchToggle = !this.searchToggle
    },
    /** 查询列表 */
    getList() {
      this.loading = true
      queryOnline(this.queryParams).then(response => {
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
    /** 重置按钮操作 */
    handleReset() {
      this.queryParams.queryText = ''
      this.getList()
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.getList()
    },
    // 删除按钮操作
    handleDelete() {
      this.delSelections = []
      this.$refs.userOnlineList.selection.forEach(element => {
        console.log(element)
        this.delSelections.push(element.sessionID)
      })
      if (this.delSelections.length === 0) {
        return
      }
      this.$confirm(
        '是否确认删除选中的 ' + this.delSelections.length + ' 条数据?',
        '警告',
        {
          confirmButtonText: '确定',
          cancelButtonText: '取消',
          type: 'warning'
        }
      )
        .then(() => {
          deleteOnline({
            sessionIds: this.delSelections
          }).then(response => {
            if (response.statusCode === 200) {
              this.$message({
                message: '踢出成功',
                type: 'success'
              })
              this.getList()
            }
          })
        })
        .catch(() => {})
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
