<template>
  <div class="app-container">
    <el-row :gutter="24" style="display:flex;">
      <el-col :span="4">
        <el-table ref="roleTable" v-loading="loadingRole" highlight-current-row :data="dataRoleResult" border :height="tableHeight-135" @row-click="handleSelectRole">
          <el-table-column prop="name" label="角色名称" />
        </el-table>
      </el-col>
      <el-col :span="20">
        <el-form style="display:flex" :inline="true" @submit.native.prevent>
          <el-form-item>
            <el-button type="primary" @click="handleSelectAll">全部选择</el-button>
            <el-button type="danger" @click="handleUnSelectAll">全部取消</el-button>
            <el-button v-permission="['PRIV_ROLEPOWERS_UPDATE']" type="success" @click="handleSubmit">保存设置</el-button>
          </el-form-item>
          <el-form-item style="margin-left:auto">
            <el-input v-model="search" placeholder="请输入分组名称" clearable prefix-icon="el-icon-search" />
          </el-form-item>
        </el-form>
        <el-table v-loading="loadingPower" :data="dataPowerResult.filter(data => !search || data.page.toLowerCase().includes(search.toLowerCase()))" row-key="id" stripe border :height="tableHeight-180" @row-contextmenu="openContextMenu">
          <el-table-column type="index" label="#" align="center" />
          <el-table-column prop="page" label="分组名称" width="200" />
          <el-table-column prop="role" label="权限列表">
            <template slot-scope="scope">
              <el-checkbox v-for="item in scope.row.powers" :key="item.id" v-model="item.checked" :class="size" :label="item.description" />
            </template>
          </el-table-column>
        </el-table>
        <ContextMenu ref="contextMenu">
          <li @click="handleSelectColmun">全选行</li>
          <li @click="handleUnSelectColmun">取消行</li>
        </ContextMenu>
      </el-col>
    </el-row>
  </div>
</template>

<script>
import {
  getPowersGroup,
  getRolePowers,
  updateRolePowers
} from '@/api/users/rolepowers'
import { getRoles } from '@/api/users/roles'

export default {
  name: 'rolepowers',
  data() {
    return {
      // 表格高度
      tableHeight: window.innerHeight,
      // 角色列表遮罩层
      loadingRole: true,
      // 权限列表遮罩层
      loadingPower: true,
      // 权限列表
      dataPowerResult: [],
      // 角色列表
      dataRoleResult: [],
      // 角色id
      roleId: undefined,
      // 过滤查询
      search: '',
      // 右键当前行
      powerColmun: []
      // 页面布局
    }
  },
  computed: {
    size() {
      return this.$store.getters.size
    }
  },
  created() {
    getPowersGroup().then(response => {
      this.dataPowerResult = response.data
      this.loadingPower = false
    })
    getRoles().then(response => {
      this.dataRoleResult = response.data
      this.handleSelectRole(this.dataRoleResult[0])
      this.$refs.roleTable.setCurrentRow(this.dataRoleResult[0])
      this.loadingRole = false
    })
  },
  methods: {
    // 选择角色
    handleSelectRole(row) {
      this.roleId = row.id
      getRolePowers(this.roleId).then(response => {
        this.dataPowerResult.forEach(v => {
          v.powers.forEach(sub => {
            if (response.data.indexOf(sub.id) === -1) {
              sub.checked = false
            } else {
              sub.checked = true
            }
          })
        })
      })
    },
    // 全选
    handleSelectAll() {
      this.UpdateRolePowers(true)
    },
    // 取消全选
    handleUnSelectAll() {
      this.UpdateRolePowers(false)
    },
    // 保存权限
    handleSubmit() {
      updateRolePowers({
        roleId: this.roleId,
        powerIds: this.getSelectPowerIds()
      }).then(response => {
        this.search = ''
        if (response.statusCode === 200) {
          this.$message({
            message: '修改成功',
            type: 'success'
          })
        }
      })
    },
    // 全选行
    handleSelectColmun() {
      this.powerColmun.powers.forEach(v => {
        v.checked = true
      })
    },
    // 取消全选行
    handleUnSelectColmun() {
      this.powerColmun.powers.forEach(v => {
        v.checked = false
      })
    },
    // 更新所有选中状态
    UpdateRolePowers(value) {
      this.dataPowerResult.forEach(v => {
        v.powers.forEach(sub => {
          sub.checked = value
        })
      })
    },
    // 获得勾选的id
    getSelectPowerIds() {
      const powerIds = []
      this.dataPowerResult.forEach(v => {
        v.powers.forEach(sub => {
          if (sub.checked) {
            powerIds.push(sub.id)
          }
        })
      })
      return powerIds
    },
    // 右键显示菜单
    openContextMenu(row, column, event) {
      // 阻止右键默认行为
      event.preventDefault()
      this.$nextTick(() => {
        this.$refs.contextMenu.bindShowEvents(event)
      })
      this.powerColmun = row
    }
  }
}
</script>

