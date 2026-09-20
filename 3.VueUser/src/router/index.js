import { createRouter, createWebHashHistory } from 'vue-router'
import index from '../views'
import home from '../views/pages/home.vue'
import login from '../views/pages/login.vue'
import yonghuList from '@/views/pages/yonghu/list'
import yonghuDetail from '@/views/pages/yonghu/formModel'
import yonghuAdd from '@/views/pages/yonghu/formAdd'
import yonghuRegister from '@/views/pages/yonghu/register'
import yonghuCenter from '@/views/pages/yonghu/center'
import liuyanfankuiList from '@/views/pages/liuyanfankui/list'
import liuyanfankuiDetail from '@/views/pages/liuyanfankui/formModel'
import liuyanfankuiAdd from '@/views/pages/liuyanfankui/formAdd'
import gonggaoxinxiList from '@/views/pages/gonggaoxinxi/list'
import gonggaoxinxiDetail from '@/views/pages/gonggaoxinxi/formModel'
import gonggaoxinxiAdd from '@/views/pages/gonggaoxinxi/formAdd'
import jiangzuoxinxiList from '@/views/pages/jiangzuoxinxi/list'
import jiangzuoxinxiDetail from '@/views/pages/jiangzuoxinxi/formModel'
import jiangzuoxinxiAdd from '@/views/pages/jiangzuoxinxi/formAdd'
import storeupList from '@/views/pages/storeup/list'
import tuanduishenbaoList from '@/views/pages/tuanduishenbao/list'
import tuanduishenbaoDetail from '@/views/pages/tuanduishenbao/formModel'
import tuanduishenbaoAdd from '@/views/pages/tuanduishenbao/formAdd'
import xiangmubisaiList from '@/views/pages/xiangmubisai/list'
import xiangmubisaiDetail from '@/views/pages/xiangmubisai/formModel'
import xiangmubisaiAdd from '@/views/pages/xiangmubisai/formAdd'
import chuangxinsiweipeiyangList from '@/views/pages/chuangxinsiweipeiyang/list'
import chuangxinsiweipeiyangDetail from '@/views/pages/chuangxinsiweipeiyang/formModel'
import chuangxinsiweipeiyangAdd from '@/views/pages/chuangxinsiweipeiyang/formAdd'
import pingfenxinxiList from '@/views/pages/pingfenxinxi/list'
import pingfenxinxiDetail from '@/views/pages/pingfenxinxi/formModel'
import pingfenxinxiAdd from '@/views/pages/pingfenxinxi/formAdd'
import chuangxinnenglibisaiList from '@/views/pages/chuangxinnenglibisai/list'
import chuangxinnenglibisaiDetail from '@/views/pages/chuangxinnenglibisai/formModel'
import chuangxinnenglibisaiAdd from '@/views/pages/chuangxinnenglibisai/formAdd'
import bisaibaomingList from '@/views/pages/bisaibaoming/list'
import bisaibaomingDetail from '@/views/pages/bisaibaoming/formModel'
import bisaibaomingAdd from '@/views/pages/bisaibaoming/formAdd'
import pingxuanjieguoList from '@/views/pages/pingxuanjieguo/list'
import pingxuanjieguoDetail from '@/views/pages/pingxuanjieguo/formModel'
import pingxuanjieguoAdd from '@/views/pages/pingxuanjieguo/formAdd'

const routes = [{
		path: '/',
		redirect: '/index/home'
	},
	{
		path: '/index',
		component: index,
		children: [{
			path: 'home',
			component: home
		}
		, {
			path: 'yonghuList',
			component: yonghuList
		}, {
			path: 'yonghuDetail',
			component: yonghuDetail
		}, {
			path: 'yonghuAdd',
			component: yonghuAdd
		}
		, {
			path: 'yonghuCenter',
			component: yonghuCenter
		}
		, {
			path: 'liuyanfankuiList',
			component: liuyanfankuiList
		}, {
			path: 'liuyanfankuiDetail',
			component: liuyanfankuiDetail
		}, {
			path: 'liuyanfankuiAdd',
			component: liuyanfankuiAdd
		}
		, {
			path: 'gonggaoxinxiList',
			component: gonggaoxinxiList
		}, {
			path: 'gonggaoxinxiDetail',
			component: gonggaoxinxiDetail
		}, {
			path: 'gonggaoxinxiAdd',
			component: gonggaoxinxiAdd
		}
		, {
			path: 'jiangzuoxinxiList',
			component: jiangzuoxinxiList
		}, {
			path: 'jiangzuoxinxiDetail',
			component: jiangzuoxinxiDetail
		}, {
			path: 'jiangzuoxinxiAdd',
			component: jiangzuoxinxiAdd
		}
		, {
			path: 'storeupList',
			component: storeupList
		}
		, {
			path: 'tuanduishenbaoList',
			component: tuanduishenbaoList
		}, {
			path: 'tuanduishenbaoDetail',
			component: tuanduishenbaoDetail
		}, {
			path: 'tuanduishenbaoAdd',
			component: tuanduishenbaoAdd
		}
		, {
			path: 'xiangmubisaiList',
			component: xiangmubisaiList
		}, {
			path: 'xiangmubisaiDetail',
			component: xiangmubisaiDetail
		}, {
			path: 'xiangmubisaiAdd',
			component: xiangmubisaiAdd
		}
		, {
			path: 'chuangxinsiweipeiyangList',
			component: chuangxinsiweipeiyangList
		}, {
			path: 'chuangxinsiweipeiyangDetail',
			component: chuangxinsiweipeiyangDetail
		}, {
			path: 'chuangxinsiweipeiyangAdd',
			component: chuangxinsiweipeiyangAdd
		}
		, {
			path: 'pingfenxinxiList',
			component: pingfenxinxiList
		}, {
			path: 'pingfenxinxiDetail',
			component: pingfenxinxiDetail
		}, {
			path: 'pingfenxinxiAdd',
			component: pingfenxinxiAdd
		}
		, {
			path: 'chuangxinnenglibisaiList',
			component: chuangxinnenglibisaiList
		}, {
			path: 'chuangxinnenglibisaiDetail',
			component: chuangxinnenglibisaiDetail
		}, {
			path: 'chuangxinnenglibisaiAdd',
			component: chuangxinnenglibisaiAdd
		}
		, {
			path: 'bisaibaomingList',
			component: bisaibaomingList
		}, {
			path: 'bisaibaomingDetail',
			component: bisaibaomingDetail
		}, {
			path: 'bisaibaomingAdd',
			component: bisaibaomingAdd
		}
		, {
			path: 'pingxuanjieguoList',
			component: pingxuanjieguoList
		}, {
			path: 'pingxuanjieguoDetail',
			component: pingxuanjieguoDetail
		}, {
			path: 'pingxuanjieguoAdd',
			component: pingxuanjieguoAdd
		}
		]
	},
	{
		path: '/login',
		component: login
	}
	,{
		path: '/yonghuRegister',
		component: yonghuRegister
	}
]

const router = createRouter({
  history: createWebHashHistory(process.env.BASE_URL),
  routes
})

export default router
