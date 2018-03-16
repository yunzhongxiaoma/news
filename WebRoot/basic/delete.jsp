<%@ page contentType="text/html; charset=utf-8"  language="java" errorPage=""%>
<%@ page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="DBUser" class="com.yunzhongxiaoma.service.DBUser" scope="page"/>
<%String id=request.getParameter("id");
DBUser.deleteUser(id);
response.sendRedirect("select.jsp");
%>
</body>
</html>