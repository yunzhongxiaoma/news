<%@ page language="java" pageEncoding="utf-8" %>
<html>
<head>
<title>退出</title>
</head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<body bgcolor="#E5E5E5">

<%
session.removeAttribute("username");
System.out.print("退出数据库\n");
session.invalidate();
%>
<script language="JavaScript">
location.href = "index.jsp";
</script>

</body>
</html>