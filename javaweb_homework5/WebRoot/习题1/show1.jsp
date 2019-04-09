<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<title>利用JavaBean输出圆的面积和半径</title>
  </head>
  
  <body>
 	<jsp:useBean id="c" class="beans.Circle" scope="request"/>
 	<jsp:setProperty property="*" name="c"/>
 	<h3>圆的面积为：</h1>
 	<%=c.circleArea() %><br>
 	<h3>圆的半径为：</h3>
 	<%=c.circleLength() %>
  </body>
</html>
