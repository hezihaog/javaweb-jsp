<%--
  Created by IntelliJ IDEA.
  User: wally
  Date: 2021/4/23
  Time: 12:22 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>pageDemo02</title>
</head>
<body>
<%
    //取东西
    //pageContext.getAttribute("name1");
    //request.getAttribute("name2");

    //还可以通过findAttribute查找
    //从底层到高层查找（作用域）
    String name1 = (String) pageContext.findAttribute("name1");
    String name2 = (String) pageContext.findAttribute("name2");
    String name3 = (String) pageContext.findAttribute("name3");
    String name4 = (String) pageContext.findAttribute("name4");
    String name5 = (String) pageContext.findAttribute("name5");//不存在
%>

<%-- 使用EL表达式输出 ${} --%>
<h1>取出的值为：</h1>
<h1>${name1}</h1>
<h1>${name2}</h1>
<h1>${name3}</h1>
<h1>${name4}</h1>
<%-- 传统方式获取，如果值为null，则会输出null --%>
<h1><%=name5%>
</h1>
<%-- EL表达式中，如果为null，则不会输出，会被过滤掉 --%>
<h1>${name5}</h1>
</body>
</html>
