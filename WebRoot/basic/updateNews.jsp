<%@ page contentType="text/html; charset=utf-8"  language="java" errorPage=""%>
<%@ page import="com.yunzhongxiaoma.model.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>修改</title>
</head>
<body>
<jsp:useBean id="dbnews" class="com.yunzhongxiaoma.service.DBNews"></jsp:useBean>
<%String id=request.getParameter("id");%>
<%News n=dbnews.getNewsInfo(id);%>
		<form method=post action="updateNews2.jsp?id=<%=id%>">
		<table border=0>
	 <tr>
      <td height="54" align="center">标题：</td>
      <td width="181" height=54>
        <input  name=title value="<%=n.getTitle()%>" > 
      </TD>
   </TR>	
	<tr>
      <td height="54" align="center">作者姓名：</td>
      <td width="181" height=54>
        <input   name=author value="<%=n.getAuthor()%>" > 
      </TD>
   </TR>
   <tr>
      <td height="54" align="center">新闻类型：</td>
      <td width="181" height=54>
        <input   name=newsType value="<%=n.getNewsType()%>" > 
      </TD>
   </TR>
   <tr>
      <td height="54" align="center">关键字：</td>
      <td width="181" height=54>
        <input   name=keywords value="<%=n.getKeywords()%>" > 
      </TD>
   </TR>
   <tr>
      <td height="54" align="center">新闻来源：</td>
      <td width="181" height=54>
        <input   name=source value="<%=n.getSource()%>" > 
      </TD>
   </TR>
   <tr>
      <td height="54" align="center">新闻正文：</td>
      <td width="181" height=54>
        <input   name=content value="<%=n.getContent()%>" > 
      </TD>
   </TR>
    <%-- <tr>
      <td height="54" align="center">出生年月：</td>
      <td width="181" height=54>
        <input   name=birthday value=<%=n.getBirthday() %> >
      </TD> 
   </TR> --%>
		   <tr>
 <td>
        <input  type="submit"  value=修改 %> 
      </Td>
   </TR>	
	</table>
</body>
</html>