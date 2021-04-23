<%--
  Created by IntelliJ IDEA.
  User: wally
  Date: 2021/4/23
  Time: 1:29 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>corewhen</title>
</head>
<body>
<%-- 定义一个变量叫score，值为85 --%>
<c:set var="score" value="55"/>

<c:choose>
    <c:when test="${score >= 90}">
        你的成绩为优秀
    </c:when>
    <c:when test="${score >= 80}">
        你的成绩为一般
    </c:when>
    <c:when test="${score >= 70}">
        你的成绩为良好
    </c:when>
    <c:when test="${score <= 60}">
        你的成绩为不及格
    </c:when>
</c:choose>
</body>
</html>
