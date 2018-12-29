<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: HUKE
  Date: 2018/11/10
  Time: 15:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>edit</title>
</head>
<body>
<%--@elvariable id="trade" type="com.bsc.modules.trade.entity.Trade"--%>
<form:form modelAttribute="trade" action="../save"><!--modelAttribute该form绑定的是哪个Model-->
   <table align="center">
       <tr>
           <td>标签</td>
           <td><form:input path="label"/></td>
       </tr>
       <tr>
           <td>交易类型</td>
           <td><form:select path="type">
               <form:option value="出售"/>
               <form:option value="求购"/>
               <form:option value="租赁"/>
               </form:select>
           </td>
       </tr>
       <tr>
           <td>原价</td>
           <td><form:input path="oprice"/></td>
       </tr>
       <tr>
           <td>价格</td>
           <td><form:input path="price"/></td>
       </tr>
       <tr>
           <td>联系方式</td>
           <td><form:input path="information"/></td>
       </tr>
       <tr>
           <td>校区</td>
           <td>
               <form:select path="campus">
                   <form:option value="中心校区"/>
                   <form:option value="金家岭校区"/>
               </form:select>
           </td>
       </tr>
       <tr>
           <td><input type="submit" value="提交"/> </td>
           <td><input type="reset" value="重置"/> </td>

       </tr>
   </table>
</form:form>
</body>
</html>
