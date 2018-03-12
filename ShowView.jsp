<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Show View</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/ci_pro.css">
	
	<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
	<script type="text/javascript" src="js/ci_pro.js"></script>
  </head>
  
  <body>
    Circular percentage <br><br>
    <h2 align="left" style="color: blue;"><div>公司情况统计图</div></h2><br><br>
    <table align="center">
    	<tr>
    		<td style="width: 350px">
    			<div class="circle">
				    <div class="pie_left"><div class="left"></div></div>
				    <div class="pie_right"><div class="right"></div></div>
				    <div class="mask"><span>${requestScope.map.cql }</span>%</div>
				</div>
    		</td>
    		<td style="width: 350px">
    			<div class="circle">
				    <div class="pie_left"><div class="left"></div></div>
				    <div class="pie_right"><div class="right"></div></div>
				    <div class="mask"><span>${requestScope.map.nxbl }</span>%</div>
				</div>
    		</td>
    		<td style="width: 350px">
    			<div class="circle">
				    <div class="pie_left"><div class="left"></div></div>
				    <div class="pie_right"><div class="right"></div></div>
				    <div class="mask"><span>${requestScope.map.kfrsbl }</span>%</div>
				</div>
    		</td>
    	</tr>
    	<tr>
    		<td><br><br><br><br><br><br><br><br><br><br>出勤率</td>
    		<td><br><br><br><br><br><br><br><br><br><br>女性比例</td>
    		<td><br><br><br><br><br><br><br><br><br><br>开发人员比例</td>
    	</tr>
    </table>
   
	
  </body>
 
</html>
