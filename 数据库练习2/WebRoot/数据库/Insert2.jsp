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
	<title>插入数据库</title>
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
  		String sql="Insert into book(num,name,author,price,appendix) values(?,?,?,?,?)";
  		PreparedStatement p=con.prepareStatement(sql);
  		p.setString(1, request.getParameter("nums"));
  		p.setString(2, request.getParameter("name"));
  		p.setString(3, request.getParameter("author"));
  		p.setString(4, request.getParameter("price"));
  		p.setString(5, request.getParameter("appendix"));
  		String name=request.getParameter("name");

  		if(name.equals("")){
  	%>
  		<script type="text/javascript">
  			alert("图书名不能为空！");
  		</script>
  		<jsp:include page="Insert1.jsp"></jsp:include>
  	<%     		
  		}else{
    	String s="select * from book where name="+name;
    	PreparedStatement p1=con.prepareStatement(s);
    	ResultSet rs=p1.executeQuery(); 	
  		if(rs.next()){
  		if(rs.getString("name").equals(name)){
  	%>
		  		<script type="text/javascript">
		  			alert("此图书已存在！");
		  		</script>
		  		<jsp:include page="Insert1.jsp"></jsp:include>
  	<%      } 					
  		}else{
	  		int n=p.executeUpdate();
	  		if(n==1){
  	%>
	  		<script type="text/javascript">
	  			alert("数据插入成功！");
	  		</script>
  	<% 
	  		}else{
  	%> 
	  		<script type="text/javascript">
	  			alert("数据插入失败！");
	  		</script>
  	<%
	  		}
  		}
  	}
  		
 		if(p!=null) p.close();
  		if(con!=null) con.close();
  	 %>
  	 <jsp:include page="Main.jsp"></jsp:include>
  </body>
</html>
