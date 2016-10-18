<%--
  Created by IntelliJ IDEA.
  User: swati
  Date: 16/10/16
  Time: 3:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Previous Attendance</title>
    <style type="text/css">
        body {
            background-image: url('http://wallpaper.zone/img/3494129.jpg');
        }
    </style>
</head>
<body>

<div align="center">
    <table border="1" cellpadding="6" >
        <caption><font size="5">Previous Record</font></caption>
        <tr bgcolor="#adff2f"  >
            <th >Sr No.</th>
            <th>Name</th>
            <th>LateMarks</th>
            <th>Penalty (Rs.)</th>
        </tr>

        <tr bgcolor="aqua">
            <td>1</td>
            <td>Poonam</td>
            <td>${prevRecord.record.get("poonam")}</td>
            <td>${prevRecord.record.get("poonam")*50}</td>

        </tr>
        <tr bgcolor="aqua" >
            <td>2</td>
            <td>Vardhaman</td>
            <td>${prevRecord.record.get("vardhaman")}</td>
            <td>${prevRecord.record.get("vardhaman")*50}</td>
        </tr>
        <tr bgcolor="aqua" >
            <td>3</td>
            <td>Raja</td>
            <td>${prevRecord.record.get("raja")}</td>
            <td>${prevRecord.record.get("raja")*50}</td>
        </tr>
        <tr bgcolor="aqua" >
            <td>4</td>
            <td>Rohit</td>
            <td>${prevRecord.record.get("rohit")}</td>
            <td>${prevRecord.record.get("rohit")*50}</td>
        </tr>
        <tr bgcolor="aqua">
            <td>5</td>
            <td>Pradnya</td>
            <td>${prevRecord.record.get("pradnya")}</td>
            <td>${prevRecord.record.get("pradnya")*50}</td>

        </tr>
        <tr bgcolor="aqua">
            <td>6</td>
            <td>Vijay</td>
            <td>${prevRecord.record.get("vijay")}</td>
            <td>${prevRecord.record.get("vijay")*50}</td>
        </tr>
        <tr bgcolor="aqua" >
            <td>7</td>
            <td>Deepak</td>
            <td>${prevRecord.record.get("deepak")}</td>
            <td>${prevRecord.record.get("deepak")*50}</td>
        </tr>
        <tr bgcolor="aqua" >
            <td>8</td>
            <td>Swati</td>
            <td>${prevRecord.record.get("swati")}</td>
            <td>${prevRecord.record.get("swati")*50}</td>
        </tr>
        <tr bgcolor="aqua" >
            <td>9</td>
            <td>Anurag</td>
            <td>${prevRecord.record.get("anurag")}</td>
            <td>${prevRecord.record.get("anurag")*50}</td>
        </tr>
        <tr bgcolor="aqua" >
            <td>10</td>
            <td>Irshad</td>
            <td>${prevRecord.record.get("irshad")}</td>
            <td>${prevRecord.record.get("irshad")*50}</td>
        </tr>
        <tr bgcolor="aqua" >
            <td>11</td>
            <td>Yatish</td>
            <td>${prevRecord.record.get("yatish")}</td>
            <td>${prevRecord.record.get("yatish")*50}</td>
        </tr>
        <tr bgcolor="aqua" >
            <td>12</td>
            <td>Om</td>
            <td>${prevRecord.record.get("om")}</td>
            <td>${prevRecord.record.get("om")*50}</td>
        </tr>
        <tr bgcolor="aqua" >
            <td>13</td>
            <td>Sumit</td>
            <td>${prevRecord.record.get("sumit")}</td>
            <td>${prevRecord.record.get("sumit")*50}</td>
        </tr>
        <tr bgcolor="aqua" >
            <td>14</td>
            <td>Rajeev</td>
            <td>${prevRecord.record.get("rajeev")}</td>
            <td>${prevRecord.record.get("rajeev")*50}</td>
        </tr>
        <tr bgcolor="aqua" >
            <td>15</td>
            <td>Santosh</td>
            <td>${prevRecord.record.get("santosh")}</td>
            <td>${prevRecord.record.get("santosh")*50}</td>
        </tr>
        <tr bgcolor="aqua" >
            <td>16</td>
            <td>Prashant</td>
            <td>${prevRecord.record.get("prashant")}</td>
            <td>${prevRecord.record.get("prashant")*50}</td>
        </tr>

    </table>
    <br>
    <td><a href="/home.html"><font size="4" color="black"> Back to home page </font></a></td>
</div>



</body>
</html>
