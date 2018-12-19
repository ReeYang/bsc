<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/10/25
  Time: 10:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>Section</title>
</head>
<body>
<c:out value="${msg}"/>
<table border="1">
    <caption>模块表</caption>
    <tr>
        <th>id</th>
        <th>模块名称</th>
        <th>话题数量</th>
        <th colspan="3">操作</th>
    </tr>
    <c:forEach items="${sectionList}" var="section" >
        <tr>
            <td align = "center">${section.id}</td>
            <td align = "center">${section.title}</td>
            <td align = "center">${section.num}</td>
            <td align="center" ><a href="${pageContext.request.contextPath}/section/get/${section.id}"><input type="button" value="详情"></a></td>
            <td align="center" ><a href="${pageContext.request.contextPath}/section/edit/${section.id}"><input type="button" value="编辑"></a></td>
            <td align="center" ><a href="${pageContext.request.contextPath}/section/del/${section.id}"><input type="button" value="删除"></a></td>
        </tr>
    </c:forEach>
    <tr>
        <td align="center" ><a href="${pageContext.request.contextPath}/section/add"><input type="button" value="添加"></a></td>
    </tr>
</table>
</body>
</html>