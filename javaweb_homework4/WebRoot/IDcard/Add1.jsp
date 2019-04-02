<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<title>名片管理界面</title>
  </head>
  <jsp:include page="Main.jsp"></jsp:include>
  <style>
  	div.Add1_main{
  		width: 80%;
  		margin: 0 10%;
  		background-color: rgba(127,255,212,0.1);
  		border: 1px solid #ECFFFF; 
  		border-radius: 20px;
  		padding-left: 50px; 
  	}
  	div.Add1_card{
  		border: 5px solid red;
  		background-color: rgba(0,0,0,0.8);
  		width: 420px;
  		height: 250px;
  		margin-left: 380px;
  	}
  	div.job{
  		width: 300px;
  		margin-top: 15px;
  		margin-left: 55px;
  		margin-bottom: 5px;
  	}
  	div.name{
  		width: 200px;
  		margin-left: 25px;
  		margin-bottom: 5px;
  	}
  	div.tel{
  		width: 200px;
  		margin-left: 180px;
  		margin-bottom: 5px;
  	}
  	div.qq{
  		width: 200px;
  		margin-left: 180px;
  		margin-bottom: 5px;
  	}
  	div.address{
  		width: 200px;
  		margin-left: 180px;
  		margin-bottom: 5px;
  	}
  	div.btn1{
  		margin: 10px 0;
  		margin-left:380px;
  		width: 420px;
  	}
  </style>
  <body>
  	<div class="Add1_main">
  	<form action="Add2.jsp">
		<div class="Add1_card">
			<div class="input-group job">
			  <span class="input-group-addon" id="basic-addon1">业务</span>
			  <input type="text" class="form-control" placeholder="业务受理" aria-describedby="basic-addon1" name="job" value="">
			</div>
			<div class="progress">
			  <div class="progress-bar progress-bar-danger progress-bar-striped"  style="width: 100%"></div>
			</div>
			<div class="input-group name">
			  <span class="input-group-addon" id="basic-addon1">姓名</span>
			  <input type="text" class="form-control" placeholder="姓名" aria-describedby="basic-addon1" name="name" value="">
			</div>
			<div class="input-group tel input-group-sm">
			  <span class="input-group-addon" id="basic-addon1">Tel</span>
			  <input type="text" class="form-control" placeholder="电话" aria-describedby="basic-addon1" name="tel" value="">
			</div>
			<div class="input-group qq input-group-sm">
			  <span class="input-group-addon" id="basic-addon1">QQ</span>
			  <input type="text" class="form-control" placeholder="QQ" aria-describedby="basic-addon1" name="qq" value="">
			</div>
			<div class="input-group address input-group-sm">
			  <span class="input-group-addon" id="basic-addon1">地址</span>
			  <input type="text" class="form-control" placeholder="地址" aria-describedby="basic-addon1" name="address" value="">
			</div>					
		</div><!-- Add1_card -->
		<div class="btn1">
			<input type="submit" value="添  加" class="btn btn-primary btn-block" style="font-size: 18px;" >
		</div> 
	</form> 
  	</div><!-- Add1_main -->
  </body>
</html>
