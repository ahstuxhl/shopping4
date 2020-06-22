<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/6/16/016
  Time: 15:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
当前登录用户<%=session.getAttribute("name")%>;
<%
    if (session.getAttribute("name") != null) {
        out.println("<a href='logout.jsp'>注销</a>");
    } else {
        out.println("<a href='login.html'>请登录</a>");
    }
%>
</body>
</html>
