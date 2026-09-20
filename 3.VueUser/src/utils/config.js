const config = {
    get() {
        return {
            url : process.env.VUE_APP_BASE_API_URL + process.env.VUE_APP_BASE_API + '/',
            name: process.env.VUE_APP_BASE_API,
			menuList:[
				{
					name: '公告信息',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'公告信息',
							url:'/index/gonggaoxinxiList'
						},
					]
				},
				{
					name: '创新思维培养',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'创新思维培养',
							url:'/index/chuangxinsiweipeiyangList'
						},
					]
				},
				{
					name: '讲座信息',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'讲座信息',
							url:'/index/jiangzuoxinxiList'
						},
					]
				},
				{
					name: '创新能力比赛',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'创新能力比赛',
							url:'/index/chuangxinnenglibisaiList'
						},
					]
				},
				{
					name: '团队申报',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'团队申报',
							url:'/index/tuanduishenbaoList'
						},
					]
				},
			]
        }
    },
    getProjectName(){
        return {
            projectName: "Java大学生创新能力培养平台的设计与实现"
        } 
    }
}
export default config
