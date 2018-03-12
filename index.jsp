<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Circular percentage</title>
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
    <div>环形加载百分比效果</div><br><br>
    <div class="circle">
	    <div class="pie_left"><div class="left"></div></div>
	    <div class="pie_right"><div class="right"></div></div>
	    <div class="mask"><span>0</span>%</div>
	</div>
	
  </body>
  <script type="text/javascript">
  	function imgchange(){
	    $('.circle').each(function(index, el) {
	        var num = $(this).find('span').text() * 3.6;
	        if (num<=180) {
	            $(this).find('.right').css('transform', "rotate(" + num + "deg)");
	        } else {
	            $(this).find('.right').css('transform', "rotate(180deg)");
	            $(this).find('.left').css('transform', "rotate(" + (num - 180) + "deg)");
	        };
	    });
  	}
  	var num = 0;
  	function addnum(){
		num++;
  		if(num > 100){
  			num = 0;
  			$('.left').css('transform', "rotate(0deg)");
  		}
  		$("span").text(num);
  		imgchange();
  	}
  	window.setInterval(addnum, 10);
  </script>
</html>
