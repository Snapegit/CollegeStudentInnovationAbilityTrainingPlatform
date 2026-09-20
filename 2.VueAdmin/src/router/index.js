	import {
		createRouter,
		createWebHashHistory
	} from 'vue-router'
	import tuanduishenbao from '@/views/tuanduishenbao/list'
	import chuangxinsiweipeiyang from '@/views/chuangxinsiweipeiyang/list'
	import chuangxinnenglibisai from '@/views/chuangxinnenglibisai/list'
	import storeup from '@/views/storeup/list'
	import users from '@/views/users/list'
	import jiangzuoxinxi from '@/views/jiangzuoxinxi/list'
	import xiangmubisai from '@/views/xiangmubisai/list'
	import yonghu from '@/views/yonghu/list'
	import liuyanfankui from '@/views/liuyanfankui/list'
	import pingfenxinxi from '@/views/pingfenxinxi/list'
	import gonggaoxinxi from '@/views/gonggaoxinxi/list'
	import bisaibaoming from '@/views/bisaibaoming/list'
	import config from '@/views/config/list'
	import pingxuanjieguo from '@/views/pingxuanjieguo/list'
	import discussjiangzuoxinxi from '@/views/discussjiangzuoxinxi/list'

export const routes = [{
		path: '/login',
		name: 'login',
		component: () => import('../views/login.vue')
	},{
		path: '/',
		name: '首页',
		component: () => import('../views/index'),
		children: [{
			path: '/',
			name: '首页Home',
			component: () => import('../views/HomeView.vue'),
			meta: {
				affix: true
			}
		}, {
			path: '/updatepassword',
			name: '修改密码',
			component: () => import('../views/updatepassword.vue')
		}
		
		,{
			path: '/tuanduishenbao',
			name: '团队申报',
			component: tuanduishenbao
		}
		,{
			path: '/chuangxinsiweipeiyang',
			name: '创新思维培养',
			component: chuangxinsiweipeiyang
		}
		,{
			path: '/chuangxinnenglibisai',
			name: '创新能力比赛',
			component: chuangxinnenglibisai
		}
		,{
			path: '/storeup',
			name: '我的收藏',
			component: storeup
		}
		,{
			path: '/users',
			name: '管理员',
			component: users
		}
		,{
			path: '/jiangzuoxinxi',
			name: '讲座信息',
			component: jiangzuoxinxi
		}
		,{
			path: '/xiangmubisai',
			name: '项目比赛',
			component: xiangmubisai
		}
		,{
			path: '/yonghu',
			name: '用户',
			component: yonghu
		}
		,{
			path: '/liuyanfankui',
			name: '留言反馈',
			component: liuyanfankui
		}
		,{
			path: '/pingfenxinxi',
			name: '评分信息',
			component: pingfenxinxi
		}
		,{
			path: '/gonggaoxinxi',
			name: '公告信息',
			component: gonggaoxinxi
		}
		,{
			path: '/bisaibaoming',
			name: '比赛报名',
			component: bisaibaoming
		}
		,{
			path: '/config',
			name: '轮播图',
			component: config
		}
		,{
			path: '/pingxuanjieguo',
			name: '评选结果',
			component: pingxuanjieguo
		}
		,{
			path: '/discussjiangzuoxinxi',
			name: '讲座信息评论',
			component: discussjiangzuoxinxi
		}
		]
	},
]

const router = createRouter({
	history: createWebHashHistory(process.env.BASE_URL),
	routes
})

export default router
