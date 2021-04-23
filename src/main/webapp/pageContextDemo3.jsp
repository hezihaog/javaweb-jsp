<%--
  Created by IntelliJ IDEA.
  User: wally
  Date: 2021/4/23
  Time: 12:34 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>pageContextDemo3</title>
</head>
<body>
<%
    //通过pageContext进行转发
    pageContext.forward("/index.jsp");
    //通过request进行转发
    request.getRequestDispatcher("/index.jsp").forward(request, response);
    /**
     * request：客户端向服务器发送请求，产生的数据，用户看完就没用了，比如：新闻，用户看完没用的！
     *
     * session：客户端向服务器发送请求，产生的数据，用户用完一会还有用，比如：购物车；
     *
     * application：客户端向服务器发送请求，产生的数据，一个用户用完了，其他用户还可能使用，比如：聊天数据；
     */
%>
</body>
</html>
