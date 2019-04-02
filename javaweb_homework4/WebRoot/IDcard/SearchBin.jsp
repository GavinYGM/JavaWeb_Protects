<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="数据库模板.Database"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<title>浏览回收站</title>
  </head>
  <jsp:include page="Main.jsp"></jsp:include>
 	<style>
 		div.div_table{
 			margin: 20px 160px;
 		}
 	</style>
  <body>
    <%
    	request.setCharacterEncoding("UTF-8");
		Connection con=Database.getConnection();
    	String sql="select * from card1";
    	PreparedStatement p=con.prepareStatement(sql);
    	ResultSet rs=p.executeQuery();
    %>
    	<div class="div_table">
    	   <table class="table table-bordered success">
			  <thead>
			     <th>经营业务</th>
			     <th>姓名</th>
			     <th>电话</th>
			     <th>QQ</th>
			     <th>地址</th>
			  </thead>
			  <tbody>
			  <%
			  		while(rs.next()){
			  %>
			  		<tr class="info">
			  			<td><%=rs.getString("job1") %></td>
			  			<td><%=rs.getString("name1") %></td>
			  			<td><%=rs.getString("tel1") %></td>
			  			<td><%=rs.getString("qq1") %></td>
			  			<td><%=rs.getString("address1") %></td>
			  		</tr>
			  <%		  			
			  		}		
					Database.closeAll(con, p, rs);
     		  %>
			  </tbody>
  </body>
</html>
