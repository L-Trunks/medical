import Vue from 'vue'
import Router from 'vue-router'
import {post,fetch,patch,put} from '@/util/http'
import {delCookie,getCookie} from '@/util/util'

import index from '@/components/page/index'
import login from '@/components/login/login'
import DLogin from '@/components/login/DLogin'
import register from '@/components/login/register'

import healthy from '@/components/page/healthy'
import family from '@/components/page/family'
import addPerson from '@/components/form/addPerson'
import updatePerson from '@/components/form/updatePerson'
import chatList from '@/components/page/chatList'
import setting from '@/components/page/setting'
import me from '@/components/setting/me'
import del from '@/components/setting/del'
import consult from '@/components/page/consult'

import article from '@/components/page/article'
import chatContent from '@/components/page/chatContent'
import search from '@/components/page/search'
import orderList from '@/components/page/orderList'
import forget from '@/components/page/forget'
import addOrder from '@/components/form/addOrder'
import myOrderList from '@/components/page/myOrderList'


Vue.use(Router)


const routes =  [
    {
      path: '/medical',
      component: index, //主页
      children:[        //子页
        {
          path:'',
          component:healthy
        },
        {
          path:'/medical/healthy',
          name:'healthy',
          component:healthy
        },
        {
          path:'/medical/family',
          name:'family',
          component:family
        },
        {
          path:'/medical/addPerson',
          component:addPerson
        },
        {
          path:'/medical/updatePerson',
          component:updatePerson
        },
        {
          path:'/medical/chatList',
          name:'chatList',
          component:chatList
        },
        {
          path:'/medical/consult',
          name:'consult',
          component:consult
        },
        
        {
          path:'/medical/article',
          component:article
        },
        {
          path:'/medical/chatContent',
          component:chatContent
        },
        {
          path:'/medical/orderList',
          name:'orderList',
          component:orderList
        },
        {
          path:'/medical/addOrder',
          name:'addOrder',
          component:addOrder
        },
        {
          path:'/medical/myOrderList',
          name:'myOrderList',
          component:myOrderList
        },

        {
          path:'/medical/search',
          component:search,
          children:[        //子页
            {
              path:':info',
              name:'search',
              component:search
            }
          ]
        },
       ]
    },{
      path: '/medical/register',//注册页
      component: register,
      name: '注册'
     
    },
    {
      path:'/medical/forget',
      name:'forget',
      component:forget
    },{
      path: '/medical/login',
      component: login,//登录页
      name: '登录'
     
    },{
      path: '/medical/DLogin',
      component: DLogin,//登录页
      name: '登录'
     
    },{
      path: '/medical/setting',//设置页
      component: setting,
      children:[        //子页
        {
          path:'',
          component:me
        },
        {
          path:'/medical/setting/me',
          name:'me',
          component:me
        },
        {
          path:'/medical/setting/del',
          component:del
        },
      ]
    }
  
];

const router = new Router({
  mode: 'history',
  routes
});
//这个是请求页面路由的时候会验证cookie存不存在，不存在的话会到登录页
router.beforeEach((to, from, next) => {
  if (to.path.startsWith('/medical/login')) {
    delCookie('username');
    delCookie('userType');
    next()
  }else if(to.path.startsWith('/medical/register')){
    next()
  }else if(to.path.startsWith('/medical/forget')){
    next()
  }else if(to.path.startsWith('/medical/DLogin')){
    delCookie('username');
    delCookie('userType');
    next()
  } else {
    let user = getCookie('username');
    if (!user) {
      next({path: '/medical/login'})
    } else {
      next()
    }
  }

});
export default router;
