<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/12/4
  Time: 16:56
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>话题编辑页面</title>
</head>
<body>
<%--@elvariable id="topic" type="com.bsc.modules.topic.entity.Topic"--%>
<form:form modelAttribute="topic" action="${pageContext.request.contextPath}/topic/save/${topic.id}">
    <table>
        <tr>
            <td>模块id</td>
            <td><form:input path="moID"/></td>
        </tr>
        <tr>
            <td>帖子id</td>
            <td><form:input path="postID"/></td>
        </tr>
        <tr>
            <td>话题名称</td>
            <td><form:input path="title"/></td>
        </tr>
        <tr>
            <td>话题数量</td>
            <td><form:input path="num"/></td>
        </tr>
        <tr>
            <td><input type="submit" value="提交"></td>
        </tr>
    </table>
</form:form>
</body>
</html>
