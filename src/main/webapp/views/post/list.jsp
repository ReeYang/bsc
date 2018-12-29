<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>
<head>
    <title>post</title>
</head>
<body>
<c:out value="${msg}"/>
<table align="center">
    <caption>帖子表</caption>
    <tr aria-colspan="6"><a href="${pageContext.request.contextPath}/post/add">添加</a></tr>
    <tr>
       <td>用户名</td>
        <td>标题</td>
        <td>类型</td>
        <td>时间</td>
        <td>内容</td>
        <td colspan="3">操作</td>
    </tr>
    <c:forEach items="${postList}" var="post" >
        <tr>
            <td>${post.user.nickName}</td>
            <td>${post.title}</td>
            <td>${post.classify}</td>
            <td>${post.time}</td>
            <td>${post.content}</td>
            <td><a href="${pageContext.request.contextPath}/post/get/${post.id}">详情</a> </td>
            <td><a href="${pageContext.request.contextPath}/post/edit/${post.id}">修改</a></td>
            <td><a href="${pageContext.request.contextPath}/post/del/${post.id}">删除</a> </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>