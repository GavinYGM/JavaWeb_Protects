<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" isELIgnored="false"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<%
    List<String> heros = new ArrayList<String>();
    heros.add("塔姆");
    heros.add("艾克");
    heros.add("巴德");
    heros.add("雷克赛");
    heros.add("卡莉丝塔");
    request.setAttribute("heros",heros);
%>
 
<!-- 使用jsp中的for循环来遍历List -->
<table width="200px" align="center" border="1" cellspacing="0">
<tr>
    <td>编号</td>
    <td>英雄</td>
</tr>
   
<%
int i =0;
for (String hero : heros) {
i++;
%>
  
<tr>
    <td><%=i%></td>
    <td><%=hero%></td>
</tr>
  
<%}%>
   
</table>
 
<br>
<!-- 使用JSTL中的c:forEach 循环来遍历List -->
<table width="200px" align="center" border="1" cellspacing="0">
<tr>
   
    <td>英雄</td>
</tr>
   
<c:forEach items="${heros}" var="hero">
    <tr>
       
        <td><c:out value="${hero}" /></td>
    </tr>
</c:forEach>
</table>
<c:set var="name" value="杨高明"></c:set>
${name}
<c:set var="heros" value="塔姆,艾克;巴德|雷克赛!卡莉丝塔" /> 
 
<c:forTokens items="${heros}" delims=":;|!" var="hero">
    <c:out value="${hero}" /> <br />
</c:forTokens>