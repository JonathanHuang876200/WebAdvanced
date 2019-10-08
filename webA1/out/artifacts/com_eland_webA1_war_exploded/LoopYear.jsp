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
<select name="monthSelect" id="monthSelect" onchange="setMonth()">
    <option value="">選擇月份</option>
</select>
<select name="daySelect" id="daySelect" onchange="setDay()">
    <option value="">選擇日期</option>
</select>

<script>
    $(document).ready(function () {
        for (var i = 2000; i <= new Date().getFullYear(); i++) {
            $("#yearSelect").append("<option value='" + i + "'>" + i + "</option>");
        }
    });

    function setYear() {
        initMonth();
        initDay();
        setMonth();
        for (var i = 2000; i <= new Date().getFullYear(); i++) {    /*date.getFullYear() == date.getYear() + 1900*/
            var year = document.getElementById("yearSelect").value;
            if (year !== "選擇年份") {
                initMonth();
                initDay();
                setMonth();
            } else {
                $("#yearSelect").append("<option value='" + i + "'>" + i + "</option>");
            }
            // var year = i.toString();
            // var newOption = new Option(year, year);
            // document.getElementById("yearSelect").add(newOption);
        }
    }

    function setMonth() {
        var month = document.getElementById("monthSelect").value;
        if (month !== "選擇月份") {  /*==轉型後比較 ===不轉型比較*/
            initDay();
            setDay();
        } else {
            for (var i = 1; i <= 12; i++) {
                $("#monthSelect").append("<option value='" + i + "'>" + i + "</option>");
            }
        }
    }

    function setDay() {
        var yearSelect = document.getElementById("yearSelect").value;
        var monthSelect = document.getElementById("monthSelect").value;
        var lastDay = new Date(yearSelect, monthSelect, 0);    /*new Date(y, m, 1)每個月第一天*/
        var year = lastDay.getFullYear();
        var month = lastDay.getMonth() + 1;  /*月份從0開始*/
        var day = lastDay.getDate();
        console.log(year + "-" + month + "-" + day);
        var date = document.getElementById("daySelect").value;
        if (date !== "選擇日期") {
        } else {
            for (var i = 1; i <= day; i++) {
                $("#daySelect").append("<option value='" + i + "'>" + i + "</option>");
            }
        }
    }

    function initYear() {
        $("#yearSelect").empty();
        $("#yearSelect").append("<option value='選擇年份'>選擇年份</option>");
    }

    function initMonth() {
        $("#monthSelect").empty();
        $("#monthSelect").append("<option value='選擇月份'>選擇月份</option>");
    }

    function initDay() {
        $("#daySelect").empty();
        $("#daySelect").append("<option value='選擇日期'>選擇日期</option>");
    }

</script>
</body>
</html>

