<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<title>删除</title>
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
  		margin-left: 400px;
  		margin-top: 100px;
  	}
	div.div1{
		margin:10px;
		margin-bottom:20px;
		width: 350px;
	}
	span.span1{
		font-size: 20px;
		 margin-left: 5px;
		 margin-top: 20px;
		 color: gray;
	}
	div.div2{
		margin:0 70px;
	}
  </style>
  <body>
  	<form action="Del2.jsp" method="post">
  	<div class="maindiv">
		<div class="input-group div1">
			  <span class="input-group-addon" id="basic-addon1">图书名</span>
			  <input type="text" class="form-control" placeholder="图书名" aria-describedby="basic-addon1" name="name" value="">
		</div>
		<div class="div2">
			<input type="submit" value="删除" class="btn btn-primary btn-block" style="font-size: 17px;" >
		</div>  	
  	</div>
  	</form>
  </body>
</html>

