<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
      <base href="<%=basePath%>">
    <title>login.html</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <script type="text/javascript">
			function check(){
				//获取输入信息：用户名、密码。“.value”即获取此元素的值。
				var name = document.getElementById("username").value;
				var password = document.getElementById("password").value;

				//验证用户名不为空
				if (name == "") {
	 				// 在页面弹出提示框
	 				alert("请填写用户名！"); 
	 				// 返回false，阻止表单提交
			 		return false;
		 		}
	
				if (password == "") {
		 			alert("请填写密码！"); 
		 			return false;
		 		}
		 		
		 		return true;
			}
		</script>
  </head>
  <body>
  <!-- 头部 -->
    <div class="daohangbox">
    	<iframe style="position: relative;left: -20px" src="header.html"
    	 width="990" height="250" frameborder="0" border="0">
    	</iframe>
    </div>
  <center>
  <table>
  	<form action="userLogin" method="post">
	  	<table>
	  	  <caption>登录</caption>
	  	  <tr>
	     	<tr>
		     	<td width="70">用户名：</td>
		     	<td><input type="text" name="user.name" id="username"></td> <br>
	     	</tr>
	    	<tr>
		     	<td>密    &nbsp码：</td>
		     	<td><input type="password" name="user.password" id="password"></td> <br>
	     	</tr>
	      </tr>
    	  <tr>
    	    <td width="70" align="right">
				<input type="submit" value="登录" onclick="return check()">
			</td>
    	    <td>
				<input type="reset" value="重置">
			</td>
    	  </tr>
    	</table>
    </form>
    </table>
    </center>
    <!-- footer start -->
	<div class="footer">
		<iframe style="position: relative;left: -20px" src="footer.html"
    	 width="990" height="210" frameborder="0" border="0">
    	</iframe>
	</div>
	<!-- footer end -->
  </body>
</html>
