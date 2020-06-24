<template>
  <div v-show="show" :style="style" class="contextmenus">
    <slot />
  </div>
</template>
<script>
export default {
  name: 'context-menu',
  data() {
    return {
      x: null,
      y: null,
      style: {},
      show: false
    }
  },
  methods: {
    bindShowEvents(event) {
      this.style = {
        left: event.clientX + 'px',
        top: event.clientY + 'px'
      }
      this.show = true
      document.addEventListener('click', this.bindHideEvents)
    },
    // 绑定隐藏菜单事件
    bindHideEvents() {
      this.show = false
      document.removeEventListener('click', this.bindHideEvents)
    }
  }
}
</script>
<style>
.contextmenus li {
  display: block;
  line-height: 34px;
  text-align: center;
}
.contextmenus li:not(:last-child) {
  border-bottom: 1px solid rgba(64, 158, 255, 0.2);
}
.contextmenus {
  position: fixed;
  background-color: #ecf5ff;
  width: 100px;
  /*height: 106px;*/
  font-size: 12px;
  color: #409eff;
  border-radius: 4px;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  border: 1px solid rgba(64, 158, 255, 0.2);
  white-space: nowrap;
  z-index: 1000;
}
.contextmenus li:hover {
  cursor: pointer;
  background: #66b1ff;
  border-color: #66b1ff;
  color: #fff;
}
</style>
