<%--
  Created by IntelliJ IDEA.
  User: swati
  Date: 15/10/16
  Time: 11:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home page</title>
    <style type="text/css">
        body {
            background-image: url('http://wallpaper.zone/img/3494129.jpg');
            /*http://crunchify.com/bg.png');*/
        }
    </style>
</head>
<body>

<%--<h3 align="centre" color="red">Welcome To Standup Attendance Mangaer </h3>--%>
<div align="center">
    <p align="centre"><font color="#00008b" size="6">Standup Attendance Manager Of CNFD Team</font></p>
</div>

<br><br>
<marquee behavior="alternate" direction="left" >

    <img src="http://derekhuether.com/wp-content/uploads/2011/02/scrum_team.png" width="500" height="300" hspace="20"/>
    <img src="https://nirbhaygandhi.files.wordpress.com/2015/01/standup-meeting.jpg" width="500" height="300" hspace="20"/>
    <img src="http://www.legalproductivity.com/wp-content/uploads/2014/01/stand-up-meetings.jpg"  width="500" height="300" hspace="20"/>


    <%--<img src="<c:url  value='/resources/images/s1.png'/>" width="500" height="300" hspace="20"/>--%>
    <%--<img src="/home/swati/Java-Projects-Team/StandUpProject1/src/main/webapp/resources/images/s3.png" width="500" height="300" hspace="20"/>--%>
</marquee>
<%--alt="Natural"--%>
<br><br>
<%--<a href="/attendanceofday.html"><font size="3"> Mark Todays Attaindance</font></a>--%>
<%--<t><a href="/login.html"><font size="3">Show Previous Record</font></a></t>--%>
<table cellspacing="25">
    <th></th>
    <th></th>
    <th></th>
    <th></th>
    <tr>
        <td><a href="/attendanceofday"><font size="4"> Mark Todays Attendance</font></a></td>
        <td><a href="/previousrecord.html"><font size="4">Show Previous Attendance</font></a></td>
        <td><a href="/clearRecord"><font size="4">Clear Previous Record</font></a></td>
    </tr>
</table>


</body>
</html>
