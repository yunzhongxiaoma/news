<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%request.setCharacterEncoding("utf-8"); %>
<html>
<head>
<title>Untitled Document</title>
</head>
<jsp:useBean id="user" class="com.yunzhongxiaoma.model.User" scope="page">
<jsp:setProperty name="user" property="*"/>
</jsp:useBean>

<jsp:useBean id="dbuser" class="com.yunzhongxiaoma.service.DBUser"></jsp:useBean>
<body>
<% dbuser.addUser(user);
response.sendRedirect("select.jsp");%>
</body>
</html>