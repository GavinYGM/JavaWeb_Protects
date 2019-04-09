
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
	<title>添加</title>
    <link rel="stylesheet" href="../static/bootstrap.min.css">
    <script type="text/javascript" src="../static/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="../static/bootstrap.min.js"></script>
  </head>
  <jsp:include page="Main.jsp"></jsp:include>
  <style>
  	div.maindiv{
  		width:400px;
  		border: 1px solid gray;
  		padding: 10px;
  		border-radius: 10px;
  		margin-left: 580px;
  		margin-top: 50px;
  	}
	div.div1{
		margin:10px;
		width: 300px;
	}
	span.span1{
		font-size: 20px;
		 margin-left: 5px;
		 margin-top: 20px;
		 color: gray;
	}
	div.div2{
		margin:0 80px;
	}
  </style>
  <body>
  	<form action="Insert2.jsp" method="post">
  	<div class="maindiv">
		<div class="input-group div1">
			  <span class="input-group-addon" id="basic-addon1">用户号</span>
			  <input type="text" class="form-control" placeholder="用户号" aria-describedby="basic-addon1" name="userid" value="">
		</div>
		<div class="input-group div1">
			  <span class="input-group-addon" id="basic-addon1">用户名</span>
			  <input type="text" class="form-control" placeholder="用户名" aria-describedby="basic-addon1" name="username" value="">
		</div>
		<div class="input-group div1">
			  <span class="input-group-addon" id="basic-addon1">性别</span>
			  <input type="text" class="form-control" placeholder="性别" aria-describedby="basic-addon1" name="sex" value="">
		</div>
		<div class="div2">
			<input type="submit" value="提交" class="btn btn-primary" style="font-size: 20px;" >
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="reset" value="重置" class="btn btn-primary" style="font-size: 20px;">
		</div>  	
  	</div>
  	</form>
  </body>
</html>
