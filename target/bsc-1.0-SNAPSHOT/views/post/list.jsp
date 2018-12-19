<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>
<head>
    <title>post</title>
</head>
<body>
<sql:setDataSource var="bsc" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/bsc"
                   user="root"  password="root"/>

<sql:query dataSource="${bsc}"  var="result">
    SELECT * from post;
</sql:query>

<table border="1">
    <caption>帖子表</caption>
    <tr>
        <td>主键</td>
       <td>用户ID</td>
        <td>标题</td>
        <td>类型</td>
        <td>时间</td>
        <td>内容</td>
    </tr>
    <c:forEach items="${postList}" var="post" >
        <tr>
            <td>${post.id}</td>
            <td>${post.user.id}</td>
            <td>${post.title}</td>
            <td>${post.type}</td>
            <td>${post.time}</td>
            <td>${post.content}</td>
        </tr>
    </c:forEach>

</table>
</body>
</html>