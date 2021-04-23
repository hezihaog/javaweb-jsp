<%--
  Created by IntelliJ IDEA.
  User: wally
  Date: 2021/4/23
  Time: 1:04 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>jsptag</title>
</head>
<body>
<h1>jsptag1页面</h1>
<%-- 插入别的页面 --%>
<%--<jsp:include page=""/>--%>

<%-- 转发 --%>
<%--
    http://localhost:8080/javaweb_jsp_war/jsptag.jsp?name=kuangshen&age=12
--%>
<jsp:forward page="jsptag2.jsp">
    <jsp:param name="name" value="kuangshen"/>
    <jsp:param name="age" value="12"/>
</jsp:forward>
</body>
</html>
