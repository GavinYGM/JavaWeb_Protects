<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>注册界面</title>
    <link rel="stylesheet" href="../static/bootstrap.min.css">
    <script type="text/javascript" src="../static/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="../static/bootstrap.min.js"></script>
  </head>
  <style>
	div.login_main{
		position:relative;
  	  	width: 80%;
  		font-size: 25px;
  		margin: 0 10%;	
	}
  	div.header{
  		border:1px solid gray;
  		border-radius:35px;
  		font-size:36px;
  		background-image: linear-gradient(to bottom,white,darkcyan,white);
  		padding:10px;
  		margin-bottom: 20px;		
  	}
  	div.bodyer{
  		position: absolute;
  		top: 160px;
  		left:440px;
  		padding:10px;
  		border: 1px solid gray;
  		border-radius:15px;
  		width: 400px;
  		background-image: linear-gradient(to bottom,white,darkcyan,white);
  	}
	div.div1{
		margin:15px;
		width: 320px;
	}
  	div.btn1{
		margin: 0px 70px;
  		margin-top: 25px;
  		margin-bottom: 40px;
  	}
  	div.span1{
  		font-size: 16px;
  		position: absolute;
  		bottom: 10px;
  		right: 10px;
  	}
  </style>
  <body>
  	<div class="login_main">
		<div class="header" align="center">
			名片管理系统注册界面
		</div>  	
		<div class="bodyer">
			<form action="Register2.jsp" method="post">
				<div class="input-group div1">
					  <span class="input-group-addon" id="basic-addon1">用户名</span>
					  <input type="text" class="form-control" placeholder="用户名" aria-describedby="basic-addon1" name="name" value="">
				</div>
				<div class="input-group div1">
					  <span class="input-group-addon" id="basic-addon1">密&nbsp;&nbsp;&nbsp;码</span>
					  <input type="password" class="form-control" placeholder="密码" aria-describedby="basic-addon1" name="psw" value="">
				</div>	
				<div class="input-group div1">
					  <span class="input-group-addon" id="basic-addon1">确认密码</span>
					  <input type="password" class="form-control" placeholder="确认密码" aria-describedby="basic-addon1" name="psw1" value="">
				</div>	
				<div class="btn1">
					<input type="submit" value="注册" class="btn btn-block btn-primary " style="font-size: 17px;" > 				
				</div>
			</form>
		</div>
  	</div>

  </body>
</html>