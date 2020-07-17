<template>
  <div class="app-container">
    <!-- 添加或修改菜单对话框 -->
    <div v-show="divShow === 'edit'" :title="title" class="showTable">
      <el-tabs type="border-card" @tab-click="handleTabsClick" v-model="activeName">
        <el-tab-pane label="用户管理" style="height:65vh" name="userInfo">
          <div>
            <el-form ref="form" :model="form" label-width="80px" :rules="rules">
              <el-row>
                <el-col :span="12">
                  <el-form-item label="用户编号" prop="userID">
                    <el-input v-model="form.userID" maxlength="50" placeholder="请输入用户编号" :disabled="title === '编辑用户'" />
                  </el-form-item>
                </el-col>
                <el-col :span="6">
                  <el-form-item label="是否启用" prop="enabled">
                    <el-checkbox v-model="form.enabled" />
                  </el-form-item>
                </el-col>
                <el-col :span="6">
                  <el-form-item label="单用户" prop="oneSession">
                    <el-checkbox v-model="form.oneSession" />
                  </el-form-item>
                </el-col>
                <el-col :span="12">
                  <el-form-item label="用户名称" prop="userName">
                    <el-input v-model="form.userName" maxlength="50" placeholder="请输入用户名称" />
                  </el-form-item>
                </el-col>
                <el-col :span="12">
                  <el-form-item label="性别" prop="sortIndex">
                    <el-radio v-model="form.sex" label="男">男</el-radio>
                    <el-radio v-model="form.sex" label="女">女</el-radio>
                  </el-form-item>
                </el-col>
                <el-col :span="12">
                  <el-form-item v-if="title==='添加用户'" label="用户密码" prop="password">
                    <el-input v-model="form.password" maxlength="50" placeholder="请输入用户密码" />
                  </el-form-item>
                </el-col>

                <el-col :span="12">
                  <el-form-item label="QQ" prop="qq">
                    <el-input v-model="form.qq" maxlength="12" type="number" placeholder="qq" />
                  </el-form-item>
                </el-col>
                <el-col :span="12">
                  <el-form-item label="邮箱" prop="email">
                    <el-input v-model="form.email" maxlength="12" type="email" placeholder="请输入邮箱" />
                  </el-form-item>
                </el-col>
                <el-col :span="12">
                  <el-form-item label="手机号码" prop="phone">
                    <el-input v-model="form.phone" maxlength="12" type="number" placeholder="请输入手机号码" />
                  </el-form-item>
                </el-col>
                <el-col :span="12">
                  <el-form-item label="身份证号" prop="identityCard">
                    <el-input v-model="form.identityCard" maxlength="18" placeholder=" 请输入身份证号码" />
                  </el-form-item>
                </el-col>
                <el-col :span="12">
                  <el-form-item label="生日" prop="birthday">
                    <el-date-picker v-model="form.birthday" style="width:100%" type="date" placeholder="选择日期" />
                  </el-form-item>
                </el-col>
                <el-col :span="12">
                  <el-form-item label="地址" prop="address">
                    <el-input v-model="form.address" maxlength="100" placeholder=" 请输入地址" />
                  </el-form-item>
                </el-col>
                <el-col :span="24">
                  <el-form-item label="备注" prop="remark">
                    <el-input v-model="form.remark" type="textarea" :autosize="{minRows:2}" maxlength="100" show-word-limit placeholder="请输入用户备注" />
                  </el-form-item>
                </el-col>
              </el-row>
            </el-form>
            <div slot="footer" class="foot">
              <el-button type="primary" @click="submitUserForm">确 定</el-button>
              <el-button @click="cancel">取 消</el-button>
            </div>
          </div>
        </el-tab-pane>

        <el-tab-pane label="权限配置" style="height:65vh" :disabled="title === '添加用户'" name="userRelation">
          <el-table style="mb8" ref="relationTree" v-loading="loading" :data="relationTree" :height="tableHeight*0.6" row-key="id" border :tree-props="{children: 'children', hasChildren: 'hasChildren'}" :row-class-name="tableRowClassName" @select="handleRelationTreeSelect" @close="cancel" @select-all="handleRelationTreeSelectAll">
            <el-table-column sortable type="selection" width="55" align="center" />
            <el-table-column prop="relationName" maxlength="50" label="名称" :show-overflow-tooltip="true" />
            <el-table-column prop="relationNo" label="编号" align="center" />
            <el-table-column prop="relationType" label="层级" align="center" :show-overflow-tooltip="true" />
          </el-table>
          <div>
            <!-- <div v-if="title === '编辑用户'"><span class="demonstration">当前编辑用户 : {{form.userID}} -{{form.userName}} </span></div> -->
            <div slot="footer" class="foot">
              <el-button type="primary" @click="submitPowerForm">确 定</el-button>
              <el-button @click="cancel">取 消</el-button>
            </div>
          </div>
        </el-tab-pane>

        <el-tab-pane label="角色管理" style="height:65vh" :disabled="title === '添加用户'" name="userRole">
          <!-- <el-transfer v-model="userRole" :data="userRoleTable" /> -->
          <div>
            <!-- <div v-if="title === '编辑用户'"><span class="demonstration">当前编辑用户 : {{form.userID}} -{{form.userName}} </span></div> -->
            <div slot="footer" class="foot">
              <el-button type="primary" @click="submitRoleForm">确 定</el-button>
              <el-button @click="cancel">取 消</el-button>
            </div>
          </div>
        </el-tab-pane>

        <el-tab-pane label="微信绑定" style="height:65vh" :disabled="title === '添加用户'" name="userMPAccount">
          <div>
            <!-- <div v-if="title === '编辑用户'"><span class="demonstration">当前编辑用户 : {{form.userID}} -{{form.userName}} </span></div> -->
            <div slot="footer" class="foot">
              <el-button type="primary" @click="submitWexinForm">确 定</el-button>
              <el-button @click="cancel">取 消</el-button>
            </div>
          </div>
        </el-tab-pane>
      </el-tabs>
    </div>

    <div v-show="divShow === 'query'">
      <el-row v-if="searchToggle" :gutter="20">
        <el-col>
          <el-form :inline="true" @submit.native.prevent>
            <el-form-item>
              <el-input v-model="queryParams.queryText" placeholder="请输入用户名称" clearable prefix-icon="el-icon-search" @keyup.enter.native="handleQuery" @clear="handleQuery" />
            </el-form-item>
            <el-form-item>
              <el-button type="primary" icon="el-icon-search" @click="handleQuery">搜索</el-button>
              <el-button icon="el-icon-refresh" @click="handleReset">重置</el-button>
            </el-form-item>
          </el-form>
        </el-col>
      </el-row>
      <el-row type="flex" class="mb8">
        <el-button v-permission="['PRIV_USERS_CREATE']" type="success" icon="el-icon-plus" size="mini" @click="handleCreate">新增用户</el-button>
        <el-button v-permission="['PRIV_USERS_DELETE']" type="danger" icon="el-icon-delete" size="mini" @click="handleDelete">删除用户</el-button>
        <el-dropdown trigger="click" style="margin-left:10px">
          <el-button type="primary" icon="el-icon-unlock">
            设置启用<i class="el-icon-arrow-down el-icon--right" />
          </el-button>
          <el-dropdown-menu slot="dropdown">
            <el-dropdown-item @click.native="handleEnableUsers">启用选中记录</el-dropdown-item>
            <el-dropdown-item @click.native="handleDisabledUsers">禁用选中记录</el-dropdown-item>
          </el-dropdown-menu>
        </el-dropdown>
        <el-button-group style="margin-left: auto;">
          <el-button size="mini" plain type="info" icon="el-icon-search" @click="handleSearch" />
          <el-button size="mini" icon="el-icon-refresh" @click="handleQuery" />
        </el-button-group>
      </el-row>

      <el-row>
        <el-table ref="userTable" v-loading="loading" :data="userTable.dataSource" row-key="id" stripe border :height="tableHeight*0.65" :default-sort="{prop: queryParams.orderby, order: queryParams.sort}" @sort-change="handleSortable">
          <el-table-column sortable type="selection" width="55" align="center" />
          <el-table-column sortable prop="userID" align="center" label="用户账号" width="150" />
          <el-table-column sortable prop="userName" :show-overflow-tooltip="true" align="center" label="用户名称" />
          <el-table-column sortable prop="phone" align="center" label="手机号码" />
          <el-table-column sortable prop="sex" align="center" label="性别" width="80" />
          <el-table-column sortable prop="createTime" align="center" :show-overflow-tooltip="true" label="创建时间" />
          <el-table-column sortable prop="enabled" align="center" label="是否启用" width="100">
            <template slot-scope="scope">
              <i :style="scope.row.enabled === true ?'color:green':'color:red'" :class="scope.row.enabled === true ? 'el-icon-success ':'el-icon-error'" />
            </template>
          </el-table-column>
          <el-table-column prop="remark" align="center" label="备注" :show-overflow-tooltip="true" />
          <el-table-column label="操作" align="center" width="200" class-name="small-padding fixed-width">
            <template slot-scope="scope">
              <el-button-group>
                <el-button v-permission="['PRIV_USERS_UPDATE']" type="info" size="mini" icon="el-icon-edit" @click="handleUpdate(scope.row)" />
                <el-button v-permission="['PRIV_USERS_RESETPASSWD']" type="danger" size="mini" icon="el-icon-lock" @click="handleResetPassword(scope.row)" />
              </el-button-group>
            </template>
          </el-table-column>
        </el-table>
        <pagination v-show="total > 0" :total="total" :page.sync="queryParams.pageIndex" :limit.sync="queryParams.pageSize" @pagination="getList" />
      </el-row>
      <!-- 重置密码对话框 -->
      <el-dialog title="重置密码" :visible.sync="openPassword" width="800px" append-to-body :close-on-click-modal="false">
        <el-form ref="passwordForm" :model="passwordForm" :rules="passwordRules">
          <el-row>
            <el-col :span="24">
              <el-form-item label="新密码" prop="password">
                <el-input v-model="passwordForm.password" maxlength="50" placeholder="请输入新密码" />
              </el-form-item>
            </el-col>
            <el-col :span="24">
              <el-form-item label="确认密码" prop="confirmPassword">
                <el-input v-model="passwordForm.confirmPassword" maxlength="50" placeholder="请再次输入新密码" />
              </el-form-item>
            </el-col>
          </el-row>
        </el-form>
        <div slot="footer" class="dialog-footer">
          <el-button type="primary" @click="submitPasswordForm">确 定</el-button>
          <el-button @click="cancel">取 消</el-button>
        </div>
      </el-dialog>
    </div>
  </div>
</template>
<script>
import {
  queryUsers,
  createUser,
  updateUser,
  deleteUsers,
  enableUsers,
  resetPassword
} from '@/api/users/users'
import { GetRelationTree, UpdateUserRelation } from '@/api/system/authorize'
export default {
  name: 'users',
  data() {
    return {
      // 遮罩层
      loading: false,
      // 默认选项卡
      activeName: 'userInfo',
      // 表格高度
      tableHeight: window.innerHeight,
      // 单选框
      radio: '1',
      // 搜索条显示
      searchToggle: true,
      // 合计条数
      total: 0,
      // 用户信息弹出框
      divShow: 'query',
      // 修改密码弹出框
      openPassword: false,
      // 查询参数
      queryParams: {
        queryText: undefined,
        pageIndex: 1,
        pageSize: 10,
        orderby: 'createTime',
        sort: 'descending'
      },
      // 用户列表
      userTable: [],
      // 用户角色列表
      userRoleTable: [],
      // 删除用户列表
      delSelections: [],
      // 查询用户列表
      userSelections: [],
      // 用户权限树
      relationTree: [],
      // 用户角色
      userRole: [],
      // 表单
      form: {},
      // 密码表单
      passwordForm: {},
      // 表单标题
      title: '',
      // 表单校验
      rules: {
        userID: [
          { required: true, message: '用户编号不能为空', trigger: 'blur' }
        ],
        userName: [
          { required: true, message: '用户名称不能为空', trigger: 'blur' }
        ],
        password: [
          { required: true, message: '用户密码不能为空', trigger: 'blur' },
          { min: 6, message: '用户密码长度至少6位', trigger: 'blur' }
        ],
        sex: [{ required: true, message: '性别不能为空', trigger: 'blur' }]
      },
      // 重置密码表单校验
      passwordRules: {
        password: [
          { required: true, message: '用户密码不能为空', trigger: 'blur' },
          { min: 6, message: '用户密码长度至少6位', trigger: 'blur' }
        ],
        confirmPassword: [
          { required: true, message: '确认密码不能为空', trigger: 'blur' },
          { min: 6, message: '用户密码长度至少6位', trigger: 'blur' }
        ]
      },
      // 重置密码用户
      ResetPasswordUserId: '',
      // 过滤查询
      search: '',
      defaultProps: {
        children: 'children',
        label: 'relationName'
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
      queryUsers(this.queryParams).then(response => {
        this.userTable = response.data
        this.total = this.userTable.totalCount
        this.loading = false
      })
    },
    /** 新增按钮操作 */
    handleCreate() {
      this.reset()
      this.divShow = 'edit'
      this.title = '添加用户'
    },

    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset()
      this.form = row
      delete this.form.password
      this.divShow = 'edit'
      this.title = '编辑用户'
      this.activeName = 'userInfo'
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.getList()
    },
    /** 重置按钮操作 */
    handleReset() {
      this.queryParams.queryText = ''
      this.getList()
    },
    // 删除按钮操作
    handleDelete() {
      this.delSelections = []
      this.$refs.userTable.selection.forEach(element => {
        this.delSelections.push(element.userID)
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
          deleteUsers({
            userIds: this.delSelections
          }).then(response => {
            if (response.statusCode === 200) {
              this.$message({
                message: '成功删除' + response.data + '条数据',
                type: 'success'
              })
              this.getList()
            }
          })
        })
        .catch(() => {})
    },
    // 重置密码
    handleResetPassword(row) {
      this.ResetPasswordUserId = row.userID
      this.reset()
      this.openPassword = true
    },
    // 启用用户
    handleEnableUsers() {
      if (this.$refs.userTable.selection.length > 0) {
        this.userSelections = []
        this.$refs.userTable.selection.forEach(element => {
          this.userSelections.push(element.userID)
        })
        enableUsers({
          userIds: this.userSelections,
          status: true
        }).then(response => {
          if (response.statusCode === 200) {
            this.$message({
              message: '修改成功',
              type: 'success'
            })
            this.getList()
          }
        })
      } else {
        this.$message({
          message: '请至少选择一项',
          type: 'warning'
        })
      }
    },
    // 禁用用户
    handleDisabledUsers() {
      if (this.$refs.userTable.selection.length > 0) {
        this.userSelections = []
        this.$refs.userTable.selection.forEach(element => {
          this.userSelections.push(element.userID)
        })
        enableUsers({
          userIds: this.userSelections,
          status: false
        }).then(response => {
          if (response.statusCode === 200) {
            this.$message({
              message: '修改成功',
              type: 'success'
            })
            this.getList()
          }
        })
      } else {
        this.$message({
          message: '请至少选择一项',
          type: 'warning'
        })
      }
    },
    // 新建用户提交按钮
    submitUserForm() {
      this.$refs['form'].validate(valid => {
        if (valid) {
          if (this.title !== '添加用户') {
            updateUser(this.form).then(response => {
              if (response.statusCode === 200) {
                this.$message({
                  message: '修改成功',
                  type: 'success'
                })
                this.divShow = 'query'
                this.getList()
              }
            })
          } else {
            createUser(this.form).then(response => {
              if (response.statusCode === 200) {
                this.$message({
                  message: '新增成功',
                  type: 'success'
                })
                this.title = '编辑用户'
                this.getList()
              }
            })
          }
        }
      })
    },
    // 用户角色提交按钮
    submitRoleForm() {},
    // 用户权限提交按钮
    submitPowerForm() {
      const relation = []
      this.$refs.relationTree.selection.forEach(val => {
        relation.push({
          objectID: val.id,
          objectType: val.relationType
        })
      })
      UpdateUserRelation({
        userID: this.form.userID,
        relation: relation
      }).then(response => {
        if (response.statusCode === 200) {
          this.$message({
            message: '更新权限成功',
            type: 'success'
          })
        } else {
          this.$message.error(response.message)
        }
      })
    },
    // 用户绑定微信提交按钮
    submitWexinForm() {},
    // 排序操作
    handleSortable(val) {
      this.queryParams.orderby = val.prop
      this.queryParams.sort = val.order
      this.getList()
    },
    // 重置密码提交
    submitPasswordForm() {
      this.$refs['passwordForm'].validate(valid => {
        if (valid) {
          if (
            this.passwordForm.password !== this.passwordForm.confirmPassword
          ) {
            this.$message.error('两次密码输入不一致')
            return
          }
          resetPassword({
            userID: this.ResetPasswordUserId,
            confirmPassword: this.passwordForm.password
          }).then(response => {
            if (response.statusCode === 200) {
              this.$message({
                message: '密码重置成功',
                type: 'success'
              })
              this.openPassword = false
            } else {
              this.$message.error(response.message)
            }
          })
        }
      })
    },
    // 表单重置
    reset() {
      this.form = {
        userID: undefined,
        userName: undefined,
        nickName: undefined,
        email: undefined,
        password: undefined,
        sex: '男',
        avatarUrl: undefined,
        qq: undefined,
        phone: undefined,
        provinceID: undefined,
        province: undefined,
        cityID: undefined,
        city: undefined,
        countyID: undefined,
        county: undefined,
        address: undefined,
        remark: undefined,
        identityCard: undefined,
        birthday: undefined,
        enabled: true,
        oneSession: false
      }
      this.passwordForm = {
        password: undefined,
        confirmPassword: undefined
      }
    },
    // 取消按钮
    cancel() {
      this.divShow = 'query'
      this.openPassword = false
      this.reset()
      this.getList()
    },
    // 全选勾选
    handleRelationTreeSelectAll() {
      this.selectionParentRowAll(this.relationTree)
    },
    // 全选
    selectionParentRowAll(data, selection) {
      if (data) {
        data.forEach(val => {
          this.$refs.relationTree.toggleRowSelection(val, true)
          if (val.children) {
            this.selectionParentRowAll(val.children)
          }
        })
      }
    },
    // RelationTree 勾选行
    handleRelationTreeSelect(selection, row) {
      if (selection.length && selection.indexOf(row) !== -1) {
        this.selectionParentRow(row.parentUID, this.relationTree)
      } else {
        // 父节点取消时取消子节点勾选
        this.unselectionRow(row)
      }
    },
    // 递归勾选
    selectionParentRow(parentUID, data) {
      data.forEach(row => {
        if (row.id === parentUID) {
          this.$refs.relationTree.toggleRowSelection(row, true)
          if (row.parentUID) {
            this.selectionParentRow(row.parentUID, this.relationTree)
          }
          return
        }
        if (row.children) {
          this.selectionParentRow(parentUID, row.children)
        }
      })
    },
    // 取消勾选
    unselectionRow(row) {
      if (row.children) {
        row.children.forEach(children => {
          this.$refs.relationTree.toggleRowSelection(children, false)
          if (children) {
            this.unselectionRow(children)
          }
        })
      }
    },
    // 用户权限修改
    handleTabsClick(val) {
      if (val.index === '1') {
        this.loading = true
        GetRelationTree(this.form.userID).then(response => {
          this.relationTree = response.data
          this.selectUserRole(this.relationTree)
          this.loading = false
        })
      }
    },
    // 匹配用户权限勾选
    selectUserRole(data) {
      if (data) {
        data.forEach(val => {
          if (val.hasRelation) {
            this.$nextTick(() => {
              this.$refs.relationTree.toggleRowSelection(val, true)
            })
          }
          if (val) {
            this.selectUserRole(val.children)
          }
        })
      }
    },
    // row样式赋值
    tableRowClassName(row, rowIndex) {
      switch (row.row.relationType) {
        case 'Company':
          return 'company-row'
        case 'Factory':
          return 'factory-row'
        case 'WorkShop':
          return 'workShop-row'
        case 'ProductLine':
          return 'productLine-row'
        case 'ProductProcess':
          return 'productProcess-row'
        default:
          break
      }
    }
  }
}
</script>
<style>
.showTable {
  background-color: #ffffff;
  width: 80%;
  height: 100%;
  margin: 25px auto;
}
.showTable .el-tabs__content {
  height: 100%;
}
.tableList {
  width: 50%;
  height: 40vh;
  position: absolute;
  top: 20%;
  left: 20%;
}
.foot {
  position: absolute;
  bottom: 15px;
  right: 15px;
}
.el-table .company-row {
  background: rgb(236, 245, 255);
}
.el-table .factory-row {
  background: rgb(240, 249, 235);
}
.el-table .workShop-row {
  background: rgb(253, 246, 236);
}
.el-table .productLine-row {
  background: rgb(254, 240, 240);
}
.el-table .productProcess-row {
  background: rgb(244, 244, 245);
}
</style>
