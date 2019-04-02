<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="数据库模板.Database"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<title>注册操作</title>
  </head>

  <body>
 	<%
		request.setCharacterEncoding("UTF-8");
		String name=request.getParameter("name");
		String psw=request.getParameter("psw");
		String psw1=request.getParameter("psw1");
		if("".equals(name)||"".equals(psw)||"".equals(psw1)){
	 %>
	 	<script type="text/javascript">
	 		alert("用户名或密码不能为空！");
	 	</script>
	 	<jsp:include page="Register1.jsp"></jsp:include>
	 <%}else if(!psw.equals(psw1)){ %> 
	 	<script type="text/javascript">
	 		alert("两次密码输入不一致！");
	 	</script>
	 	<jsp:include page="Register1.jsp"></jsp:include>	 
	 <%}else{
	 	Connection con=Database.getConnection();
	 	String sql1="select * from user where name='"+name+"'";
	 	PreparedStatement p1=con.prepareStatement(sql1);
	 	ResultSet rs=p1.executeQuery();	
	 	if(rs.next()){
	 %>
		 	<script type="text/javascript">
		 		alert("用户名已存在！");
		 	</script>
		 	<jsp:include page="Register1.jsp"></jsp:include>
	 <%}else{
	  		String sql="Insert into user(name,psw) values(?,?)";
	  		PreparedStatement p=con.prepareStatement(sql);
	  		p.setString(1, request.getParameter("name"));
	  		p.setString(2, request.getParameter("psw"));	 		
			int n=p.executeUpdate();
	  		if(n==1){
  	%>
	  		<script type="text/javascript">
	  			alert("数据插入成功！");
	  		</script>
	  		<jsp:include page="Login1.jsp"></jsp:include>
  	<% 
	  		}else{
  	%> 
	  		<script type="text/javascript">
	  			alert("数据插入失败！");
	  		</script>
	  		<jsp:include page="Register1.jsp"></jsp:include>
  	<%
	  		}
	  		Database.closeAll(con, p, rs);
		}	 			 
	 		Database.closeAll(con, p1, rs);
	 	}
	 %>
  </body>
</html>
