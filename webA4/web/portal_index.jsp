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
    <title>portal_index</title>
</head>
<body>
<%
    String account = (String) session.getAttribute("account");
    System.out.println("portal_index session: " + account);
%>
<h2>portal_index This is the value of account:(auth forward session)</h2>
<%=account%><br><br>
<a href="logout.jsp">logout</a>
</body>

</html>
