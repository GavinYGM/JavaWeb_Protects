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
	<title>彻底删除</title>
  </head>
  <body>
	<%
    	request.setCharacterEncoding("UTF-8");
		Connection con=Database.getConnection();
    	String name=request.getParameter("name");
    	String sql="delete from card1 where name1='"+name+"'";
    	PreparedStatement p=con.prepareStatement(sql);
    	int n=p.executeUpdate();
  		if(n==1){
  	%>
  		<script type="text/javascript">
  			alert("彻底删除成功！");
  		</script>
  	<% 
  		}else{
  	%> 
  		<script type="text/javascript">
  			alert("彻底删除失败！");
  		</script>
  	<%
  		}
  	 %>
  	 <jsp:include page="Main.jsp"></jsp:include>
  </body>
</html>
