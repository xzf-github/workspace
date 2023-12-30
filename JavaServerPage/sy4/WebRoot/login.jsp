<%@ page contentType="text/html;charset=gb2312" language="java" %>
<%@ page import="java.sql.*"%>
<%request.setCharacterEncoding("gb2312"); %>
<script language="JavaScript">
function check(theForm)
{
  if (theForm.username.value == "")
  {
    alert("请输入用户名");
    theForm.username.focus();
    return (false);
  }  
  if (theForm.password.value == "")
  {
    alert("请输入密码");
    theForm.password.focus();
    return (false);
  }  
  return (true);
}
</script>
<html>
<head>
<title>管理系统登录</title>

</head>
<body>
<div align="center">
  <h2 align="center">管理系统登录</h2>
<form id="form1" name="form1" method="post" action="LoginServlet" onSubmit="return check(this)">
	<table border="1">
	<tr><td>用户名</td><td><input name="username" type="text" id="yh" /></td></tr>
	<tr><td>密码</td><td><input name="password" type="text" id="mm" /></td></tr>
	</table>
	<br>
  	<input name="submit" type="submit"  value="确定" />
  	<input name="reset" type="reset" value="重置" />
</form>
</div>
</body>
</html>
