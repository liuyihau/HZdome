//app.js
Object.assign = Object.assign && typeof Object.assign === 'function' ? Object.assign : function (target) { for (var i = 1; i < arguments.length; i++) { var source = arguments[i]; for (var key in source) { if (Object.prototype.hasOwnProperty.call(source, key)) { target[key] = source[key] } } } return target }
Array.from = Array.from && typeof Array.from === 'function' ? Array.from : obj => [].slice.call(obj)

import Wux from 'components/wux'
import WxValidate from 'assets/plugins/WxValidate'


App({
  onLaunch: function() {
    //调用API从本地缓存中获取数据
    var logs = wx.getStorageSync('logs') || []
    logs.unshift(Date.now())
    wx.setStorageSync('logs', logs)
  },

  getUserInfo: function(cb) {
    var that = this
    if (this.globalData.userInfo) {
      typeof cb == "function" && cb(this.globalData.userInfo)
    } else {
      //调用登录接口
      wx.getUserInfo({
        withCredentials: false,
        success: function(res) {
          that.globalData.userInfo = res.userInfo
          typeof cb == "function" && cb(that.globalData.userInfo)
        }
      })
    }
  },

  globalData: {
    userInfo: null
  },
  onLaunch() {
      console.log('onLaunch')
  },
  onShow() {
      console.log('onShow')
  },
  onHide() {
      console.log('onHide')
  },
  Wux: Wux,
  WxValidate: (rules, messages) => new WxValidate(rules, messages), 
})
