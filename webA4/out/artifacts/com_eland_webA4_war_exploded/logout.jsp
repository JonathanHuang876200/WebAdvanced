<%--
  Created by IntelliJ IDEA.
  User: JonathanHuang
  Date: 2019/8/22
  Time: 下午 11:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>logout</title>
</head>
<body>
<%
    session.removeAttribute("account");
    System.out.println("session: "+session.getAttribute("account"));
%>
</body>
</html>
