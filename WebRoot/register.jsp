<!DOCTYPE html>
<html>
  <head>
    <title>Register.html</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <script type="text/javascript">
    	function check() {
			//获取username,gender,hobby,beizhu
			var username = document.getElementById("username").value;
			var password = document.getElementById("password").value;
			var password2 = document.getElementById("password2").value;
			
			if (username == "") {
				alert("请填写用户名！");
				return false;
			}
			if (password == "" || password2 == "") {
				alert("请填写密码！");
				return false;
			}
			if (password != password2) {
				alert("重复密码需要与密码保持一致！");
				return false;
			}
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
  	<form action="userRegist" method="post">
  		<table>
  			<caption>注册</caption>
  			<tr>
  				<td>
  				  用户名：
  				</td>
  				<td>
  				  <input type="text" name="user.name" id="username">
  				</td>
  			</tr>
  			<tr>
				<td> 密码： </td>
				<td>
					<input type="password" name="user.password" id="password" />
				</td>
			</tr>
			<!-- <tr>
				<td> 重复密码： </td>
				<td>
					<input type="password" name="password2" id="password2"/>
				</td>
			</tr> -->
			<tr>
				<td>
				
					<input type="submit" value="提交" onclick="return check()"/>
				</td>
				<td>
				
					<input type="reset" value="重置"/>
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
