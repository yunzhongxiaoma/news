<%@ page contentType="text/html; charset=utf-8" language="java"	errorPage=""%>
<%@ page import="com.yunzhongxiaoma.model.*" %>
<!DOCTYPE html>
<html>
  <head>
    <title>details.jsp</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" type="text/css" href="css/style.css">
  </head>
  <body>
  <jsp:useBean id="dbnews" class="com.yunzhongxiaoma.service.DBNews"></jsp:useBean>
	<%String id=request.getParameter("id");%>
	<%News n=dbnews.getNewsInfo(id);%>
  	<!-- 头部 -->
    <div class="daohangbox">
    	<iframe style="position: relative;left: -20px" src="header.html"
    	 width="990" height="250" frameborder="0" border="0">
    	</iframe>
    </div>
    <!-- 主要内容 -->
	<div class="main">
	　　<%=n.getContent()%>
	</div>
	<!-- footer start -->
	<div class="footer">
		<iframe style="position: relative;left: -20px" src="footer.html"
    	 width="990" height="210" frameborder="0" border="0">
    	</iframe>
	</div>
	<!-- footer end -->
  </body>
</html>

