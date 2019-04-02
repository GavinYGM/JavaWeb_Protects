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
	<title>登录验证</title>
  </head>
  <body>
	<%
		request.setCharacterEncoding("UTF-8");
		String name=request.getParameter("name");
		String psw=request.getParameter("psw");
		if("".equals(name)||"".equals(psw)){
	 %>
	 	<script type="text/javascript">
	 		alert("用户名或密码不能为空！");
	 	</script>
	 	<jsp:include page="Login1.jsp"></jsp:include>
	 <%}else{
	 	Connection con=Database.getConnection();
	 	String sql="select * from user where name=?and psw=?";
	 	PreparedStatement p=con.prepareStatement(sql);
		p.setString(1, name);
		p.setString(2, psw);
		ResultSet rs=p.executeQuery();
		if(rs.next()){
	%>
		<jsp:forward page="Main.jsp"></jsp:forward>
	<%
		}else{
	 %>
	 	<script type="text/javascript">
	 		alert("用户名或密码错误！");
	 	</script>
	 	<jsp:include page="Login1.jsp"></jsp:include>
	 <%			
		}
	 }
	 
	 %>
	 
  </body>
</html>
