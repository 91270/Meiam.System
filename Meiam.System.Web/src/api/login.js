import request from '@/utils/request'

export function login(username, password, code, uuid) {
  return request({
    url: 'auth/login',
    method: 'post',
    data: {
      username,
      password,
      code,
      uuid
    }
  })
}

export function getUserInfo() {
  return request({
    url: 'auth/getUserInfo',
    method: 'get'
  })
}

export function getVerifyCode() {
  return request({
    url: 'auth/code' + '?t=' + new Date().getTime(),
    method: 'get'
  })
}

export function logout() {
  return request({
    url: 'auth/logOut',
    method: 'get'
  })
}

export default { getUserInfo, login, getVerifyCode, logout }
