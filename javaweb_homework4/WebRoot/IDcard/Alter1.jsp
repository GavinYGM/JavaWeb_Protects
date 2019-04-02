<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<title>修改界面</title>
  </head>
  <jsp:include page="Main.jsp"></jsp:include>
  <style>
  	div.Alter1_main{
  		width: 80%;
  		margin: 0 10%;
  		background-color: rgba(127,255,212,0.1);
  		border: 1px solid #ECFFFF; 
  		border-radius: 20px;
  		padding-left: 50px; 
  	}
  	div.Alter1_card{
  		border: 1px solid gray;
  		border-radius:15px;
  		width: 420px;
  		margin-left: 350px;
  		padding: 10px;
  	}
 	span.span1{
		font-size: 17px;
		 margin-left: 15px;
		 margin-top: 25px;
	}
	div.input1{
		margin:10px;
		margin-left:70px;
		margin-bottom:20px;
		width: 250px;		
	}
	div.btn1{
		margin:0 70px;	
	}
  </style>
  <body>
	<div class="Alter1_main">
	<form action="Alter2.jsp">
		<div class="Alter1_card">
	  		<span class="text-primary span1">请选择您要修改的姓名</span>
			<div class="input-group input1">
				  <span class="input-group-addon" id="basic-addon1">姓名</span>
				  <input type="text" class="form-control" placeholder="姓名" aria-describedby="basic-addon1" name="name" value="">
			</div>
			<div class="btn1">
				<input type="submit" value="选择" class="btn btn-primary btn-block" style="font-size: 17px;" >
			</div>			
		</div><!-- Alter1_card -->
	</form>
	</div><!-- Alter1_main -->
  </body>
</html>
