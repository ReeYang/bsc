<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/11/24
  Time: 14:24
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>模块编辑页面</title>
</head>
<body>
<%--@elvariable id="section" type="com.bsc.modules.section.entity.Section"--%>
<form:form modelAttribute="section" action="${pageContext.request.contextPath}/section/save/${section.id}">
    <table>
        <tr>
            <td>模块名称</td>
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
