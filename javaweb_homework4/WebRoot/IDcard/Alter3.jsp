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
	<title>修改数据</title>
  </head>
  
  <body>
	<%
		request.setCharacterEncoding("UTF-8");
		Connection con=Database.getConnection();
    	String name=(String)session.getAttribute("name");
  		String sql="update card set job=?,name=?,tel=?,qq=?,address=? where name='"+name+"'";
  		PreparedStatement p=con.prepareStatement(sql);
  		p.setString(1, request.getParameter("job"));
  		p.setString(2, request.getParameter("name"));
  		p.setString(3, request.getParameter("tel"));
  		p.setString(4, request.getParameter("qq"));
  		p.setString(5, request.getParameter("address"));
  		if(request.getParameter("name").equals("")){		
	 %>
  		<script type="text/javascript">
  			alert("姓名不能为空！");
  		</script>
  		<jsp:include page="Alter1.jsp"></jsp:include>
  	<%   		
  		}else{
	    	int n=p.executeUpdate();
	  		if(n==1){
	 %>
	  		<script type="text/javascript">
	  			alert("数据修改成功！");
	  		</script>
	 <% 
	  		}else{
	  %> 
	  		<script type="text/javascript">
	  			alert("数据修改失败！");
	  		</script>
  	 <%
	  		}
  		}
  	 %>
<jsp:include page="Main.jsp"></jsp:include>
  </body>
</html>
