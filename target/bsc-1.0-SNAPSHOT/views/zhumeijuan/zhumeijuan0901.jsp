<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>ZhuMeiJuan</title>
    <style type="text/css"></style>
</head>
<body>
<from action="" method="get" onSubmin="return submit()">
    <table border="1" style="width: 700px;height: 600px;">
        <tr>
            <td>1#</td>
            <td>2#</td>
            <td> name:<input type="text" maxlength="10" value="${2014+2016}"></td>
            <td rowspan="8" width="30%">
                <textarea rows="10" value="组员名字">王希雅朱美娟马晨皓胡珂杨芮于颖
                    <%
                    int array[]={0,1,2,3,4,5,6,7,8,9,10};int sum=0;
                    for(int i=0;i<array.length;i++)
                    {sum+=array[i];
                        out.print(" "+sum);
                    }%></textarea>
            </td>
            <td>5#</td>
            <td colspan="2" rowspan="3">
                <img alt="青岛大学" src="/images/image.jpg" width="40px" height="40px">
            </td>
        </tr>
        <tr>
            <td>7#</td>
            <td>8#</td>
            <td>password:<input type="password" name="password"> </td>
            <td>10#</td>
        </tr>
        <tr>
            <td>11#</td>
            <td>12#</td>
            <td >
                男<input type="radio" name="sex" value="男">
                女<input type="radio" name="sex" value="女">
            </td>
            <td>14#</td>
        </tr>
        <tr style="height: 20% ">
            <td colspan="2">15#</td>
            <td>
                <input type="checkbox" name="fruit" value="peach">桃子<br>
                <input type="checkbox" name="fruit" value="banana">香蕉<br>
                <input type="checkbox" name="fruit" value=" pineapple">菠萝<br>
                <input type="checkbox" name="fruit" value="orange">橙子
            </td>
            <td>
                create table Student <br/>
                (Sno  CHAR(9) NOT NULL,<br/>
                Sname  CHAR(4) NOT NULL,<br/>
                Ssex  CHAR(4) NOT NULL,<br/>
                PRIMARY KEY(Sno),<br/>
                );
            </td>
            <td>18#</td>
            <td>19#</td>
        </tr>
        <tr>
            <td>20#</td>
            <td>21#</td>
            <td >
                <select >
                    <script>
                        function myFunction1()
                        {
                            alert("王希雅");
                        }
                        function myFunction2()
                        {
                            alert("朱美娟");
                        }
                        function myFunction3()
                        {
                            alert("马晨皓");
                        }
                        function myFunction4()
                        {
                            alert("胡珂");
                        }
                        function myFunction5()
                        {
                            alert("杨芮");
                        }
                        function myFunction6()
                        {
                            alert("于颖");
                        }
                    </script>
                        <option value="mumber1" onClick=""></option>
                        <option value="mumber1" onClick="myFunction1()" >王希雅</option>
                        <option value="mumber2" onClick="myFunction2()" >朱美娟</option>
                        <option value="mumber3" onClick="myFunction3()" >马晨皓</option>
                        <option value="mumber4" onClick="myFunction4()" >胡可</option>
                        <option value="mumber5" onClick="myFunction5()" >杨芮</option>
                        <option value="mumber6" onClick="myFunction6()" >于颖</option>
                        </select>
            </td>
            <td>23#</td>
            <td align="right">朱美娟</td>
            <td>25#</td>
        <tr>
			<td>
                UPDATE SC              <br/>
                SET Grade =0           <br/>
                WHERE Sno IN           <br/>
                (SELECT Sno        <br/>
                FROM Student      <br/>
                WHERE Sdept='CS');   <br/>
            </td>
            <td>27#</td>
            <td><button type="button" onClick="alert('submit')">提交</button>
                <button type="button" onClick="alert('try again')">重置</button></td>
            <td align="center">王希雅马晨皓胡珂杨芮于颖</td>
            <td>30#</td>
            <td>31#</td>
        </tr>
        <tr>
            <td>32#</td>
           <td>33#</td>
            <td>34#</td>
            <td>
                SELECT *   <br/>
                FROM SC            
            </td>
            <td>36#</td>
            <td>37#</td>
        </tr>
        <tr>
            <td>38#</td>
            <td>39#</td>      
            <td>41#</td>
			<td>42#</td>
			<td>
                DELETE *<br/>
                FROM SC 
            </td>
            
            <td style="color: blue;">李林真</td>
        </tr>
    </table>
</from>
</body>
</html>
