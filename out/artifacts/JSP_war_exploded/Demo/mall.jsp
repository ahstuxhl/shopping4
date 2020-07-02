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
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>购物车</title>
</head>
<style type="text.s">
    table{
        margin: 0 auto;
    }
    table th,table td{
    }
</style>
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
        <td>6.8</td>
        <td>50</td>
        <td>2020-07-02</td>
        <td>7</td>
        <td align="center">
            <input type="button" value="加入购物车" onclick="add_shoppingcar(this)"/>
        </td>
    </tr>
    <tr>
        <td>potato</td>
        <td>5.9</td>
        <td>45</td>
        <td>2020-07-01</td>
        <td>6</td>
        <td align="center">
            <input type="button" value="加入购物车" onclick="add_shoppingcar(this)"/>
        </td>
    </tr>
    <tr>
        <td>cucumber</td>
        <td>5.6</td>
        <td>70</td>
        <td>2020-07-02</td>
        <td>7</td>
        <td align="center">
            <input type="button" value="加入购物车" onclick="add_shoppingcar(this)"/>
        </td>
    </tr>
    <tr>
        <td>corn</td>
        <td>8.8</td>
        <td>67</td>
        <td>2020-07-02</td>
        <td>5</td>
        <td align="center">
            <input type="button" value="加入购物车" onclick="add_shoppingcar(this)"/>
        </td>
    </tr>
</table>
<table border="1">
    <thead>
    <tr>
        <th>商品名称</th>
        <th>单价(kg/元)</th>
        <th>数量(kg)</th>
        <th>金额(元)</th>
        <th>删除</th>
    </tr>
    </thead>
    <tbody id="goods">
    </tbody>
    <tfoot>
    <tr>
        <td colspan="3" align="center" >总计</td>
        <td id="total"></td>
        <td>元</td>
    </tr>
    </tfoot>
</table>
</body>
<script type="text/javascript">
    function add_shoppingcar(btn){
        var tr = btn.parentNode.parentNode;
        var tds=tr.getElementsByTagName("td");
        var name=tds[0].innerHTML;
        var price=tds[1].innerHTML;
        var tbody=document.getElementById("goods");
        var row=tbody.insertRow();
        row.innerHTML="<td>"+name+"</td>"+
            "<td>"+price+"</td>"+
            "<td align='center'>"+
            "<input type='button' value='-' id='jian'  onclick='change(this,-1)'  />"+
            "<input id='text' type='text' size='1' value='1' readonly='readonly' />"+
            "<input type='button' value='+' id='add'  onclick='change(this,1)'  />"+
            "</td>"+
            "<td>"+price+"</td>"+
            "<td align='center'>"+
            "<input type='button' value='X' onclick='del(this)'/>"+
            "</td>"+
            "</tr>"
        total();
    }
    function change(btn,n){
        var inputs = btn.parentNode.getElementsByTagName("input");
        var amount = parseInt(inputs[1].value);
        if(amount<=1 && n<0){
            return;
        }
        inputs[1].value = amount + n;
        amount = inputs[1].value;
        var tr = btn.parentNode.parentNode;
        var tds = tr.getElementsByTagName("td");
        var price = parseFloat(tds[1].innerHTML);
        var m = price * amount;
        tds[3].innerHTML = m;
        total();
    }
    function total(){
        var tbody=document.getElementById("goods");
        var trs=tbody.getElementsByTagName("tr");
        var sum=0;
        for(var i=0;i<trs.length;i++){
            var tds=trs[i].getElementsByTagName("td");
            var m=tds[3].innerHTML;
            sum += parseFloat(m);
        }
        var total=document.getElementById("total");
        total.innerHTML = sum;
    }
    function del(i){
        var tr=i.parentNode.parentNode;
        tr.parentNode.removeChild(tr);
        total();
    }
</script>
</html>