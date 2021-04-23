<%--
  Created by IntelliJ IDEA.
  User: wally
  Date: 2021/4/23
  Time: 11:28 上午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- 引入公共页面 --%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%-- @include会把页面合二为一，只有1个 --%>
<%@include file="common/header.jsp" %>
<h1>网页主体</h1>
<%@include file="common/footer.jsp" %>
<hr>

<%-- JSP标签实现嵌入，jsp:include则是拼接页面，本质还是3个 --%>
<jsp:include page="/common/header.jsp"/>
<h1>网页主体</h1>
<jsp:include page="/common/footer.jsp"/>
</body>
</html>
