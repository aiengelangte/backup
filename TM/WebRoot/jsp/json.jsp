<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'json.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	 <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
  </head>
  <script type="text/javascript">

/*   $(function(){    
	  alert("dss"); 
	  init01();
  }); */
  
 
  /* $.post("adress.action", {method:json
	}, function(data) {

	alert(data);	
	}); */
  $(function(){
	alert("sss");
	  init01();
	 
});

function init01(){
	 $.get("adress.action", {method:"json"
			/* username : $("#username").val(),
			password : $("#password").val() */
		}, function(data) {
	
		alert(data[0].name);
		alert(data[0].value);	
		/* var jsonObj =  JSON.parse(data); */
		var data1=[];
		
		alert(data1);
		var k;
		for (k in data) {
			data1.push("name:"+data[k].name);
			data1.push("value:"+data[k].value);
		}

		alert(data1);
		});
};	
  </script>
  <body>
    This is my JSP page. <br>
    
  </body>
</html>
