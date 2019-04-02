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
	<title>查询数据</title>
  </head>
 	<style>
 		div.div_table{
 			margin: 20px 160px;
 		}
 	</style>
	<jsp:include page="Main.jsp"></jsp:include>
  <body>
    <%
    	request.setCharacterEncoding("UTF-8");
		Connection con=Database.getConnection();
    	String name=request.getParameter("name");
    	String sql="select * from card where name like '"+name+"%'";
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
			  		if(rs.next()){
			  %>
			  		<tr  class="info">
			  			<td><%=rs.getString("job") %></td>
			  			<td><%=rs.getString("name") %></td>
			  			<td><%=rs.getString("tel") %></td>
			  			<td><%=rs.getString("qq") %></td>
			  			<td><%=rs.getString("address") %></td>
			  		</tr>
			  <%
			  			while(rs.next()){
			  %>
			  		<tr  class="info">
			  			<td><%=rs.getString("job") %></td>
			  			<td><%=rs.getString("name") %></td>
			  			<td><%=rs.getString("tel") %></td>
			  			<td><%=rs.getString("qq") %></td>
			  			<td><%=rs.getString("address") %></td>
			  		</tr>
			  <%			  			
			  			}
			  		}else{
			  %>
			  		<script>
			  			alert("您要查找的姓氏不存在！！！");
			  		</script>
			  <% 
			  		}
					Database.closeAll(con, p, rs);
     		  %>
			  </tbody>
  </body>
</html>
