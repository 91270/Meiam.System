<template>
  <div class="app-container">
    <el-row :gutter="20">
      <el-col>
        <!--    用户资料    -->
        <el-tabs v-model="activeName" type="border-card" class="showTable">
          <el-tab-pane label="用户资料" name="user" style="height:55vh">
            <el-form ref="form" :model="userForm" label-width="80px" :rules="rules" style="margin-bottom:50px">
              <el-row style="width:75%">
                <el-col :span="24">
                  <el-form-item label="用户编号" prop="userID">
                    <el-input v-model="userForm.userID" disabled maxlength="50" placeholder="请输入用户编号" />
                  </el-form-item>
                </el-col>
                <el-col :span="24">
                  <el-form-item label="用户名称" prop="address">
                    <el-input v-model="userForm.userName" disabled="" maxlength="100" placeholder=" 请输入地址" />
                  </el-form-item>
                </el-col>
                <el-col :span="24">
                  <el-form-item label="用户昵称" prop="nickName">
                    <el-input v-model="userForm.nickName" clearable maxlength="50" placeholder="请输入用户昵称" />
                  </el-form-item>
                </el-col>
                <el-col :span="24">
                  <el-form-item label="性别" prop="sortIndex">
                    <el-radio v-model="userForm.sex" label="男">男</el-radio>
                    <el-radio v-model="userForm.sex" label="女">女</el-radio>
                  </el-form-item>
                </el-col>
                <el-col :span="24">
                  <el-form-item label="QQ" prop="qq">
                    <el-input v-model="userForm.qq" clearable maxlength="12" type="number" placeholder="qq" />
                  </el-form-item>
                </el-col>
                <el-col :span="24">
                  <el-form-item label="邮箱" prop="email">
                    <el-input v-model="userForm.email" clearable maxlength="12" type="email" placeholder="请输入邮箱" />
                  </el-form-item>
                </el-col>
                <el-col :span="24">
                  <el-form-item label="手机号码" prop="phone">
                    <el-input v-model="userForm.phone" clearable maxlength="12" placeholder="请输入手机号码" />
                  </el-form-item>
                </el-col>
                <el-col :span="24">
                  <el-form-item label="生日" prop="birthday">
                    <el-date-picker v-model="userForm.birthday" style="width:100%" type="date" placeholder="选择日期" />
                  </el-form-item>
                </el-col>
              </el-row>
              <div class="cu-avatar">
                <el-upload class="avatar-uploader" :action="avatarUploadUrl" :headers="headers" :on-success="handleAvatarSuccess" :show-file-list="false">
                  <img v-if="userForm.avatarUrl" fits="cover" :src="userForm.avatarUrl" class="avatar">
                  <i v-else class="el-icon-plus avatar-uploader-icon" />
                </el-upload>
                <div class="avatar-span">用户头像上传</div>
              </div>
            </el-form>
            <div class="foot">
              <el-button type="primary" :loading="loading" @click="handleSubmit">确 定</el-button>
            </div>
          </el-tab-pane>
          <el-tab-pane label="修改密码" name="password" style="height:55vh">
            <el-form ref="passwordForm" :model="passwordForm" :rules="passwordRules">
              <el-row>
                <el-col :span="24">
                  <el-form-item label="原密码" prop="currentPassword">
                    <el-input v-model="passwordForm.currentPassword" clearable maxlength="50" placeholder="请输入新密码" />
                  </el-form-item>
                </el-col>
                <el-col :span="24">
                  <el-form-item label="新密码" prop="confirmPassword">
                    <el-input v-model="passwordForm.confirmPassword" clearable maxlength="50" placeholder="请输入新密码" />
                  </el-form-item>
                </el-col>
                <el-col :span="24">
                  <el-form-item label="确认密码" prop="newPassword">
                    <el-input v-model="passwordForm.newPassword" clearable maxlength="50" placeholder="请再次输入新密码" />
                  </el-form-item>
                </el-col>
              </el-row>
            </el-form>
            <div class="foot">
              <el-button type="primary" @click="submitPasswordForm">确 定</el-button>
            </div>
          </el-tab-pane>
        </el-tabs>
      </el-col>
    </el-row>
  </div>
</template>

<script>
import { isvalidPhone } from '@/utils/validate'
import { getUserInfo } from '@/api/login'
import { updateUser, updatePassword } from '@/api/users/usercenter'
import { getToken } from '@/utils/auth'
export default {
  name: 'center',
  data() {
    // 自定义验证
    const validPhone = (rule, value, callback) => {
      if (!value) {
        callback(new Error('请输入电话号码'))
      } else if (!isvalidPhone(value)) {
        callback(new Error('请输入正确的11位手机号码'))
      } else {
        callback()
      }
    }
    return {
      // 查询参数
      queryParams: {
        queryText: undefined,
        pageIndex: 1,
        pageSize: 10,
        orderby: 'userID',
        sort: 'descending'
      },
      // 标签页
      activeName: 'user',
      // 上传链接
      avatarUploadUrl:
        process.env.VUE_APP_BASE_API + '/userCenter/AvatarUpload',
      headers: { SYSTOKEN: getToken() },
      // 加载中
      loading: false,
      // 图片路径
      imageUrl: '',
      // 用户信息列表
      userForm: {},
      // 密码列表
      passwordForm: {},
      // 校验规则
      rules: {
        nickName: [
          {
            required: true,
            message: '请输入用户昵称',
            trigger: 'blur'
          },
          {
            min: 2,
            max: 20,
            message: '长度在 2 到 20 个字符',
            trigger: 'blur'
          }
        ],
        phone: [{ required: true, trigger: 'blur', validator: validPhone }]
      },
      // 重置密码表单校验
      passwordRules: {
        currentPassword: [
          { required: true, message: '原密码不能为空', trigger: 'blur' },
          { min: 6, message: '用户密码长度至少6位', trigger: 'blur' }
        ],
        confirmPassword: [
          { required: true, message: '用户密码不能为空', trigger: 'blur' },
          { min: 6, message: '用户密码长度至少6位', trigger: 'blur' }
        ],
        newPassword: [
          { required: true, message: '确认密码不能为空', trigger: 'blur' },
          { min: 6, message: '用户密码长度至少6位', trigger: 'blur' }
        ]
      }
    }
  },
  created() {
    this.getUserInfo()
  },
  methods: {
    // 获取用户信息
    getUserInfo() {
      getUserInfo().then(response => {
        this.userForm = response.data
      })
    },
    // 点击确定按钮
    handleSubmit: function() {
      this.$refs['form'].validate(valid => {
        if (valid) {
          updateUser(this.userForm).then(response => {
            this.loading = true
            if (response.statusCode === 200) {
              this.$message({
                message: '修改成功',
                type: 'success'
              })
              this.getUserInfo()
            }
            this.loading = false
          })
        }
      })
    },
    // 修改密码提交
    submitPasswordForm() {
      this.$refs['passwordForm'].validate(valid => {
        if (valid) {
          if (
            this.passwordForm.newPassword !== this.passwordForm.confirmPassword
          ) {
            this.$message.error('两次密码输入不一致')
            return
          }
          updatePassword({
            currentPassword: this.passwordForm.currentPassword,
            confirmPassword: this.passwordForm.confirmPassword
          }).then(response => {
            if (response.statusCode === 200) {
              this.$message({
                message: '密码重置成功',
                type: 'success'
              })
            }
          })
        }
      })
    },
    // 图片上传成功
    handleAvatarSuccess(response, file) {
      if (response.statusCode === 200) {
        this.getUserInfo()
        this.$message({
          message: '图片上传成功',
          type: 'success'
        })
      }
    }
  }
}
</script>

<style rel="stylesheet/scss" lang="scss">
.foot {
  position: absolute;
  bottom: 15px;
  right: 15px;
}
.changepswd {
  font-size: 14px !important;
  float: right;
  padding: 3px 10px;
}
.user-info {
  padding-left: 0;
  list-style: none;
  li {
    border-bottom: 1px solid #f0f3f4;
    padding: 11px 0;
    font-size: 13px;
  }
  .user-right {
    float: right;

    a {
      color: #317ef3;
    }
  }
}
.cu-avatar {
  position: absolute;
  width: 20%;
  right: 10px;
  top: 10px;
}

.avatar-uploader .el-upload {
  border: 1px dashed #d9d9d9;
  border-radius: 6px;
  cursor: pointer;
  position: relative;
  overflow: hidden;
}
.avatar-uploader .el-upload:hover {
  border-color: #409eff;
}
.avatar-uploader-icon {
  font-size: 28px;
  color: #8c939d;
  width: 178px;
  height: 178px;
  line-height: 178px !important;
  text-align: center;
}
.avatar {
  width: 178px;
  height: 178px;
  display: block;
}
.avatar-span {
  margin-top: 10px;
  width: 178px;
  text-align: center;
  color: #409eff;
}

.showTable {
  background-color: #ffffff;
  width: 80%;
  height: 100%;
  margin: 25px auto;
}
.showTable .el-tabs__content {
  height: 100%;
}
</style>
