<template>
	<div>
		<el-dialog v-model="formVisible" :title="formTitle" width="80%" destroy-on-close :fullscreen='false'>
			<el-form class="formModel_form" ref="formRef" :model="form" label-width="$template2.back.add.form.base.labelWidth" :rules="rules">
				<el-row>
					<el-col :span="24">
						<el-form-item label="用户账号" prop="yonghuzhanghao">
							<el-select
								class="list_sel"
								:disabled="!isAdd||disabledForm.yonghuzhanghao?true:false"
								v-model="form.yonghuzhanghaos" 
								placeholder="请选择用户账号"
								multiple
								@change="tuanduishenbaoyonghuzhanghaoChange">
								<el-option v-for="(item,index) in yonghuzhanghaoLists" :label="item" :value="item">
								</el-option>
							</el-select>
						</el-form-item>
					</el-col>
					<el-col :span="24">
						<el-form-item label="用户姓名" prop="yonghuxingming">
							<el-select
								class="list_sel"
								:disabled="!isAdd||disabledForm.yonghuxingming?true:false"
								v-model="form.yonghuxingmings" 
								placeholder="请选择用户姓名"
								multiple
								@change="tuanduishenbaoyonghuxingmingChange">
								<el-option v-for="(item,index) in yonghuxingmingLists" :label="item" :value="item">
								</el-option>
							</el-select>
						</el-form-item>
					</el-col>
					<el-col :span="24">
						<el-form-item label="团队名称" prop="tuanduimingcheng">
							<el-input class="list_inp" v-model="form.tuanduimingcheng" placeholder="团队名称"
								 type="text" 								:readonly="!isAdd||disabledForm.tuanduimingcheng?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="团队目标" prop="tuanduimubiao">
							<el-input class="list_inp" v-model="form.tuanduimubiao" placeholder="团队目标"
								 type="text" 								:readonly="!isAdd||disabledForm.tuanduimubiao?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="创新方法" prop="chuangxinfangfa">
							<el-input class="list_inp" v-model="form.chuangxinfangfa" placeholder="创新方法"
								 type="text" 								:readonly="!isAdd||disabledForm.chuangxinfangfa?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="成果" prop="chengguo">
							<el-input class="list_inp" v-model="form.chengguo" placeholder="成果"
								 type="text" 								:readonly="!isAdd||disabledForm.chengguo?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="申请时间" prop="shenqingshijian">
							<el-date-picker
								class="list_date"
								v-model="form.shenqingshijian"
								format="YYYY-MM-DD HH:mm:ss"
								value-format="YYYY-MM-DD HH:mm:ss"
								type="datetime"
								:readonly="!isAdd||disabledForm.shenqingshijian?true:false"
								placeholder="请选择申请时间" />
						</el-form-item>
					</el-col>
				</el-row>
			</el-form>
			<template #footer v-if="isAdd||type=='logistics'||type=='reply'">
				<span class="formModel_btn_box">
					<el-button class="formModel_cancel" @click="closeClick">取消</el-button>
					<el-button class="formModel_confirm" type="primary" @click="save"
						>
						提交
					</el-button>
				</span>
			</template>
		</el-dialog>
	</div>
</template>
<script setup>
	import {
		reactive,
		ref,
		getCurrentInstance,
		nextTick,
		computed,
		defineEmits
	} from 'vue'
	const context = getCurrentInstance()?.appContext.config.globalProperties;	
	const emit = defineEmits(['formModelChange'])
	//基础信息
	const tableName = 'tuanduishenbao'
	const formName = '团队申报'
	//基础信息
	//form表单
	const form = ref({})
	const disabledForm = ref({
		yonghuzhanghao : false,
		yonghuxingming : false,
		tuanduimingcheng : false,
		tuanduimubiao : false,
		chuangxinfangfa : false,
		chengguo : false,
		shenqingshijian : false,
		sfsh : false,
		shhf : false,
	})
	const formVisible = ref(false)
	const isAdd = ref(false)
	const formTitle = ref('')
	//表单验证
	//匹配整数
	const validateIntNumber = (rule, value, callback) => {
		if (!value) {
			callback();
		} else if (!context?.$toolUtil.isIntNumer(value)) {
			callback(new Error("请输入整数"));
		} else {
			callback();
		}
	}
	//匹配数字
	const validateNumber = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isNumber(value)) {
			callback(new Error("请输入数字"));
		} else {
			callback();
		}
	}
	//匹配手机号码
	const validateMobile = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isMobile(value)) {
			callback(new Error("请输入正确的手机号码"));
		} else {
			callback();
		}
	}
	//匹配电话号码
	const validatePhone = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isPhone(value)) {
			callback(new Error("请输入正确的电话号码"));
		} else {
			callback();
		}
	}
	//匹配邮箱
	const validateEmail = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isEmail(value)) {
			callback(new Error("请输入正确的邮箱地址"));
		} else {
			callback();
		}
	}
	//匹配身份证
	const validateIdCard = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.checkIdCard(value)) {
			callback(new Error("请输入正确的身份证号码"));
		} else {
			callback();
		}
	}
	//匹配网站地址
	const validateUrl = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isURL(value)) {
			callback(new Error("请输入正确的URL地址"));
		} else {
			callback();
		}
	}
	const rules = ref({
		yonghuzhanghao: [
		],
		yonghuxingming: [
		],
		tuanduimingcheng: [
		],
		tuanduimubiao: [
		],
		chuangxinfangfa: [
		],
		chengguo: [
		],
		shenqingshijian: [
		],
		sfsh: [
		],
		shhf: [
		],
	})
	//表单验证
	
	const formRef = ref(null)
	const id = ref(0)
	const type = ref('')
	//用户账号列表
	const yonghuzhanghaoLists = ref([])
	//用户姓名列表
	const yonghuxingmingLists = ref([])
	//methods

	//获取唯一标识
	const getUUID =()=> {
      return new Date().getTime();
    }
	//重置
	const resetForm = () => {
		form.value = {
			yonghuzhanghao: [],
			yonghuxingming: [],
			tuanduimingcheng: '',
			tuanduimubiao: '',
			chuangxinfangfa: '',
			chengguo: '',
			shenqingshijian: '',
			sfsh: '待审核',
			shhf: '',
		}
	}
	//获取info
	const getInfo = ()=>{
		context?.$http({
			url: `${tableName}/info/${id.value}`,
			method: 'get'
		}).then(res => {
			let reg=new RegExp('../../../file','g')
			if(res.data.data.yonghuzhanghao){
				res.data.data.yonghuzhanghaos = res.data.data.yonghuzhanghao.split(",")
			}else{
				res.data.data.yonghuzhanghaos = []
			}
			if(res.data.data.yonghuxingming){
				res.data.data.yonghuxingmings = res.data.data.yonghuxingming.split(",")
			}else{
				res.data.data.yonghuxingmings = []
			}
			form.value = res.data.data
			formVisible.value = true
		})
	}
	const crossRow = ref('')
	const crossTable = ref('')
	const crossTips = ref('')
	const crossColumnName = ref('')
	const crossColumnValue = ref('')
	//初始化
	const init=(formId=null,formType='add',formNames='',row=null,table=null,statusColumnName=null,tips=null,statusColumnValue=null)=>{
		resetForm()
		if(formId){
			id.value = formId
			type.value = formType
		}
		if(formType == 'add'){
			isAdd.value = true
			formTitle.value = '新增' + formName
			formVisible.value = true
		}else if(formType == 'info'){
			isAdd.value = false
			formTitle.value = '查看' + formName
			getInfo()
		}else if(formType == 'edit'){
			isAdd.value = true
			formTitle.value = '修改' + formName
			getInfo()
		}
		else if(formType == 'cross'){
			isAdd.value = true
			formTitle.value = formNames
			// getInfo()
			for(let x in row){
				if(x=='yonghuzhanghao'){
					form.value.yonghuzhanghao = row[x];
					disabledForm.value.yonghuzhanghao = true;
					continue;
				}
				if(x=='yonghuxingming'){
					form.value.yonghuxingming = row[x];
					disabledForm.value.yonghuxingming = true;
					continue;
				}
				if(x=='tuanduimingcheng'){
					form.value.tuanduimingcheng = row[x];
					disabledForm.value.tuanduimingcheng = true;
					continue;
				}
				if(x=='tuanduimubiao'){
					form.value.tuanduimubiao = row[x];
					disabledForm.value.tuanduimubiao = true;
					continue;
				}
				if(x=='chuangxinfangfa'){
					form.value.chuangxinfangfa = row[x];
					disabledForm.value.chuangxinfangfa = true;
					continue;
				}
				if(x=='chengguo'){
					form.value.chengguo = row[x];
					disabledForm.value.chengguo = true;
					continue;
				}
				if(x=='shenqingshijian'){
					form.value.shenqingshijian = row[x];
					disabledForm.value.shenqingshijian = true;
					continue;
				}
			}
			if(row){
				crossRow.value = row
			}
			if(table){
				crossTable.value = table
			}
			if(tips){
				crossTips.value = tips
			}
			if(statusColumnName){
				crossColumnName.value = statusColumnName
			}
			if(statusColumnValue){
				crossColumnValue.value = statusColumnValue
			}
			form.value.sfsh='待审核'
			formVisible.value = true
		}

		context?.$http({
			url: `${context?.$toolUtil.storageGet('sessionTable')}/session`,
			method: 'get'
		}).then(res => {
			var json = res.data.data
		})
		context?.$http({
			url: `option/yonghu/yonghuzhanghao`,
			method: 'get'
		}).then(res=>{
			yonghuzhanghaoLists.value = res.data.data
		})
		context?.$http({
			url: `option/yonghu/yonghuxingming`,
			method: 'get'
		}).then(res=>{
			yonghuxingmingLists.value = res.data.data
		})
	}
	//初始化
	//声明父级调用
	defineExpose({
		init
	})
	//关闭
	const closeClick = () => {
		formVisible.value = false
	}
	const tuanduishenbaoyonghuzhanghaoChange= ()=> {
		form.value.yonghuzhanghao = form.value.yonghuzhanghaos.join(',')
	}
	const tuanduishenbaoyonghuxingmingChange= ()=> {
		form.value.yonghuxingming = form.value.yonghuxingmings.join(',')
	}
	//富文本
	const editorChange = (e,name) =>{
		form.value[name] = e
	}
	//提交
	const save=()=>{
		var table = crossTable.value
		var objcross = JSON.parse(JSON.stringify(crossRow.value))
		let crossUserId = ''
		let crossRefId = ''
		let crossOptNum = ''
		if(type.value == 'cross'){
			if(crossColumnName.value!=''){
				if(!crossColumnName.value.startsWith('[')){
					for(let o in objcross){
						if(o == crossColumnName.value){
							objcross[o] = crossColumnValue.value
						}
					}
					//修改跨表数据
					changeCrossData(objcross)
				}else{
					crossUserId = context?.$toolUtil.storageGet('userid')
					crossRefId = objcross['id']
					crossOptNum = crossColumnName.value.replace(/\[/,"").replace(/\]/,"")
				}
			}
		}
		formRef.value.validate((valid)=>{
			if(valid){
				if(crossUserId&&crossRefId){
					form.value.crossuserid = crossUserId
					form.value.crossrefid = crossRefId
					let params = {
						page: 1,
						limit: 1000, 
						crossuserid:form.value.crossuserid,
						crossrefid:form.value.crossrefid,
					}
					context?.$http({
						url: `${tableName}/page`,
						method: 'get', 
						params: params 
					}).then(res=>{
						if(res.data.data.total>=crossOptNum){
							context?.$toolUtil.message(`${crossTips.value}`,'error')
							return false
						}else{
							context?.$http({
								url: `${tableName}/${!form.value.id ? "save" : "update"}`,
								method: 'post', 
								data: form.value 
							}).then(res=>{
								context?.$toolUtil.message(`操作成功`,'success',()=>{
									formVisible.value = false
									emit('formModelChange')
								})
							})
						}
					})
				}else{
					context?.$http({
						url: `${tableName}/${!form.value.id ? "save" : "update"}`,
						method: 'post', 
						data: form.value 
					}).then(res=>{
						context?.$toolUtil.message(`操作成功`,'success',()=>{
							formVisible.value = false
							emit('formModelChange')
						})
					})
				}
			}
		})
	}
	//修改跨表数据
	const changeCrossData=(row)=>{
		context?.$http({
			url: `${crossTable.value}/update`,
			method: 'post',
			data: row
		}).then(res=>{})
	}
</script>
<style lang="scss" scoped>
	// 表单
	.formModel_form{
		border-radius: 6px;
		padding: 30px;
		// form item
		:deep(.el-form-item) {
			margin: 0 0 20px 0;
			display: flex;
			//label
			.el-form-item__label {
			 color: #9E9E9E;
			 display: block;
			 width: 90px;
			 text-align: center;
			}
			// 内容盒子
			.el-form-item__content {
				display: flex;
				width: calc(100% - 90px);
				justify-content: flex-start;
				align-items: center;
				flex-wrap: wrap;
				// 输入框
				.list_inp {
					border: 2px solid #5FB7FF;
					border-radius: 20px;
					padding: 0 10px;
					background: #fff;
					width: 100%;
					line-height: 36px;
					box-sizing: border-box;
					height: 36px;
					//去掉默认样式
					.el-input__wrapper{
						border: none;
						box-shadow: none;
						background: none;
						border-radius: 0;
						height: 100%;
						padding: 0;
					}
					.is-focus {
						box-shadow: none !important;
					}
				}
				//日期选择器
				.list_date {
					border: 2px solid #5FB7FF;
					border-radius: 20px;
					background: #fff;
					width: 100%;
					line-height: 36px;
					box-sizing: border-box;
					//去掉默认样式
					.el-input__wrapper{
						border: none;
						box-shadow: none;
						background: none;
						border-radius: 0;
						height: 100%;
					}
				}
				// 下拉框
				.list_sel {
					border: 2px solid #5FB7FF;
					border-radius: 20px;
					padding: 0 10px;
					background: #fff;
					width: 100%;
					line-height: 36px;
					box-sizing: border-box;
					//去掉默认样式
					.select-trigger{
						height: 100%;
						.el-input{
							height: 100%;
							.el-input__wrapper{
								border: none;
								box-shadow: none;
								background: none;
								border-radius: 0;
								height: 100%;
								padding: 0;
							}
							.is-focus {
								box-shadow: none !important;
							}
						}
					}
				}
			}
		}
	}
	// 按钮盒子
	.formModel_btn_box {
		display: flex;
		width: 100%;
		justify-content: center;
		align-items: center;
		.formModel_cancel {
			border: 0;
			cursor: pointer;
			border-radius: 4px;
			padding: 0 24px;
			margin: 0 10px 0 0;
			outline: none;
			color: #B8B8B8;
			background: #CDE9FF;
			width: auto;
			font-size: 14px;
			height: 40px;
		}
		.formModel_cancel:hover {
			color: #333;
			background: rgba(205, 233, 255, 0.5);
			font-size: 16px;
		}
		
		.formModel_confirm {
			border: 0;
			cursor: pointer;
			border-radius: 4px;
			padding: 0 24px;
			box-shadow: inset 0px 4px 10px 0px rgba(147,147,147,0.302);
			outline: 4px solid #EAF5FF;
			margin: 0 20px;
			color: #2C2C2C;
			background: #96C6EE;
			width: auto;
			font-size: 14px;
			height: 40px;
		}
		.formModel_confirm:hover {
			background: rgba(150, 198, 238, 0.5);
			font-size: 16px;
		}
	}
</style>