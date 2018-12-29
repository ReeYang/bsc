<%--
  Created by IntelliJ IDEA.
  User: HUKE
  Date: 2018/11/5
  Time: 14:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<head>
    <title>post</title>
</head>
<body>
<table align="center">
    <caption>帖子表</caption>
    <tr>
        <td>用户ID</td>
        <td>标题</td>
        <td>类型</td>
        <td>时间</td>
        <td>内容</td>
    </tr>
        <tr>
            <td>${post.user.nickName}</td>
            <td>${post.title}</td>
            <td>${post.type}</td>
            <td>${post.time}</td>
            <td>${post.content}</td>
        </tr>
</table>
</body>
</html>
