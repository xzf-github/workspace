<%@ page contentType="text/html;charset=gb2312" language="java" %>
<%@ page import="java.sql.*"%>
<jsp:useBean id="myDbBean" scope="page" class="com.sy.bean.DbBean"></jsp:useBean>
<%request.setCharacterEncoding("gb2312"); %>
<script language="JavaScript">
function check(theForm)
{
  if (theForm.bjbh.value.length =="")
  {
    alert("������༶���! ");
    theForm.bjbh.focus();
    return (false);
  }  
  if (theForm.bjmc.value == "")
  {
    alert("������༶���ƣ�");
    theForm.bjmc.focus();
    return (false);
  }
  return (true);
}
</script>
<html>
<head><title>�༶��Ϣ����</title></head>
<body>
<div align="center">
   <h2 align="center">�༶��Ϣ����</h2>
<form id="form1" name="form1" method="post" action="BjzjServlet" onSubmit="return check(this)">
	<table border="1">
	<tr><td>�༶���</td><td><input name="bjbh" type="text" id="bjbh" /></td></tr>
	<tr><td>�༶����</td><td><input name="bjmc" type="text" id="bjmc" /></td></tr>
	</table>
	<br>
  	<input name="submit" type="submit"  value="ȷ��" />
  	<input name="reset" type="reset" value="����" />
  	<input type="button" onclick="window.location.href='class.jsp';" value="����">
</form>
</div>
</body>
</html>