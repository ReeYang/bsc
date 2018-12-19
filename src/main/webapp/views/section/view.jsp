<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/11/11
  Time: 16:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>模块详情页</title>
</head>
<body>
<table align="center">
    <caption>${section.title}的详情页</caption>
    <tr>
        <th>id</th>
        <th>模块名称</th>
        <th>话题数量</th>
        <th>话题名称</th>
    </tr>
    <tr>
        <td align = "center">${section.id}</td>
        <td align = "center">${section.title}</td>
        <td align = "center">${section.num}</td>
        <c:forEach items="${section.topicList}" var="topic" >
        <td align = "center">${topic.title}</td>
        </c:forEach>
    </tr>
</table>
</body>
</html>