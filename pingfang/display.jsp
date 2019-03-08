<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  </head>
  
  <body>
  	<h3>计算一个数的平方</h3>
  	<form action="display.jsp" method="post">
  		输入:<input type="text" name="input" value="0">
  		<input type="submit" name="sub" value="计算">
  	</form>
  	
	<% String string=request.getParameter("input"); %>
    <jsp:include page="jisuan.jsp" flush="true">
    	<jsp:param value="<%=string %>" name="num"/>
    </jsp:include> 
    <br>
  </body>

</html>
