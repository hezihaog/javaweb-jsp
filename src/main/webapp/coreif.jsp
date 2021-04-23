<%--
  Created by IntelliJ IDEA.
  User: wally
  Date: 2021/4/23
  Time: 1:13 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- 引入jSTL核心标签库，我们才能使用JSTL标签 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>coreif</title>
</head>
<body>
<h4>if测试</h4>
<hr>
<form action="coreif.jsp" method="get">
    <%--
        EL表达式获取表单中的数据
        ${param.参数名}
    --%>
    <input type="text" name="username" value="${param.username}">
    <input type="submit" value="登录">
</form>

<%-- 判断如果登录的用户是管理员，则登录成功 --%>
<c:if test="${param.username == 'admin'}" var="isAdmin">
    <c:out value="管理员欢迎你"/>
</c:if>
<%-- out是自闭合标签 --%>
<c:out value="${isAdmin}"/>

<%-- 使用jsp原始来判断，代码量很多 --%>
<%--<%--%>
<%--    if (request.getParameter("username").equals("admin")) {--%>
<%--        out.print("登录成功");--%>
<%--    }--%>
<%--%>--%>
</body>
</html>
