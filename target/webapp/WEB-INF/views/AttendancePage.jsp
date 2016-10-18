<%--
  Created by IntelliJ IDEA.
  User: swati
  Date: 15/10/16
  Time: 11:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Attendance of Day</title>
    <style type="text/css">
        body {
            background-image: url('http://crunchify.com/bg.png');
        }
    </style>

</head>

<body>
<form action="/recordsaved" method="post" >


<div align="center">
    <table border="1" cellpadding="4" >
        <caption><font  size="4">Attendance of Day:<input type="date" name="today"></font></caption>
        <tr bgcolor="#adff2f"  >
            <th >Sr No.</th>
            <th>Name</th>
            <th>Attendance</th>
        </tr>

            <tr bgcolor="aqua">
                <td>1</td>
                <td>Poonam</td>
                <td><input type="CHECKBOX" CHECKED name="attendance" value="poonam"style="width:20px;height:15px;"></td>
            </tr>
        <tr bgcolor="aqua" >
            <td>2</td>
            <td>Vardhaman</td>
            <td><input type="CHECKBOX" CHECKED name="attendance" value="vardhaman" style="width:20px;height:15px;"></td>
        </tr>
        <tr bgcolor="aqua" >
            <td>3</td>
            <td>Raja</td>
            <td><input type="CHECKBOX" CHECKED name="attendance" value="raja" style="width:20px;height:15px;"></td>
        </tr>
        <tr bgcolor="aqua" >
            <td>4</td>
            <td>Rohit</td>
            <td><input type="CHECKBOX" CHECKED name="attendance" value="rohit" style="width:20px;height:15px;"></td>
        </tr>
        <tr bgcolor="aqua">
            <td>5</td>
            <td>Pradnya</td>
            <td><input type="CHECKBOX" CHECKED name="attendance" value="pradnya" style="width:20px;height:15px;"></td>
        </tr>
        <tr bgcolor="aqua">
            <td>6</td>
            <td>Vijay</td>
            <td><input type="CHECKBOX" CHECKED name="attendance" value="vijay" style="width:20px;height:15px;"></td>
        </tr>
        <tr bgcolor="aqua" >
            <td>7</td>
            <td>Deepak</td>
            <td><input type="CHECKBOX" CHECKED name="attendance" value="deepak" style="width:20px;height:15px;"></td>
        </tr>
        <tr bgcolor="aqua" >
            <td>8</td>
            <td>Swati</td>
            <td><input type="CHECKBOX" CHECKED name="attendance" value="swati" style="width:20px;height:15px;"></td>
        </tr>
        <tr bgcolor="aqua" >
            <td>9</td>
            <td>Anurag</td>
            <td><input type="CHECKBOX" CHECKED name="attendance" value="anurag" style="width:20px;height:15px;"></td>
        </tr>
        <tr bgcolor="aqua" >
            <td>10</td>
            <td>Irshad</td>
            <td><input type="CHECKBOX" CHECKED name="attendance" value="irshad" style="width:20px;height:15px;"></td>
        </tr>
        <tr bgcolor="aqua" >
            <td>11</td>
            <td>Yatish</td>
            <td><input type="CHECKBOX" CHECKED name="attendance" value="yatish" style="width:20px;height:15px;"></td>
        </tr>
        <tr bgcolor="aqua" >
            <td>12</td>
            <td>Om</td>
            <td><input type="CHECKBOX" CHECKED name="attendance" value="om" style="width:20px;height:15px;"></td>
        </tr>
        <tr bgcolor="aqua" >
            <td>13</td>
            <td>Sumit</td>
            <td><input type="CHECKBOX" CHECKED name="attendance" value="sumit" style="width:20px;height:15px;"></td>
        </tr>
        <tr bgcolor="aqua" >
            <td>14</td>
            <td>Rajeev</td>
            <td><input type="CHECKBOX" CHECKED name="attendance" value="rajeev" style="width:20px;height:15px;"></td>
        </tr>
        <tr bgcolor="aqua" >
            <td>15</td>
            <td>Santosh</td>
            <td><input type="CHECKBOX" CHECKED name="attendance" value="santosh" style="width:20px;height:15px;"></td>
        </tr>
        <tr bgcolor="aqua" >
            <td>16</td>
            <td>Prashant</td>
            <td><input type="CHECKBOX" CHECKED name="attendance" value="prashant" style="width:20px;height:15px;"></td>
        </tr>

    </table>
    <br>

    <input type="submit" name="done" value="Done">
</div>
</form>
</body>
</html>
