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
<jsp:useBean id="n" class="com.yunzhongxiaoma.model.News" scope="page">
<jsp:setProperty name="n" property="*"/>
</jsp:useBean>

<jsp:useBean id="dbnews" class="com.yunzhongxiaoma.service.DBNews"></jsp:useBean>
<%
	String id = request.getParameter("id");
	dbnews.modifyNews(n, id);
	response.sendRedirect("selectNews.jsp");
%>
</body>
</html>
