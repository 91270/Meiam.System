import request from '@/utils/request'

export function queryCompany(data) {
  return request({
    url: 'company/query',
    method: 'post',
    data
  })
}

export function getCompany(id) {
  return request({
    url: 'company/get?id=' + id,
    method: 'get'
  })
}

export function getAllCompany(enable) {
  return request({
    url: 'company/getAll' + (enable === undefined ? '' : ('?enable=' + enable)),
    method: 'get'
  })
}

export function createCompany(data) {
  return request({
    url: 'company/create',
    method: 'post',
    data
  })
}

export function updateCompany(data) {
  return request({
    url: 'company/update',
    method: 'post',
    data
  })
}

export function deleteCompany(id) {
  return request({
    url: 'company/delete?id=' + id,
    method: 'get'
  })
}

export default { queryCompany, getCompany, getAllCompany, createCompany, updateCompany, deleteCompany }
