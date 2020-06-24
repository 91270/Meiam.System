import request from '@/utils/request'

export function queryOnline(data) {
  return request({
    url: 'online/query',
    method: 'post',
    data
  })
}

export function deleteOnline(data) {
  return request({
    url: 'online/delete',
    method: 'post',
    data
  })
}
