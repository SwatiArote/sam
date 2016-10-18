<%--
  Created by IntelliJ IDEA.
  User: swati
  Date: 16/10/16
  Time: 5:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Record Cleared</title>
    <style type="text/css">
        body {
            background-image: url('http://wallpaper.zone/img/3494129.jpg');
        }
    </style>
</head>
<body>
<form action="/loginForReset" method="post">
    <div align="centre">
    <h2>${msg}</h2>
        <table>
            <tr>
                <th><font size="5">Login:</font></th>
                <th></th>
            </tr>
            <tr>
                <td>  <p><font size="5">Name:</font></p></td>
                <td>  <p><font size="5"><input type="text" name="name"></font></p></td>
            </tr>

            <tr>
                <td>  <p><font size="5">Password:</font></p></td>
                <td>  <p><font size="5"> <input type="password" name="password"></font></p></td>
            </tr>
        </table>

        <br>
        <br>
    <p><input type="submit" value="submit" style="height: 30px; width: 100px;left: 250px; top: 250px;"></p>

    <br><br>
            <a href="/home.html"><font size="5"> Back to homepage</font></a>

</div>

    </form>
</body>
</html>
