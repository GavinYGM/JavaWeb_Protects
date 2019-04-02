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
	<title>放入回收站</title>
  </head>
  
  <body>
	<%
    	request.setCharacterEncoding("UTF-8");
		Connection con=Database.getConnection();
    	String name=request.getParameter("name");
    	String sql="select * from card1 where name1='"+name+"'";
    	PreparedStatement p=con.prepareStatement(sql);
    	ResultSet rs=p.executeQuery();
    	if(rs.next()){
    		String sql1="Insert into card(job,name,tel,qq,address) values(?,?,?,?,?)";
	  		PreparedStatement p1=con.prepareStatement(sql1);
	  		p1.setString(1, rs.getString("job1"));
	  		p1.setString(2, rs.getString("name1"));	
	  		p1.setString(3, rs.getString("tel1")); 		
	  		p1.setString(4, rs.getString("qq1"));
	  		p1.setString(5, rs.getString("address1"));
			int n=p1.executeUpdate();
	  		if(n==1){
  	%>
	  		<script type="text/javascript">
	  			alert("还原成功！");
	  		</script>
	  		<jsp:include page="Main.jsp"></jsp:include>
  	<% 
	  		}else{
  	%> 
	  		<script type="text/javascript">
	  			alert("还原失败！");
	  		</script>
	  		<jsp:include page="Restore1.jsp"></jsp:include>
  	<%		}
  			String sql2="delete from card1 where name1='"+name+"'";
	    	PreparedStatement p2=con.prepareStatement(sql2);
	    	int n2=p2.executeUpdate();
  			Database.closeAll(con, p1, rs);
  			Database.closeAll(con, p2, rs);
    	}else{
  	%> 
  		<script type="text/javascript">
  			alert("放入回收站失败！");
  		</script>
  		<jsp:include page="Restore1.jsp"></jsp:include>
  	<%
    	}
    	Database.closeAll(con, p, rs);
	 %>
  </body>
</html>
