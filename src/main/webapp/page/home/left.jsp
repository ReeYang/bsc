<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>
    <style type="text/css">
        <!--
        .STYLE1 {
            color: #666666;
            font-family: Geneva, Arial, Helvetica, sans-serif;
            border:thin;
            border:#333333;
        }
        -->
    </style>
    <link href="../../css/post.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        <!--
        body,td,th {
            color: #FF6633;
        }
        -->
    </style></head>
<body>
<c:out value="${msg}"/>
<form id="login" name="login" method="post" action="/login/login" target="_parent">
    <table width="80%" border="0">
        <tr>
            <td width="29%">用户类型:</td>
        </tr>
            <tr>
            <td width="71%">
                <select name="utype">
                    <option value="1">学生</option>
                    <option value="2">教师</option>
                    <option value="3">社团</option>
                </select></td>
        </tr>
        <tr>
            <td>账号:</td>
        </tr>
        <tr>
            <td><input type="text" name="unum" /></td>
        </tr>
        <tr>
            <td>密码:</td>
        </tr>
        <tr>
            <td><input type="text" name="upass" /></td>
        </tr>
        <tr>
            <td align="center"><input type="submit" name="submit" value="登录" /></td>
        </tr>
    </table>
</form>
<!--<table width="80%" border="0">
    <tr>
        <td width="111"></td>
    </tr>
    <tr>
        <td><div align="right">学院：</div></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td><div align="right">联系方式：</div></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td><div align="right">自我介绍：</div></td>
        <td>&nbsp;</td>
    </tr>
</table>-->
<p class="a"><a href="#">我的私信</a></p>
<p class="a"><a href="#">我的评论</a></p>
<p class="a"><a href="#">我收到的赞</a></p>
</form>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<div align="center"><span class="STYLE1">青岛大学2016级管科系</span></div>
</body>


</html>
