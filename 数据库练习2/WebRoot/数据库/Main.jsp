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
	<title>首页</title>
    <link rel="stylesheet" href="../static/bootstrap.min.css">
    <script type="text/javascript" src="../static/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="../static/bootstrap.min.js"></script>
  </head>
  <style>
  	div.main_div{
  	  	width: 80%;
  		font-size: 25px;
  		margin: 0 10%;
  	}
  	div.main_div1{
  		border:1px solid gray;
  		border-radius:10px;
  		font-size:36px;
  		background-image: linear-gradient(to bottom,white,green,white);
  		padding:10px;
  		margin-bottom: 20px;
  	}
  	div.main_div2{
  		margin-left: 100px;
  	}
  </style>
  <body>
  <div class="main_div">
  	<div class="main_div1" align="center">
  		图书信息管理系统
  	</div>
  	<div class="main_div2">
	 	<ul class="nav nav-tabs">
		  <li role="presentation"><a href="Insert1.jsp">添加</a></li>
		  <li role="presentation"><a href="Search1.jsp">查询</a></li>
		  <li role="presentation"><a href="Del1.jsp">删除</a></li>
		  <li role="presentation"><a href="Updata1.jsp">修改</a></li>
		</ul>   	
  	</div>

  </div>

  </body>
</html>
