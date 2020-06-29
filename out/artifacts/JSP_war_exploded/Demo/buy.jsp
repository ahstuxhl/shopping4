<%@ page import="java.util.TreeMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.Set" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/6/29/029
  Time: 15:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
     name=<%=request.getParameter("name")%>;
     <%
         Map<String,Integer> car=new TreeMap<String,Integer>();
     %>
<%
    String name = request.getParameter("name");
    Integer i=0;
    car=(Map<String,Integer>)session.getAttribute("car");
    i++;
    response.sendRedirect("mall.jsp");
%>

</body>
</html>
