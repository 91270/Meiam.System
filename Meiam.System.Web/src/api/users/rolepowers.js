import request from '@/utils/request'

// 按分组汇总查询权限
export function getPowersGroup() {
  return request({
    url: 'rolePowers/getPowersGroup',
    method: 'get'
  })
}

export function getRolePowers(roleId) {
  return request({
    url: 'rolePowers/getRolePowers?roleId=' + roleId,
    method: 'get'
  })
}

export function updateRolePowers(data) {
  return request({
    url: 'rolePowers/updateRolePowers',
    method: 'post',
    data
  })
}

export default { getPowersGroup, getRolePowers, updateRolePowers }
