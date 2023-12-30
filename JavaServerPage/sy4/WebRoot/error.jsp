<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<% request.setCharacterEncoding("gb2312");%>
<html>
	<head>
		<title>登陆失败</title>
	</head>
	<body>
		用户名、密码错误，登陆失败！
   	<div align="center">
  		<P>是否重新登录</P>
 	    <form id="form1" name="form1" method="post" action="login.jsp" onSubmit="return check(this)">
  	    	<input name="submit" type="submit"  value="确定" />
		</form>
	</div>
	</body>
</html>
