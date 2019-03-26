
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
  <style>
  	div.maindiv{
  		width:400px;
  		border: 1px solid gray;
  		padding: 10px;
  		border-radius: 10px;
  		margin-left: 400px;
  		margin-top: 100px;
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
			  <span class="input-group-addon" id="basic-addon1">图书号</span>
			  <input type="text" class="form-control" placeholder="图书号" aria-describedby="basic-addon1" name="nums" value="">
		</div>
		<div class="input-group div1">
			  <span class="input-group-addon" id="basic-addon1">图书名</span>
			  <input type="text" class="form-control" placeholder="图书名" aria-describedby="basic-addon1" name="name" value="">
		</div>
		<div class="input-group div1">
			  <span class="input-group-addon" id="basic-addon1">作者</span>
			  <input type="text" class="form-control" placeholder="作者" aria-describedby="basic-addon1" name="author" value="">
		</div>
		<div class="input-group div1">
			  <span class="input-group-addon" id="basic-addon1">价格</span>
			  <input type="text" class="form-control" placeholder="价格" aria-describedby="basic-addon1" name="price" value="">
		</div>
		<span class="span1" >备注字段:</span>
		<textarea  class="form-control" style="width: 350px;height: 100px;margin-left: 10px;" name="appendix" value=""></textarea>
		<br>
		<div class="div2">
			<input type="submit" value="提交" class="btn btn-primary" style="font-size: 20px;" >
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="reset" value="重置" class="btn btn-primary" style="font-size: 20px;">
		</div>  	
  	</div>
  	</form>
  </body>
</html>

