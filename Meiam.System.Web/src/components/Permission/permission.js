import store from '@/store'

export default {
  inserted(el, binding, vnode) {
    const { value } = binding
    const powers = store.getters && store.getters.userInfo.userPower
    if (value && value instanceof Array && value.length > 0) {
      const permission = value

      const hasPermission = powers.some(power => {
        return permission.includes(power)
      })

      if (!hasPermission) {
        el.parentNode && el.parentNode.removeChild(el)
      }
    } else {
      throw new Error(`使用方式： v-permission="['admin','editor']"`)
    }
  }
}
