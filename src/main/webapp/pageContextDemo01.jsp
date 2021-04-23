<%--
  Created by IntelliJ IDEA.
  User: wally
  Date: 2021/4/23
  Time: 11:45 上午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>pageContextDemo01</title>
</head>
<body>
<%-- 内置对象 --%>
<%
    pageContext.setAttribute("name1", "秦疆1号");//保存的数据只在一个页面中有效
    request.setAttribute("name2", "秦疆2号");//保存的数据只在一次请求中有效，请求转发会携带
    session.setAttribute("name3", "秦疆3号");//保存的数据只在一次会话中有效，从打开浏览器到关闭浏览器
    application.setAttribute("name4", "秦疆4号");//保存的数据只在服务器中有效，从打开服务到关闭服务器
%>

<%--
    脚本片段中的代码，会被原封不动的生成到jsp.java中
    要求：这里的代码，必须保证java语法的正确性
 --%>
<%
    //取东西
    //pageContext.getAttribute("name1");
    //request.getAttribute("name2");

    //还可以通过findAttribute查找
    //从底层到高层查找（作用域）：page -> request -> session-> application
    String name1 = (String) pageContext.findAttribute("name1");
    String name2 = (String) pageContext.findAttribute("name2");
    String name3 = (String) pageContext.findAttribute("name3");
    String name4 = (String) pageContext.findAttribute("name4");
    String name5 = (String) pageContext.findAttribute("name5");//不存在

    //转发到pageDemo02，就可以让request传递过去
    pageContext.forward("/pageDemo02.jsp");
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
