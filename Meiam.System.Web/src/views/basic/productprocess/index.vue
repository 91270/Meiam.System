<template>
  <div class="app-container">
    <el-row v-if="searchToggle" :gutter="20">
      <el-col>
        <el-form :inline="true" @submit.native.prevent>
          <el-form-item>
            <el-input v-model="queryParams.queryText" placeholder="请输入工序名称" clearable prefix-icon="el-icon-search" @keyup.enter.native="handleQuery" @clear="handleQuery" />
          </el-form-item>
          <el-form-item>
            <el-button type="primary" icon="el-icon-search" @click="handleQuery">搜索</el-button>
            <el-button icon="el-icon-refresh" @click="handleReset">重置</el-button>
          </el-form-item>
        </el-form>
      </el-col>
    </el-row>
    <el-row type="flex" class="mb8">
      <el-button v-permission="['PRIV_PRODUCTLINE_CREATE']" type="success" icon="el-icon-plus" size="mini" @click="handleCreate">新增工序</el-button>
      <el-button-group style="margin-left: auto;">
        <el-button size="mini" plain type="info" icon="el-icon-search" @click="handleSearch" />
        <el-button size="mini" icon="el-icon-refresh" @click="handleQuery" />
      </el-button-group>
    </el-row>
    <el-row>
      <el-table ref="productprocess" v-loading="loading" :data="dataProductprocess" row-key="id" stripe border :height="tableHeight*0.65" :default-sort="{prop: queryParams.orderby, order: queryParams.sort}" @sort-change="handleSortable">
        <el-table-column type="index" :index="handleIndexCalc" label="#" align="center" />
        <el-table-column sortable prop="processNo" :show-overflow-tooltip="true" align="center" label="工序编号" width="120" />
        <el-table-column sortable prop="processName" :show-overflow-tooltip="true" align="center" label="工序名称" />
        <el-table-column sortable prop="workShopName" :show-overflow-tooltip="true" align="center" label="所属车间" />
        <el-table-column sortable prop="factoryName" :show-overflow-tooltip="true" align="center" label="所属工厂" />
        <el-table-column sortable prop="createTime" align="center" label="创建时间" />
        <el-table-column sortable prop="enable" align="center" label="是否启用" width="120">
          <template slot-scope="scope">
            <i :style="scope.row.enable === true ?'color:green':'color:red'" :class="scope.row.enable === true ? 'el-icon-success ':'el-icon-error'" />
          </template>
        </el-table-column>
        <el-table-column prop="remark" align="center" :show-overflow-tooltip="true" label="备注" />
        <el-table-column label="操作" align="center" width="160" class-name="small-padding fixed-width">
          <template slot-scope="scope">
            <el-button-group>
              <el-button v-permission="['PRIV_PRODUCTLINE_UPDATE']" type="info" size="mini" icon="el-icon-edit" @click="handleUpdate(scope.row)" />
              <el-button v-permission="['PRIV_PRODUCTLINE_DELETE']" type="danger" size="mini" icon="el-icon-delete" @click="handleDelete(scope.row)" />
            </el-button-group>
          </template>
        </el-table-column>
      </el-table>
      <pagination v-show="total > 0" :total="total" :page.sync="queryParams.pageIndex" :limit.sync="queryParams.pageSize" @pagination="getList" />
    </el-row>

    <el-dialog :title="title" :visible.sync="open" width="800px" append-to-body :close-on-click-modal="false" @close="cancel">
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-row>
          <el-col :span="24">
            <el-form-item label="工序编号" maxlength="50" prop="processNo">
              <el-input v-model="form.processNo" placeholder="请输入工序编号" />
            </el-form-item>
          </el-col>
          <el-col :span="24">
            <el-form-item label="工序名称" prop="processName">
              <el-input v-model="form.processName" placeholder="请输入工序名称" />
            </el-form-item>
          </el-col>
          <el-col :span="24">
            <el-form-item label="所属工厂" prop="factoryUID">
              <el-select v-model="form.factoryUID" clearable filterable placeholder="请选择" style="width:100%" @change="handleSelectFactory">
                <el-option v-for="item in factoryOption" :key="item.id" clearable :label="item.factoryNo +' | '+item.factoryName" :value="item.id" />
              </el-select>
            </el-form-item>
          </el-col>
          <el-col :span="24">
            <el-form-item label="所属车间" prop="workShopUID">
              <el-select v-model="form.workShopUID" clearable filterable placeholder="请选择" style="width:100%">
                <el-option v-for="item in filterWorkshop(workShopOption,form.factoryUID)" :key="item.id" clearable :label="item.workShopNo +' | '+item.workShopName" :value="item.id" />
              </el-select>
            </el-form-item>
          </el-col>
          <el-col :span="24">
            <el-form-item label="工序备注" prop="remark">
              <el-input v-model="form.remark" type="textarea" :autosize="{minRows:2}" maxlength="100" show-word-limit placeholder="请输入工序备注" />
            </el-form-item>
          </el-col>
          <el-col :span="6">
            <el-form-item label="是否启用" prop="enable">
              <el-checkbox v-model="form.enable" />
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
  queryProductprocess,
  createProductprocess,
  updateProductprocess,
  deleteProductprocess
} from '@/api/basic/productprocess'
import { getAllWorkshop } from '@/api/basic/workshop'
import { getAllFactory } from '@/api/basic/factory'
export default {
  name: 'productprocess',
  data() {
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
        orderby: 'processNo',
        sort: 'descending'
      },
      // 工序列表
      dataProductprocess: [],
      // 表单校验S
      rules: {
        processNo: [
          { required: true, message: '工序编号不能为空', trigger: 'blur' }
        ],
        processName: [
          {
            required: true,
            message: '工序名称不能为空',
            trigger: 'blur'
          }
        ],
        workShopUID: [
          { required: true, message: '所属车间不能为空', trigger: 'blur' }
        ],
        factoryUID: [
          { required: true, message: '所属工厂不能为空', trigger: 'blur' }
        ]
      },
      // 所属车间列表
      workShopOption: [],
      // 所属工厂列表
      factoryOption: []
    }
  },
  created() {
    this.getList()
    getAllFactory(true).then(response => {
      this.factoryOption = response.data
    })
    getAllWorkshop(true).then(response => {
      this.workShopOption = response.data
    })
  },
  methods: {
    /** 查询工序列表 */
    getList() {
      this.loading = true
      queryProductprocess(this.queryParams).then(response => {
        this.dataProductprocess = response.data.dataSource
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
      this.title = '添加工序'
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset()
      this.form = row
      this.open = true
      this.title = '修改工序'
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      this.$confirm(
        '是否确认删除名称为"' + row.processName + '"的工序?',
        '警告',
        {
          confirmButtonText: '确定',
          cancelButtonText: '取消',
          type: 'warning'
        }
      )
        .then(() => {
          deleteProductprocess(row.id).then(response => {
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
            updateProductprocess(this.form).then(response => {
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
            createProductprocess(this.form).then(response => {
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
    // 选择所属工厂
    handleSelectFactory() {
      this.form.workShopUID = null
    },
    // 表单重置
    reset() {
      this.form = {
        processName: undefined,
        processNo: undefined,
        createID: undefined,
        createName: undefined,
        createTime: undefined,
        enable: true,
        id: undefined,
        remark: undefined,
        updateID: undefined,
        updateName: undefined,
        updateTime: undefined,
        workShopUID: undefined,
        factoryUID: undefined
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
    },
    // 过滤车间
    filterWorkshop(data, search) {
      return data.filter(m => m.factoryUID === search)
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
