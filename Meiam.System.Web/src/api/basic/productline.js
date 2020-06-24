import request from '@/utils/request'

export function queryProductline(data) {
  return request({
    url: 'productline/query',
    method: 'post',
    data
  })
}

export function getProductline(id) {
  return request({
    url: 'productline/get?id=' + id,
    method: 'get'
  })
}

export function getAllProductline(enable) {
  return request({
    url: 'productline/getAll' + (enable === undefined ? '' : ('?enable=' + enable)),
    method: 'get'
  })
}

export function createProductline(data) {
  return request({
    url: 'productline/create',
    method: 'post',
    data
  })
}

export function updateProductline(data) {
  return request({
    url: 'productline/update',
    method: 'post',
    data
  })
}

export function deleteProductline(id) {
  return request({
    url: 'productline/delete?id=' + id,
    method: 'get'
  })
}

export default { queryProductline, getProductline, getAllProductline, createProductline, updateProductline, deleteProductline }
