<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�ޱ����ĵ�</title>
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
            <td width="29%">�û�����:</td>
        </tr>
            <tr>
            <td width="71%">
                <select name="utype">
                    <option value="1">ѧ��</option>
                    <option value="2">��ʦ</option>
                    <option value="3">����</option>
                </select></td>
        </tr>
        <tr>
            <td>�˺�:</td>
        </tr>
        <tr>
            <td><input type="text" name="unum" /></td>
        </tr>
        <tr>
            <td>����:</td>
        </tr>
        <tr>
            <td><input type="text" name="upass" /></td>
        </tr>
        <tr>
            <td align="center"><input type="submit" name="submit" value="��¼" /></td>
        </tr>
    </table>
</form>
<!--<table width="80%" border="0">
    <tr>
        <td width="111"></td>
    </tr>
    <tr>
        <td><div align="right">ѧԺ��</div></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td><div align="right">��ϵ��ʽ��</div></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td><div align="right">���ҽ��ܣ�</div></td>
        <td>&nbsp;</td>
    </tr>
</table>-->
<p class="a"><a href="#">�ҵ�˽��</a></p>
<p class="a"><a href="#">�ҵ�����</a></p>
<p class="a"><a href="#">���յ�����</a></p>
</form>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<div align="center"><span class="STYLE1">�ൺ��ѧ2016���ܿ�ϵ</span></div>
</body>


</html>
