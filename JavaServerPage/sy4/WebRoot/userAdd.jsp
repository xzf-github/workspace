<%@ page contentType="text/html;charset=gb2312" language="java" %>
<%@ page import="java.sql.*"%>
<jsp:useBean id="myDbBean" scope="page" class="com.sy.bean.DbBean"></jsp:useBean>
<%request.setCharacterEncoding("gb2312"); %>
<script language="JavaScript">
function check(theForm)
{
  if (theForm.username.value == "")
  {
    alert("用户名不能为空！");
    theForm.username.focus();
    return (false);
  }  
  if (theForm.password.value.length <6)
  {
    alert("密码最少要六位！");
    theForm.password.focus();
    return (false);
  }
  return (true);
}
</script>
<html>
<head><title>用户信息增加</title></head>
<body>
<div align="center">
  <h2 align="center">用户信息增加</h2>
<form id="form1" name="form1" method="post" action="YhzjServlet" onSubmit="return check(this)">
	<table border="1">
	<tr><td>用户名</td><td><input name="username" type="text" id="username" /></td></tr>
	<tr><td>密码</td><td><input name="password" type="text" id="password" /></td></tr>
	</table>
	<br>
  	<input name="submit" type="submit"  value="确定" />
  	<input name="reset" type="reset" value="重置" />
  	<input type="button" onclick="window.location.href='users.jsp';" value="返回">
</form>
</div>
</body>
</html>
