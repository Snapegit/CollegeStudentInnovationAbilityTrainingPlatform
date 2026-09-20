<template>
	<div class="home_view">
		<div class="projectTitle">欢迎使用 {{projectName}}</div>
		<div class="count_list">
			<el-collapse-transition v-if="btnAuth('pingfenxinxi','首页总数')">
				<el-card v-show="countTypeList.closepingfenxinxiCountType" class="card_view">
					<template #header>
						<div class="index_card_head">
							<div class="card_head_title">
								评分信息
							</div>
							<div class="card_head_right">
								<el-icon @click="countTypeClick('hiddenpingfenxinxiCountType')" class="showIcons"
									:class="countTypeList.hiddenpingfenxinxiCountType?'showIcons1':''">
									<ArrowUpBold />
								</el-icon>
								<el-icon @click="countTypeClick('closepingfenxinxiCountType')" class="closeIcons">
									<CloseBold />
								</el-icon>
							</div>
							
						</div>
					</template>
					<el-collapse-transition>
						<div class="count_item" v-show="countTypeList.hiddenpingfenxinxiCountType">
							<div class="count_title">评分信息总数</div>
							<div class="count_num">{{pingfenxinxiCount}}</div>
						</div>
					</el-collapse-transition>
				</el-card>
			</el-collapse-transition>
			<el-collapse-transition v-if="btnAuth('chuangxinnenglibisai','首页总数')">
				<el-card v-show="countTypeList.closechuangxinnenglibisaiCountType" class="card_view">
					<template #header>
						<div class="index_card_head">
							<div class="card_head_title">
								创新能力比赛
							</div>
							<div class="card_head_right">
								<el-icon @click="countTypeClick('hiddenchuangxinnenglibisaiCountType')" class="showIcons"
									:class="countTypeList.hiddenchuangxinnenglibisaiCountType?'showIcons1':''">
									<ArrowUpBold />
								</el-icon>
								<el-icon @click="countTypeClick('closechuangxinnenglibisaiCountType')" class="closeIcons">
									<CloseBold />
								</el-icon>
							</div>
							
						</div>
					</template>
					<el-collapse-transition>
						<div class="count_item" v-show="countTypeList.hiddenchuangxinnenglibisaiCountType">
							<div class="count_title">创新能力比赛总数</div>
							<div class="count_num">{{chuangxinnenglibisaiCount}}</div>
						</div>
					</el-collapse-transition>
				</el-card>
			</el-collapse-transition>
		</div>
		<div class="card_list">
			<el-collapse-transition v-if="btnAuth('pingfenxinxi','首页统计')">
				<el-card v-show="cardTypeList.closepingfenxinxiChartType1" class="card_view">
					<template #header>
						<div class="index_card_head">
							<div class="card_head_title">
								评分信息
							</div>
							<div class="card_head_right">
								<el-icon @click="cardTypeClick('hiddenpingfenxinxiChartType1')" class="showIcons"
									:class="cardTypeList.hiddenpingfenxinxiChartType1?'showIcons1':''">
									<ArrowUpBold />
								</el-icon>
								<el-icon @click="cardTypeClick('closepingfenxinxiChartType1')" class="closeIcons">
									<CloseBold />
								</el-icon>
							</div>
						</div>
					</template>
					<el-collapse-transition>
						<div class="card_item" v-show="cardTypeList.hiddenpingfenxinxiChartType1">
							<div id="pingfenxinxipingfenEchart1" style="width: 100%;height: 400px;"></div>
						</div>
					</el-collapse-transition>
				</el-card>
			</el-collapse-transition>
			<el-collapse-transition v-if="btnAuth('chuangxinnenglibisai','首页统计')">
				<el-card v-show="cardTypeList.closechuangxinnenglibisaiChartType1" class="card_view">
					<template #header>
						<div class="index_card_head">
							<div class="card_head_title">
								创新能力比赛
							</div>
							<div class="card_head_right">
								<el-icon @click="cardTypeClick('hiddenchuangxinnenglibisaiChartType1')" class="showIcons"
									:class="cardTypeList.hiddenchuangxinnenglibisaiChartType1?'showIcons1':''">
									<ArrowUpBold />
								</el-icon>
								<el-icon @click="cardTypeClick('closechuangxinnenglibisaiChartType1')" class="closeIcons">
									<CloseBold />
								</el-icon>
							</div>
						</div>
					</template>
					<el-collapse-transition>
						<div class="card_item" v-show="cardTypeList.hiddenchuangxinnenglibisaiChartType1">
							<div id="chuangxinnenglibisaibisaixiangmuEchart1" style="width: 100%;height: 400px;"></div>
						</div>
					</el-collapse-transition>
				</el-card>
			</el-collapse-transition>
		</div>
	</div>
</template>

<script setup>
	import {
		inject,
		nextTick,
		ref,
		getCurrentInstance
	} from 'vue';
	const context = getCurrentInstance()?.appContext.config.globalProperties;
	const projectName = context.$project.projectName
	const countTypeList = ref({
	})
	const getCountList=()=>{
		countTypeList.value.closepingfenxinxiCountType = true
		countTypeList.value.hiddenpingfenxinxiCountType = true
		if(btnAuth('pingfenxinxi','首页总数')){
			getpingfenxinxiCount()
		}
		countTypeList.value.closechuangxinnenglibisaiCountType = true
		countTypeList.value.hiddenchuangxinnenglibisaiCountType = true
		if(btnAuth('chuangxinnenglibisai','首页总数')){
			getchuangxinnenglibisaiCount()
		}
	}
	const pingfenxinxiCount = ref(0)
	const getpingfenxinxiCount = () => {
		context?.$http({
			url:'pingfenxinxi/count',
			method: 'get'
		}).then(res=>{
			pingfenxinxiCount.value = res.data.data
		})
	}
	const chuangxinnenglibisaiCount = ref(0)
	const getchuangxinnenglibisaiCount = () => {
		context?.$http({
			url:'chuangxinnenglibisai/count',
			method: 'get'
		}).then(res=>{
			chuangxinnenglibisaiCount.value = res.data.data
		})
	}
	const countTypeClick = (e) => {
		countTypeList.value[e] = !countTypeList.value[e]
	}
	const init=()=>{
		getCountList()
		getCardList()
	}
	//权限验证
	const btnAuth = (e,a)=>{
		return context?.$toolUtil.isAuth(e,a)
	}
	let echarts = inject("echarts")
	const cardTypeClick = (e) =>{
		cardTypeList.value[e] = !cardTypeList.value[e]
		setTimeout(()=>{
			getCardList()
		},1000)
	}
	const cardTypeList = ref({
		closepingfenxinxiChartType1: true,
		hiddenpingfenxinxiChartType1: true,
		closechuangxinnenglibisaiChartType1: true,
		hiddenchuangxinnenglibisaiChartType1: true,
	})
	const getCardList = () => {
		if(btnAuth('pingfenxinxi','首页统计')){
			getpingfenxinxiChart1()
		}
		if(btnAuth('chuangxinnenglibisai','首页统计')){
			getchuangxinnenglibisaiChart1()
		}
	}
	const getpingfenxinxiChart1 = () => {
		nextTick(()=>{
			var pingfenEchart1 = echarts.init(document.getElementById("pingfenxinxipingfenEchart1"),'macarons');
			context?.$http({
				url: `pingfenxinxi/value/biaoti/pingfen`,
				method: "get",
			}).then(obj=>{
				let res = obj.data.data
				let xAxis = [];
				let yAxis = [];
				let pArray = []
				for(let i=0;i<res.length;i++){
				    xAxis.push(res[i].biaoti);
				    yAxis.push(parseFloat((res[i].total)));
				    pArray.push({
				        value: parseFloat((res[i].total)),
				        name: res[i].biaoti
				    })
				}
				var option = {};
                option = {
                    title: {
                        text: '项目评分统计',
                        left: 'center'
                    },
                    tooltip: {
                      trigger: 'item',
                      formatter: '{b} : {c}'
                    },
                    xAxis: {
                        type: 'category',
                        data: xAxis,
                        axisLabel: {
                            rotate: 40
                        }
                    },
                    yAxis: {
                        type: 'value'
                    },
                    series: [{
                        data: yAxis,
                        type: 'bar'
                    }]
                };
				pingfenEchart1.clear()
				// 使用刚指定的配置项和数据显示图表。
				pingfenEchart1.setOption(option);
				//根据窗口的大小变动图表
				pingfenEchart1.resize();
			})
		})
	}
	const getchuangxinnenglibisaiChart1 = () => {
		nextTick(()=>{
			var bisaixiangmuEchart1 = echarts.init(document.getElementById("chuangxinnenglibisaibisaixiangmuEchart1"),'macarons');
			context?.$http({
				url: "chuangxinnenglibisai/group/bisaixiangmu",
				method: "get",
			}).then(obj=>{
				let res = obj.data.data
				let xAxis = [];
				let yAxis = [];
				let pArray = []
				for(let i=0;i<res.length;i++){
				    xAxis.push(res[i].bisaixiangmu);
				    yAxis.push(parseFloat((res[i].total)));
				    pArray.push({
				        value: parseFloat((res[i].total)),
				        name: res[i].bisaixiangmu
				    })
				}
				var option = {};
                option = {
                    title: {
                        text: '项目统计',
                        left: 'center'
                    },
                    tooltip: {
                      trigger: 'item',
                      formatter: '{b} : {c}'
                    },
                    xAxis: {
                        type: 'category',
                        data: xAxis,
                        axisLabel: {
                            rotate: 40
                        }
                    },
                    yAxis: {
                        type: 'value'
                    },
                    series: [{
                        data: yAxis,
                        type: 'bar'
                    }]
                };
				bisaixiangmuEchart1.clear()
				// 使用刚指定的配置项和数据显示图表。
				bisaixiangmuEchart1.setOption(option);
				//根据窗口的大小变动图表
				bisaixiangmuEchart1.resize();
			})
		})
	}
	init()
</script>
<style lang="scss">
	.projectTitle{
		padding: 20px 0;
		font-weight: bold;
		display: flex;
		width: 100%;
		font-size: 30px;
		justify-content: center;
		align-items: center;
		height: 50%;
	}

	.showIcons {
		transition: transform 0.3s;
		margin-right: 10px;
	}

	.showIcons1 {
		transform: rotate(-180deg);
	}
	
	// 总数盒子
	.count_list{
		padding: 0 0 20px;
		display: flex;
		width: 100%;
		justify-content: center;
		align-items: flex-start;
		flex-wrap: wrap;
		// 总数card
		.card_view {
			border: 0px solid #e4e7ed;
			border-radius: 10px;
			box-shadow: none;
			margin: 0 10px 10px;
			flex: 1;
			background: linear-gradient(90deg, #E3EDF9 0%, #D9E6F7 100%);
			width: 100%;
			position: relative;
			box-sizing: border-box;
			height: auto;
			// card头部
			.el-card__header {
				border: 1px solid #e4e7ed;
				padding: 7px 20px;
				left: 0;
				background: #62B8FF;
				bottom: 0;
				width: 100%;
				border-width: 0;
				position: absolute;
				// 头部盒子
				.index_card_head {
					display: flex;
					width: 100%;
					justify-content: space-between;
					align-items: center;
					// 标题
					.card_head_title {
						color: #868686;
						font-weight: bold;
						font-size: 14px;
					}
					// 按钮盒子
					.card_head_right {
						display: flex;
						align-items: center;
						// 按钮
						.el-icon {
							cursor: pointer;
							color: #868686;
							font-weight: bold;
							font-size: 12px;
						}
					}
				}
			}
			// body
			.el-card__body {
				padding: 0;
				// body盒子
				.count_item{
					padding: 30px 20px 60px;
					flex-direction: column-reverse;
					display: flex;
					// 总数标题
					.count_title{
						color: #3753A2;
						font-weight: bold;
						font-size: 16px;
						line-height: 1;
						order: 1;
					}
					// 总数数字
					.count_num{
						color: #3753A2;
						font-weight: bold;
						font-size: 50px;
						line-height: 1.5;
						order: 2;
					}
				}
			}
		}
	}
	// 首页盒子
	.home_view {
		padding: 20px;
		background: url(http://clfile.zggen.cn/20240203/09a98f4852104a599055d47953ef0a23.png) no-repeat center top / 100% 100% !important;
		width: 100%;
		min-height: 100vh;
		height: auto;
	}
	// 统计图盒子
	.card_list {
		padding: 0 0 20px;
		display: flex;
		width: 100%;
		justify-content: center;
		align-items: flex-start;
		flex-wrap: wrap;
		// 统计图card
		.card_view {
			border: 0px solid #e4e7ed;
			border-radius: 10px;
			box-shadow: none;
			margin: 0 10px 10px;
			flex: 1;
			background: linear-gradient(90deg, #E3EDF9 0%, #D9E6F7 100%);
			width: 100%;
			position: relative;
			box-sizing: border-box;
			height: auto;
			// 头部
			.el-card__header {
				border: 0px solid #e4e7ed;
				padding: 7px 20px;
				left: 0;
				bottom: 0;
				background: #62B8FF;
				width: 100%;
				border-width: 0;
				position: absolute;
				// 头部盒子
				.index_card_head {
					display: flex;
					width: 100%;
					justify-content: space-between;
					align-items: center;
					// 标题
					.card_head_title {
						color: #868686;
						font-weight: bold;
						font-size: 14px;
					}
					// 按钮盒子
					.card_head_right {
						display: flex;
						align-items: center;
						// 按钮
						.el-icon{
							cursor: pointer;
							color: #868686;
							font-weight: bold;
							font-size: 12px;
						}
					}
				}
			}
			// body
			.el-card__body {
				padding: 0;
				// body盒子
				.card_item{
					padding: 30px;
					text-align: center;
				}
			}
		}
	}
</style>
