import request from '@/utils/request'

// 获取所有的Option
export function queryOption(data) {
  return request({
    url: 'options/query',
    method: 'post',
    data
  })
}

export function getOption(options) {
  return request({
    url: 'options/getOption?option=' + options,
    method: 'get'
  })
}

export function createOption(data) {
  return request({
    url: 'options/create',
    method: 'post',
    data
  })
}

export function updateOption(data) {
  return request({
    url: 'options/update',
    method: 'post',
    data
  })
}

export function deleteOption(id) {
  return request({
    url: 'options/delete?id=' + id,
    method: 'get'
  })
}

export default { queryOption, getOption, createOption, updateOption, deleteOption }
