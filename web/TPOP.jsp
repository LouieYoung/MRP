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
<s:iterator value="TPOP_list">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h2 class="panel-title"><strong>Table:TPOP for Product <s:property value="P_No"/>（表：MPS需求）</strong></h2>
        </div>
        <table class="table table-bordered table-hover">
            <tr>
                <th>Part:<s:property value="P_No"/></th>
                <th rowspan="2">Past Due</th>
                <th colspan="2">OH=<s:property value="OH"/></th>
                <th colspan="2">AL=<s:property value="AL"/></th>
                <th colspan="2">LT=<s:property value="LT"/></th>
                <th colspan="2">ST=<s:property value="ST"/></th>
                <th colspan="2">SS=<s:property value="SS"/></th>
                <th colspan="2"><s:property value="LSR"/>&nbsp&nbsp&nbsp<s:property value="LS"/></th>
            </tr>
            <tr>
                <th>Period</th>
                <th>1</th>
                <th>2</th>
                <th>3</th>
                <th>4</th>
                <th>5</th>
                <th>6</th>
                <th>7</th>
                <th>8</th>
                <th>9</th>
                <th>10</th>
                <th>11</th>
                <th>12</th>
            </tr>
            <tr>
                <th>GR</th>
                <th><s:property value="GR0"/></th>
                <th><s:property value="GR1"/></th>
                <th><s:property value="GR2"/></th>
                <th><s:property value="GR3"/></th>
                <th><s:property value="GR4"/></th>
                <th><s:property value="GR5"/></th>
                <th><s:property value="GR6"/></th>
                <th><s:property value="GR7"/></th>
                <th><s:property value="GR8"/></th>
                <th><s:property value="GR9"/></th>
                <th><s:property value="GR10"/></th>
                <th><s:property value="GR11"/></th>
                <th><s:property value="GR12"/></th>
            </tr>
            <tr>
                <th>SR</th>
                <th><s:property value="SR0"/></th>
                <th><s:property value="SR1"/></th>
                <th><s:property value="SR2"/></th>
                <th><s:property value="SR3"/></th>
                <th><s:property value="SR4"/></th>
                <th><s:property value="SR5"/></th>
                <th><s:property value="SR6"/></th>
                <th><s:property value="SR7"/></th>
                <th><s:property value="SR8"/></th>
                <th><s:property value="SR9"/></th>
                <th><s:property value="SR10"/></th>
                <th><s:property value="SR11"/></th>
                <th><s:property value="SR12"/></th>
            </tr>
            <tr>
                <th>POH</th>
                <th>X</th>
                <th><s:property value="POH1"/></th>
                <th><s:property value="POH2"/></th>
                <th><s:property value="POH3"/></th>
                <th><s:property value="POH4"/></th>
                <th><s:property value="POH5"/></th>
                <th><s:property value="POH6"/></th>
                <th><s:property value="POH7"/></th>
                <th><s:property value="POH8"/></th>
                <th><s:property value="POH9"/></th>
                <th><s:property value="POH10"/></th>
                <th><s:property value="POH11"/></th>
                <th><s:property value="POH12"/></th>
            </tr>
            <tr>
                <th>PAB</th>
                <th>X</th>
                <th><s:property value="PAB1"/></th>
                <th><s:property value="PAB2"/></th>
                <th><s:property value="PAB3"/></th>
                <th><s:property value="PAB4"/></th>
                <th><s:property value="PAB5"/></th>
                <th><s:property value="PAB6"/></th>
                <th><s:property value="PAB7"/></th>
                <th><s:property value="PAB8"/></th>
                <th><s:property value="PAB9"/></th>
                <th><s:property value="PAB10"/></th>
                <th><s:property value="PAB11"/></th>
                <th><s:property value="PAB12"/></th>
            </tr>
            <tr>
                <th>NR</th>
                <th>X</th>
                <th><s:property value="NR1"/></th>
                <th><s:property value="NR2"/></th>
                <th><s:property value="NR3"/></th>
                <th><s:property value="NR4"/></th>
                <th><s:property value="NR5"/></th>
                <th><s:property value="NR6"/></th>
                <th><s:property value="NR7"/></th>
                <th><s:property value="NR8"/></th>
                <th><s:property value="NR9"/></th>
                <th><s:property value="NR10"/></th>
                <th><s:property value="NR11"/></th>
                <th><s:property value="NR12"/></th>
            </tr>
            <tr>
                <th>PORcpt</th>
                <th> </th>
                <th><s:property value="PORcpt1"/></th>
                <th><s:property value="PORcpt2"/></th>
                <th><s:property value="PORcpt3"/></th>
                <th><s:property value="PORcpt4"/></th>
                <th><s:property value="PORcpt5"/></th>
                <th><s:property value="PORcpt6"/></th>
                <th><s:property value="PORcpt7"/></th>
                <th><s:property value="PORcpt8"/></th>
                <th><s:property value="PORcpt9"/></th>
                <th><s:property value="PORcpt10"/></th>
                <th><s:property value="PORcpt11"/></th>
                <th><s:property value="PORcpt12"/></th>
            </tr>
            <tr>
                <th>POR</th>
                <th><s:property value="POR0"/></th>
                <th><s:property value="POR1"/></th>
                <th><s:property value="POR2"/></th>
                <th><s:property value="POR3"/></th>
                <th><s:property value="POR4"/></th>
                <th><s:property value="POR5"/></th>
                <th><s:property value="POR6"/></th>
                <th><s:property value="POR7"/></th>
                <th><s:property value="POR8"/></th>
                <th><s:property value="POR9"/></th>
                <th><s:property value="POR10"/></th>
                <th><s:property value="POR11"/></th>
                <th><s:property value="POR12"/></th>
            </tr>

        </table>
    </div>
</s:iterator>
    <div class="panel-default">
        <table>
            <form class="form-horizontal" action="${pageContext.request.contextPath}/TPOP_add.action" method="post">
                <tr>
                    <th>
                        <input type="text" name="P_No_this" class="form-control" placeholder="P_No_this" id="inputP_No_this">
                    </th>


                    <th>
                        <input type="number" name="POR0" class="form-control" placeholder="POR0" id="inputPOR0">
                    </th>

                    <th>
                        <input type="number" name="POR1" class="form-control" placeholder="POR1" id="inputPOR1">
                    </th>

                    <th>
                        <input type="number" name="POR2" class="form-control" placeholder="POR2" id="inputPOR2">
                    </th>

                    <th>
                        <input type="number" name="POR3" class="form-control" placeholder="POR3" id="inputPOR3">
                    </th>

                    <th>
                        <input type="number" name="POR4" class="form-control" placeholder="POR4" id="inputPOR4">
                    </th>

                    <th>
                        <input type="number" name="POR5" class="form-control" placeholder="POR5" id="inputPOR5">
                    </th>

                    <th>
                        <input type="number" name="POR6" class="form-control" placeholder="POR6" id="inputPOR6">
                    </th>

                    <th>
                        <input type="number" name="POR7" class="form-control" placeholder="POR7" id="inputPOR7">
                    </th>

                    <th>
                        <input type="number" name="POR8" class="form-control" placeholder="POR8" id="inputPOR8">
                    </th>

                    <th>
                        <input type="number" name="POR9" class="form-control" placeholder="POR9" id="inputPOR9">
                    </th>

                    <th>
                        <input type="number" name="POR10" class="form-control" placeholder="POR10" id="inputPOR10">
                    </th>

                    <th>
                        <input type="number" name="POR11" class="form-control" placeholder="POR11" id="inputPOR11">
                    </th>

                    <th>
                        <input type="number" name="POR12" class="form-control" placeholder="POR12" id="inputPOR12">
                    </th>

                    <th>
                        <input type="submit" name="submit" class="btn btn-default" value="修改">
                    </th>
                </tr>
            </form>
        </table>
    </div>
</div>
</div>
<div class="container">
</div>

    <%--  获取公共尾部--%>
    <%@ include file="iframe/foot.jsp"%>
