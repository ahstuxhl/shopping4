<%@ page import="java.util.Map" %>
<%@ page import="java.util.TreeMap" %>
<%@ page import="java.util.SplittableRandom" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/6/22/022
  Time: 15:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Map<String,Double> vegetables=new TreeMap<String,Double>();
    Map<String,Integer> car=new TreeMap<String,Integer>();
%>
<%
    vegetables.put("tomato",3.5);
    vegetables.put("potato",1.5);
    vegetables.put("cucumber",2.0);
    vegetables.put("corn",2.5);
%>
<h1>农家蔬菜店</h1>
<%
    String name=(String)session.getAttribute("username");
    car=(Map<String,Integer>)session.getAttribute("car");
%>
<p>欢迎光临蔬菜店</p>
<table>
    <tr>
        <td>商品名称</td>
        <td>单价</td>
        <td>购买</td>
    </tr>
    <tr>
        <td>tomato</td>
        <td>3.5</td>
        <td><a href="car.jsp" name="tomato">购买</a> </td>
    </tr>



</table>
</body>
</html>
