<%--
  Created by IntelliJ IDEA.
  User: TNT
  Date: 2019/6/7
  Time: 19:38
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>企业MRP算法实现</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<script src="//cdn.bootcss.com/canvas-nest.js/1.0.1/canvas-nest.min.js"></script>


<div class="page-header" style="background:#f7f7f7">
    <nav class="navbar navbar-default">
        <div class="container">
            <h2>HIT<small>  企业MRP算法实现</small></h2>
        </div>

    </nav>
    <div class="container">

    <%--主菜单开始--%>
        <ul class="nav nav-pills">
            <li>
                <a href="index.jsp">首页</a>
            </li>
            <li>
                <a href="BOM_list.action" class="list-group-item">BOM(Table1)</a>
            </li>
            <li>
                <a href="ItemMaster_list.action" class="list-group-item">物料主文件(Table 2)</a>
            </li>
            <li>
                <a href="Inventory_list.action" class="list-group-item">库存和在途信息(Table 3)</a>
            </li>
            <li>
                <a href="TPOP_list.action" class="list-group-item">MPS需求(TPOP)</a>
            </li>
            <li>
                <a href="MRP_list.action" class="list-group-item">生成MRP数据</a>
            </li>
        </ul>
        <%--主菜单结束--%>

    </div>
</div>

