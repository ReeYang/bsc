<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/7
  Time: 23:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>mail</title>
</head>
<body>
<c:out value="${msg}"/>

<table align="center" border="1">
    <caption>私信表</caption>
    <tr>
        <td>sender</td>
        <td>receiver</td>
        <td>time</td>
        <td>content</td>
        <td colspan="3">操作</td>
    </tr>
    <c:forEach items="${mailList}" var="mail" >
        <tr>
            <td>${mail.sender.nickName}</td>
            <td>${mail.receiver.nickName}</td>
            <td>${mail.time}</td>
            <td>${mail.content}</td>
            <td><a href="${pageContext.request.contextPath}/mail/get/${mail.id}">详情</a> </td>
            <td><a href="${pageContext.request.contextPath}/mail/edit/${mail.id}">编辑</a> </td>
            <td><a href="${pageContext.request.contextPath}/mail/del/${mail.id}">删除</a> </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
