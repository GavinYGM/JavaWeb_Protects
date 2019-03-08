<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <h3><%
    	int n=Integer.parseInt(request.getParameter("num"));
    	out.print("结果:"+n*n);
    %></h3> 
    <br>
  </body>
</html>
