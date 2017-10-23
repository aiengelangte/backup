<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html class=" js "><head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<title>温度监测平台--沈阳</title>
<link rel="shortcut icon" href="http://www.mypm25.cn/image/fa-img2ico.net.ico">
<meta name="keywords" content="沈阳的温度监测">
<meta name="description" content="沈阳的温度">
<meta name="content-type" content="text/html; charset=UTF-8">

<!-- <link rel="stylesheet" type="text/css" href="js/template.css">
<script type="text/javascript" src="js/jquery-1.js"></script>
<script type="text/javascript" src="js/popup_layer.js"></script>
<script src="js/echarts.js"></script>
 -->
<script type="text/javascript" src="js/echarts.js"></script>
<script type="text/javascript" src="js/jquery-1.js"></script>
<script type="text/javascript" src="js/popup_layer.js"></script>
<link type="text/css" rel="stylesheet" href="js/template.css"><link>
</head>

<body class="cbp-spmenu-push">
	<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-right" id="cbp-spmenu-s2">
		<img id="nav_button" onclick="closeRightBar()" src="jsp/arror-right.png"><h3>选择城市</h3>
<div class="city_show_overview">
			<div class="hotcity">
				<p>						
					  <b>热门城市：</b>
					  <a href="http://www.mypm25.cn/beijing.html">北京</a>
                      <a href="http://www.mypm25.cn/shanghai.html">上海</a>
                      <a href="http://www.mypm25.cn/guangzhou.html">广州</a>
                      <a href="http://www.mypm25.cn/shenzhen.html">深圳</a>
                      <a href="http://www.mypm25.cn/nanjing.html">南京</a>
                      <a href="http://www.mypm25.cn/hangzhou.html">杭州</a>
                      <a href="http://www.mypm25.cn/tianjin.html">天津</a>
                      <a href="http://www.mypm25.cn/chengdou.html">成都</a>
                      <a href="http://www.mypm25.cn/xian.html">西安</a>
                      <a href="http://www.mypm25.cn/wuhan.html">武汉</a> 
                 </p>
			</div>
			<div class="allcitydiv">
				<p><b>所有城市：</b></p>
				<div class="cpi_capital_div">
					<div style="margin-top:10px;">
						 <span class="cpi_capital">A：</span>
						 <div class="captail_citylist">
						 	<a href="http://www.mypm25.cn/abazhou.html">阿坝州</a>
						 	<a href="http://www.mypm25.cn/akesudiqu.html">阿克苏地区</a>
						 	<a href="http://www.mypm25.cn/alashanmeng.html">阿拉善盟</a>
						 	<a href="http://www.mypm25.cn/aletaidiqu.html">阿勒泰地区</a>
						 	<a href="http://www.mypm25.cn/alidiqu.html">阿里地区</a>
						 	<a href="http://www.mypm25.cn/ankang.html">安康</a>
						 	<a href="http://www.mypm25.cn/anqing.html">安庆</a>
						 	<a href="http://www.mypm25.cn/anshan.html">鞍山</a>
						 	<a href="http://www.mypm25.cn/anshun.html">安顺</a>
						 	<a href="http://www.mypm25.cn/anyang.html">安阳</a>
						 </div>
	                 </div>   
				</div>
				<div class="cpi_capital_div">
					<div style="margin-top:10px;">
						 <span class="cpi_capital">B：</span>
						 <div class="captail_citylist">
						 	<a href="http://www.mypm25.cn/baicheng.html">白城</a>
						 	<a href="http://www.mypm25.cn/baise.html">百色</a>
						 	<a href="http://www.mypm25.cn/baishan.html">白山</a>
						 	<a href="http://www.mypm25.cn/baiyin.html">白银</a>
						 	<a href="http://www.mypm25.cn/baoding.html">保定</a>
						 	<a href="http://www.mypm25.cn/baoji.html">宝鸡</a>
						 	<a href="http://www.mypm25.cn/baoshan.html">保山</a>
						 	<a href="http://www.mypm25.cn/baotou.html">包头</a>
						 	<a href="http://www.mypm25.cn/bayannaoer.html">巴彦淖尔</a>
						 	<a href="http://www.mypm25.cn/bazhong.html">巴中</a>
						 	<a href="http://www.mypm25.cn/beihai.html">北海</a>
						 	<a href="http://www.mypm25.cn/beijing.html">北京</a>
						 	<a href="http://www.mypm25.cn/bengbu.html">蚌埠</a>
						 	<a href="http://www.mypm25.cn/benxi.html">本溪</a>
						 	<a href="http://www.mypm25.cn/bijie.html">毕节</a>
					 		<a href="http://www.mypm25.cn/binzhou.html">滨州</a>
				 			<a href="http://www.mypm25.cn/bozhou.html">博州</a>
				 			<a href="http://www.mypm25.cn/bozhoushi.html">亳州</a>
						 </div>
	                 </div>   
				</div>	
				<div class="cpi_capital_div">
					<div style="margin-top:10px;">
						 <span class="cpi_capital">C：</span>
						 <div class="captail_citylist">
							<a href="http://www.mypm25.cn/cangzhou.html">沧州</a>
								<a href="http://www.mypm25.cn/changchun.html">长春</a>
								<a href="http://www.mypm25.cn/changde.html">常德</a>
								<a href="http://www.mypm25.cn/changdudiqu.html">昌都地区</a>
								<a href="http://www.mypm25.cn/changjizhou.html">昌吉州</a>
								<a href="http://www.mypm25.cn/changsha.html">长沙</a>
								<a href="http://www.mypm25.cn/changshu.html">常熟</a>
								<a href="http://www.mypm25.cn/changzhi.html">长治</a>
								<a href="http://www.mypm25.cn/changzhou.html">常州</a>
							<!-- 	<a href="chaoyang.html">朝阳</a> -->
								<a href="http://www.mypm25.cn/chaoyang.html">朝阳</a>
								<a href="http://www.mypm25.cn/chaozou.html">潮州</a>
								<a href="http://www.mypm25.cn/chengde.html">承德</a>
								<a href="http://www.mypm25.cn/chengdou.html">成都</a>
								<a href="http://www.mypm25.cn/chengzhou.html">郴州</a>
								<a href="http://www.mypm25.cn/chifeng.html">赤峰</a>
								<a href="http://www.mypm25.cn/chizhou.html">池州</a>
								<a href="http://www.mypm25.cn/chongqing.html">重庆</a>
								<a href="http://www.mypm25.cn/chongzuo.html">崇左</a>
								<a href="http://www.mypm25.cn/chuxiongzhou.html">楚雄州</a>
								<a href="http://www.mypm25.cn/chuzhou.html">滁州</a>
						 </div>
	                 </div>   
				</div>	
				<div class="cpi_capital_div">
					<div style="margin-top:10px;">
						 <span class="cpi_capital">D：</span>
						 <div class="captail_citylist">
						 		<a href="http://www.mypm25.cn/dalian.html">大连</a>
								<a href="http://www.mypm25.cn/dalizhou.html">大理州</a>
								<a href="http://www.mypm25.cn/dandong.html">丹东</a>
								<a href="http://www.mypm25.cn/daqing.html">大庆</a>
								<a href="http://www.mypm25.cn/datong.html">大同</a>
								<a href="http://www.mypm25.cn/daxinganlingdiqu.html">大兴安岭地区</a>
								<a href="http://www.mypm25.cn/dazhou.html">达州</a>
								<a href="http://www.mypm25.cn/dehongzhou.html">德宏州</a>
								<a href="http://www.mypm25.cn/deyang.html">德阳</a>
								<a href="http://www.mypm25.cn/dezhou.html">德州</a>
								<a href="http://www.mypm25.cn/dingxi.html">定西</a>
								<a href="http://www.mypm25.cn/diqingzhou.html">迪庆州</a>
								<a href="http://www.mypm25.cn/dongguan.html">东莞</a>
								<a href="http://www.mypm25.cn/dongying.html">东营</a>
						 </div>
	                 </div>   
				</div>	
				<div class="cpi_capital_div">
					<div style="margin-top:10px;">
						 <span class="cpi_capital">E：</span>
						 <div class="captail_citylist">
						 	<a href="http://www.mypm25.cn/eerduosi.html">鄂尔多斯</a>
							<a href="http://www.mypm25.cn/enshizhou.html">恩施州</a>
							<a href="http://www.mypm25.cn/ezhou.html">鄂州</a>
						 </div>
	                 </div>   
				</div>	
				<div class="cpi_capital_div">
					<div style="margin-top:10px;">
						 <span class="cpi_capital">F：</span>
						 <div class="captail_citylist">
						 		<a href="http://www.mypm25.cn/fangchenggang.html">防城港</a>
								<a href="http://www.mypm25.cn/foshan.html">佛山</a>
								<a href="http://www.mypm25.cn/fushun.html">抚顺</a>
								<a href="http://www.mypm25.cn/fuxin.html">阜新</a>
								<a href="http://www.mypm25.cn/fuyangshi.html">富阳</a>
								<a href="http://www.mypm25.cn/fuyang.html">阜阳</a>
								<a href="http://www.mypm25.cn/fuzhou.html">福州</a>
								<a href="http://www.mypm25.cn/fuzhoushi.html">抚州</a>
						 </div>
	                 </div>   
				</div>	
				<div class="cpi_capital_div">
					<div style="margin-top:10px;">
						 <span class="cpi_capital">G：</span>
						 <div class="captail_citylist">
						 		<a href="http://www.mypm25.cn/gannanzhou.html">甘南州</a>
								<a href="http://www.mypm25.cn/ganzhou.html">赣州</a>
								<a href="http://www.mypm25.cn/ganzizhou.html">甘孜州</a>
								<a href="http://www.mypm25.cn/guangan.html">广安</a>
								<a href="http://www.mypm25.cn/guangyuan.html">广元</a>
								<a href="http://www.mypm25.cn/guangzhou.html">广州</a>
								<a href="http://www.mypm25.cn/guigang.html">贵港</a>
								<a href="http://www.mypm25.cn/guilin.html">桂林</a>
								<a href="http://www.mypm25.cn/guiyang.html">贵阳</a>
								<a href="http://www.mypm25.cn/guoluozhou.html">果洛州</a>
								<a href="http://www.mypm25.cn/guyuan.html">固原</a>
						 </div>
	                 </div>   
				</div>	
				<div class="cpi_capital_div">
					<div style="margin-top:10px;">
						 <span class="cpi_capital">H：</span>
						 <div class="captail_citylist">
						 	<a href="http://www.mypm25.cn/haerbin.html">哈尔滨</a>
								<a href="http://www.mypm25.cn/haibeizhou.html">海北州</a>
								<a href="http://www.mypm25.cn/haidongdiqu.html">海东地区</a>
								<a href="http://www.mypm25.cn/haikou.html">海口</a>
								<a href="http://www.mypm25.cn/haimen.html">海门</a>
								<a href="http://www.mypm25.cn/hainanzhou.html">海南州</a>
								<a href="http://www.mypm25.cn/haixizhou.html">海西州</a>
								<a href="http://www.mypm25.cn/hamidiqu.html">哈密地区</a>
								<a href="http://www.mypm25.cn/handan.html">邯郸</a>
								<a href="http://www.mypm25.cn/hangzhou.html">杭州</a>
								<a href="http://www.mypm25.cn/hanzhong.html">汉中</a>
								<a href="http://www.mypm25.cn/hebi.html">鹤壁</a>
								<a href="http://www.mypm25.cn/hechi.html">河池</a>
								<a href="http://www.mypm25.cn/hefei.html">合肥</a>
								<a href="http://www.mypm25.cn/hegang.html">鹤岗</a>
								<a href="http://www.mypm25.cn/heihe.html">黑河</a>
								<a href="http://www.mypm25.cn/hengshui.html">衡水</a>
								<a href="http://www.mypm25.cn/hengyang.html">衡阳</a>
								<a href="http://www.mypm25.cn/hetiandiqu.html">和田地区</a>
								<a href="http://www.mypm25.cn/heyuan.html">河源</a>
								<a href="http://www.mypm25.cn/heze.html">菏泽</a>
								<a href="http://www.mypm25.cn/hezhou.html">贺州</a>
								<a href="http://www.mypm25.cn/honghezhou.html">红河州</a>
								<a href="http://www.mypm25.cn/huaian.html">淮安</a>
								<a href="http://www.mypm25.cn/huaibei.html">淮北</a>
								<a href="http://www.mypm25.cn/huaihua.html">怀化</a>
								<a href="http://www.mypm25.cn/huainan.html">淮南</a>
								<a href="http://www.mypm25.cn/huanggang.html">黄冈</a>
								<a href="http://www.mypm25.cn/huangnanzhou.html">黄南州</a>
								<a href="http://www.mypm25.cn/huangshan.html">黄山</a>
								<a href="http://www.mypm25.cn/huangshi.html">黄石</a>
								<a href="http://www.mypm25.cn/huhehaote.html">呼和浩特</a>
								<a href="http://www.mypm25.cn/huizhou.html">惠州</a>
								<a href="http://www.mypm25.cn/huludao.html">葫芦岛</a>
								<a href="http://www.mypm25.cn/hulunbeier.html">呼伦贝尔</a>
								<a href="http://www.mypm25.cn/huzhou.html">湖州</a>
						 </div>
	                 </div>   
				</div>	
				<div class="cpi_capital_div">
					<div style="margin-top:10px;">
						 <span class="cpi_capital">J：</span>
						 <div class="captail_citylist">
						 	<a href="http://www.mypm25.cn/jiamusi.html">佳木斯</a>
								<a href="http://www.mypm25.cn/jian.html">吉安</a>
								<a href="http://www.mypm25.cn/jiangmen.html">江门</a>
								<a href="http://www.mypm25.cn/jiangyin.html">江阴</a>
								<a href="http://www.mypm25.cn/jiaonan.html">胶南</a>
								<a href="http://www.mypm25.cn/jiaozhou.html">胶州</a>
								<a href="http://www.mypm25.cn/jiaozuo.html">焦作</a>
								<a href="http://www.mypm25.cn/jiaxing.html">嘉兴</a>
								<a href="http://www.mypm25.cn/jiayuguan.html">嘉峪关</a>
								<a href="http://www.mypm25.cn/jieyang.html">揭阳</a>
								<a href="http://www.mypm25.cn/jilin.html">吉林</a>
								<a href="http://www.mypm25.cn/jimo.html">即墨</a>
								<a href="http://www.mypm25.cn/jinan.html">济南</a>
								<a href="http://www.mypm25.cn/jinchang.html">金昌</a>
								<a href="http://www.mypm25.cn/jincheng.html">晋城</a>
								<a href="http://www.mypm25.cn/jingdezhen.html">景德镇</a>
								<a href="http://www.mypm25.cn/jingmen.html">荆门</a>
								<a href="http://www.mypm25.cn/jingzhou.html">荆州</a>
								<a href="http://www.mypm25.cn/jinhua.html">金华</a>
								<a href="http://www.mypm25.cn/jining.html">济宁</a>
								<a href="http://www.mypm25.cn/jintan.html">金坛</a>
								<a href="http://www.mypm25.cn/jinzhong.html">晋中</a>
								<a href="http://www.mypm25.cn/jinzhou.html">锦州</a>
								<a href="http://www.mypm25.cn/jiujiang.html">九江</a>
								<a href="http://www.mypm25.cn/jiuquan.html">酒泉</a>
								<a href="http://www.mypm25.cn/jixi.html">鸡西</a>
								<a href="http://www.mypm25.cn/jurong.html">句容</a>
						 </div>
	                 </div>   
				</div>	
				<div class="cpi_capital_div">
					<div style="margin-top:10px;">
						 <span class="cpi_capital">K：</span>
						 <div class="captail_citylist">
						 		<a href="http://www.mypm25.cn/kaifeng.html">开封</a>
								<a href="http://www.mypm25.cn/kashi.html">喀什地区</a>
								<a href="http://www.mypm25.cn/kelamayi.html">克拉玛依</a>
								<a href="http://www.mypm25.cn/kezilesuzhou.html">克孜勒苏州</a>
								<a href="http://www.mypm25.cn/kuerle.html">库尔勒</a>
								<a href="http://www.mypm25.cn/kunming.html">昆明</a>
								<a href="http://www.mypm25.cn/kunshan.html">昆山</a>
						 </div>
	                 </div>   
				</div>	
				<div class="cpi_capital_div">
					<div style="margin-top:10px;">
						 <span class="cpi_capital">L：</span>
						 <div class="captail_citylist">
						 		<a href="http://www.mypm25.cn/laibin.html">来宾</a>
								<a href="http://www.mypm25.cn/laiwu.html">莱芜</a>
								<a href="http://www.mypm25.cn/laixi.html">莱西</a>
								<a href="http://www.mypm25.cn/laizhou.html">莱州</a>
								<a href="http://www.mypm25.cn/langfang.html">廊坊</a>
								<a href="http://www.mypm25.cn/lanzhou.html">兰州</a>
								<a href="http://www.mypm25.cn/lasa.html">拉萨</a>
								<a href="http://www.mypm25.cn/leshan.html">乐山</a>
								<a href="http://www.mypm25.cn/liangshanzhou.html">凉山州</a>
								<a href="http://www.mypm25.cn/lianyungang.html">连云港</a>
								<a href="http://www.mypm25.cn/liaocheng.html">聊城</a>
								<a href="http://www.mypm25.cn/liaoyang.html">辽阳</a>
								<a href="http://www.mypm25.cn/liaoyuan.html">辽源</a>
								<a href="http://www.mypm25.cn/lijiang.html">丽江</a>
								<a href="http://www.mypm25.cn/linan.html">临安</a>
								<a href="http://www.mypm25.cn/lincang.html">临沧</a>
								<a href="http://www.mypm25.cn/linfen.html">临汾</a>
								<a href="http://www.mypm25.cn/linyi.html">临沂</a>
								<a href="http://www.mypm25.cn/linzhidiqu.html">林芝地区</a>
								<a href="http://www.mypm25.cn/lishui.html">丽水</a>
								<a href="http://www.mypm25.cn/liuan.html">六安</a>
								<a href="http://www.mypm25.cn/liupanshui.html">六盘水</a>
								<a href="http://www.mypm25.cn/liuzhou.html">柳州</a>
								<a href="http://www.mypm25.cn/liyang.html">溧阳</a>
								<a href="http://www.mypm25.cn/longnan.html">陇南</a>
								<a href="http://www.mypm25.cn/longyan.html">龙岩</a>
								<a href="http://www.mypm25.cn/loudi.html">娄底</a>
								<a href="http://www.mypm25.cn/luohe.html">漯河</a>
								<a href="http://www.mypm25.cn/luoyang.html">洛阳</a>
								<a href="http://www.mypm25.cn/luzou.html">泸州</a>
								<a href="http://www.mypm25.cn/lvliang.html">吕梁</a>
						 </div>
	                 </div>   
				</div>	
				<div class="cpi_capital_div">
					<div style="margin-top:10px;">
						 <span class="cpi_capital">M：</span>
						 <div class="captail_citylist">
						 		<a href="http://www.mypm25.cn/maanshan.html">马鞍山</a>
								<a href="http://www.mypm25.cn/maoming.html">茂名</a>
								<a href="http://www.mypm25.cn/meishan.html">眉山</a>
								<a href="http://www.mypm25.cn/meizhou.html">梅州</a>
								<a href="http://www.mypm25.cn/mianyang.html">绵阳</a>
								<a href="http://www.mypm25.cn/mudanjiang.html">牡丹江</a>
						 </div>
	                 </div>   
				</div>	
				<div class="cpi_capital_div">
					<div style="margin-top:10px;">
						 <span class="cpi_capital">N：</span>
						 <div class="captail_citylist">
						 		<a href="http://www.mypm25.cn/nanchang.html">南昌</a>
								<a href="http://www.mypm25.cn/nanchong.html">南充</a>
								<a href="http://www.mypm25.cn/nanjing.html">南京</a>
								<a href="http://www.mypm25.cn/nanning.html">南宁</a>
								<a href="http://www.mypm25.cn/nanping.html">南平</a>
								<a href="http://www.mypm25.cn/nantong.html">南通</a>
								<a href="http://www.mypm25.cn/nanyang.html">南阳</a>
								<a href="http://www.mypm25.cn/naqudiqu.html">那曲地区</a>
								<a href="http://www.mypm25.cn/neijiang.html">内江</a>
								<a href="http://www.mypm25.cn/ningbo.html">宁波</a>
								<a href="http://www.mypm25.cn/ningde.html">宁德</a>
								<a href="http://www.mypm25.cn/nujiangzhou.html">怒江州</a>
						 </div>
	                 </div>   
				</div>	<div class="cpi_capital_div">
					<div style="margin-top:10px;">
						 <span class="cpi_capital">P：</span>
						 <div class="captail_citylist">
						 		<a href="http://www.mypm25.cn/panjin.html">盘锦</a>
								<a href="http://www.mypm25.cn/panzhihua.html">攀枝花</a>
								<a href="http://www.mypm25.cn/penglai.html">蓬莱</a>
								<a href="http://www.mypm25.cn/pingdingshan.html">平顶山</a>
								<a href="http://www.mypm25.cn/pingdu.html">平度</a>
								<a href="http://www.mypm25.cn/pingliang.html">平凉</a>
								<a href="http://www.mypm25.cn/pingxiang.html">萍乡</a>
								<a href="http://www.mypm25.cn/putian.html">莆田</a>
								<a href="http://www.mypm25.cn/puyang.html">濮阳</a>
						 </div>
	                 </div>   
				</div>	
				<div class="cpi_capital_div">
					<div style="margin-top:10px;">
						 <span class="cpi_capital">Q：</span>
						 <div class="captail_citylist">
						 	<a href="http://www.mypm25.cn/qiandongnanzhou.html">黔东南州</a>
								<a href="http://www.mypm25.cn/qiannanzhou.html">黔南州</a>
								<a href="http://www.mypm25.cn/qianxinanzhou.html">黔西南州</a>
								<a href="http://www.mypm25.cn/qingdao.html">青岛</a>
								<a href="http://www.mypm25.cn/qingyang.html">庆阳</a>
								<a href="http://www.mypm25.cn/qingyuan.html">清远</a>
								<a href="http://www.mypm25.cn/qinhuangdao.html">秦皇岛</a>
								<a href="http://www.mypm25.cn/qinzhou.html">钦州</a>
								<a href="http://www.mypm25.cn/qiqihaer.html">齐齐哈尔</a>
								<a href="http://www.mypm25.cn/qitaihe.html">七台河</a>
								<a href="http://www.mypm25.cn/quanzhou.html">泉州</a>
								<a href="http://www.mypm25.cn/qujing.html">曲靖</a>
								<a href="http://www.mypm25.cn/quzhou.html">衢州</a>
						 </div>
	                 </div>   
				</div>	
				
				<div class="cpi_capital_div">
					<div style="margin-top:10px;">
						 <span class="cpi_capital">R：</span>
						 <div class="captail_citylist">
						 		<a href="http://www.mypm25.cn/rikazediqu.html">日喀则地区</a>
								<a href="http://www.mypm25.cn/rizhao.html">日照</a>
								<a href="http://www.mypm25.cn/rongcheng.html">荣成</a>
								<a href="http://www.mypm25.cn/rushan.html">乳山</a>
						 </div>
	                 </div>   
				</div>	
				<div class="cpi_capital_div">
					<div style="margin-top:10px;">
						 <span class="cpi_capital">S：</span>
						 <div class="captail_citylist">
						 	<a href="http://www.mypm25.cn/sanmenxia.html">三门峡</a>
								<a href="http://www.mypm25.cn/sanming.html">三明</a>
								<a href="http://www.mypm25.cn/sanya.html">三亚</a>
								<a href="http://www.mypm25.cn/shanghai.html">上海</a>
								<a href="http://www.mypm25.cn/shangluo.html">商洛</a>
								<a href="http://www.mypm25.cn/shangqiu.html">商丘</a>
								<a href="http://www.mypm25.cn/shangrao.html">上饶</a>
								<a href="http://www.mypm25.cn/shannandiqu.html">山南地区</a>
								<a href="http://www.mypm25.cn/shantou.html">汕头</a>
								<a href="http://www.mypm25.cn/shanwei.html">汕尾</a>
								<a href="http://www.mypm25.cn/shaoguan.html">韶关</a>
								<a href="http://www.mypm25.cn/shaoxing.html">绍兴</a>
								<a href="http://www.mypm25.cn/shaoyang.html">邵阳</a>
								<a href="http://www.mypm25.cn/shenyang.html">沈阳</a>
								<a href="http://www.mypm25.cn/shenzhen.html">深圳</a>
								<a href="http://www.mypm25.cn/shihezi.html">石河子</a>
								<a href="http://www.mypm25.cn/shijiazhuang.html">石家庄</a>
								<a href="http://www.mypm25.cn/shiyan.html">十堰</a>
								<a href="http://www.mypm25.cn/shizuishan.html">石嘴山</a>
								<a href="http://www.mypm25.cn/shouguang.html">寿光</a>
								<a href="http://www.mypm25.cn/shuangyashan.html">双鸭山</a>
								<a href="http://www.mypm25.cn/shuozhou.html">朔州</a>
								<a href="http://www.mypm25.cn/simao.html">思茅</a>
								<a href="http://www.mypm25.cn/siping.html">四平</a>
								<a href="http://www.mypm25.cn/songyuan.html">松原</a>
								<a href="http://www.mypm25.cn/suihua.html">绥化</a>
								<a href="http://www.mypm25.cn/suining.html">遂宁</a>
								<a href="http://www.mypm25.cn/suizhou.html">随州</a>
								<a href="http://www.mypm25.cn/suqian.html">宿迁</a>
								<a href="http://www.mypm25.cn/suzhoushi.html">宿州</a>
								<a href="http://www.mypm25.cn/suzhou.html">苏州</a>
						 </div>
	                 </div>   
				</div>	
				<div class="cpi_capital_div">
					<div style="margin-top:10px;">
						 <span class="cpi_capital">T：</span>
						 <div class="captail_citylist">
						 		<a href="http://www.mypm25.cn/tachengdiqu.html">塔城地区</a>
								<a href="http://www.mypm25.cn/taian.html">泰安</a>
								<a href="http://www.mypm25.cn/taicang.html">太仓</a>
								<a href="http://www.mypm25.cn/taiyuan.html">太原</a>
								<a href="http://www.mypm25.cn/taizhoushi.html">台州</a>
								<a href="http://www.mypm25.cn/taizhou.html">泰州</a>
								<a href="http://www.mypm25.cn/tangshan.html">唐山</a>
								<a href="http://www.mypm25.cn/tianjin.html">天津</a>
								<a href="http://www.mypm25.cn/tianshui.html">天水</a>
								<a href="http://www.mypm25.cn/tieling.html">铁岭</a>
								<a href="http://www.mypm25.cn/tongchuan.html">铜川</a>
								<a href="http://www.mypm25.cn/tonghua.html">通化</a>
								<a href="http://www.mypm25.cn/tongliao.html">通辽</a>
								<a href="http://www.mypm25.cn/tongling.html">铜陵</a>
								<a href="http://www.mypm25.cn/tongrendiqu.html">铜仁地区</a>
								<a href="http://www.mypm25.cn/tulufandiqu.html">吐鲁番地区</a>
						 </div>
	                 </div>   
				</div>	
				<div class="cpi_capital_div">
					<div style="margin-top:10px;">
						 <span class="cpi_capital">W：</span>
						 <div class="captail_citylist">
						 	<a href="http://www.mypm25.cn/wafangdian.html">瓦房店</a>
								<a href="http://www.mypm25.cn/weifang.html">潍坊</a>
								<a href="http://www.mypm25.cn/weihai.html">威海</a>
								<a href="http://www.mypm25.cn/weinan.html">渭南</a>
								<a href="http://www.mypm25.cn/wendeng.html">文登</a>
								<a href="http://www.mypm25.cn/wenshanzhou.html">文山州</a>
								<a href="http://www.mypm25.cn/wenzhou.html">温州</a>
								<a href="http://www.mypm25.cn/wuhai.html">乌海</a>
								<a href="http://www.mypm25.cn/wuhan.html">武汉</a>
								<a href="http://www.mypm25.cn/wuhu.html">芜湖</a>
								<a href="http://www.mypm25.cn/wujiang.html">吴江</a>
								<a href="http://www.mypm25.cn/wujiaqu.html">五家渠</a>
								<a href="http://www.mypm25.cn/wulanchabu.html">乌兰察布</a>
								<a href="http://www.mypm25.cn/wulumuqi.html">乌鲁木齐</a>
								<a href="http://www.mypm25.cn/wuwei.html">武威</a>
								<a href="http://www.mypm25.cn/wuxi.html">无锡</a>
								<a href="http://www.mypm25.cn/wuzhong.html">吴忠</a>
								<a href="http://www.mypm25.cn/wuzhou.html">梧州</a>
						 </div>
	                 </div>   
				</div>	
				<div class="cpi_capital_div">
					<div style="margin-top:10px;">
						 <span class="cpi_capital">X：</span>
						 <div class="captail_citylist">
						 	<a href="http://www.mypm25.cn/xiamen.html">厦门</a>
								<a href="http://www.mypm25.cn/xian.html">西安</a>
								<a href="http://www.mypm25.cn/xiangfan.html">襄樊</a>
								<a href="http://www.mypm25.cn/xiangtan.html">湘潭</a>
								<a href="http://www.mypm25.cn/xiangxizhou.html">湘西州</a>
								<a href="http://www.mypm25.cn/xianning.html">咸宁</a>
								<a href="http://www.mypm25.cn/xianyang.html">咸阳</a>
								<a href="http://www.mypm25.cn/xiaogan.html">孝感</a>
								<a href="http://www.mypm25.cn/xilinguolemeng.html">锡林郭勒盟</a>
								<a href="http://www.mypm25.cn/xinganmeng.html">兴安盟</a>
								<a href="http://www.mypm25.cn/xingtai.html">邢台</a>
								<a href="http://www.mypm25.cn/xining.html">西宁</a>
								<a href="http://www.mypm25.cn/xinxiang.html">新乡</a>
								<a href="http://www.mypm25.cn/xinyang.html">信阳</a>
								<a href="http://www.mypm25.cn/xinyu.html">新余</a>
								<a href="http://www.mypm25.cn/xinzhou.html">忻州</a>
								<a href="http://www.mypm25.cn/xishuangbannazhou.html">西双版纳州</a>
								<a href="http://www.mypm25.cn/xuancheng.html">宣城</a>
								<a href="http://www.mypm25.cn/xuchang.html">许昌</a>
								<a href="http://www.mypm25.cn/xuzhou.html">徐州</a>
						 </div>
	                 </div>   
				</div>	
				<div class="cpi_capital_div">
					<div style="margin-top:10px;">
						 <span class="cpi_capital">Y：</span>
						 <div class="captail_citylist">
						 	<a href="http://www.mypm25.cn/yaan.html">雅安</a>
								<a href="http://www.mypm25.cn/yanan.html">延安</a>
								<a href="http://www.mypm25.cn/yanbianzhou.html">延边州</a>
								<a href="http://www.mypm25.cn/yancheng.html">盐城</a>
								<a href="http://www.mypm25.cn/yangjiang.html">阳江</a>
								<a href="http://www.mypm25.cn/yangquan.html">阳泉</a>
								<a href="http://www.mypm25.cn/yangzhou.html">扬州</a>
								<a href="http://www.mypm25.cn/yantai.html">烟台</a>
								<a href="http://www.mypm25.cn/yibin.html">宜宾</a>
								<a href="http://www.mypm25.cn/yichang.html">宜昌</a>
								<a href="http://www.mypm25.cn/yichunshi.html">伊春</a>
								<a href="http://www.mypm25.cn/yichun.html">宜春</a>
								<a href="http://www.mypm25.cn/yilihasakezhou.html">伊犁哈萨克州</a>
								<a href="http://www.mypm25.cn/yinchuan.html">银川</a>
								<a href="http://www.mypm25.cn/yingkou.html">营口</a>
								<a href="http://www.mypm25.cn/yingtan.html">鹰潭</a>
								<a href="http://www.mypm25.cn/yiwu.html">义乌</a>
								<a href="http://www.mypm25.cn/yixing.html">宜兴</a>
								<a href="http://www.mypm25.cn/yiyang.html">益阳</a>
								<a href="http://www.mypm25.cn/yongzhou.html">永州</a>
								<a href="http://www.mypm25.cn/yueyang.html">岳阳</a>
								<a href="http://www.mypm25.cn/yulin.html">玉林</a>
								<a href="http://www.mypm25.cn/yulinshi.html">榆林</a>
								<a href="http://www.mypm25.cn/yuncheng.html">运城</a>
								<a href="http://www.mypm25.cn/yunfu.html">云浮</a>
								<a href="http://www.mypm25.cn/yushuzhou.html">玉树州</a>
								<a href="http://www.mypm25.cn/yuxi.html">玉溪</a>
						 </div>
	                 </div>   
				</div>	
				<div class="cpi_capital_div">
					<div style="margin-top:10px;">
						 <span class="cpi_capital">Z：</span>
						 <div class="captail_citylist">
						 	<a href="http://www.mypm25.cn/zaozhuang.html">枣庄</a>
								<a href="http://www.mypm25.cn/zhangjiagang.html">张家港</a>
								<a href="http://www.mypm25.cn/zhangjiajie.html">张家界</a>
								<a href="http://www.mypm25.cn/zhangjiakou.html">张家口</a>
								<a href="http://www.mypm25.cn/zhangqiu.html">章丘</a>
								<a href="http://www.mypm25.cn/zhangye.html">张掖</a>
								<a href="http://www.mypm25.cn/zhangzhou.html">漳州</a>
								<a href="http://www.mypm25.cn/zhanjiang.html">湛江</a>
								<a href="http://www.mypm25.cn/zhaoqing.html">肇庆</a>
								<a href="http://www.mypm25.cn/zhaotong.html">昭通</a>
								<a href="http://www.mypm25.cn/zhaoyuan.html">招远</a>
								<a href="http://www.mypm25.cn/zhengzhou.html">郑州</a>
								<a href="http://www.mypm25.cn/zhenjiang.html">镇江</a>
								<a href="http://www.mypm25.cn/zhongshan.html">中山</a>
								<a href="http://www.mypm25.cn/zhongwei.html">中卫</a>
								<a href="http://www.mypm25.cn/zhoukou.html">周口</a>
								<a href="http://www.mypm25.cn/zhoushan.html">舟山</a>
								<a href="http://www.mypm25.cn/zhuhai.html">珠海</a>
								<a href="http://www.mypm25.cn/zhuji.html">诸暨</a>
								<a href="http://www.mypm25.cn/zhumadian.html">驻马店</a>
								<a href="http://www.mypm25.cn/zhuzhou.html">株洲</a>
								<a href="http://www.mypm25.cn/zibo.html">淄博</a>
								<a href="http://www.mypm25.cn/zigong.html">自贡</a>
								<a href="http://www.mypm25.cn/ziyang.html">资阳</a>
								<a href="http://www.mypm25.cn/zunyi.html">遵义</a>
						 </div>
	                 </div>   
				</div>	
				
			</div>
		</div>	</nav>
		<div class="head_div" style="background-image: url('show/img/you.jpg'
																	);">
			<div class="head_head">
				<!-- <img src="js/pmlogo.png" id="head_img"> -->
				<ul id="title">
					<li class="head_li focus" id="first_head">我的温度</li>
					<li class="head_li" onclick="window.location.href='rtm.html'">实时监控</li>
					<li class="head_li" onclick="window.location.href='jsp/wdfb.jsp'">温度分布</li>
					<li class="head_li" onclick="window.location.href='warning.html'">预警分析</li>
					<li class="head_li" onclick="window.location.href='rank.html'">排行榜</li>
					<li class="head_li" onclick="window.location.href='trends.html'">趋势分析</li>
				</ul>
			</div>
			<div style="height: 14px;">&nbsp;</div>
			<div class="head_body">
				<div class="head_left">
					<div class="city">
						<div class="cityName" id="showRight">
							沈阳<img alt="" src="js/arrow.png">
						</div>
						<div class="monitoringPointsName" id="showPoints">
							<span id="select_point_span">选择监测点</span>
							<img alt="" src="js/arrow.png" width="20px" height="11px">
						</div>
						
					</div>
					<div id="pmValue">12 </div>
					<div class="pmValue_right">
						<div id="pmValue_describe" style="color:#01E401">
							冷
						</div>
						<div>
							温度(°)
						</div>
					</div>
				</div>
				<div class="head_right">
					<div>
						<div class="weather_description">
							<div class="icon_weather_headright 
											   icon_weather_suning2
											  ">
							</div>				 
							<p>
								晴 8℃~21℃ AQI:61[良]
							
							</p>
						</div>
						<div>
							<img src="js/tuli.png">
						</div>
						<div class="head_decription">
							<p>
								空气质量状况:<span>中等</span>
							</p>
							<p style="width:450px;">
								健康建议:<span>
										极少数异类敏感人群应减少户外活动。
																			 </span>
							</p>
							 <p>
							</p> 
						</div>
					</div>
				</div>
			</div>
		</div>
		<div>
			<div class="body_div">
				<div class="body_left">
					<div class="content_div">
						<div class="title">最近一小时的温度平均值</div>
						<div>
							<div id="angularGauge_chartId" style="height: 350px; width: 490px; margin-top: 14px; padding-top: 14px; -moz-user-select: none; position: relative; background: transparent none repeat scroll 0% 0%;" _echarts_instance_="ec_1507179163224"><div style="position: relative; overflow: hidden; width: 490px; height: 350px; cursor: default;"><canvas style="position: absolute; left: 0px; top: 0px; width: 490px; height: 350px; -moz-user-select: none;" width="490" height="350" data-zr-dom-id="zr_0"></canvas></div><div></div></div>
						
						</div>
						<div style="margin-top: -140px;">
							<div id="address">沈阳</div>
							<div class="content_description">
								空气质量状况:<span id="aqi_span">
											中等
																					</span>
							</div>
							<div class="content_description">
								健康建议:<span id="suggest_span">
										极少数异类敏感人群应减少户外活动。
																			 </span>
							</div>
						</div>
					</div>
					<div class="content_div">
						<div class="title">各监测点实时数据</div>
						<div>
							<table id="monitoring">
							<thead style="display:block;width:490px;">
								<tr>
									<th style="width:163px;">监测点</th>
									<th style="width:163px;">温度</th>
									<th style="width:163px;">空气质量情况</th>
								</tr>
							</thead>
								<tbody style="display:block;overflow: auto;height: 360px;width:490px;">
										<tr onclick="changePoint('1105A')" bg="#f6f6f6">
											<td id="pointName_1105A" style="width: 163px; background-color: rgb(246, 246, 246);">小河沿</td>
											<td id="pointValue_1105A" style="width: 163px; background-color: rgb(246, 246, 246);">12</td>
											<td style="width: 163px; background-color: rgb(246, 246, 246);">
												<img src="js/green.png">
												热
											</td>
										</tr>
										<tr onclick="changePoint('1106A')" bg="#fff">
											<td id="pointName_1106A" style="width:163px;">太原街</td>
											<td id="pointValue_1106A" style="width:163px;">10</td>
											<td style="width:163px;">
												<img src="js/green.png">
												热
											</td>
										</tr>
										<tr onclick="changePoint('1099A')" bg="#f6f6f6">
											<td id="pointName_1099A" style="width: 163px; background-color: rgb(246, 246, 246);">浑南二</td>
											<td id="pointValue_1099A" style="width: 163px; background-color: rgb(246, 246, 246);">12</td>
											<td style="width: 163px; background-color: rgb(246, 246, 246);">
												<img src="js/green.png">
												热
											</td>
										</tr>
										<tr onclick="changePoint('1100A')" bg="#fff">
											<td id="pointName_1100A" style="width:163px;">东软</td>
											<td id="pointValue_1100A" style="width:163px;">11</td>
											<td style="width:163px;">
												<img src="js/green.png">
												热
											</td>
										</tr>
										<tr onclick="changePoint('1102A')" bg="#f6f6f6">
											<td id="pointName_1102A" style="width: 163px; background-color: rgb(246, 246, 246);">炮兵学院</td>
											<td id="pointValue_1102A" style="width: 163px; background-color: rgb(246, 246, 246);">25</td>
											<td style="width: 163px; background-color: rgb(246, 246, 246);">
												<img src="js/green.png">
												热
											</td>
										</tr>
										<tr onclick="changePoint('1103A')" bg="#fff">
											<td id="pointName_1103A" style="width:163px;">北陵</td>
											<td id="pointValue_1103A" style="width:163px;">13</td>
											<td style="width:163px;">
												<img src="js/green.png">
												热
											</td>
										</tr>
										<tr onclick="changePoint('1104A')" bg="#f6f6f6">
											<td id="pointName_1104A" style="width: 163px; background-color: rgb(246, 246, 246);">文艺路</td>
											<td id="pointValue_1104A" style="width: 163px; background-color: rgb(246, 246, 246);">13</td>
											<td style="width: 163px; background-color: rgb(246, 246, 246);">
												<img src="js/yellow.png">
												良
											</td>
										</tr>
										<tr onclick="changePoint('1108A')" bg="#fff">
											<td id="pointName_1108A" style="width:163px;">辽大</td>
											<td id="pointValue_1108A" style="width:163px;">13</td>
											<td style="width:163px;">
												<img src="js/yellow.png">
												良
											</td>
										</tr>
										<tr onclick="changePoint('1098A')" bg="#f6f6f6">
											<td id="pointName_1098A" style="width: 163px; background-color: rgb(246, 246, 246);">辉山</td>
											<td id="pointValue_1098A" style="width: 163px; background-color: rgb(246, 246, 246);">17</td>
											<td style="width: 163px; background-color: rgb(246, 246, 246);">
												<img src="js/green.png">
												热
											</td>
										</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="body_right">
					<div class="content_div" id="div_weather">
						<div class="title">天气预报/其他污染物</div>
						<div>
								<div class="weather" id="first_weather">
									<div class="weatherDate">10.05</div>
									<div class="temperature">8℃~15℃</div>
									<div>
										<div class="icon_weather_forecast 
											   icon_weather_suning
											 										"> </div>
										<span style="color:#ED6B17">晴</span> 
									</div>
								</div>
								<div class="weather" id="">
									<div class="weatherDate">10.06</div>
									<div class="temperature">10℃~21℃</div>
									<div>
										<div class="icon_weather_forecast 
											   icon_weather_suning
											 										"> </div>
										<span style="color:#ED6B17">晴</span> 
									</div>
								</div>
								<div class="weather" id="">
									<div class="weatherDate">10.07</div>
									<div class="temperature">13℃~23℃</div>
									<div>
										<div class="icon_weather_forecast 
											   icon_weather_suning
											 										"> </div>
										<span style="color:#ED6B17">晴</span> 
									</div>
								</div>
								<div class="weather" id="">
									<div class="weatherDate">10.08</div>
									<div class="temperature">10℃~22℃</div>
									<div>
										<div class="icon_weather_forecast 
											  icon_weather_yin
											 										"> </div>
										<span style="color:#ED6B17">阴</span> 
									</div>
								</div>
								<div class="weather" id="last_right">
									<div class="weatherDate">10.09</div>
									<div class="temperature">6℃~15℃</div>
									<div>
										<div class="icon_weather_forecast 
											  icon_weather_yin
											 										"> </div>
										<span style="color:#ED6B17">阴</span> 
									</div>
								</div>
						</div>
						<div style="clear: both;"></div>
						<div class="colorDiv">
						<div style="height:200px;width:auto;">
						</div>
						</div>
						 <div class="colorDiv">
							<div class="color_Div" id="first_color_div">
								
							</div>
							<div class="color_Div">
								<div class="colorValue green">5</div>
								<div class="colorFont">
									O<sub>3</sub>
								</div>
							</div>
							<div class="color_Div">
								<div class="colorValue green">24</div>
								<div class="colorFont">
									NO<sub>2</sub>
								</div>
							</div>
							<div class="color_Div">
								<div class="colorValue green">22</div>
								<div class="colorFont">
									SO<sub>2</sub>
								</div>
							</div>
							<div class="color_Div">
								<div class="colorValue green">1</div>
								<div class="colorFont">CO</div>
							</div>
						</div>
					</div> 

					<div class="content_div">
						<div class="title">
									城市空气质量排名 
									<img onclick="changeRank()" id="best_img" class="show_best_icon" src="js/best.png">
									<img onclick="changeRank()" id="worst_img" class="show_worst_icon" src="js/worst.png">
						</div>
						<div>
							<table id="cityAir">
								<tbody><tr bg="#f6f6f6">
									<th width="33%">城市</th>
									<th width="33%">温度</th>
									<th width="33%">空气质量情况</th>
								</tr>
								</tbody><tbody id="good_body">
										<tr onclick="javascript:window.location.href='wuhan.html';" bg="#fff">
											<td>武汉</td>
											<td>1</td>
											<td>
												<img src="js/green.png">
												热
										    </td>
										</tr>
										<tr onclick="javascript:window.location.href='ziyang.html';" bg="#f6f6f6">
											<td style="background-color: rgb(246, 246, 246);">资阳</td>
											<td style="background-color: rgb(246, 246, 246);">1</td>
											<td style="background-color: rgb(246, 246, 246);">
												<img src="js/green.png">
												冷
										    </td>
										</tr>
										<tr onclick="javascript:window.location.href='changsha.html';" bg="#fff">
											<td>长沙</td>
											<td>2</td>
											<td>
												<img src="js/green.png">
												热
										    </td>
										</tr>
										<tr onclick="javascript:window.location.href='abazhou.html';" bg="#f6f6f6">
											<td style="background-color: rgb(246, 246, 246);">阿坝州</td>
											<td style="background-color: rgb(246, 246, 246);">2</td>
											<td style="background-color: rgb(246, 246, 246);">
												<img src="js/green.png">
												热
										    </td>
										</tr>
										<tr onclick="javascript:window.location.href='zhuzhou.html';" bg="#fff">
											<td>株洲</td>
											<td>2</td>
											<td>
												<img src="js/green.png">
												冷
										    </td>
										</tr>
										<tr onclick="javascript:window.location.href='hefei.html';" bg="#f6f6f6">
											<td style="background-color: rgb(246, 246, 246);">合肥</td>
											<td style="background-color: rgb(246, 246, 246);">2</td>
											<td style="background-color: rgb(246, 246, 246);">
												<img src="js/green.png">
												暖
										    </td>
										</tr>
										<tr onclick="javascript:window.location.href='xiangtan.html';" bg="#fff">
											<td>湘潭</td>
											<td>2</td>
											<td>
												<img src="js/green.png">
												热
										    </td>
										</tr>
										<tr onclick="javascript:window.location.href='honghezhou.html';" bg="#f6f6f6">
											<td style="background-color: rgb(246, 246, 246);">红河州</td>
											<td style="background-color: rgb(246, 246, 246);">2</td>
											<td style="background-color: rgb(246, 246, 246);">
												<img src="js/green.png">
												热
										    </td>
										</tr>
										<tr onclick="javascript:window.location.href='ankang.html';" bg="#fff">
											<td>安康</td>
											<td>2</td>
											<td>
												<img src="js/green.png">
												热
										    </td>
										</tr>
										<tr onclick="javascript:window.location.href='zunyi.html';" bg="#f6f6f6">
											<td style="background-color: rgb(246, 246, 246);">遵义</td>
											<td style="background-color: rgb(246, 246, 246);">2</td>
											<td style="background-color: rgb(246, 246, 246);">
												<img src="js/green.png">
												热
										    </td>
										</tr>
								</tbody>
								
								<tbody id="bad_body" style="display:none;">
										<tr onclick="javascript:window.location.href='hetiandiqu.html';" bg="#fff">
											<td>和田地区</td>
											<td>236</td>
											<td>
												<img src="js/purple.png">
												重度污染
										    </td>
										</tr>
										<tr onclick="javascript:window.location.href='kashi.html';" bg="#f6f6f6">
											<td style="background-color: rgb(246, 246, 246);">喀什地区</td>
											<td style="background-color: rgb(246, 246, 246);">157</td>
											<td style="background-color: rgb(246, 246, 246);">
												<img src="js/purple.png">
												重度污染
										    </td>
										</tr>
										<tr onclick="javascript:window.location.href='kuerle.html';" bg="#fff">
											<td>库尔勒</td>
											<td>123</td>
											<td>
												<img src="js/red.png">
												中度污染
										    </td>
										</tr>
										<tr onclick="javascript:window.location.href='taiyuan.html';" bg="#f6f6f6">
											<td style="background-color: rgb(246, 246, 246);">太原</td>
											<td style="background-color: rgb(246, 246, 246);">111</td>
											<td style="background-color: rgb(246, 246, 246);">
												<img src="js/orange.png">
												轻度污染
										    </td>
										</tr>
										<tr onclick="javascript:window.location.href='leshan.html';" bg="#fff">
											<td>乐山</td>
											<td>105</td>
											<td>
												<img src="js/orange.png">
												轻度污染
										    </td>
										</tr>
										<tr onclick="javascript:window.location.href='shouguang.html';" bg="#f6f6f6">
											<td style="background-color: rgb(246, 246, 246);">寿光</td>
											<td style="background-color: rgb(246, 246, 246);">87</td>
											<td style="background-color: rgb(246, 246, 246);">
												<img src="js/orange.png">
												轻度污染
										    </td>
										</tr>
										<tr onclick="javascript:window.location.href='lanzhou.html';" bg="#fff">
											<td>兰州</td>
											<td>85</td>
											<td>
												<img src="js/orange.png">
												轻度污染
										    </td>
										</tr>
										<tr onclick="javascript:window.location.href='xining.html';" bg="#f6f6f6">
											<td style="background-color: rgb(246, 246, 246);">西宁</td>
											<td style="background-color: rgb(246, 246, 246);">84</td>
											<td style="background-color: rgb(246, 246, 246);">
												<img src="js/orange.png">
												轻度污染
										    </td>
										</tr>
										<tr onclick="javascript:window.location.href='akesudiqu.html';" bg="#fff">
											<td>阿克苏地区</td>
											<td>81</td>
											<td>
												<img src="js/orange.png">
												轻度污染
										    </td>
										</tr>
										<tr onclick="javascript:window.location.href='zibo.html';" bg="#f6f6f6">
											<td style="background-color: rgb(246, 246, 246);">淄博</td>
											<td style="background-color: rgb(246, 246, 246);">81</td>
											<td style="background-color: rgb(246, 246, 246);">
												<img src="js/orange.png">
												轻度污染
										    </td>
										</tr>
								</tbody>
							</table>
						</div>
						<div></div>
					</div>
				</div>
				<div style="clear: both;"></div>
				<div class="content_whole">
					<div class="title">温度历史记录</div>
					<div id="bar" style="-moz-user-select: none; position: relative; background: transparent none repeat scroll 0% 0%;" _echarts_instance_="ec_1507179163225"><div style="position: relative; overflow: hidden; width: 900px; height: 450px;"><canvas style="position: absolute; left: 0px; top: 0px; width: 900px; height: 450px; -moz-user-select: none;" width="900" height="450" data-zr-dom-id="zr_0"></canvas></div><div></div></div>
				</div>
			</div>
			<div style="height: 30px;">&nbsp;</div>
		</div>
	
	

 
	  
    
   

<script src="js/v3.js"></script>
<script src="js/modernizr.js"></script>
<script src="js/classie.js"></script>
<script type="text/javascript">

	var allPm25value = "12";
	var cityname = "沈阳";
	$(document).ready(function() {
		var data = [15,14,16,8,9,7,6,5,3,4,0,1,2];	
		var date = [];
			
			var time = " 2017-09-05";
			date.push(time);
		
			var time = " 2017-09-06";
			date.push(time);
		
			var time = " 2017-09-07";
			date.push(time);
		
			var time = " 2017-09-08";
			date.push(time);
			
			var time = " 2017-09-09";
			date.push(time);
		
			var time = " 2017-09-10";
			date.push(time);
				
			var time = " 2017-09-11";
			date.push(time);
		
			var time = " 2017-09-12";
			date.push(time);
		
			var time = " 2017-09-13";
			date.push(time);
			data.push(34);	
			var time = " 2017-09-14";
			date.push(time);
		
			var time = " 2017-09-15";
			date.push(time);
			
			var time = " 2017-09-16";
			date.push(time);
				
			var time = " 2017-09-17";
			date.push(time);
				
			var time = " 2017-09-18";
			date.push(time);
			
			var time = " 2017-09-19";
			date.push(time);
			
			var time = " 2017-09-20";
			date.push(time);
		
			var time = " 2017-09-21";
			date.push(time);
				
			var time = " 2017-09-22";
			date.push(time);
		
			var time = " 2017-09-23";
			date.push(time);
			data.push(18);	
			var time = " 2017-09-24";
			date.push(time);
			
			var time = " 2017-09-25";
			date.push(time);
			
			var time = " 2017-09-26";
			date.push(time);
			data.push(13);	
			var time = " 2017-09-27";
			date.push(time);
			data.push(14);	
			var time = " 2017-09-28";
			date.push(time);
			
			var time = " 2017-09-29";
			date.push(time);
			
			var time = " 2017-09-30";
			date.push(time);
			data.push(18);	
			var time = " 2017-10-01";
			date.push(time);
			data.push(9);	
			var time = " 2017-10-02";
			date.push(time);
			data.push(20);	
			var time = " 2017-10-03";
			date.push(time);
		
			var time = " 2017-10-04";
			date.push(time);
				
			var time = " 2017-10-05";
			date.push(time);
		createGauge(allPm25value);
		createBar(date,data);
		setTableColor("cityAir");
		setTableColor("monitoring");
		//new PopupLayer({trigger:"#showPoints",popupBlk:"#blk3",closeBtn:"#close3",useFx:true,eventType:"mouseover"});
		 //new PopupLayer({trigger:"#showPoints",popupBlk:"#blk3",closeBtn:"#close3",});
		 new PopupLayer({trigger:"#showPoints",popupBlk:"#blk3",closeBtn:"#close3",useFx:true,closeLayout:'#blk3'});
		//createLinear();
		
	});
	
		
	function createLinear() {
	
		var myChart = echarts.init(document.getElementById('linear'));
		// 指定图表的配置项和数据
		var option = {
			tooltip : {},
			/*  legend: {
			     data:['最高值','最低值']
			 }, */
			xAxis : {
				type : 'category',
				boundaryGap : false,
				textStyle : {
					color : '#ffffff'
				},
				axisLine : {
					show : false
				},
				splitLine : {
					show : true,
					lineStyle : {
						width : '2'
					}
				},
				data : [ {
					value : '今天',
					textStyle : {
						color : '#ffffff'
					}
				}, {
					value : week_1,
					textStyle : {
						color : '#ffffff'
					}
				}, {
					value : week_2,
					textStyle : {
						color : '#ffffff'
					}
				}, {
					value : week_3,
					textStyle : {
						color : '#ffffff'
					}
				}, {
					value : week_4,
					textStyle : {
						color : '#ffffff'
					}
				} ]
			},
			yAxis : {
				boundaryGap : false,
				splitLine : {
					show : false
				},
				axisLine : {
					show : false
				},
				axisLabel : {
					show : false
				}
			},
			grid : {
				left : '3%',
				right : '4%',
				bottom : '3%',
				top : '0%',
				containLabel : true
			},
			series : [ {
				name : '最高值',
				type : 'line',
				areaStyle : {
					normal : {}
				},
				lineStyle : {
					normal : {
						color : '#FF3F40',
						width : '3'
					}
				},
				label : {
					normal : {
						show : true,
						position : [ 10, 10 ],
						textStyle : {
							color : '#ffffff',
							fontSize : '14'
						}
					}
				},
				data : [ {
					value : data_max_0,
					symbolSize : 10,
				}, {
					value : data_max_1,
					symbolSize : 10,
				}, {
					value : data_max_2,
					symbolSize : 10,
				}, {
					value : data_max_3,
					symbolSize : 10,
				}, {
					value : data_max_4,
					symbolSize : 10,
				}]
			}, {
				name : '最低值',
				type : 'line',
				lineStyle : {
					normal : {
						color : '#35BCF3',
						width : '3'
					}
				},
				areaStyle : {
					normal : {}
				},
				label : {
					normal : {
						show : true,
						position : [ 10, -10 ],
						textStyle : {
							color : '#ffffff',
							fontSize : '14'
						}
					}
				},
				data : [ {
					value : data_min_0,
					symbolSize : 10,
				}, {
					value : data_min_1,
					symbolSize : 10,
				}, {
					value : data_min_2,
					symbolSize : 10,
				}, {
					value : data_min_3,
					symbolSize : 10,
				}, {
					value : data_min_4,
					symbolSize : 10,
				}]
			} ]
		};
		// 使用刚指定的配置项和数据显示图表。
		myChart.setOption(option);
	}
			var menuRight = document.getElementById( 'cbp-spmenu-s2' ),
				showRight = document.getElementById( 'showRight' ),
				body = document.body;
		
			showRight.onclick = function() {
				classie.toggle( this, 'active' );
				classie.toggle( menuRight, 'cbp-spmenu-open' );
				disableOther( 'showRight' );
			};

			function disableOther( button ) {
				if( button !== 'showRight' ) {
					classie.toggle( showRight, 'disabled' );
				}
			}
	
					var data_1105A=[];
					var date_1105A=[];
				data_1105A.push(16);	
				var time = " 2017-09-05";
				date_1105A.push(time);
				data_1105A.push(10);	
				var time = " 2017-09-06";
				date_1105A.push(time);
				data_1105A.push(12);	
				var time = " 2017-09-07";
				date_1105A.push(time);
				data_1105A.push(13);	
				var time = " 2017-09-08";
				date_1105A.push(time);
				data_1105A.push(14);	
				var time = " 2017-09-09";
				date_1105A.push(time);
				data_1105A.push(12);	
				var time = " 2017-09-10";
				date_1105A.push(time);
					
				var time = " 2017-09-11";
				date_1105A.push(time);
				data_1105A.push(10);	
				var time = " 2017-09-12";
				date_1105A.push(time);
					
				var time = " 2017-09-13";
				date_1105A.push(time);
				
				var time = " 2017-09-14";
				date_1105A.push(time);
			
				var time = " 2017-09-15";
				date_1105A.push(time);
				
				var time = " 2017-09-16";
				date_1105A.push(time);
				data_1105A.push(20);	
				var time = " 2017-09-17";
				date_1105A.push(time);
				data_1105A.push(29);	
				var time = " 2017-09-18";
				date_1105A.push(time);
				data_1105A.push(16);	
				var time = " 2017-09-19";
				date_1105A.push(time);
				data_1105A.push(17);	
				var time = " 2017-09-20";
				date_1105A.push(time);
				data_1105A.push(20);	
				var time = " 2017-09-21";
				date_1105A.push(time);
				
				var time = " 2017-09-22";
				date_1105A.push(time);
				data_1105A.push(17);	
				var time = " 2017-09-23";
				date_1105A.push(time);
				data_1105A.push(18);	
				var time = " 2017-09-24";
				date_1105A.push(time);
					
				var time = " 2017-09-25";
				date_1105A.push(time);
				data_1105A.push(27);	
				var time = " 2017-09-26";
				date_1105A.push(time);
				data_1105A.push(13);	
				var time = " 2017-09-27";
				date_1105A.push(time);
				data_1105A.push(14);	
				var time = " 2017-09-28";
				date_1105A.push(time);
				data_1105A.push(25);	
				var time = " 2017-09-29";
				date_1105A.push(time);
					
				var time = " 2017-09-30";
				date_1105A.push(time);
				data_1105A.push(18);	
				var time = " 2017-10-01";
				date_1105A.push(time);
				data_1105A.push(9);	
				var time = " 2017-10-02";
				date_1105A.push(time);
				data_1105A.push(20);	
				var time = " 2017-10-03";
				date_1105A.push(time);
				
				var time = " 2017-10-04";
				date_1105A.push(time);
					
				var time = " 2017-10-05";
				date_1105A.push(time);
					var data_1106A=[14,12,14,13,15,1,10];
					var date_1106A=[];
				
				var time = " 2017-09-05";
				date_1106A.push(time);
				
				var time = " 2017-09-06";
				date_1106A.push(time);
					
				var time = " 2017-09-07";
				date_1106A.push(time);
				data_1106A.push(8);	
				var time = " 2017-09-08";
				date_1106A.push(time);
				data_1106A.push(40);	
				var time = " 2017-09-09";
				date_1106A.push(time);
					
				var time = " 2017-09-10";
				date_1106A.push(time);
				data_1106A.push(23);	
				var time = " 2017-09-11";
				date_1106A.push(time);
				data_1106A.push(12);	
				var time = " 2017-09-12";
				date_1106A.push(time);
				
				var time = " 2017-09-13";
				date_1106A.push(time);
					
				var time = " 2017-09-14";
				date_1106A.push(time);
					
				var time = " 2017-09-15";
				date_1106A.push(time);
				data_1106A.push(29);	
				var time = " 2017-09-16";
				date_1106A.push(time);
				data_1106A.push(24);	
				var time = " 2017-09-17";
				date_1106A.push(time);
				data_1106A.push(36);	
				var time = " 2017-09-18";
				date_1106A.push(time);
				data_1106A.push(7);	
				var time = " 2017-09-19";
				date_1106A.push(time);
				data_1106A.push(16);	
				var time = " 2017-09-20";
				date_1106A.push(time);
					
				var time = " 2017-09-21";
				date_1106A.push(time);
				
				var time = " 2017-09-22";
				date_1106A.push(time);
				data_1106A.push(24);	
				var time = " 2017-09-23";
				date_1106A.push(time);
				data_1106A.push(20);	
				var time = " 2017-09-24";
				date_1106A.push(time);
				
				var time = " 2017-09-25";
				date_1106A.push(time);
					
				var time = " 2017-09-26";
				date_1106A.push(time);
				data_1106A.push(19);	
				var time = " 2017-09-27";
				date_1106A.push(time);
				data_1106A.push(11);	
				var time = " 2017-09-28";
				date_1106A.push(time);
				data_1106A.push(22);	
				var time = " 2017-09-29";
				date_1106A.push(time);
				
				var time = " 2017-09-30";
				date_1106A.push(time);
				data_1106A.push(16);	
				var time = " 2017-10-01";
				date_1106A.push(time);
				data_1106A.push(5);	
				var time = " 2017-10-02";
				date_1106A.push(time);
				data_1106A.push(12);	
				var time = " 2017-10-03";
				date_1106A.push(time);
				
				var time = " 2017-10-04";
				date_1106A.push(time);
					
				var time = " 2017-10-05";
				date_1106A.push(time);
					var data_1099A=[];
					var date_1099A=[];
				data_1099A.push(29);	
				var time = " 2017-09-05";
				date_1099A.push(time);
				data_1099A.push(29);	
				var time = " 2017-09-06";
				date_1099A.push(time);
				
				var time = " 2017-09-07";
				date_1099A.push(time);
					
				var time = " 2017-09-08";
				date_1099A.push(time);
				data_1099A.push(30);	
				var time = " 2017-09-09";
				date_1099A.push(time);
					
				var time = " 2017-09-10";
				date_1099A.push(time);
					
				var time = " 2017-09-11";
				date_1099A.push(time);
				data_1099A.push(17);	
				var time = " 2017-09-12";
				date_1099A.push(time);
				data_1099A.push(22);	
				var time = " 2017-09-13";
				date_1099A.push(time);
				
				var time = " 2017-09-14";
				date_1099A.push(time);
				
				var time = " 2017-09-15";
				date_1099A.push(time);
				data_1099A.push(30);	
				var time = " 2017-09-16";
				date_1099A.push(time);
				data_1099A.push(23);	
				var time = " 2017-09-17";
				date_1099A.push(time);
					
				var time = " 2017-09-18";
				date_1099A.push(time);
				data_1099A.push(24);	
				var time = " 2017-09-19";
				date_1099A.push(time);
				data_1099A.push(20);	
				var time = " 2017-09-20";
				date_1099A.push(time);
				data_1099A.push(22);	
				var time = " 2017-09-21";
				date_1099A.push(time);
					
				var time = " 2017-09-22";
				date_1099A.push(time);
				data_1099A.push(22);	
				var time = " 2017-09-23";
				date_1099A.push(time);
				data_1099A.push(22);	
				var time = " 2017-09-24";
				date_1099A.push(time);
				
				var time = " 2017-09-25";
				date_1099A.push(time);
					
				var time = " 2017-09-26";
				date_1099A.push(time);
				data_1099A.push(20);	
				var time = " 2017-09-27";
				date_1099A.push(time);
				data_1099A.push(19);	
				var time = " 2017-09-28";
				date_1099A.push(time);
					
				var time = " 2017-09-29";
				date_1099A.push(time);
				data_1099A.push(65);	
				var time = " 2017-09-30";
				date_1099A.push(time);
				data_1099A.push(23);	
				var time = " 2017-10-01";
				date_1099A.push(time);
				data_1099A.push(14);	
				var time = " 2017-10-02";
				date_1099A.push(time);
			
				var time = " 2017-10-03";
				date_1099A.push(time);
				
				var time = " 2017-10-04";
				date_1099A.push(time);
			
				var time = " 2017-10-05";
				date_1099A.push(time);
					var data_1100A=[];
					var date_1100A=[];
				data_1100A.push(36);	
				var time = " 2017-09-05";
				date_1100A.push(time);
				data_1100A.push(31);	
				var time = " 2017-09-06";
				date_1100A.push(time);
				data_1100A.push(4);	
				var time = " 2017-09-07";
				date_1100A.push(time);
				data_1100A.push(7);	
				var time = " 2017-09-08";
				date_1100A.push(time);
				data_1100A.push(4);	
				var time = " 2017-09-09";
				date_1100A.push(time);
				data_1100A.push(4);	
				var time = " 2017-09-10";
				date_1100A.push(time);
				data_1100A.push(19);	
				var time = " 2017-09-11";
				date_1100A.push(time);
				data_1100A.push(19);	
				var time = " 2017-09-12";
				date_1100A.push(time);
				data_1100A.push(23);	
				var time = " 2017-09-13";
				date_1100A.push(time);
				data_1100A.push(37);	
				var time = " 2017-09-14";
				date_1100A.push(time);
				data_1100A.push(2);	
				var time = " 2017-09-15";
				date_1100A.push(time);
				data_1100A.push(12);	
				var time = " 2017-09-16";
				date_1100A.push(time);
				data_1100A.push(26);	
				var time = " 2017-09-17";
				date_1100A.push(time);
				data_1100A.push(41);	
				var time = " 2017-09-18";
				date_1100A.push(time);
				data_1100A.push(26);	
				var time = " 2017-09-19";
				date_1100A.push(time);
				data_1100A.push(20);	
				var time = " 2017-09-20";
				date_1100A.push(time);
				data_1100A.push(29);	
				var time = " 2017-09-21";
				date_1100A.push(time);
				data_1100A.push(38);	
				var time = " 2017-09-22";
				date_1100A.push(time);
				data_1100A.push(28);	
				var time = " 2017-09-23";
				date_1100A.push(time);
				data_1100A.push(23);	
				var time = " 2017-09-24";
				date_1100A.push(time);
				data_1100A.push(4);	
				var time = " 2017-09-25";
				date_1100A.push(time);
				data_1100A.push(34);	
				var time = " 2017-09-26";
				date_1100A.push(time);
				data_1100A.push(17);	
				var time = " 2017-09-27";
				date_1100A.push(time);
				data_1100A.push(15);	
				var time = " 2017-09-28";
				date_1100A.push(time);
				data_1100A.push(34);	
				var time = " 2017-09-29";
				date_1100A.push(time);
				data_1100A.push(4);	
				var time = " 2017-09-30";
				date_1100A.push(time);
				data_1100A.push(26);	
				var time = " 2017-10-01";
				date_1100A.push(time);
				data_1100A.push(9);	
				var time = " 2017-10-02";
				date_1100A.push(time);
				data_1100A.push(28);	
				var time = " 2017-10-03";
				date_1100A.push(time);
				data_1100A.push(42);	
				var time = " 2017-10-04";
				date_1100A.push(time);
				data_1100A.push(8);	
				var time = " 2017-10-05";
				date_1100A.push(time);
					var data_1102A=[];
					var date_1102A=[];
				data_1102A.push(22);	
				var time = " 2017-09-05";
				date_1102A.push(time);
				data_1102A.push(22);	
				var time = " 2017-09-06";
				date_1102A.push(time);
				data_1102A.push(29);	
				var time = " 2017-09-07";
				date_1102A.push(time);
				data_1102A.push(40);	
				var time = " 2017-09-08";
				date_1102A.push(time);
				data_1102A.push(23);	
				var time = " 2017-09-09";
				date_1102A.push(time);
				data_1102A.push(47);	
				var time = " 2017-09-10";
				date_1102A.push(time);
				data_1102A.push(25);	
				var time = " 2017-09-11";
				date_1102A.push(time);
				data_1102A.push(6);	
				var time = " 2017-09-12";
				date_1102A.push(time);
				data_1102A.push(19);	
				var time = " 2017-09-13";
				date_1102A.push(time);
				data_1102A.push(18);	
				var time = " 2017-09-14";
				date_1102A.push(time);
				data_1102A.push(27);	
				var time = " 2017-09-15";
				date_1102A.push(time);
				data_1102A.push(26);	
				var time = " 2017-09-16";
				date_1102A.push(time);
				data_1102A.push(17);	
				var time = " 2017-09-17";
				date_1102A.push(time);
				data_1102A.push(29);	
				var time = " 2017-09-18";
				date_1102A.push(time);
				data_1102A.push(10);	
				var time = " 2017-09-19";
				date_1102A.push(time);
				data_1102A.push(29);	
				var time = " 2017-09-20";
				date_1102A.push(time);
				data_1102A.push(27);	
				var time = " 2017-09-21";
				date_1102A.push(time);
				data_1102A.push(19);	
				var time = " 2017-09-22";
				date_1102A.push(time);
				data_1102A.push(22);	
				var time = " 2017-09-23";
				date_1102A.push(time);
				data_1102A.push(15);	
				var time = " 2017-09-24";
				date_1102A.push(time);
				data_1102A.push(31);	
				var time = " 2017-09-25";
				date_1102A.push(time);
				data_1102A.push(25);	
				var time = " 2017-09-26";
				date_1102A.push(time);
				data_1102A.push(10);	
				var time = " 2017-09-27";
				date_1102A.push(time);
				data_1102A.push(11);	
				var time = " 2017-09-28";
				date_1102A.push(time);
				data_1102A.push(17);	
				var time = " 2017-09-29";
				date_1102A.push(time);
					
				var time = " 2017-09-30";
				date_1102A.push(time);
				data_1102A.push(21);	
				var time = " 2017-10-01";
				date_1102A.push(time);
				data_1102A.push(7);	
				var time = " 2017-10-02";
				date_1102A.push(time);
				data_1102A.push(14);	
				var time = " 2017-10-03";
				date_1102A.push(time);
				
				var time = " 2017-10-04";
				date_1102A.push(time);
				data_1102A.push(38);	
				var time = " 2017-10-05";
				date_1102A.push(time);
					var data_1103A=[];
					var date_1103A=[];
				data_1103A.push(31);	
				var time = " 2017-09-05";
				date_1103A.push(time);
				data_1103A.push(28);	
				var time = " 2017-09-06";
				date_1103A.push(time);
				
				var time = " 2017-09-07";
				date_1103A.push(time);
				data_1103A.push(44);	
				var time = " 2017-09-08";
				date_1103A.push(time);
				data_1103A.push(27);	
				var time = " 2017-09-09";
				date_1103A.push(time);
					
				var time = " 2017-09-10";
				date_1103A.push(time);
				data_1103A.push(14);	
				var time = " 2017-09-11";
				date_1103A.push(time);
				data_1103A.push(33);	
				var time = " 2017-09-12";
				date_1103A.push(time);
				data_1103A.push(12);	
				var time = " 2017-09-13";
				date_1103A.push(time);
				data_1103A.push(24);	
				var time = " 2017-09-14";
				date_1103A.push(time);
					
				var time = " 2017-09-15";
				date_1103A.push(time);
				data_1103A.push(31);	
				var time = " 2017-09-16";
				date_1103A.push(time);
				data_1103A.push(14);	
				var time = " 2017-09-17";
				date_1103A.push(time);
				data_1103A.push(29);	
				var time = " 2017-09-18";
				date_1103A.push(time);
				data_1103A.push(16);	
				var time = " 2017-09-19";
				date_1103A.push(time);
				data_1103A.push(18);	
				var time = " 2017-09-20";
				date_1103A.push(time);
				data_1103A.push(21);	
				var time = " 2017-09-21";
				date_1103A.push(time);
				data_1103A.push(26);	
				var time = " 2017-09-22";
				date_1103A.push(time);
				data_1103A.push(20);	
				var time = " 2017-09-23";
				date_1103A.push(time);
				data_1103A.push(18);	
				var time = " 2017-09-24";
				date_1103A.push(time);
				data_1103A.push(43);	
				var time = " 2017-09-25";
				date_1103A.push(time);
				data_1103A.push(22);	
				var time = " 2017-09-26";
				date_1103A.push(time);
				data_1103A.push(22);	
				var time = " 2017-09-27";
				date_1103A.push(time);
				data_1103A.push(15);	
				var time = " 2017-09-28";
				date_1103A.push(time);
				data_1103A.push(24);	
				var time = " 2017-09-29";
				date_1103A.push(time);
					
				var time = " 2017-09-30";
				date_1103A.push(time);
				data_1103A.push(15);	
				var time = " 2017-10-01";
				date_1103A.push(time);
				data_1103A.push(11);	
				var time = " 2017-10-02";
				date_1103A.push(time);
				data_1103A.push(26);	
				var time = " 2017-10-03";
				date_1103A.push(time);
				
				var time = " 2017-10-04";
				date_1103A.push(time);
				data_1103A.push(33);	
				var time = " 2017-10-05";
				date_1103A.push(time);
					var data_1104A=[];
					var date_1104A=[];
					
				var time = " 2017-09-05";
				date_1104A.push(time);
				data_1104A.push(40);	
				var time = " 2017-09-06";
				date_1104A.push(time);
				data_1104A.push(42);	
				var time = " 2017-09-07";
				date_1104A.push(time);
					
				var time = " 2017-09-08";
				date_1104A.push(time);
				data_1104A.push(30);	
				var time = " 2017-09-09";
				date_1104A.push(time);
				data_1104A.push(52);	
				var time = " 2017-09-10";
				date_1104A.push(time);
				data_1104A.push(17);	
				var time = " 2017-09-11";
				date_1104A.push(time);
				data_1104A.push(12);	
				var time = " 2017-09-12";
				date_1104A.push(time);
				data_1104A.push(28);	
				var time = " 2017-09-13";
				date_1104A.push(time);
				data_1104A.push(26);	
				var time = " 2017-09-14";
				date_1104A.push(time);
				data_1104A.push(49);	
				var time = " 2017-09-15";
				date_1104A.push(time);
				data_1104A.push(12);	
				var time = " 2017-09-16";
				date_1104A.push(time);
				data_1104A.push(24);	
				var time = " 2017-09-17";
				date_1104A.push(time);
				data_1104A.push(38);	
				var time = " 2017-09-18";
				date_1104A.push(time);
				data_1104A.push(27);	
				var time = " 2017-09-19";
				date_1104A.push(time);
				data_1104A.push(20);	
				var time = " 2017-09-20";
				date_1104A.push(time);
				data_1104A.push(29);	
				var time = " 2017-09-21";
				date_1104A.push(time);
				data_1104A.push(39);	
				var time = " 2017-09-22";
				date_1104A.push(time);
				data_1104A.push(25);	
				var time = " 2017-09-23";
				date_1104A.push(time);
				data_1104A.push(20);	
				var time = " 2017-09-24";
				date_1104A.push(time);
					
				var time = " 2017-09-25";
				date_1104A.push(time);
				data_1104A.push(35);	
				var time = " 2017-09-26";
				date_1104A.push(time);
				data_1104A.push(17);	
				var time = " 2017-09-27";
				date_1104A.push(time);
				data_1104A.push(14);	
				var time = " 2017-09-28";
				date_1104A.push(time);
				data_1104A.push(29);	
				var time = " 2017-09-29";
				date_1104A.push(time);
				
				var time = " 2017-09-30";
				date_1104A.push(time);
				data_1104A.push(21);	
				var time = " 2017-10-01";
				date_1104A.push(time);
				data_1104A.push(9);	
				var time = " 2017-10-02";
				date_1104A.push(time);
				data_1104A.push(22);	
				var time = " 2017-10-03";
				date_1104A.push(time);
				data_1104A.push(16);	
				var time = " 2017-10-04";
				date_1104A.push(time);
				data_1104A.push(11);	
				var time = " 2017-10-05";
				date_1104A.push(time);
					var data_1108A=[];
					var date_1108A=[];
				data_1108A.push(16);	
				var time = " 2017-09-05";
				date_1108A.push(time);
				data_1108A.push(6);	
				var time = " 2017-09-06";
				date_1108A.push(time);
				data_1108A.push(8);	
				var time = " 2017-09-07";
				date_1108A.push(time);
				data_1108A.push(9);	
				var time = " 2017-09-08";
				date_1108A.push(time);
				data_1108A.push(2);	
				var time = " 2017-09-09";
				date_1108A.push(time);
				data_1108A.push(3);	
				var time = " 2017-09-10";
				date_1108A.push(time);
				data_1108A.push(18);	
				var time = " 2017-09-11";
				date_1108A.push(time);
				data_1108A.push(16);	
				var time = " 2017-09-12";
				date_1108A.push(time);
				data_1108A.push(31);	
				var time = " 2017-09-13";
				date_1108A.push(time);
				data_1108A.push(34);	
				var time = " 2017-09-14";
				date_1108A.push(time);
				data_1108A.push(4);	
				var time = " 2017-09-15";
				date_1108A.push(time);
				data_1108A.push(5);	
				var time = " 2017-09-16";
				date_1108A.push(time);
				data_1108A.push(25);	
				var time = " 2017-09-17";
				date_1108A.push(time);
				data_1108A.push(4);	
				var time = " 2017-09-18";
				date_1108A.push(time);
				data_1108A.push(25);	
				var time = " 2017-09-19";
				date_1108A.push(time);
				data_1108A.push(19);	
				var time = " 2017-09-20";
				date_1108A.push(time);
				data_1108A.push(28);	
				var time = " 2017-09-21";
				date_1108A.push(time);
				data_1108A.push(5);	
				var time = " 2017-09-22";
				date_1108A.push(time);
				data_1108A.push(26);	
				var time = " 2017-09-23";
				date_1108A.push(time);
				data_1108A.push(17);	
				var time = " 2017-09-24";
				date_1108A.push(time);
				data_1108A.push(5);	
				var time = " 2017-09-25";
				date_1108A.push(time);
				data_1108A.push(26);	
				var time = " 2017-09-26";
				date_1108A.push(time);
				data_1108A.push(17);	
				var time = " 2017-09-27";
				date_1108A.push(time);
				data_1108A.push(15);	
				var time = " 2017-09-28";
				date_1108A.push(time);
				data_1108A.push(27);	
				var time = " 2017-09-29";
				date_1108A.push(time);
				data_1108A.push(7);	
				var time = " 2017-09-30";
				date_1108A.push(time);
				data_1108A.push(20);	
				var time = " 2017-10-01";
				date_1108A.push(time);
				data_1108A.push(11);	
				var time = " 2017-10-02";
				date_1108A.push(time);
				data_1108A.push(18);	
				var time = " 2017-10-03";
				date_1108A.push(time);
				data_1108A.push(3);	
				var time = " 2017-10-04";
				date_1108A.push(time);
				data_1108A.push(5);	
				var time = " 2017-10-05";
				date_1108A.push(time);
					var data_1098A=[];
					var date_1098A=[];
				data_1098A.push(20);	
				var time = " 2017-09-05";
				date_1098A.push(time);
				data_1098A.push(16);	
				var time = " 2017-09-06";
				date_1098A.push(time);
				data_1098A.push(21);	
				var time = " 2017-09-07";
				date_1098A.push(time);
				data_1098A.push(9);	
				var time = " 2017-09-08";
				date_1098A.push(time);
				data_1098A.push(28);	
				var time = " 2017-09-09";
				date_1098A.push(time);
				data_1098A.push(8);	
				var time = " 2017-09-10";
				date_1098A.push(time);
				data_1098A.push(15);	
				var time = " 2017-09-11";
				date_1098A.push(time);
				data_1098A.push(6);	
				var time = " 2017-09-12";
				date_1098A.push(time);
				data_1098A.push(13);	
				var time = " 2017-09-13";
				date_1098A.push(time);
				data_1098A.push(11);	
				var time = " 2017-09-14";
				date_1098A.push(time);
				data_1098A.push(20);	
				var time = " 2017-09-15";
				date_1098A.push(time);
				data_1098A.push(24);	
				var time = " 2017-09-16";
				date_1098A.push(time);
				data_1098A.push(12);	
				var time = " 2017-09-17";
				date_1098A.push(time);
				data_1098A.push(25);	
				var time = " 2017-09-18";
				date_1098A.push(time);
				data_1098A.push(15);	
				var time = " 2017-09-19";
				date_1098A.push(time);
				data_1098A.push(20);	
				var time = " 2017-09-20";
				date_1098A.push(time);
				data_1098A.push(18);	
				var time = " 2017-09-21";
				date_1098A.push(time);
				data_1098A.push(19);	
				var time = " 2017-09-22";
				date_1098A.push(time);
				data_1098A.push(17);	
				var time = " 2017-09-23";
				date_1098A.push(time);
				data_1098A.push(12);	
				var time = " 2017-09-24";
				date_1098A.push(time);
				data_1098A.push(23);	
				var time = " 2017-09-25";
				date_1098A.push(time);
				data_1098A.push(21);	
				var time = " 2017-09-26";
				date_1098A.push(time);
				data_1098A.push(8);	
				var time = " 2017-09-27";
				date_1098A.push(time);
				data_1098A.push(9);	
				var time = " 2017-09-28";
				date_1098A.push(time);
				data_1098A.push(18);	
				var time = " 2017-09-29";
				date_1098A.push(time);
				data_1098A.push(4);	
				var time = " 2017-09-30";
				date_1098A.push(time);
				data_1098A.push(16);	
				var time = " 2017-10-01";
				date_1098A.push(time);
				data_1098A.push(7);	
				var time = " 2017-10-02";
				date_1098A.push(time);
				data_1098A.push(14);	
				var time = " 2017-10-03";
				date_1098A.push(time);
				data_1098A.push(30);	
				var time = " 2017-10-04";
				date_1098A.push(time);
				data_1098A.push(9);	
				var time = " 2017-10-05";
				date_1098A.push(time);
</script>

<div class="popupLayer" style="position: absolute; z-index: 2; width: 280px; height: 232px; display: none;"><div id="blk3" class="blk" style="opacity: 1;">
				            <div class="head"><div class="head-right"></div></div>
				            <div class="main">
				            	<a href="javascript:void(0)" id="close3" class="closeBtn">关闭</a>
				                <ul>
				                		 <li><a href="javascript:void(0);" onclick="changePoint('0')">全部监测点</a></li>
				                   		 <li><a href="javascript:void(0);" onclick="changePoint('1105A')">小河沿</a></li>
				                   		 <li><a href="javascript:void(0);" onclick="changePoint('1106A')">太原街</a></li>
				                   		 <li><a href="javascript:void(0);" onclick="changePoint('1099A')">浑南二</a></li>
				                   		 <li><a href="javascript:void(0);" onclick="changePoint('1100A')">东软</a></li>
				                   		 <li><a href="javascript:void(0);" onclick="changePoint('1102A')">炮兵学院</a></li>
				                   		 <li><a href="javascript:void(0);" onclick="changePoint('1103A')">北陵</a></li>
				                   		 <li><a href="javascript:void(0);" onclick="changePoint('1104A')">文艺路</a></li>
				                   		 <li><a href="javascript:void(0);" onclick="changePoint('1108A')">辽大</a></li>
				                   		 <li><a href="javascript:void(0);" onclick="changePoint('1098A')">辉山</a></li>
				                  
				                </ul>
				            </div>
				            <div class="foot"><div class="foot-right"></div>
				            </div>
       				 </div><iframe border="0" style="position: absolute; z-index: -1; left: 0px; top: 0px; opacity: 0; width: 280px; height: 232px;" frameborder="0"></iframe></div></body></html>