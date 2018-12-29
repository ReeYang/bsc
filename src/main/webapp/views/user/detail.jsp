<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/14
  Time: 19:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<table border="1">
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
    </tr>
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
    </tr>
</table></body>
</html>
