<%@page import="vo.User"%>
<%@page import="dao.UserDao"%>
<%@page import="dbc.JdbcUtil"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<title>删除数据库记录</title>
  </head>
  
  <body>
	<jsp:useBean id="user" class="vo.User" scope="request"/>
	<jsp:setProperty property="*" name="user"/>
	<%
		UserDao uDao=new UserDao();
		uDao.delete(user);
	 %>	
	<jsp:include page="Main.jsp"></jsp:include>	
	<jsp:include page="display.jsp"></jsp:include>
  </body>
</html>
