<%--
  Created by IntelliJ IDEA.
  User: HUKE
  Date: 2018/12/18
  Time: 20:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="../../css/post.css"
</head>
<body>
<form id="form1" name="form1" method="post" action="/post/save" enctype="multipart/form-data">
    <input hidden name="classify" value="2"/>
    <input hidden name="user.id" value="3"/>
    <input hidden name="price" value="10"/>
    <table width="100%" height="100%" border="0" align="center" bgcolor="#FFFFFF">
        <tr>
            <td width="325" height="34" valign="top"><div align="right">商品名称：</div></td>
            <td width="671" valign="top"><label>
                <input name="title" type="text" maxlength="25"/>
                <span class="ps">（最多25个字符）</span></label></td>
        </tr>
        <tr>
            <td height="113" valign="top"><div align="right">内容：</div></td>
            <td valign="top"><label>
                <textarea name="content" cols="50" rows="6"></textarea>
                <span class="ps"><br />
        （最多300个字符）</span></label></td>
        </tr>

        <tr>
            <td height="32" valign="top"><div align="right">交易类型：</div></td>
            <td valign="top"><label>
                <select name="type">
                    <option selected="selected">出售</option>
                    <option>求购</option>
                    <option>租赁</option>
                </select>
            </label></td>
        </tr>
        <!--<tr>
            <td valign="top">
                <div align="right">选择图片：</div>
            </td>
            <td>
                <input type="file" name="photo" value="选择图片" />
            </td>
        </tr>-->

        <tr>
            <td height="40" valign="top"><div align="right">联系方式：</div></td>
            <td valign="top"><label>
                <input type="text" name="information" />
                <span class="ps">（QQ、电话或微信）</span></label></td>
        </tr>
        <tr>
            <td height="35" valign="top"><div align="right">校区：</div></td>
            <td valign="top"><label>
                <select name="campus">
                    <option selected="selected">中心校区</option>
                    <option>金家岭校区</option>
                </select>
            </label></td>
        </tr>
        <!--<tr bordercolor="#0033FF">
            <td height="54" colspan="2" valign="middle">
                <div align="center" class="STYLE1">
                    <input name="Submit2" type="button" class="button" value="上传图片" />
                </div></td>
        </tr>-->
        <tr>
            <td height="75" valign="middle">

                <div align="right">
                    <input name="Submit" type="submit" class="button" value="发布" />
                </div>
                <div align="center"></div></td>
            <td valign="middle"><label>
                <input name="Submit3" type="reset" class="button" value="清空" />
            </label></td>
        </tr>
    </table>
</form>
</body>
</html>
