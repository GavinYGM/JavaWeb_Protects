<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<title>output</title>
  </head>
  
  <body>
  	<%request.setCharacterEncoding("UTF-8"); %>
	<jsp:useBean id="user" class="beans.User" scope="request"/>
	<jsp:setProperty property="*" name="user"/>
	姓名：<jsp:getProperty property="name" name="user"/><br>
	性别：<jsp:getProperty property="sex" name="user"/><br>
	出生日期：<jsp:getProperty property="birth" name="user"/><br>
	民族：<jsp:getProperty property="nation" name="user"/><br>
	个人介绍：<jsp:getProperty property="ins" name="user"/>
  </body>
</html>
