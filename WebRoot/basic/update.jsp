<%@ page contentType="text/html; charset=utf-8"  language="java" errorPage=""%>
<%@ page import="com.yunzhongxiaoma.model.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>修改</title>
</head>
<body>
<jsp:useBean id="dbuser" class="com.yunzhongxiaoma.service.DBUser"></jsp:useBean>
<%String id=request.getParameter("id");%>
<%User user=dbuser.getUserInfo(id) ;%>
		<form method=post action="update2.jsp?id=<%=id%>">
		<table border=0>
	 <tr>
      <td height="54" align="center">用户名：</td>
      <td width="181" height=54>
        <input name=name value="<%=user.getName()%>" > 
      </TD>
   </TR>	
	 <tr>
      <td height="54" align="center">密码：</td>
      <td width="181" height=54>
        <input name=password value="<%=user.getPassword()%>" > 
      </TD>
  <%--  </TR>
    <tr>
      <td height="54" align="center">出生年月：</td>
      <td width="181" height=54>
        <input   name=birthday value=<%=user.getBirthday() %> >
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