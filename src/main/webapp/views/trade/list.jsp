<%--
  Created by IntelliJ IDEA.
  User: HUKE
  Date: 2018/10/25
  Time: 16:35
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<head>
    <title>交易帖</title>
    <link type="text/css" rel="stylesheet" href="../../css/post.css" />
</head>
<body>
<c:out value="${msg}"/>
<table  align="center" width="80%" cellspacing="10">
   <!-- <tr aria-colspan="8"><a href="${pageContext.request.contextPath}/trade/add">添加</a></tr> -->
    <tr>
        <td>标题</td>
        <td>内容</td>
        <!--<td>用户名</td>
        <td>交易类型</td>
        <td>现价</td>
        <td>联系方式</td>
        <td>校区</td>-->
         <td>发布时间</td>
       <!-- <td colspan="3">操作</td>-->
    </tr>
    <c:forEach items="${tradeList}" var="trade" >
        <tr>
            <td ><div class="simpleContent">
                <a href="${pageContext.request.contextPath}/trade/get/${trade.id}" class="a">${trade.post.title}</a></div></td>
            <td><div class="simpleContent" style="width:500px">${trade.post.content}</div></td>
           <!-- <td><div class="simpleContent">${trade.post.user.nickName}</div></td>
            <td><div class="simpleContent">${trade.type}</div></td>

            <td><div class="simpleContent">￥${trade.price}</div></td>
            td><div class="simpleContent">${trade.information}</div></td>
            <td><div class="simpleContent">${trade.campus}</div></td>-->
            <td><div class="simpleContent">${trade.post.time}</div></td>
           <!-- <td><a href="${pageContext.request.contextPath}/trade/get/${trade.id}">详情</a> </td>
            <td><a href="${pageContext.request.contextPath}/trade/edit/${trade.id}">修改</a></td>
            <td><a href="${pageContext.request.contextPath}/trade/del/${trade.id}">删除</a> </td>-->
        </tr>
    </c:forEach>
</table>
</body>
</html>