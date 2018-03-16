<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ page import="java.util.*"%>
<%@ page import="com.yunzhongxiaoma.utils.*"%>
<%@ page import="com.yunzhongxiaoma.model.*"%>
<jsp:useBean id="dbnews" class="com.yunzhongxiaoma.service.DBNews"></jsp:useBean>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" type="text/css" href="css/style.css">
<title>查询</title>
</head>
<body>
	<!-- 头部 -->
	<div class="daohangbox">
		<iframe style="position: relative;left: -20px" src="header.html"
			width="990" height="250" frameborder="0" border="0"> </iframe>
	</div>
	<div class="main">
<%
	String t=request.getParameter("t");
	Collection topnews = dbnews.search(t);
	Iterator allNews = topnews.iterator();
%>
	<!--Student List-->
	<%		while (allNews.hasNext()) {
			News n = (News) allNews.next();
	%>
		<li><a href="details.jsp?id=<%=n.getId()%>"><%=n.getTitle()%></a></li>
	<%		}
	%>
	</div>
	<!-- footer start -->
	<div class="footer">
		<iframe style="position: relative;left: -20px" src="footer.html"
			width="990" height="210" frameborder="0" border="0"> </iframe>
	</div>
	<!-- footer end -->
</body>
</html>
