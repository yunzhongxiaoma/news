<%@ page contentType="text/html; charset=utf-8" language="java"
	errorPage=""%>
<%@ page import="java.sql.*"%>
<%
request.setCharacterEncoding("utf-8");
%>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="user" class="com.yunzhongxiaoma.model.User" scope="page">
<jsp:setProperty name="user" property="*"/>
</jsp:useBean>

<jsp:useBean id="dbuser" class="com.yunzhongxiaoma.service.DBUser"></jsp:useBean>
<%
	String id = request.getParameter("id");
	dbuser.modifyUser(user, id);
	response.sendRedirect("select.jsp");
%>
</body>
</html>
