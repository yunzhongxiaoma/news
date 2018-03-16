<%@ page contentType="text/html; charset=utf-8" language="java"	errorPage=""%>
<%@ page import="java.util.*"%>
<%@ page import="com.yunzhongxiaoma.utils.*"%>
<%@ page import="com.yunzhongxiaoma.model.*"%>
<jsp:useBean id="dbnews" class="com.yunzhongxiaoma.service.DBNews"></jsp:useBean>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>t_news表的操作</title>
</head>
<body>
<%
	Collection news = dbnews.getAllNews();
	Iterator allNews = news.iterator();
%>
<h2>t_news表的查询结果：</h2>

<!--Student List-->
<table width="100%" border="1" cellspacing="0" cellpadding="6">
	<tr>
		<td width="30" align="center" valign="middle">编号</td>
		<td width="300" align="center">标题</td>
		<td width="100" align="center">作者姓名 </td>
		<td width="40" align="center">新闻类型 </td>
		<td width="100" align="center">关键字 </td>
		<td width="100" align="center">新闻来源 </td>
		<td width="100" align="center">创建时间</td>
		
		<!-- <td width="148" align="center">出生日期</td> -->
		<td>操作</td>
		<td>操作</td>
	</tr>
	<%
			while (allNews.hasNext()) {
			News n = (News) allNews.next();
	%>
	<tr>
		<td height="40" align="center" valign="middle"><%=n.getId()%></td>
		<td height="40" align="center" valign="middle"><%=n.getTitle()%></td>
 		<td align="center" valign="middle"><%=n.getAuthor()%></td>
		<td align="center" valign="middle"><%=n.getNewsType()%></td>
		<td align="center" valign="middle"><%=n.getKeywords()%></td>
		<td align="center" valign="middle"><%=n.getSource()%></td>
		<td align="center" valign="middle"><%=n.getCreateTime()%></td>
		<td align="center" valign="middle"><a href="../details.jsp?id=<%=n.getId()%>">查看</a></td>
		<td align="center" valign="middle"><a href="updateNews.jsp?id=<%=n.getId()%>">修改</a></td>
		<td align="center" valign="middle"><a href="deleteNews.jsp?id=<%=n.getId()%>">删除</a></td>
	</tr>
	<%
	}
	%>
</table>
<a href="createNews.html"> 添加新闻</a>
</body>
</html>
