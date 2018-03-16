<%@ page contentType="text/html; charset=utf-8" language="java"	errorPage=""%>
<%@ page import="java.util.*"%>
<%@ page import="com.yunzhongxiaoma.utils.*"%>
<%@ page import="com.yunzhongxiaoma.model.*"%>
<jsp:useBean id="dbuser" class="com.yunzhongxiaoma.service.DBUser"></jsp:useBean>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>t_user表的操作</title>
</head>
<body>
<%
	Collection users = dbuser.getAllUser();
	Iterator allStu = users.iterator();
%>
<h2>t_user表的查询结果：</h2>

<!--User List-->
<table width="840" border="1" cellspacing="0" cellpadding="6">
	<tr>
		<td width="120" align="center" valign="middle">编号</td>
		<td width="145" align="center">姓名</td>
		<td width="253" align="center">密码</td>
		<!-- <td width="148" align="center">出生日期</td> -->
		<td>操作</td>
		<td>操作</td>
	</tr>
	<%
			while (allStu.hasNext()) {
			User user = (User) allStu.next();
	%>
	<tr>
		<td height="40" align="center" valign="middle"><%=user.getId()%></td>
		<td align="center" valign="middle"><%=user.getName()%></td>
		<td valign="middle"><%=user.getPassword()%></td>
		<%-- <td align="center" valign="middle"><%=user.g%></td> --%>
		<td><a href="update.jsp?id=<%=user.getId()%>">修改</a></td>
		<td><a href="delete.jsp?id=<%=user.getId()%>">删除</a></td>
	</tr>
	<%
	}
	%>
</table>
<a href="insert.jsp"> 添加新用户</a>
</body>
</html>
