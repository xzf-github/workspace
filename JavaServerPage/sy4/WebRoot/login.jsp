<%@ page contentType="text/html;charset=gb2312" language="java" %>
<%@ page import="java.sql.*"%>
<%request.setCharacterEncoding("gb2312"); %>
<script language="JavaScript">
function check(theForm)
{
  if (theForm.username.value == "")
  {
    alert("�������û���");
    theForm.username.focus();
    return (false);
  }  
  if (theForm.password.value == "")
  {
    alert("����������");
    theForm.password.focus();
    return (false);
  }  
  return (true);
}
</script>
<html>
<head>
<title>����ϵͳ��¼</title>

</head>
<body>
<div align="center">
  <h2 align="center">����ϵͳ��¼</h2>
<form id="form1" name="form1" method="post" action="LoginServlet" onSubmit="return check(this)">
	<table border="1">
	<tr><td>�û���</td><td><input name="username" type="text" id="yh" /></td></tr>
	<tr><td>����</td><td><input name="password" type="text" id="mm" /></td></tr>
	</table>
	<br>
  	<input name="submit" type="submit"  value="ȷ��" />
  	<input name="reset" type="reset" value="����" />
</form>
</div>
</body>
</html>
