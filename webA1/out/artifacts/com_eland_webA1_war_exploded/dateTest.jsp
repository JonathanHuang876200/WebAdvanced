<%--
  Created by IntelliJ IDEA.
  User: iminghuang
  Date: 2019/8/20
  Time: 下午 03:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>dateTest</title>
</head>
<body>


<script>
    var lastDay = new Date('2018', '05', 0);
    var year = lastDay.getFullYear();
    var month = lastDay.getMonth() + 1;
    month = month < 10 ? '0' + month : month;
    var day = lastDay.getDate();
    day = day < 10 ? '0' + day : day;
    console.log(year);
    console.log(month);
    console.log(day);


</script>

</body>
</html>
