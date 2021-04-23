<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- 导包 --%>
<%@page import="java.util.*" %>
<html>
<body>
<%--
    JSP表达式
    作用：用来将程序的输出，输出到客户端
    <%=变量或者表达式%>
--%>
<%=new java.util.Date()%>
<%=new Date()%>
<hr>
<%-- JSP脚本片段 --%>
<%
    int sum = 0;
    for (int i = 1; i <= 100; i++) {
        sum += i;
    }
    out.println("<h1>sum=" + sum + "</h1>");
%>

<%
    int x = 10;
    out.println(x);
%>
<p>这是一个JSP文档</p>
<%
    int y = 10;
    out.println(y);
%>

<%-- 在代码中嵌入HTML元素 --%>
<%-- EL表达式，${} --%>
<%
    for (int i = 0; i < 5; i++) {
%>
<h1>Hello,World <%=i%>
    <%--<h1>Hello,World ${i}>--%>
</h1>
<%
    }
%>
<hr>

<%-- JSP声明，会被编译到JSP生成的java类中，其他的就会生成到_jspService方法中 --%>
<%!
    static {
        System.out.println("Loading Servlet!");
    }

    private int globalVar = 0;

    public void kuang() {
        System.out.println("进入了方法kuang!");
    }
%>
<hr>
<%-- JSP的注释，不会输出到客户端，HTML的注释则可以 --%>
<!-- 我是HTML注释 -->
<%-- 我是JSP注释 --%>
</body>
</html>