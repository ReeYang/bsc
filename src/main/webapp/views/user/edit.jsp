<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/15
  Time: 20:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>user</title>
</head>
<body>
<%--@elvariable id="user" type="com.bsc.modules.user.entity.User"--%>
<form:form modelAttribute="user" action="../save">
    <table border="1" align="center">
        <caption>修改</caption>
        <tr>
            <td>密码</td>
            <td><form:input path="password"/></td>
        </tr>
        <tr>
            <td>昵称</td>
            <td><form:input path="nickName"/></td>
        </tr>
        <tr>
            <td>头像</td>
            <td><form:input path="photo"/></td>
        </tr>
        <tr>
            <td>个签</td>
            <td><form:input path="introduction"/></td>
        </tr>
        <tr>
            <td>手机</td>
            <td><form:input path="tel"/></td>
        </tr>
        <tr>
            <td>微信</td>
            <td><form:input path="wechat"/></td>
        </tr>
        <tr>
            <td>QQ</td>
            <td><form:input path="qq"/></td>
        </tr>
        <tr>
            <td>关注者</td>
            <td>${user.notice.number}</td>
            <input type="hidden" name="id" value="${user.id}"/>
            <input type="hidden" name="number" value="${user.number}"/>
            <input type="hidden" name="type" value="${user.type}"/>
            <input type="hidden" name="academy" value="${user.academy}"/>
        </tr>
        <tr>
            <td><input type="submit" value="提交"/> </td>
            <td><input type="reset" value="重置"/> </td>
        </tr>
    </table>

</form:form>
</body>
</html>
