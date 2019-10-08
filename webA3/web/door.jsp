<%--
  Created by IntelliJ IDEA.
  User: iminghuang
  Date: 2019/8/22
  Time: 上午 09:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Door</title>
</head>
<body>
<form action="Home" method="get">
    <%
        String initContext = config.getServletContext().getInitParameter("PASS_CODE");
    %>
    <input type="text" value="initialCode" name="SentText" id="SentText">
    <input type="submit" name="submit"><br><br>
    <%
        String s = (String) request.getAttribute("error");
        if (s != null) {
        out.print("錯誤!!!");
    }
%>

</form>
<%--<script>--%>
<%--    function showFlag() {--%>
<%--        if (document.getElementById("SentText").value != "<%=initContext%>") {--%>
<%--            alert("Input Wrong");--%>
<%--        }--%>
<%--    }--%>
<%--</script>--%>

</body>
</html>
