<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/15
  Time: 22:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--  获取公共头部--%>
<%@ include file="iframe/head.jsp"%>
<div class="container">
<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
    <div class="panel panel-default">
        <div class="panel panel-heading">
            <div class="panel-title">输入数据</div>
        </div>
        <div id="collapseOne" class="panel-collapse collapse in">
            <div class="list-group">
                <th>
                <th>
                    <a href="BOM_list.action" class="list-group-item">BOM(Table1)</a>
                </th>
                <th>
                    <a href="ItemMaster_list.action" class="list-group-item">物料主文件(Table 2)</a>
                </th>
                <th>
                    <a href="Inventory_list.action" class="list-group-item">库存和在途信息(Table 3)</a>
                </th>
                <th>
                    <a href="TPOP_list.action" class="list-group-item">MPS需求(TPOP)</a>
                </th>
                </table>

            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel panel-heading">
            <div class="panel-title">输出数据</div>
        </div>
        <div id="collapseTwo" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingTwo">
            <div class="list-group">
                <a href="MRP_list.action" class="list-group-item">按照输入数据生成MRP</a>
            </div>
        </div>
    </div>

</div>
</div>


<%--  获取公共尾部--%>
<%@ include file="iframe/foot.jsp"%>