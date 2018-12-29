<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/7
  Time: 22:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<head>
    <title>user</title>
</head>
<body>
<c:out value="${msg}"/>
<table align="center" border="1">
    <caption>用户表</caption>
    <tr>
        <td>number</td>
        <td>type</td>
        <td>password</td>
        <td>nickName</td>
        <td>photo</td>
        <td>academy</td>
        <td>introduction</td>
        <td>tel</td>
        <td>wechat</td>
        <td>qq</td>
        <td>notice</td>
        <td colspan="3">操作</td>
    </tr>
    <c:forEach items="${userList}" var="user" >
        <tr>
            <td>${user.number}</td>
            <td>${user.type}</td>
            <td>${user.password}</td>
            <td>${user.nickName}</td>
            <td>${user.photo}</td>
            <td>${user.academy}</td>
            <td>${user.introduction}</td>
            <td>${user.tel}</td>
            <td>${user.wechat}</td>
            <td>${user.qq}</td>
            <td>${user.notice}</td>
            <td><a href="${pageContext.request.contextPath}/user/get/${user.id}">详情</a></td>
            <td><a href="${pageContext.request.contextPath}/user/edit/${user.id}">编辑</a></td>
            <td><a href="${pageContext.request.contextPath}/user/del/${user.id}">删除</a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
