<%--
  Created by IntelliJ IDEA.
  User: iminghuang
  Date: 2019/8/20
  Time: 下午 02:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--閏年:被4整除，且不被100整除，但又能被400整除者--%>

<html>
<head>
    <title>Test</title>
</head>
<body>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<select name="yearSelect" id="yearSelect" onchange="setYear()">
    <option value="">選擇年份</option>

</select>
<select name="monthSelect" id="monthSelect" onchange="setDay()">
    <option value="">選擇月份</option>
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    <option value="4">4</option>
    <option value="5">5</option>
    <option value="6">6</option>
    <option value="7">7</option>
    <option value="8">8</option>
    <option value="9">9</option>
    <option value="10">10</option>
    <option value="11">11</option>
    <option value="12">12</option>
</select>
<select name="daySelect" id="daySelect">
    <option value="">選擇日期</option>

</select>

<script>


    $(document).ready(function () {

        setYear();
        setDay();

        $('#monthSelect').chage(function () {
            if (monthSelect === 2) {
                $("#daySelect").append("<option value='29'>29</option>");
            }
        });

    });

    function setYear() {
        for (var i = 1911; i <= 2020; i++) {
            $("#yearSelect").append("<option value='" + i + "'>" + i + "</option>");
        }
    }

    function setDay() {
        var yearSelect = document.getElementById("yearSelect").value;
        var monthSelect = document.getElementById("monthSelect").value;
        var monthDays = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

        var getDay = monthDays[monthSelect - 1];
        for (var i = 1; i <= getDay; i++) {
            $("#daySelect").append("<option value='" + i + "'>" + i + "</option>");
        }
        if (monthSelect == '2') {
            if (yearSelect % 4 === 0 || (yearSelect % 100 === 0 && yearSelect % 400 === 0)) {
                $("#daySelect").append("<option value='29'>29</option>");
            }
        }
    }

</script>
</body>
</html>

<%--changefuction(jquery)--%>
