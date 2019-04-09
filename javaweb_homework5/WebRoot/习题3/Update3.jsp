<%@page import="vo.User"%>
<%@page import="dao.UserDao"%>
<%@page import="dbc.JdbcUtil"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<title>修改</title>
  </head>

  <body>
  	<% request.setCharacterEncoding("UTF-8"); %>
	<jsp:useBean id="user3" class="vo.User" scope="request"/>
	<jsp:setProperty property="*" name="user3"/>
	<%
		UserDao uDao=new UserDao();
		uDao.update(user3);
	 %>	
	<jsp:include page="Main.jsp"></jsp:include>
	<jsp:include page="display.jsp"></jsp:include>
  </body>
</html>
