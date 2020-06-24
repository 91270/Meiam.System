import axios from 'axios'
import store from '../store'
import { Notification, MessageBox } from 'element-ui'
import { getToken, setToken } from '@/utils/auth'

const service = axios.create({
  // api 的 base_url
  baseURL: process.env.VUE_APP_BASE_API,
  timeout: 30000
  // 请求超时时间
})

// const pending = [] // 声明一个数组用于存储每个ajax请求的取消函数和ajax标识
// const CancelToken = axios.CancelToken
// const removeRepeatUrl = (ever) => {
//   for (const p in pending) {
//     if (pending[p].u === ever.url + '&' + ever.method) { // 当当前请求在数组中存在时执行函数体
//       pending[p].f() // 执行取消操作
//       pending.splice(p, 1) // 把这条记录从数组中移除
//     }
//   }
// }

// request拦截器
service.interceptors.request.use(
  config => {
    // removeRepeatUrl(config)
    // config.cancelToken = new CancelToken((c) => {
    //   // 自定义唯一标识
    //   pending.push({ u: config.url + '&' + config.method, f: c })
    // })

    if (getToken()) {
      // 让每个请求携带自定义token 请根据实际情况自行修改
      config.headers['SYSTOKEN'] = getToken()
    }

    return config
  },
  error => {
    Promise.reject(error)
  }
)

// response 拦截器
service.interceptors.response.use(
  response => {
    // removeRepeatUrl(response.config)

    // 延续 Token 时间
    const SysToken = getToken()
    if (SysToken) {
      setToken(SysToken)
    }

    const res = response.data
    if (res.statusCode !== 200) {
      switch (res.statusCode) {
        case 401:
          MessageBox.confirm(
            '登录状态已过期，您可以继续留在该页面，或者重新登录',
            '系统提示',
            {
              confirmButtonText: '重新登录',
              cancelButtonText: '取消',
              type: 'warning'
            }
          ).then(() => {
            store.dispatch('LogOut').then(() => {
              location.reload()
            })
          })
          break
        case 403:
          Notification.error({
            title: '您无权进行此操作，请求执行已拒绝',
            duration: 3000
          })
          break
        default:
          Notification.error({
            title: res.message
          })
          break
      }
    }

    return res
  },
  error => {
    Notification.error({
      title: '请求接口失败',
      duration: 3000
    })
    return Promise.reject(error)
  }
)
export default service
