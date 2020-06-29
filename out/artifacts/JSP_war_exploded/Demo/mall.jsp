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
    if(car==null){
        car.put("tomato",0);
        car.put("potato",0);
        car.put("cucumber",0);
        car.put("corn",0);
    }
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
        <td><a href="buy.jsp" name="tomato">购买</a> </td>
    </tr>
    <tr>
        <td>potato</td>
        <td>1.5</td>
        <td><a href="buy.jsp" name="potato">购买</a> </td>
    </tr>
    <tr>
        <td>cucumber</td>
        <td>2.0</td>
        <td><a href="buy.jsp" name="cucumber">购买</a> </td>
    </tr>
    <tr>
        <td>corn</td>
        <td>2.5</td>
        <td><a href="buy.jsp" name="corn">购买</a> </td>
    </tr>

</table>
<a href="car.jsp">购物车</a>
</body>
</htmlf>
