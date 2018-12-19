<%--
  Created by IntelliJ IDEA.
  User: HUKE
  Date: 2018/10/25
  Time: 16:35
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>
<head>
    <title>Trade</title>
</head>
<body>
<sql:setDataSource var="bsc" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/bsc"
                   user="root"  password="root"/>

<sql:query dataSource="${bsc}"  var="result">
    SELECT * from trade;
</sql:query>

<table border="1">
    <caption>交易表</caption>
    <tr>
        <td>主键</td>
        <td>帖子ID</td>
        <td>标签</td>
        <td>类型</td>
        <td>原价</td>
        <td>现价</td>
        <td>联系方式</td>
        <td>校区</td>
    </tr>
    <c:forEach items="${tradeList}" var="trade" >
        <tr>
            <td>${trade.id}</td>
            <td>${trade.post.id}</td>
            <td>${trade.label}</td>
            <td>${trade.type}</td>
            <td>${trade.oprice}</td>
            <td>${trade.price}</td>
            <td>${trade.information}</td>
            <td>${trade.campus}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>