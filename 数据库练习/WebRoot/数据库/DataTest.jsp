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

  </head>
  
  <body>
    <%
    	Class.forName("com.mysql.jdbc.Driver");
		String url1="jdbc:mysql://localhost:3306/lianxi";
		String url2="?user=root&password=admin";
		String url3="&useUnicode=true&characterEncoding=UTF-8";
		String url=url1+url2+url3;
		Connection con=DriverManager.getConnection(url);
     %>
  </body>
</html>
