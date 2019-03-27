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
	<title>显示</title>
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
		margin:0 70px;
	}
  </style> 
  <jsp:include page="Main.jsp"></jsp:include> 
  <body>
    <%
    	request.setCharacterEncoding("UTF-8");
    	Class.forName("com.mysql.jdbc.Driver");
		String url1="jdbc:mysql://localhost:3306/lianxi";
		String url2="?user=root&password=admin";
		String url3="&useUnicode=true&characterEncoding=UTF-8";
		String url=url1+url2+url3;
		Connection con=DriverManager.getConnection(url);
    	String name=request.getParameter("name");
    	session.setAttribute("name", name);
    	String sql="select * from book where name=?";
    	PreparedStatement p=con.prepareStatement(sql);
    	p.setString(1, name);
    	ResultSet rs=p.executeQuery();
    %>
	  <%
	  		if(rs.next()){
	  %>
  	<form action="Updata3.jsp" method="post">
  	<div class="maindiv">
		<div class="input-group div1">
			  <span class="input-group-addon" id="basic-addon1">图书号</span>
			  <input type="text" class="form-control" placeholder="图书号" aria-describedby="basic-addon1" name="nums" value="<%=rs.getString("num") %>">
		</div>
		<div class="input-group div1">
			  <span class="input-group-addon" id="basic-addon1">图书名</span>
			  <input type="text" class="form-control" placeholder="图书名" aria-describedby="basic-addon1" name="name" value="<%=rs.getString("name") %>">
		</div>
		<div class="input-group div1">
			  <span class="input-group-addon" id="basic-addon1">作者</span>
			  <input type="text" class="form-control" placeholder="作者" aria-describedby="basic-addon1" name="author" value="<%=rs.getString("author") %>">
		</div>
		<div class="input-group div1">
			  <span class="input-group-addon" id="basic-addon1">价格</span>
			  <input type="text" class="form-control" placeholder="价格" aria-describedby="basic-addon1" name="price" value="<%=rs.getString("price") %>">
		</div>
		<span class="span1" >备注字段:</span>
		<textarea  class="form-control" style="width: 350px;height: 100px;margin-left: 10px;" name="appendix" value=""><%=rs.getString("appendix") %></textarea>
		<br>
		<div class="div2">
			<input type="submit" value="修改" class="btn btn-primary btn-block" style="font-size: 17px;" >
		</div>    	
  	</div>
  	</form>	  
	  <%
	  		}else{
	  %>
	  		<script>
	  			alert("您要选择的图书不存在！！！");
	  		</script>
	  <% 
	  		}
	  		if(rs!=null) rs.close();
	  		if(p!=null) p.close();
	  		if(con!=null) con.close();
	  		  %>
  </body>
</html>

