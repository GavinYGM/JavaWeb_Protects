<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'data.jsp' starting page</title>

	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <%!Date date=new Date();%>
    <%!SimpleDateFormat f=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss "); %>
    <%String d=f.format(date); %>
    <h1 style="color: green;">
    <%
    	Calendar c = Calendar.getInstance();
    	int h=c.get(Calendar.HOUR_OF_DAY);
    	if(h>0&&h<12){
    		out.print("主人，上午好！");
    	}else if(h==12){
    		out.print("主人，中午好！");
    	}else if(h>12&&h<24){
    		out.print("主人，下午好！");
    	}
    %>
    </h1> 

    <h3>现在时间是：<%=d %>
	<% 
		String help=date.toString();
		String weeks[]=help.split(" ");
		String week=weeks[0];
		if(week.equals("Mon")){
			out.print("星期一");
		}else if(week.equals("Tues")){
			out.print("星期二");
		}else if(week.equals("Wed")){
			out.print("星期三");
		}else if(week.equals("Thur")){
			out.print("星期四");
		}else if(week.equals("Fri")){
			out.print("星期五");
		}else if(week.equals("Sat")){
			out.print("星期六");
		}else if(week.equals("Sun")){
			out.print("星期日");
		}
	%>
	</h3>
  </body>
</html>
