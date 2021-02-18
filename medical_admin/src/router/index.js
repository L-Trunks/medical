import Vue from 'vue'
import Router from 'vue-router'
import {post,fetch,patch,put} from '@/util/http'
import {delCookie,getCookie} from '@/util/util'

import Home from '@/components/common/Home'
import DashBoard from '@/components/page/DashBoard'
import index from '@/components/page/index'
import websiteScroll from '@/components/page/websiteScroll'
import shopScroll from '@/components/page/shopScroll'
import commonTel from '@/components/page/commonTel'
import doctorsList from '@/components/page/doctorsList'
import healthyZhishi from '@/components/page/healthyZhishi'
import orderList from '@/components/page/orderList'
import addPhone from '@/components/form/addPhone'
import updatePhone from '@/components/form/updatePhone'
import updateScroll from '@/components/form/updateScroll'
import updateWebsiteScroll from '@/components/form/updateWebsiteScroll'
import addScroll from '@/components/form/addScroll'
import addWebsiteScroll from '@/components/form/addWebsiteScroll'
import orderStatistic from '@/components/page/orderStatistic'

import addArticle from '@/components/form/addArticle'
import updateArticle from '@/components/form/updateArticle'
import updatePassword from '@/components/form/updatePassword'
import report from '@/components/page/report'
import contact from '@/components/page/contact'
import awardSetting from '@/components/page/awardSetting'
import addDoctor from '@/components/form/addDoctor'
import updateDoctor from '@/components/form/updateDoctor'
import awardGet from '@/components/page/awardGet'
import AwardStatistic from '@/components/page/AwardStatistic'



import healthyToutiao from '@/components/page/healthyToutiao'





Vue.use(Router)

const routes = [
    {
      path: '/medicalAdmin/index',
      name:'登录',
      component:index
    },
    {
      path: '/medicalAdmin',
      component: Home,
      redirect: '/medicalAdmin/DashBoard',
      children:[
        {
          path:'/medicalAdmin/DashBoard',
          component:DashBoard
        },{
          path:'/medicalAdmin/websiteScroll',
          component:websiteScroll
        },{
          path:'/medicalAdmin/shopScroll',
          component:shopScroll
        },{
          path:'/medicalAdmin/commonTel',
          component:commonTel
        },{
          path:'/medicalAdmin/doctorsList',
          component:doctorsList
        },{
          path:'/medicalAdmin/healthyZhishi',
          component:healthyZhishi
        },{
          path:'/medicalAdmin/orderList',
          component:orderList
        },{
          path:'/medicalAdmin/addPhone',
          component:addPhone
        },{
          path:'/medicalAdmin/updatePhone',
          component:updatePhone
        },{
          path:'/medicalAdmin/updateScroll',
          component:updateScroll
        },{
          path:'/medicalAdmin/updateWebsiteScroll',
          component:updateWebsiteScroll
        },{
          path:'/medicalAdmin/addScroll',
          component:addScroll
        },{
          path:'/medicalAdmin/addWebsiteScroll',
          component:addWebsiteScroll
        },{
          path:'/medicalAdmin/orderStatistic',
          component:orderStatistic
        },{
          path:'/medicalAdmin/healthyToutiao',
          component:healthyToutiao
        },{
          path:'/medicalAdmin/addArticle',
          component:addArticle
        },{
          path:'/medicalAdmin/updateArticle',
          component:updateArticle
        },{
          path:'/medicalAdmin/updatePassword',
          component:updatePassword
        },{
          path:'/medicalAdmin/report',
          component:report
        },{
          path:'/medicalAdmin/awardSetting',
          component:awardSetting
        },{
          path:'/medicalAdmin/addDoctor',
          component:addDoctor
        },{
          path:'/medicalAdmin/updateDoctor',
          component:updateDoctor
        },{
          path:'/medicalAdmin/awardGet',
          component:awardGet
        },{
          path:'/medicalAdmin/AwardStatistic',
          component:AwardStatistic
        },{
          path:'/medicalAdmin/contact',
          component:contact
        }

      ]
    }
  ];
const router = new Router({
  mode: 'history',
  routes
});
//这个是请求页面路由的时候会验证cookie存不存在，不存在的话会到登录页
router.beforeEach((to, from, next) => {
    if (to.path.startsWith('/medicalAdmin/index')) {
      delCookie('admin_user');
      delCookie('id');
      next()
    } else {
      let user = getCookie('admin_user');
      if (!user) {
        next({path: '/medicalAdmin/index'})
      } else {
        next()
      }
    }

});
export default router;

