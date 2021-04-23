<%--
  Created by IntelliJ IDEA.
  User: wally
  Date: 2021/4/23
  Time: 10:52 上午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- 定制错误页面，在web.xml中统一配置 --%>
<%--<%@page errorPage="error/500.jsp" %>--%>

<%-- 显式声明这是一个错误页面 --%>
<%--<%@page isErrorPage="true" %>--%>

<%-- 设置页面的编码 --%>
<%@page pageEncoding="utf-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    int x = 1 / 0;
%>
</body>
</html>
