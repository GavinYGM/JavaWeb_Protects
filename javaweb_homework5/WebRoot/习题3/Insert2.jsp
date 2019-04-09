<%@page import="vo.User"%>
<%@page import="dao.UserDao"%>
<%@page import="dbc.JdbcUtil"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<title>插入数据库</title>
  </head>
  <body>
  	<% request.setCharacterEncoding("UTF-8"); %>
	<jsp:useBean id="user" class="vo.User" scope="request"/>
	<jsp:setProperty property="*" name="user"/>
	<%
		UserDao uDao=new UserDao();
		uDao.add(user);
	 %>	
	<jsp:include page="Main.jsp"></jsp:include>
	<jsp:include page="display.jsp"></jsp:include>
  </body>
</html>
