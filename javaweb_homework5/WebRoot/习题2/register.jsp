<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<title>register</title>
    <link rel="stylesheet" href="../static/bootstrap.min.css">
    <script type="text/javascript" src="../static/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="../static/bootstrap.min.js"></script>
  </head>
  <style>
	div.div1{
		margin:10px;
		width: 300px;
	}
	span.span1{
		font-size: 25px;
		 margin-left: 5px;
		 margin-top: 20px;
		 color: gray;
	}
	div.div2{
		margin:0 10px;
	}
  </style>
  <body>
  	<form action="output.jsp" method="post">
		<div class="input-group div1">
			  <span class="input-group-addon" id="basic-addon1">姓名</span>
			  <input type="text" class="form-control" placeholder="姓名" aria-describedby="basic-addon1" name="name" value="">
		</div>
		<div class="input-group div1">
			  <span class="input-group-addon" id="basic-addon1">性别</span>
			  <input type="text" class="form-control" placeholder="性别" aria-describedby="basic-addon1" name="sex" value="">
		</div>
		<div class="input-group div1">
			  <span class="input-group-addon" id="basic-addon1">出生年月</span>
			  <input type="text" class="form-control" placeholder="出生年月" aria-describedby="basic-addon1" name="birth" value="">
		</div>
		<div class="input-group div1">
			  <span class="input-group-addon" id="basic-addon1">民族</span>
			  <input type="text" class="form-control" placeholder="民族" aria-describedby="basic-addon1" name="nation" value="">
		</div>		
		<br>
		<span class="span1" >个人介绍:</span>
		<textarea  class="form-control" style="width: 350px;height: 100px;margin-left: 10px;" name="ins" value=""></textarea>
		<br>
		<div class="div2">
			<input type="submit" value="注册" class="btn btn-primary" style="font-size: 20px;" >
			&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="reset" value="重置" class="btn btn-primary" style="font-size: 20px;">
		</div>
  	</form>
  </body>
</html>
