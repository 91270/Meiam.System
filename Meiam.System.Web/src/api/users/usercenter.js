import request from '@/utils/request'

// 查询角色用户
export function updatePassword(data) {
  return request({
    url: '/userCenter/updatePassword',
    method: 'post',
    data
  })
}
// 添加角色用户
export function updateUser(data) {
  return request({
    url: '/userCenter/update',
    method: 'post',
    data
  })
}
// 删除角色用户
export function avatarUpload(data) {
  return request({
    url: '/userCenter/avatarUpload',
    method: 'post',
    data
  })
}

export default { avatarUpload, updateUser, updatePassword }
