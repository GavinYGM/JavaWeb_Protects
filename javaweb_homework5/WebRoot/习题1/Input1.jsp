<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<title>习题一Input</title>
  </head>
  <body>
    <form action="show1.jsp" method="post">
    	请输入圆的半径：<input type="text" name="radius" value="">
    	<input type="submit" value="提交">
    </form>
  </body>
</html>
