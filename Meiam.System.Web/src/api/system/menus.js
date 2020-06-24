import request from '@/utils/request'

export function getUserMenus() {
  return request({
    url: 'menus/getUserMenus',
    method: 'get'
  })
}

// 查询菜单列表
export function queryMenu(data) {
  return request({
    url: 'menus/query',
    method: 'post',
    data
  })
}

// 查询菜单详细
export function getMenu(menuId) {
  return request({
    url: 'menus/get?id=' + menuId,
    method: 'get'
  })
}

// 新增菜单
export function createMenu(data) {
  return request({
    url: 'menus/create',
    method: 'post',
    data: data
  })
}

// 修改菜单
export function updateMenu(data) {
  return request({
    url: 'menus/update',
    method: 'post',
    data: data
  })
}

// 删除菜单
export function deleteMenu(menuId) {
  return request({
    url: 'menus/delete?id=' + menuId,
    method: 'get'
  })
}

export default { getUserMenus, queryMenu, getMenu, createMenu, updateMenu, deleteMenu }
