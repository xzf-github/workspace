<%@ page contentType="text/html;charset=gb2312" language="java" %>
<%@ page import="java.sql.*"%>
<jsp:useBean id="myDbBean" scope="page" class="com.sy.bean.DbBean"></jsp:useBean>
<%request.setCharacterEncoding("gb2312"); %>
<script language="JavaScript">
function check(theForm)
{
  if (theForm.username.value == "")
  {
    alert("�û�������Ϊ�գ�");
    theForm.username.focus();
    return (false);
  }  
  if (theForm.password.value.length <6)
  {
    alert("��������Ҫ��λ��");
    theForm.password.focus();
    return (false);
  }
  return (true);
}
</script>
<html>
<head><title>�û���Ϣ����</title></head>
<body>
<div align="center">
  <h2 align="center">�û���Ϣ����</h2>
<form id="form1" name="form1" method="post" action="YhzjServlet" onSubmit="return check(this)">
	<table border="1">
	<tr><td>�û���</td><td><input name="username" type="text" id="username" /></td></tr>
	<tr><td>����</td><td><input name="password" type="text" id="password" /></td></tr>
	</table>
	<br>
  	<input name="submit" type="submit"  value="ȷ��" />
  	<input name="reset" type="reset" value="����" />
  	<input type="button" onclick="window.location.href='users.jsp';" value="����">
</form>
</div>
</body>
</html>
