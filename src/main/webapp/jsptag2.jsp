<%--
  Created by IntelliJ IDEA.
  User: wally
  Date: 2021/4/23
  Time: 1:05 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>jsptag2</title>
</head>
<body>
<h1>jsptag2页面</h1>
<%-- 取出参数 --%>
姓名：<%=request.getParameter("name")%>
年龄：<%=request.getParameter("age")%>
</body>
</html>
