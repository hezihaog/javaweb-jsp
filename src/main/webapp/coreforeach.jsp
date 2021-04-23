<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: wally
  Date: 2021/4/23
  Time: 1:34 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>coreforeach</title>
</head>
<body>
<%-- 定义一个列表 --%>
<%
    ArrayList<String> people = new ArrayList<>();
    people.add("张三");
    people.add("王五");
    people.add("赵六");
    people.add("田七");
    request.setAttribute("list", people);
%>

<%--
    遍历列表
    var：每一次遍历出来的变量
    items：要遍历的对象
    begin：从哪里开始
    end：到哪里结束
    step：步长
--%>
<c:forEach var="people" items="${list}">
    <c:out value="${people}"/> <br>
</c:forEach>

<hr>
<c:forEach var="people" items="${list}" begin="1" end="3" step="2">
    <c:out value="${people}"/> <br>
</c:forEach>
</body>
</html>
