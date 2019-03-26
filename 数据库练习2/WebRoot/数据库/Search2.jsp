<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<title>查找显示</title>
    <link rel="stylesheet" href="../static/bootstrap.min.css">
    <script type="text/javascript" src="../static/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="../static/bootstrap.min.js"></script>
  </head>
  
  <body>
    <%
    	request.setCharacterEncoding("UTF-8");
    	Class.forName("com.mysql.jdbc.Driver");
		String url1="jdbc:mysql://localhost:3306/lianxi";
		String url2="?user=root&password=admin";
		String url3="&useUnicode=true&characterEncoding=UTF-8";
		String url=url1+url2+url3;
		Connection con=DriverManager.getConnection(url);
    	String name=request.getParameter("name");
    	String sql="select * from book where name=?";
    	PreparedStatement p=con.prepareStatement(sql);
    	p.setString(1, name);
    	ResultSet rs=p.executeQuery();
    %>
    	<style>
    		div.div_table{
    			margin: 20px 150px;
    		}
    	</style>
<jsp:include page="Main.jsp"></jsp:include>
    	<div class="div_table">
    	   <table class="table table-bordered success">
			  <thead>
			     <th>图书号</th>
			     <th>图书名</th>
			     <th>作者</th>
			     <th>价格</th>
			     <th>备注</th>
			  </thead>
			  <tbody>
			  <%
			  		if(rs.next()){
			  %>
			  		<tr>
			  			<td><%=rs.getString("num") %></td>
			  			<td><%=rs.getString("name") %></td>
			  			<td><%=rs.getString("author") %></td>
			  			<td><%=rs.getString("price") %></td>
			  			<td><%=rs.getString("appendix") %></td>
			  		</tr>
			  <%
			  		}else{
			  %>
			  		<script>
			  			alert("您要查找的图书不存在！！！");
			  		</script>
			  <% 
			  		}
			  		if(rs!=null) rs.close();
			  		if(p!=null) p.close();
			  		if(con!=null) con.close();
     		  %>
			  </tbody>
			