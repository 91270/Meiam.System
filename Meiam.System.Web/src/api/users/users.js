import request from '@/utils/request'

export function getUsers() {
  return request({
    url: 'users/get',
    method: 'get'
  })
}
export function queryUsers(data) {
  return request({
    url: 'users/query',
    method: 'post',
    data
  })
}

export function createUser(data) {
  return request({
    url: 'users/create',
    method: 'post',
    data
  })
}

export function updateUser(data) {
  return request({
    url: 'users/update',
    method: 'post',
    data
  })
}

export function deleteUsers(data) {
  return request({
    url: 'users/delete',
    method: 'post',
    data
  })
}

export function enableUsers(data) {
  return request({
    url: 'users/enable',
    method: 'post',
    data
  })
}

export function resetPassword(data) {
  return request({
    url: 'users/resetPassword',
    method: 'post',
    data
  })
}

export default { getUsers, createUser, updateUser, deleteUsers, queryUsers, enableUsers, resetPassword }

