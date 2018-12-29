<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/15
  Time: 21:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table align="center" border="1">
    <caption>私信表</caption>
    <tr>
        <td>sender</td>
        <td>receiver</td>
        <td>time</td>
        <td>content</td>
    </tr>
        <tr>
            <td>${mail.sender.nickName}</td>
            <td>${mail.receiver.nickName}</td>
            <td>${mail.time}</td>
            <td>${mail.content}</td>
        </tr>
</table>
</body>
</html>
