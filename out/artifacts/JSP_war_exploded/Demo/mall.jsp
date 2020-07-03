<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/6/22/022
  Time: 15:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.TreeMap" %>
<%@ page import="java.util.SplittableRandom" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>购物商城</title>
</head>
<body>
<h1>农家蔬菜店</h1>
<p>欢迎光临蔬菜店</p>
<table border="1">
    <tr>
        <td>商品名称</td>
        <td>单价(kg/元)</td>
        <td>库存(kg)</td>
        <td>包装日期</td>
        <td>保质期(天)</td>
        <td>操作</td>
    </tr>
    <tr>
        <td>tomato</td>
        <td>6.88</td>
        <td>50</td>
        <td>2020-07-02</td>
        <td align="center">7</td>
        <td>
            <input type="button" value="加入购物车" >
        </td>
    </tr>
    <tr>
        <td>potato</td>
        <td>5.99</td>
        <td>45</td>
        <td>2020-07-02</td>
        <td align="center">6</td>
        <td>
            <input type="button" value="加入购物车" >
        </td>
    </tr>
    <tr>
        <td>cucumber</td>
        <td>5.68</td>
        <td>70</td>
        <td>2020-07-02</td>
        <td align="center">7</td>
        <td>
            <input type="button" value="加入购物车" >
        </td>
    </tr>
    <tr>
        <td>corn</td>
        <td>8.88</td>
        <td>67</td>
        <td>2020-07-02</td>
        <td align="center">5</td>
        <td>
            <input type="button" value="加入购物车">
        </td>
    </tr>
</table>
<a href="car.jsp">查看购物车</a>
</body>
</html>