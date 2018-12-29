<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: HUKE
  Date: 2018/11/28
  Time: 20:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加</title>
</head>
<body>
<%--@elvariable id="post" type="com.bsc.modules.post.entity.Post"--%>
<form:form modelAttribute="post" action="/post/save" >
    <table align="center">
        <tr>
            <td>标题</td>
            <td><form:input path="title"/></td>
        </tr>
        <tr>
            <td>时间</td>
            <td><form:input path="time"/></td>
        </tr>
        <tr>
            <td>帖子类型</td>
            <td><form:input path="classify"/></td>
        </tr>
        <tr>
            <td>内容</td>
            <td><form:textarea path="content"/></td>
        </tr>
        <tr>
            <td>作者:</td>
            <td><form:input path="user.id"/></td>
            <input type="hidden" name="id" value="${post.id}"/>
        </tr>
        <tr>
            <td><input type="submit" value="提交"/> </td>
            <td><input type="reset" value="重置"/> </td>
        </tr>
    </table>
</form:form>
</body>
</html>
