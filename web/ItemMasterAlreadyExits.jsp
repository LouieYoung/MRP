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
        <div class="alert alert-warning alert-dismissible" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <strong>新增失败</strong>数据库中已存在对应条目。
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h2 class="panel-title"><strong>Table2:Item Master（表2：物料主文件）</strong></h2>
            </div>
            <!-- Table -->
            <table class="table table-bordered table-hover">
                <tr>
                    <th>P-No（物料编码）</th>
                    <th>LT（提前期）</th>
                    <th>ST（安全提前期）</th>
                    <th>SS（安全库存）</th>
                    <th>LLC（安全提前期）</th>
                    <th>LSR（批量策略）</th>
                    <th>LS（批量值）</th>

                    <th>操作</th>
                </tr>
                <s:iterator value="ItemMaster_list">
                    <tr>
                        <th><s:property value="P_No"/></th>
                        <th><s:property value="LT"/></th>
                        <th><s:property value="ST"/></th>
                        <th><s:property value="SS"/></th>
                        <th><s:property value="LLC"/></th>
                        <th><s:property value="LSR"/></th>
                        <th><s:property value="LS"/></th>
                        <th>
                            <s:url id="url_delete" value="ItemMaster_delete.action">
                                <s:param name="ItemMaster_id" value="id"/>
                            </s:url>
                            <button type="button" class="btn btn-default">
                                <s:a href="%{url_delete}">删除</s:a>
                            </button>
                        </th>
                    <tr>
                </s:iterator>
                <form class="form-horizontal" action="${pageContext.request.contextPath}/ItemMaster_add.action" method="post">
                    <tr>
                        <th>
                            <input type="text" name="P_No" class="form-control" placeholder="P_No" id="inputP_No">
                        </th>

                        <th>
                            <input type="number" name="LT" class="form-control" placeholder="LT" id="inputLT">
                        </th>

                        <th>
                            <input type="number" name="ST" class="form-control" placeholder="ST" id="inputST">
                        </th>

                        <th>
                            <input type="number" name="SS" class="form-control" placeholder="SS" id="inputSS">
                        </th>

                        <th>
                            <input type="number" name="LLC" class="form-control" placeholder="ST" id="inputLLC">
                        </th>

                        <th>
                            <select class="form-control" id="inputLSR" name="LSR" required="required">
                                <option>请选择...</option>
                                <option>FOQ</option>
                                <option>LFL</option>
                            </select>
                        </th>

                        <th>
                            <input type="number" name="LS" class="form-control" placeholder="LS" id="inputLS">
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