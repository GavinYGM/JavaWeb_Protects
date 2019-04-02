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
	<title>添加数据</title>
  </head>
  
  <body>
  	<%
		request.setCharacterEncoding("UTF-8");
		String job=request.getParameter("job");
		String name=request.getParameter("name");  	
		String tel=request.getParameter("tel");
		String qq=request.getParameter("qq");
		String address=request.getParameter("address");
		if("".equals(name)){
  	 %>
	 	<script type="text/javascript">
	 		alert("用户名不能为空！");
	 	</script>
	 	<jsp:include page="Add1.jsp"></jsp:include>
	 <%}else{
	 	Connection con=Database.getConnection();
	 	String sql1="select * from card where name='"+name+"'";
	 	PreparedStatement p1=con.prepareStatement(sql1);
	 	ResultSet rs=p1.executeQuery();	
	 	if(rs.next()){
	 %>
		 	<script type="text/javascript">
		 		alert("用户名已存在！");
		 	</script>
		 	<jsp:include page="Add1.jsp"></jsp:include>
	 <%}else{
	  		String sql="Insert into card(job,name,tel,qq,address) values(?,?,?,?,?)";
	  		PreparedStatement p=con.prepareStatement(sql);
	  		p.setString(1, request.getParameter("job"));
	  		p.setString(2, request.getParameter("name"));	
	  		p.setString(3, request.getParameter("tel")); 		
	  		p.setString(4, request.getParameter("qq"));
	  		p.setString(5, request.getParameter("address"));
			int n=p.executeUpdate();
	  		if(n==1){
  	%>
	  		<script type="text/javascript">
	  			alert("数据插入成功！");
	  		</script>
	  		<jsp:include page="Main.jsp"></jsp:include>
  	<% 
	  		}else{
  	%> 
	  		<script type="text/javascript">
	  			alert("数据插入失败！");
	  		</script>
	  		<jsp:include page="Add1.jsp"></jsp:include>
  	<%
	  		}
	  		Database.closeAll(con, p, rs);
		}	 			 
	 		Database.closeAll(con, p1, rs);
	 	}
	 %>
  </body>
</html>
