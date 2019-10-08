<%--
  Created by IntelliJ IDEA.
  User: JonathanHuang
  Date: 2019/8/22
  Time: 下午 10:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>auth</title>
</head>
<body>

<%
    String inputAccount = request.getParameter("inputAccount");
    System.out.println("auth: " + inputAccount);
    session.setAttribute("account", inputAccount);
    response.sendRedirect("portal_index.jsp");
%>


</body>
</html>
