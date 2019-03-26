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
    <title>删除</title>
  </head>
  
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
    	String sql="delete from book where name="+name;
    	PreparedStatement p=con.prepareStatement(sql);
    	int n=p.executeUpdate();
  		if(n==1){
  	%>
  		<script type="text/javascript">
  			alert("数据删除成功！");
  		</script>
  	<% 
  		}else{
  	%> 
  		<script type="text/javascript">
  			alert("数据删除失败！");
  		</script>
  	<%
  		}
  		if(p!=null) p.close();
  		if(con!=null) con.close();
  	 %>
  	 <jsp:include page="Main.jsp"></jsp:include>
  </body>
</html>
