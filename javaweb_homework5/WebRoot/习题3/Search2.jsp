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
<jsp:include page="Main.jsp"></jsp:include>
  <style>
  	div.divsearch{
  		width: 60%;
  		margin: 10px 20%;
  	}
  </style>
  <body>
  	<% request.setCharacterEncoding("UTF-8"); %>
	<jsp:useBean id="user" class="vo.User" scope="request"/>
	<jsp:setProperty property="*" name="user"/>
	<%
		UserDao uDao=new UserDao();
		User user1=uDao.findUserById(user.getUserid());
	 %>
	 
	 <div class="divsearch">
			<div class="alert alert-success" role="alert" style="font-size: 17px;">显示所查到的记录</div>
    	   <table class="table table-bordered success table-striped">
			  <thead>
			     <th>用户号</th>
			     <th>姓名</th>
			     <th>性别</th>
			  </thead>
			  <tbody>
			    <tr>
					<td><%=user1.getUserid() %></td>
			        <td><%=user1.getUsername() %></td>
			        <td><%=user1.getSex() %></td>
			    </tr>	  
			  </tbody>	
	 </div>	 	
	<jsp:include page="display.jsp"></jsp:include>
  </body>
</html>
