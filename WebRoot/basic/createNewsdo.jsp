<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%request.setCharacterEncoding("utf-8"); %>
<html>
<head>
<title>Untitled Document</title>
</head>
<jsp:useBean id="ne" class="com.yunzhongxiaoma.model.News" scope="page">
<jsp:setProperty name="ne" property="*"/>
</jsp:useBean>

<jsp:useBean id="dbnews" class="com.yunzhongxiaoma.service.DBNews"></jsp:useBean>
<body>
<% dbnews.addNews(ne);
response.sendRedirect("selectNews.jsp");%>
</body>
</html>