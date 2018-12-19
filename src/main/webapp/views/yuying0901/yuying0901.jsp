<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/9/10
  Time: 23:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<meta charset="UTF-8">
<html>
<head>
    <title>yuying0901</title>
</head>
<body>
<table style="width:700px;height:600px" border="1">
    <tr>
        <td>1</td>
        <td>2</td>
        <td>
            <form>
                name:<input type="text" id="name" name="name" maxlength="10"
                            value="<% int sum=2014+2016;
                out.print(sum);%>">
            </form>
        </td>
        <td rowspan="8" width="=30%">
      <textarea rows="20" cols="15">
        于颖
        胡珂
        杨芮
        王希雅
        朱美娟
        马晨皓
        <%
            out.print("\n");
            int a=0;
            for(int i=0;i<11;i++){
                a=a+i;
                out.println(a);
            }
        %>
      </textarea>
        </td>
        <td>5</td>
        <td colspan="2" rowspan="3">
            <img src="/images/image.jpg"  width="40px" height="40px" alt="青大校徽">
        </td>
    </tr>

    <tr>
        <td>7</td>
        <td>8</td>
        <td>
            <form>
                password:<input type="password" name="pwd">
            </form>
        </td>
        <td>10</td>
    </tr>

    <tr>
        <td>11</td>
        <td>12</td>
        <td>
            <form>
                男<input type="radio" name="sex" value="男"><br>
                女<input type="radio" name="sex" value="女">
            </form>
        </td>
        <td>14</td>
    </tr>

    <tr style="height:20%">
        <td colspan="2" >
            <p>
                CREATE TABLE Student<br>
                (<br>
                Number varchar(10),<br>
                Name varchar,<br>
                Age varchar(2),<br>
                Sex varchar,<br>
                Grade varchar(3),
                )
            </p>
        </td>
        <td>
            <form>
                <input type="checkbox" name="fruit" value="apple">apple<br>
                <input type="checkbox" name="fruit" value="pear">pear<br>
                <input type="checkbox" name="fruit" value="banana">banana<br>
                <input type="checkbox" name="fruit" value="peach">peach<br>
            </form>
        </td>
        <td>17</td>
        <td>18</td>
        <td>
            <p>
                SELECT * FROM Student<br>
                ORDER BY Grade;
            </p>
        </td>
    </tr>

    <tr>
        <td>20</td>
        <td>21</td>
        <td >
            <select >
                <script>
                    function myFunction1()
                    {
                        alert("胡珂");
                    }
                    function myFunction2()
                    {
                        alert("杨芮");
                    }
                    function myFunction3()
                    {
                        alert("于颖");
                    }
                    function myFunction4()
                    {
                        alert("王希雅");
                    }
                    function myFunction5()
                    {
                        alert("朱美娟");
                    }
                    function myFunction6()
                    {
                        alert("马晨皓");
                    }
                </script>
                <option value="mumber1" onclick="myFunction1()" >胡珂</option>

                <option value="mumber2" onclick="myFunction2()" >杨芮</option>
                <option value="mumber3" onclick="myFunction3()" >于颖</option>
                <option value="mumber4" onclick="myFunction4()" >王希雅</option>
                <option value="mumber5" onclick="myFunction5()" >朱美娟</option>
                <option value="mumber6" onclick="myFunction6()" >马晨皓</option>
            </select>
        </td>
        <td>23</td>
        <td align="right">于颖</td>
        <td>25</td>
    </tr>

    <tr>
        <td>26</td>
        <td>27</td>
        <td>
            <input type="reset" value="重置">
            <input type="submit" value="提交">
        </td>
        <td align="center">杨芮</td>
        <td>30</td>
        <td>31</td>
    </tr>

    <tr>
        <td>32</td>
        <td>33</td>
        <td>
            <p>
                UPDATE Student<br>
                SET Age='19'<br>
                WHERE Number='20162047';
            </p>
        </td>
        <td>35</td>
        <td>36</td>
        <td>37</td>
    </tr>

    <tr>
        <td>38</td>
        <td>39</td>
        <td>
            <p>
                DELETE FROM Student<br>
                WHERE Number='20135961';
            </p>
        </td>
        <td>41</td>
        <td>42</td>
        <td><font color="blue">李林真</font></td>
    </tr>

</table>

</body>
</html>

