<%--
  Created by IntelliJ IDEA.
  User: manman
  Date: 2018/10/10
  Time: 21:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title>wangxiya0901</title>
</head>
<body>
<table width="700"height="600" align=center>
    <tr>
        <td height="68.5" width="81.6">A1</td><td width="81.6">A2</td><td width="81.6">A3</td><td rowspan="8" width="210"><p>update student</p><p>set sage="21";</p><p>where sno="2016204436"</p></td><td width="81.6">A5</td>
        <td colspan="2" rowspan="3"><p>select sno from SC</p>
            <p>group by sno </p><p>having count(*);</p></td>
    </tr>
    <tr>
        <td>B1</td><td>B2</td><td>B3</td><td>B5</td>
    </tr>
    <tr>
        <td>C1</td>
        <td>C2</td><td>C3</td><td>C5</td>
    </tr>
    <tr >
        <td colspan="2" height="120"><p>delete from student</p><p>where sno="2016204436";</p></td>
        <td height="120">D3</td>
        <td height="120">D5</td>
        <td height="120" width="81.6"><p>ctreate view view1</p>
            <p>as</p>
            <p>slecet a,b</p>
            <p> from table1 </p></td>
        <td height="120" width="81.6" >D7</td>
    </tr>
    <tr>
        <td>E1</td><td>E2</td><td>E3</td><td>E5</td><td>E6</td><td>E7</td>
    </tr>
    <tr>
        <td>F1</td><td>F2</td><td>F3</td><td>F5</td><td align="right">王希雅</td><td>F7</td>
    </tr>
    <tr>
        <td>G1</td><td>G2</td><td>G3</td><td>G5</td><td align="center">朱美娟</td><td>G7</td>
    </tr>
    <tr>
        <td>H1</td><td>H2</td><td>H3</td><td>H5</td><td>H6</td><td bgcolor="#0066FF">李林真</td>
    </tr>
</table>
<p align="center">
    <input name="name" type="text" value="4030" maxlength="10" />
</p>
<p align="center">
    <input name="password" type="password" />
</p>
<p align="center">
    <input name="sex" type="text" value="性别选择" maxlength="10" />

    女<input name="name1" type="radio" value="女" />
    男<input name="name2" type="radio" value="男" />
</p>
<p align="center">
    <input name="fruit" type="text" value="水果多选" maxlength="10" />

    <input name="name1" type="checkbox" value="菠萝" />菠萝
    <input name="name2" type="checkbox" value="香蕉" />香蕉
    <input name="name3" type="checkbox" value="芒果" />芒果
    <input name="name4" type="checkbox" value="葡萄" />葡萄
</p>
<p align="center">
    <select name="select1" size="6">
        <option value="machenhao" selected="selected">马晨皓</option>
        <option value="wangxiya">王希雅</option>
        <option value="yuying">于颖</option>
        <option value="zhumeijuan">朱美娟</option>
        <option value="yangrui">杨芮</option>
        <option value="huke">胡珂</option>
    </select>
</p>
<p align="center">
    <input type="submit"name="mysubmir" />
</p>
<p align="center">
    <input type="reset"name="myreset" />
</p>
<p align="center">
	<textarea name="textarea" cols="40" rows="8">
		马晨皓 王希雅 于颖 朱美娟 杨芮 胡珂
		0+1+2+3+4+5+6+7+8+9+10=55
	</textarea>
</p>
<p align="center">
    <input name="page1" type="image" src="../百度网盘/2017-09-10 192100.jpg" width="120" height="200" />
</p>
<p align="center">
    <a href="http://localhost:8080/qduam/test/lilinzhen/lilinzhen0901">跳转</a>
</body>
</html>

