import request from '@/utils/request'

// 获取所有的Role
export function queryRole(data) {
  return request({
    url: 'roles/query',
    method: 'post',
    data
  })
}

export function getRole(id) {
  return request({
    url: 'roles/get?id=' + id,
    method: 'get'
  })
}
export function getRoles() {
  return request({
    url: 'roles/get',
    method: 'get'
  })
}

export function createRole(data) {
  return request({
    url: 'roles/create',
    method: 'post',
    data
  })
}

export function updateRole(data) {
  return request({
    url: 'roles/update',
    method: 'post',
    data
  })
}

export function deleteRole(id) {
  return request({
    url: 'roles/delete?id=' + id,
    method: 'get'
  })
}

export default { queryRole, getRole, getRoles, createRole, updateRole, deleteRole }
