import request from '@/utils/request'

export function queryProductprocess(data) {
  return request({
    url: 'productprocess/query',
    method: 'post',
    data
  })
}

export function getProductprocess(id) {
  return request({
    url: 'productprocess/get?id=' + id,
    method: 'get'
  })
}

export function getAllProductprocess(enable) {
  return request({
    url: 'productprocess/getAll' + (enable === undefined ? '' : ('?enable=' + enable)),
    method: 'get'
  })
}

export function createProductprocess(data) {
  return request({
    url: 'productprocess/create',
    method: 'post',
    data
  })
}

export function updateProductprocess(data) {
  return request({
    url: 'productprocess/update',
    method: 'post',
    data
  })
}

export function deleteProductprocess(id) {
  return request({
    url: 'productprocess/delete?id=' + id,
    method: 'get'
  })
}

export default { queryProductprocess, getProductprocess, createProductprocess, updateProductprocess, deleteProductprocess }
