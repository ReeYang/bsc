<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>YangRui</title>
</head>
<body>
<form action="" method="get" onsubmit="return submit()">
    <table border="1" width="700px" height="600px">
        <tr>
            <td>1#</td>
            <td>2#</td>
            <td> name:<input type="text" maxlength="10" value="${2014+2016}"></td>
            <td rowspan="8" width="30%">
                  <textarea rows="10" value="组员名字">胡珂杨芮于颖王希雅朱美娟马晨皓
                <%
                    int array[]={0,1,2,3,4,5,6,7,8,9,10};int sum=0;
                    for(int i=0;i<array.length;i++)
                    {sum+=array[i];
                        out.print("  "+sum);
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
                <input type="checkbox" name="fruit" value="apple">香蕉<br>
                <input type="checkbox" name="fruit" value="banana">苹果<br>
                <input type="checkbox" name="fruit" value="orange">西瓜<br>
                <input type="checkbox" name="fruit" value="watermelon">橘子
            </td>
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
            <td>18#</td>
            <td>19#</td>
        </tr>
        <tr>
            <td>20#</td>
            <td>21#</td>
            <td >
                <select id="names">
                    <script>
                        function myFunction()
                        {
                            var  myselect=document.getElementById("names");
                            var index=myselect.selectedIndex ;
                            alert( myselect.options[index].text);   //拿到选中项的文本
                        }
                    </script>
                    <option name="mumber" onclick="myFunction()"  >胡珂</option>
                    <option name="mumber" onclick="myFunction()"  >杨芮</option>
                    <option name="mumber" onclick="myFunction()"  >于颖</option>
                    <option name="mumber" onclick="myFunction()"  >王希雅</option>
                    <option name="mumber" onclick="myFunction()"  >朱美娟</option>
                    <option name="mumber" onclick="myFunction()"  >马晨皓</option>
                </select></td>
            <td>23#</td>
            <td align="right">杨芮</td>
            <td>25#</td>
        </tr>
        <tr>
            <td>26#</td>
            <td>27#</td>
            <td>
                <input type="submit" name="submit" value="提交">
                <input type="reset" name="reset" value="重置"></td>
            <td align="center">胡珂于颖马晨皓朱美娟王希雅</td>
            <td>30#</td>
            <td>31#</td>
        </tr>
        <tr>
            <td>32#</td>
            <td>
                UPDATE SC              <br/>
                SET Grade =0           <br/>
                WHERE Sno IN           <br/>
                (SELECT Sno        <br/>
                FROM Student      <br/>
                WHERE Sdept='CS');   <br/>
            </td>
            <td>34#</td>
            <td>
                SELECT Sno,Grade   <br/>
                FROM SC            <br/>
                WHERE Cno='3'      <br/>
                ORDER BY Grade DESC;
            </td>
            <td>36#</td>
            <td>37#</td>
        </tr>
        <tr>
            <td>38#</td>
            <td>39#</td>
            <td>
                DELETE  <br/>
                FROM SC <br/>
                WHERE Sno IN      <br/>
                (SELECT Sno   <br/>
                FROM Student       <br/>
                WHERE Sdept='CS');  <br/>
            </td>
            <td>41#</td>
            <td>42#</td>
            <td style="color: blue;">李林真</td>
        </tr>
    </table>
</form>
</body>
</html>
