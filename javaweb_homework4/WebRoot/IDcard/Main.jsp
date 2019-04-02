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
   		background-color: rgba(127,255,212,0.1);
  		border: 1px solid #ECFFFF; 
  		border-radius: 20px;
  		margin-bottom: 15px; 	
  	}
  	div.main_div1{
  		border:1px solid gray;
  		border-radius:35px;
  		font-size:36px;
  		background-image: linear-gradient(to bottom,white,darkcyan,white);
  		padding:10px;
  		margin-bottom: 20px;
  	}
  	div.main_div2{
  		padding-left: 50px;
  	}
  	ul li{
  		font-size: 17px;
  	}
  </style>
  <body>
  <div class="main_div">
  	<div class="main_div1" align="center">
  		网上名片管理系统
  	</div>
  	<div class="main_div2">
		<div class="btn-group">
		    <button type="button" class="btn btn-lg btn-primary dropdown-toggle "  data-toggle="dropdown">
		     名片管理 
		      <span class="caret"></span>          
		    </button>    
		    <ul class="dropdown-menu" role="menu">
		      <li>
		         <a href="Add1.jsp">增加名片</a>             
		      </li>
		      <li role="presentation">
		         <a href="Alter1.jsp">修改名片</a>              
		      </li>
		      <li role="presentation">
		         <a href="Search1.jsp">查询名片</a>           
		      </li>
		      <li role="presentation">
		         <a href="Del1.jsp">删除名片</a>             
		      </li>
		    </ul>
		</div><!-- btn-group --> 
		<div class="btn-group">
		    <button type="button" class="btn btn-lg btn-info dropdown-toggle "  data-toggle="dropdown">
		     回收站管理 
		      <span class="caret"></span>          
		    </button>
		    <ul class="dropdown-menu" role="menu">
		      <li>
		         <a href="Restore1.jsp">还原</a>             
		      </li>
		      <li role="presentation">
		         <a href="Remove1.jsp">彻底删除</a>              
		      </li>
		      <li role="presentation">
		         <a href="SearchBin.jsp">浏览/查询</a>           
		      </li>
		    </ul>
		</div> <!-- btn-group2 --> 
  	</div><!-- main_div2 -->
  </div><!-- main_div -->
  </body>
</html>
