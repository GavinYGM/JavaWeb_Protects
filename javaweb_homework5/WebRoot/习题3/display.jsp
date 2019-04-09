<%@page import="vo.User"%>
<%@page import="dao.UserDao"%>
<%@page import="dbc.JdbcUtil"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<title>显示所有数据库记录</title>
	
  </head>
  <style>
  	div.divtable{
  		width: 60%;
  		margin: 10px 20%;
  	}
  </style>
  <body>
	<%
		UserDao uDao=new UserDao();
		List<User> list=new ArrayList<User>();
		list=uDao.QueryAll();
		request.setAttribute("list",list);
	 %>
	 <div class="divtable">
    	   <table class="table table-bordered success table-striped">
    	   <div class="alert alert-success" role="alert" style="font-size: 17px;">显示所有数据库记录</div>
			  <thead>
			     <th>用户号</th>
			     <th>姓名</th>
			     <th>性别</th>
			  </thead>
			  <tbody>
				<c:forEach items="${list}" var="li">
				    <tr>
						<td><c:out value="${li.userid }"/></td>
				        <td><c:out value="${li.username}" /></td>
				        <td><c:out value="${li.sex}" /></td>
				    </tr>
				</c:forEach>			  
			  </tbody>	
	 </div>
  </body>
</html>
