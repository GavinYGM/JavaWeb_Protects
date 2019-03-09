<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <link rel="stylesheet" href="<%=basePath%>static/bootstrap.min.css">
    <script type="text/javascript" src="<%=basePath %>static/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="<%=basePath %>static/bootstrap.min.js"></script>
  </head>
 <style>
 	div.div1{
 		border: 1px solid black;
 		border-radius: 10px;
 		padding: 20px;
 		width: 400px;
 		margin: 100px;
 		float: left;
 	}
 	div.div2{
 		float: right;
 		font-size: 20px;
 	}
 </style>
  <body>
  <div class="div1">
    <div class="div2">
  		<span class="text-primary">请选择一项并点击确定按钮，</span>
  		<br>
  		<span class="text-primary">会自动跳转到课程解释！！</span>
  	</div>
    <form action="pages_jump.jsp" method="post">
	  	<div class="btn-group" data-toggle="buttons">
			<label class="btn btn-default">
			  	<input type="radio" name="items" value="a">java
			</label><br><br>
			<label class="btn btn-default">
			  	<input type="radio" name="items" value="b">c++
			</label><br><br>
			<label class="btn btn-default">
			  	<input type="radio" name="items" value="c">bootstrap
			</label><br><br>
		</div>
		<br>
		<br>
		<input type="submit" value="确认" class="btn btn-primary"> 
  	</form>
  </div>

	<%
	String string=request.getParameter("a");
	
	if("a".equals(string)){
	%>
	<jsp:forward page="ja.jsp"></jsp:forward>
	<%}else if("b".equals(string)){ %>
	<jsp:forward page="cpp.jsp"></jsp:forward>
	<%}else if("c".equals(string)){ %>	 
 	<jsp:forward page="bs.jsp"></jsp:forward>
 	<%} %>
 	
 	
  </body>
</html>
