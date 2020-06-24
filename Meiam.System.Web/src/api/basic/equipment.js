import request from '@/utils/request'

export function queryEquipment(data) {
  return request({
    url: 'equipment/query',
    method: 'post',
    data
  })
}

export function getEquipment(id) {
  return request({
    url: 'equipment/get?id=' + id,
    method: 'get'
  })
}

export function getAllEquipment(enable) {
  return request({
    url: 'equipment/getAll' + (enable === undefined ? '' : ('?enable=' + enable)),
    method: 'get'
  })
}

export function createEquipment(data) {
  return request({
    url: 'equipment/create',
    method: 'post',
    data
  })
}

export function updateEquipment(data) {
  return request({
    url: 'equipment/update',
    method: 'post',
    data
  })
}

export function deleteEquipment(id) {
  return request({
    url: 'equipment/delete?id=' + id,
    method: 'get'
  })
}

export default { queryEquipment, getEquipment, createEquipment, updateEquipment, deleteEquipment }
