/*$(document).click(function() {
	if($(".popupLayer").css("display")!="none"){
		$(".popupLayer").css("display","none");
	}
});*/

function changeRank(){
		$("#bad_body").toggle();
		$("#good_body").toggle();
		$("#best_img").toggle();
		$("#worst_img").toggle();
		
}
//js 油表盘	
function createGauge(val) {
	var myChart = echarts.init(document
			.getElementById('angularGauge_chartId'));
	var option = {
		tooltip : {
			formatter : "{a} {b} : {c}"
		},
		series : [ {
			name : '最近一小时的温度平均值',
			type : 'gauge',
			radius : '88%',
			startAngle : '180',
			endAngle : '0',
			splitNumber : '5',
			max : '40',
			axisTick : {
				show : false
			},
			axisLabel : {
				distance : '-52'
			},
			axisLine : {
				lineStyle : {
					color : [ [ 0.07, '#4AD146' ], [ 0.15, '#EFE716' ],
							[ 0.23, '#FF9600' ], [ 0.3, '#EF4949' ],
							[ 0.5, '#B31665' ], [ 1, '#88184A' ] ],
					width : '50'
				},
			},
			splitLine : {
				show : false,
			},
			pointer : {
				width : '5'
			},
			detail : {
				offsetCenter : [ 0, '10%' ],
				textStyle : {
					color : '#6A95C2',
					fontSize : '12'
				}
			},
			data : [ {
				value : val,
			} ]
		} ]
	};
	myChart.setOption(option);
}

function createBar(date,data) {
	var myChart = echarts.init(document.getElementById('bar'));
	option = {
		tooltip : {},
		grid : {
			left : '3%',
			right : '4%',
			bottom : '15%',
			containLabel : true
		},
		xAxis : [ {
			type : 'category',
			data : date,
			axisTick:{	
				show:false				
			},
			axisLine :{
				show:false
			},
			axisLabel:{
				rotate :'90',
				interval :'0'					
			}
		} ],
		yAxis : [ {
			type : 'value',
			axisTick:{	
				show:false				
			},
			axisLine :{
				show:false
			},
			axisLabel:{
				textStyle:{
					color:'#A7A7A7'
				}
			},
			splitLine :{
				show:false
			},
			splitArea:{
				show:true,
				areaStyle :{
					color :['#ffffff','#F3F7F8']
				}
			}
			
		} ],
		series : [ {
			name : '',
			type : 'bar',
			data : data,
			itemStyle : {
				normal : {
					color : function(params) {
						return getColorForBar(params.value);
					}
				}
			}
		} ]
	};

	myChart.setOption(option);
}
function setTableColor(objId) {
	/* 当鼠标移到表格上是，当前一行背景变色 */
	$("#" + objId + " tbody tr td").mouseover(function() {
		$(this).parent().find("td").css("background-color", "#52BE80");
		$(this).parent().find("td").css("color", "#fff");
	});
	/* 当鼠标在表格上移动时，离开的那一行背景恢复 */
	$("#" + objId + " tbody tr td").mouseout(function() {
		var bgc = $(this).parent().attr("bg");
		$(this).parent().find("td").css("background-color", bgc);
		$(this).parent().find("td").css("color", "#A4ABBD");
	});

	var color = "#f6f6f6";
	$("#" + objId + " tbody tr:even td").css("background-color", color); //改变偶数行背景色
	/* 把背景色保存到属性中 */
	$("#" + objId + " tbody tr:even").attr("bg", color);
	$("#" + objId + " tbody tr:odd").attr("bg", "#fff");
}
function getColor(value) {
	if (value > 250) {
		/* return "#88184A"; */
		return "rgba(136, 24, 74, 1)";
	} else if (value > 150) {
		/* return "#B31665"; */
		return "rgba(179, 22, 99, 1)";
	} else if (value > 115) {
		/* return "#EF4949"; */
		return "rgba(239, 73, 73, 1)";
	} else if (value > 75) {
		/* return "#FF9600"; */
		return "rgba(255, 150, 0, 1)";
	} else if (value > 35) {
		/* return "#EFE716"; */
		return "rgba(239, 231, 22, 1)";
	} else {
		/* return "#4AD146"; */
		return "rgba(74, 209, 70, 1)";
	}
}
function getColorForBar(value) {
	var color = new echarts.graphic.LinearGradient(0, 0, 0, 1, [ {
		offset : 1,
		color : 'rgba(255, 255, 255, 0.8)'
	}, {
		offset : 0.1,
		color : getColor(value)
	} ]);
	return color;
}

function changePoint(pointId){
	
	$(".popupLayer").css("display","none");
	
	var pv = $("#pointValue_"+pointId).html();
	var pname = $("#pointName_"+pointId).html(); 
	var selectpointspan = pname;
	if(pointId==0){
		pv = allPm25value;
		pname = cityname;
		selectpointspan = "选择检测点"
	}else{
		createBar(eval("date_"+pointId),eval("data_"+pointId));
		
	}
	
	$("#address").html(pname);
	$("#pmValue").html(pv);
	createGauge(pv);
	$("#select_point_span").html(selectpointspan);
	
	
	if(pv<30){
		$("#pmValue_describe").css("color","#01E401");
		$("#pmValue_describe").html("优");
		$("#aqi_span").html("健康");
		$("#suggest_span").html("各类人群可正常活动。");
		$(".head_div").css("background-image","url('show/img/you.jpg')");
		
	}else if(pv<15){
		$("#pmValue_describe").css("color","#ECEC00");
		$("#pmValue_describe").html("良");
		$("#aqi_span").html("中等");
		$("#suggest_span").html("极少数异类敏感人群应减少户外活动。");
		$(".head_div").css("background-image","url('show/img/liang.jpg')");
	}else if(pv<115){
		$("#pmValue_describe").css("color","#FF7E00");
		$("#pmValue_describe").html("轻度污染");
		$("#aqi_span").html("敏感群里有害");
		$("#suggest_span").html("儿童、老年人及心脏病、呼吸系统疾病患者应减少长时间、高强度的户外锻炼");
		$(".head_div").css("background-image","url('show/img/qin.jpg')");
	}else if(pv<150){
		$("#pmValue_describe").css("color","#FE0000");
		$("#pmValue_describe").html("中度污染");
		$("#aqi_span").html("不健康");
		$("#suggest_span").html("儿童、老年人及心脏病、呼吸系统疾病患者避免长时间、高强度户外锻炼，一般人群适量减少户外运动。");
		$(".head_div").css("background-image","url('show/img/zhong.jpg')");
	}else if(pv<250){
		$("#pmValue_describe").css("color","#98004B");
		$("#pmValue_describe").html("重度污染");
		$("#aqi_span").html("非常不健康");
		$("#suggest_span").html("儿童、老年人及心脏病、肺病患者应停留在室内，停止户外活动，一般人群减少户外活动。");
		$(".head_div").css("background-image","url('show/img/zhongdu.jpg')");
	}else{
		$("#pmValue_describe").css("color","#7E0123");
		$("#pmValue_describe").html("严重污染");
		$("#aqi_span").html("危险");
		$("#suggest_span").html("儿童、老年人和病人应停留在室内，避免体力消耗，一般人群应避免户外活动。");
		$(".head_div").css("background-image","url('show/img/yanzhong.jpg')");
	}
}

function closeRightBar(){
	$("#showRight").click();
}
