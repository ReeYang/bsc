<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/10/26
  Time: 17:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>
<head>
    <title>Interaction</title>
</head>
<body>
<c:out value="${msg}"/>
<table border="1">
    <caption>互动表</caption>
    <tr>
        <th>id</th>
        <th>帖子id</th>
        <th>用户id</th>
        <th>时间</th>
        <th>类型</th>
        <th>内容</th>
        <th colspan="3">操作</th>
    </tr>
    <c:forEach items="${interactList}" var="interact" >
        <tr>
            <td align = "center">${interact.id}</td>
            <td align = "center">${interact.post.id}</td>
            <td align = "center">${interact.user.id}</td>
            <td align = "center">${interact.time}</td>
            <td align = "center">${interact.type}</td>
            <td align = "center">${interact.content}</td>
            <td align="center" ><a href="${pageContext.request.contextPath}/interaction/get/${interact.id}"><input type="button" value="详情"></a></td>
            <td align="center" ><input type="button" value="修改"></td>
            <td align="center" ><a href="${pageContext.request.contextPath}/interaction/del/${interact.id}"><input type="button" value="删除"></a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
