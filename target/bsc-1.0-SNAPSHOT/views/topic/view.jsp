<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/11/14
  Time: 18:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>话题详情页</title>
</head>
<body>
<table border="1">
    <caption>${topic.title}的详情页</caption>
    <tr>
        <th>id</th>
        <td>${topic.id}</td></tr>
    <tr>
        <th>模块id</th>
        <td>${topic.section.id}</td>
    </tr>
    <tr>
        <th>帖子id</th>
        <td>${topic.post.id}</td>
</tr>
    <tr>
        <th>话题名称</th>
        <td>${topic.title}</td>
</tr>
    <tr>
        <th>帖子数量</th>
        <td>${topic.num}</td>
    </tr>
</table>
</body>
</html>
