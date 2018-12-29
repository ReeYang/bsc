<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/20
  Time: 21:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
<form id="loign" name="loign" method="post" action="/login/login" >
    <table width="24%" border="0" align="center">
        <tr>
            <td width="29%">用户类型</td>
            <td width="71%">
                <select name="utype">
                    <option value="1">学生</option>
                    <option value="2">教师</option>
                    <option value="3">社团</option>
                </select></td>
        </tr>
        <tr>
            <td>账号</td>
            <td><input type="text" name="unum" /></td>
        </tr>
        <tr>
            <td>密码</td>
            <td><input type="text" name="upass" /></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><input type="submit" name="submit" value="登录" /></td>
        </tr>
    </table>
</form>
</html>
