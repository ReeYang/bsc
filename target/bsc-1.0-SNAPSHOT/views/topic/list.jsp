<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/10/26
  Time: 16:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>
<head>
    <title>Topic</title>
</head>
<body>
<c:out value="${msg}"/>
<table border="1">
    <caption>话题表</caption>
    <tr>
        <th>id</th>
        <th>模块id</th>
        <th>帖子id</th>
        <th>话题名称</th>
        <th>帖子数量</th>
        <th colspan="3">操作</th>
    </tr>
    <c:forEach items="${topicList}" var="topic" >
        <tr>

            <td align = "center">${topic.id}</td>
            <td align = "center">${topic.section.id}</td>
            <td align = "center">${topic.post.id}</td>
            <td align = "center">${topic.title}</td>
            <td align = "center">${topic.num}</td>
            <td align="center" ><a href="${pageContext.request.contextPath}/topic/get/${topic.id}"><input type="button" value="详情"></a></td>
            <td align="center" ><a href="${pageContext.request.contextPath}/topic/edit/${topic.id}"><input type="button" value="编辑"></a></td>
            <td align="center" ><a href="${pageContext.request.contextPath}/topic/del/${topic.id}"><input type="button" value="删除"></a></td>
        </tr>
    </c:forEach>
    <tr>
        <td align="center" ><a href="${pageContext.request.contextPath}/topic/add"><input type="button" value="添加"></a></td>
    </tr>
</table>
</body>
</html>
