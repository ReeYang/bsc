<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql" %>
<%--
  Created by IntelliJ IDEA.
  User: HUKE
  Date: 2018/11/10
  Time: 15:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Trade</title>
</head>
<body>
<table width="902" height="472" border="0" align="center">
    <caption>交易贴详情</caption>
    <tr>
        <td><strong>${trade.post.title}</strong></td>
    </tr>
    <tr>
        <td>发帖人：${trade.post.user.nickName}</td>
    </tr>
    <tr>
        <td>#${trade.label}#</td>
    </tr>
    <tr>
        <td>交易类型：${trade.type}</td>
    </tr>
    <tr>
        <td >${trade.post.content}</td>
    </tr>
    <tr>
        <td>价格：${trade.price}</td>
    </tr>
    <tr>
        <td>联系方式：${trade.information}</td>
    </tr>
    <tr>
        <td>校区：${trade.campus}</td>
    </tr>
    <tr>
        <td><div align="right">${trade.post.time}</div></td>
    </tr>
</table>
</body>
</html>
