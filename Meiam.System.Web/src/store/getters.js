const getters = {
  // app
  size: state => state.app.size,
  sidebar: state => state.app.sidebar,
  device: state => state.app.device,
  token: state => state.user.token,
  visitedViews: state => state.tagsView.visitedViews,
  cachedViews: state => state.tagsView.cachedViews,

  // user
  userInfo: state => state.user.userInfo,
  loadMenus: state => state.user.loadMenus,
  routers: state => state.routers.routers,
  addRouters: state => state.routers.addRouters,
  sidebarRouters: state => state.routers.sidebarRouters
}
export default getters
