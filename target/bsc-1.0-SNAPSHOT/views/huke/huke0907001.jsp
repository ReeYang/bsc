<%--
  Created by IntelliJ IDEA.
  User: HUKE
  Date: 2018/9/7
  Time: 22:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>HuKe</title>
    <style type="text/css"></style>
    <script> function myFunction(){
        var  nameselect=document.getElementById("mumbers");//select的id
        var index=nameselect.selectedIndex ;
        alert( nameselect.options[index].text);   //拿到选中项的文本
    }
    </script>
</head>
<body>
<form action="" method="get" onsubmit="return submit()">
    <table border="1" style="width: 700px;height: 600px;"><!--宽度700高度600-->
        <tr><!--第一行-->
            <td>1</td>
            <td>2</td>
            <td> name:<input type="text" maxlength="10" value="${2014+2016}"></td><!--3#-->
            <td rowspan="8" width="30%">
              <textarea rows="15" value="组员名字">胡珂杨芮于颖王希雅朱美娟马晨皓
                <%
                    int array[]={0,1,2,3,4,5,6,7,8,9,10};int sum=0;
                    for(int i=0;i<array.length;i++)
                    {sum+=array[i];
                        out.print(" "+sum);
                    }%></textarea>
            </td>
            <td>5</td>
            <td colspan="2"rowspan="3">     <!--第一行六七列-->
                <img alt="青岛大学" src="/images/image.jpg" width="40px" height="40px">
            </td>
        </tr>
        <tr><!--第二行-->
            <td>7</td>
            <td>8</td>
            <td> password:<input type="password" name="password"> </td><!--第二行第三列，9#-->
            <td>10</td>
            <!--第二行六七列-->
        </tr>
        <tr><!--第三行-->
            <td>11</td>
            <td>12</td>
            <td> 男<input type="radio" name="sex" value="男">
                女<input type="radio" name="sex" value="女">
            </td>
            <td>14</td>
        </tr>
        <tr style="height: 20%"><!--第四行高度占比-->
            <td colspan="2">15</td><!--一二列合并-->

            <td><!--22<td class="four"></td>#-->
                <input type="checkbox" name="fruit" value="apple">苹果<!--文字在复选框之后-->
                <input type="checkbox" name="fruit" value="banana">香蕉
                <input type="checkbox" name="fruit" value="orange">橘子
                <input type="checkbox" name="fruit" value="watermelon">西瓜
            </td>
            <td>17</td>
            <td>18</td>
            <td>19</td>
        </tr>
        <tr><!--28#-->
            <td>20</td>
            <td>21</td>
            <td >
                <select id="mumbers">
                    <option value="mumber" onclick="myFunction()" >胡珂</option>
                    <option value="mumber" onclick="myFunction()" >杨芮</option>
                    <option value="mumber" onclick="myFunction()" >于颖</option>
                    <option value="mumber" onclick="myFunction()" >王希雅</option>
                    <option value="mumber" onclick="myFunction()" >朱美娟</option>
                    <option value="mumber" onclick="myFunction()" >马晨皓</option>
                </select></td>
            <td>23</td>
            <td align="right">胡珂</td>
            <td>25</td>
        </tr>
        <tr><!--第六行 <td class="four"></td>-->
            <td>26</td>
            <td>27</td>
            <td>
                <form action=" "><input type="submit" name="submit" value="提交"></form>
                <input type="reset" name="reset">
            </td><!--第六行第五列-->
            <td align="center">杨芮于颖王希雅朱美娟马晨皓</td>
            <td>30</td>
            <td>31</td>
        </tr>
        <tr>
            <td>32</td>
            <td>33</td>
            <td>
                create table SC <br/>
                (Sno  CHAR(9) NOT NULL,<br/>
                Cno  CHAR(4) NOT NULL,<br/>
                Grade SMALLINT,<br/>
                PRIMARY KEY(Sno,Cno),<br/>
                FOREIGN KEY (Sno) REFERENCES Student(Sno),<br/>
                FOREIGN KEY (Cno) REFERENCES Course(Cno)<br/>
                );
            </td>

            <td>SELECT [ALL|DISTINCT]&lt;目标列表达式&gt;[别名][,&lt;目标列表达式&gt;[别名]]...<br/>FROM &lt;表名或视图名&gt; [别名] [,&lt;表名或视图名&gt;[别名]]...|(&lt;SELECT语句&gt;)[AS]&lt;别名&gt;
                <br/>[WHERE&lt;条件表达式&gt;]<br/>[GROUP BY&lt;列名1&gt;<br/>[HAVING&lt;条件表达式&gt;]]<br/>[ORDER BY&lt;列名2&gt;[ASC|DESC]];
            </td>
            <td>36</td>
            <td>37</td>
        </tr>
        <tr>
            <td>38</td>
            <td>39</td>
            <td>
                UPDATE &lt;表名&gt;<br/>SET&lt;列名&gt;=&lt;表达式&gt;[,&lt;列名&gt;=&lt;表达式&gt;]...<br/>[WHERE&lt;条件&gt;];
            </td>
            <td>DELETE FROM&lt;表名&gt; [WHERE &lt;条件&gt;];</td>
            <td>42</td>
            <td style="color: blue;">李林真</td><!--我的名字，蓝色-->
        </tr>
    </table>
</form>
</body>
</html>
