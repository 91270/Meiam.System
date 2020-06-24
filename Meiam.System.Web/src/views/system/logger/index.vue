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
          <el-form-item>
            <el-select v-model="queryParams.level" placeholder="全部" clearable @change="handleQuery">
              <el-option v-for="item in levelOptions" :key="item.value" :label="item.label" :value="item.value" />
            </el-select>
          </el-form-item>
          <el-form-item>
            <el-input v-model="queryParams.queryText" placeholder="来源/路径/返回信息" clearable prefix-icon="el-icon-search" @keyup.enter.native="handleQuery" @clear="handleQuery" />
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
      <el-button-group class="ml">
        <el-button size="mini" plain type="info" icon="el-icon-search" @click="handleSearch" />
        <el-button size="mini" icon="el-icon-refresh" @click="handleQuery" />
      </el-button-group>
    </el-row>

    <!-- 表格内容设置 -->

    <el-row>
      <el-table v-loading="loading" type="expand" :height="tableHeight*0.65" :data="dataResult.dataSource" row-key="id" stripe border :default-sort="{prop: queryParams.orderby, order: queryParams.sort}" @sort-change="handleSortable">
        <el-table-column type="expand">
          <template slot-scope="props">
            <el-form label-position="left">
              <el-form-item label="Request.Host : ">
                <span>{{ props.row.host }}</span>
              </el-form-item>
              <el-form-item label="Request.Method : ">
                <span>{{ props.row.method }}</span>
              </el-form-item>
              <el-form-item label="Request.Url : ">
                <span>{{ props.row.url }}</span>
              </el-form-item>
              <el-form-item label="Request.UserAgent : ">
                <span>{{ props.row.userAgent }}</span>
              </el-form-item>
              <el-form-item label="Request.Cookie : ">
                <span>{{ props.row.cookie }}</span>
              </el-form-item>
              <el-form-item label="Request.QueryString : ">
                <span>{{ props.row.queryString }}</span>
              </el-form-item>
              <el-form-item label="Request.Body : ">
                <span>{{ props.row.body }}</span>
              </el-form-item>
              <el-form-item label="Request.IPAddress : ">
                <span>{{ props.row.ipAddress }}</span>
              </el-form-item>
              <el-form-item label="Request.Message : ">
                <span>{{ props.row.message }}</span>
              </el-form-item>
            </el-form>
          </template>
        </el-table-column>
        <el-table-column type="index" :index="handleIndexCalc" label="#" align="center" />
        <el-table-column prop="logger" label="日志来源" :show-overflow-tooltip="true" sortable align="center" />
        <el-table-column prop="level" label="日志等级" sortable align="center" width="100" />
        <el-table-column prop="host" label="请求主机" :show-overflow-tooltip="true" sortable align="center" />
        <el-table-column prop="method" label="请求方式" sortable align="center" width="100" />
        <el-table-column prop="url" label="请求路径" :show-overflow-tooltip="true" sortable align="center" />
        <el-table-column prop="elapsed" label="请求时间" sortable align="center" width="100">
          <template slot-scope="scope">
            <span :style="scope.row.elapsed < 1000 ? 'color:green':scope.row.elapsed <3000 ?'color:orange':'color:red'">{{ scope.row.elapsed }} ms</span>
          </template>
        </el-table-column>
        <el-table-column prop="createTime" label="创建时间" sortable align="center" width="200" />
      </el-table>
      <pagination v-show="total > 0" :total="total" :page.sync="queryParams.pageIndex" :limit.sync="queryParams.pageSize" @pagination="getList" />
    </el-row>
  </div>
</template>

<script>
import { getLogs } from '@/api/system/logs'
import { formatDate } from '@/utils/index'
export default {
  name: 'logger',
  data() {
    return {
      // 搜索条显示
      searchToggle: true,
      // 表格高度
      tableHeight: window.innerHeight,
      // 遮罩层
      loading: true,
      // 返回结果集
      dataResult: [],
      // 合计条数
      total: 0,
      // 查询参数
      queryParams: {
        queryText: undefined,
        beginDate: formatDate(-7),
        endDate: formatDate(),
        level: undefined,
        pageIndex: 1,
        pageSize: 10,
        orderby: 'createTime',
        sort: 'descending'
      },
      levelOptions: [
        {
          key: 'TRACE',
          value: 'TRACE',
          label: 'TRACE'
        },
        {
          key: 'INFO',
          value: 'INFO',
          label: 'INFO'
        },
        {
          key: 'WARN',
          value: 'WARN',
          label: 'WARN'
        },
        {
          key: 'DEBUG',
          value: 'DEBUG',
          label: 'DEBUG'
        },
        {
          key: 'ERROR',
          value: 'ERROR',
          label: 'ERROR'
        }
      ]
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
      getLogs(this.queryParams).then(response => {
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
