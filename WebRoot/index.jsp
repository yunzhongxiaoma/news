<%@ page contentType="text/html; charset=utf-8" pageEncoding="UTF-8" language="java"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="java.util.*"%>
<%@ page import="com.yunzhongxiaoma.utils.*"%>
<%@ page import="com.yunzhongxiaoma.model.*"%>
<jsp:useBean id="dbnews" class="com.yunzhongxiaoma.service.DBNews"></jsp:useBean>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>index.jsp</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<!-- 头部 -->
	<div class="daohangbox">
		<iframe style="position: relative;left: -20px" src="header.html"
			width="990" height="250" frameborder="0" border="0"> </iframe>
	</div>
	<!-- 主要内容 -->
	<div class="main">
		<div class="module">
			<a href="">国际新闻</a>
			<ul>
				<li><a href="">人无完人，但要注意怎么做人</a>
				</li>
				<li><a href="">城市千金，我要远离农村婆婆</a>
				</li>
				<li><a href="">一场发布会救不了苹果</a>
				</li>
				<li><a href="">十堰他日必大兴</a>
				</li>
				<li><a href="">......</a>
				</li>
			</ul>
		</div>
		<div class="module">
			<a href="">国内新闻</a>
			<ul>
				<li><a href="">人无完人，但要注意怎么做人</a>
				</li>
				<li><a href="">城市千金，我要远离农村婆婆</a>
				</li>
				<li><a href="">一场发布会救不了苹果</a>
				</li>
				<li><a href="">十堰他日必大兴</a>
				</li>
				<li><a href="">......</a>
				</li>
			</ul>
		</div>
		<div class="module" style="width: 26%;height: 250">
			<a href="">最近更新</a>
			<%
				Collection topnews = dbnews.getTopTenNews();
				Iterator allNews = topnews.iterator();
			%>
			<!--Student List-->
			<ul>
				<%
					while (allNews.hasNext()) {
						News n = (News) allNews.next();
				%>
				<li><a href="details.jsp?id=<%=n.getId()%>"><%=n.getTitle()%></a>
				</li>
				<%
					}
				%>
			</ul>
		</div>
		<div class="module">
			<a href="">娱乐新闻</a>
			<ul>
				<li><a href="">人无完人，但要注意怎么做人</a>
				</li>
				<li><a href="">城市千金，我要远离农村婆婆</a>
				</li>
				<li><a href="">一场发布会救不了苹果</a>
				</li>
				<li><a href="">十堰他日必大兴</a>
				</li>
				<li><a href="">......</a>
				</li>
			</ul>
		</div>
		<div class="module">
			<a href="">体育新闻</a>
			<ul>
				<li><a href="">人无完人，但要注意怎么做人</a>
				</li>
				<li><a href="">城市千金，我要远离农村婆婆</a>
				</li>
				<li><a href="">一场发布会救不了苹果</a>
				</li>
				<li><a href="">十堰他日必大兴</a>
				</li>
				<li><a href="">......</a>
				</li>
			</ul>
		</div>
		<div class="module">
			<a href="">财经频道</a>
			<ul>
				<li><a href="">人无完人，但要注意怎么做人</a>
				</li>
				<li><a href="">城市千金，我要远离农村婆婆</a>
				</li>
				<li><a href="">一场发布会救不了苹果</a>
				</li>
				<li><a href="">十堰他日必大兴</a>
				</li>
				<li><a href="">......</a>
				</li>
			</ul>
		</div>
		<div class="module">
			<a href="">汽车频道</a>
			<ul>
				<li><a href="">人无完人，但要注意怎么做人</a>
				</li>
				<li><a href="">城市千金，我要远离农村婆婆</a>
				</li>
				<li><a href="">一场发布会救不了苹果</a>
				</li>
				<li><a href="">十堰他日必大兴</a>
				</li>
				<li><a href="">......</a>
				</li>
			</ul>
		</div>
		<div class="module">
			<a href="">电子频道</a>
			<ul>
				<li><a href="">人无完人，但要注意怎么做人</a>
				</li>
				<li><a href="">城市千金，我要远离农村婆婆</a>
				</li>
				<li><a href="">一场发布会救不了苹果</a>
				</li>
				<li><a href="">十堰他日必大兴</a>
				</li>
				<li><a href="">......</a>
				</li>
			</ul>
		</div>
	</div>
	<!-- footer start -->
	<div class="footer">
		<iframe style="position: relative;left: -20px" src="footer.html"
			width="990" height="210" frameborder="0" border="0"> </iframe>
	</div>
	<!-- footer end -->
</body>
</html>

