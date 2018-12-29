<%--
  Created by IntelliJ IDEA.
  User: HUKE
  Date: 2018/11/5
  Time: 22:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>
<head>
    <title>dict</title>
</head>
<body>
<table border="1" align="center">
    <caption>字典表</caption>
    <tr>
        <td>键值</td>
        <td>类型</td>
        <td>键名</td>
        <td>描述</td>
        <td>排序</td>
    </tr>
    <c:forEach items="${dictList}" var="dict" >
        <tr>
            <td>${dict.value}</td>
            <td>${dict.type}</td>
            <td>${dict.label}</td>
            <td>${dict.discription}</td>
            <td>${dict.sort}</td>
        </tr>
    </c:forEach>

</table>
</body>
</html>