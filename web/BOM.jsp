<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/16
  Time: 15:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--  获取公共头部--%>
<%@ include file="iframe/head.jsp"%>
<div class="container">
<div class="col-sm-12">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h2 class="panel-title"><strong>Table1:Bill of Material（表1：产品结构）</strong></h2>
        </div>
        <!-- Table -->
        <table class="table table-bordered table-hover">
            <tr>
                <th>Parent（父件编码）</th>
                <th>Comp（子件编码）</th>
                <th>Q-P（子件需求数量）</th>
                <th>操作</th>
            </tr>
            <s:iterator value="BOM_list">
            <tr>
                <th><s:property value="parent"/></th>
                <th><s:property value="comp"/></th>
                <th><s:property value="Q_P"/></th>
                <th>
                    <s:url id="url_delete" value="BOM_delete.action">
                        <s:param name="BOM_id" value="id"/>
                    </s:url>
                    <button type="button" class="btn btn-default">
                        <s:a href="%{url_delete}">删除</s:a>
                    </button>
                </th>
            <tr>
            </s:iterator>
            <form class="form-horizontal" action="${pageContext.request.contextPath}/BOM_add.action" method="post">
                <tr>
                    <th>
                        <input type="text" name="parent" class="form-control" placeholder="parent" id="inputParent">
                    </th>
                    <th>
                        <input type="text" name="comp" class="form-control" placeholder="comp" id="inputComp">

                    </th>
                    <th>
                        <input type="number" name="Q_P" class="form-control" placeholder="Q_P" id="inputQ_P">

                    </th>
                    <th>
                        <input type="submit" value="新增" class="form-control" placeholder="Submit" id="submit">

                    </th>
                </tr>
            </form>
        </table>
    </div>
</div>
</div>
<%--  获取公共尾部--%>
<%@ include file="iframe/foot.jsp"%>