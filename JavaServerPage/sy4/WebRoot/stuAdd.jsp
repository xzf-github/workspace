<%@ page contentType="text/html;charset=gb2312" language="java" %>
<%@ page import="java.sql.*"%>
<jsp:useBean id="myDbBean" scope="page" class="com.sy.bean.DbBean"></jsp:useBean>
<%request.setCharacterEncoding("gb2312"); %>
<script language="JavaScript">
function check(theForm)
{
  if (theForm.id.value.length !=11)
  {
    alert("ѧ����ű���Ϊ11λ��");
    theForm.id.focus();
    return (false);
  }  
  if (theForm.name.value == "")
  {
    alert("������������");
    theForm.name.focus();
    return (false);
  }
  if (theForm.classid.value == "")
  {
    alert("������ѧ���༶��");
    theForm.classid.focus();
    return (false);
  }
  if (theForm.Chinese.value == "")
  {
    alert("���������ĳɼ�");
    theForm.Chinese.focus();
    return (false);
  }
  if (theForm.Math.value == "")
  {
    alert("��������ѧ�ɼ�");
    theForm.Math.focus();
    return (false);
  }  
  if (theForm.English.value == "")
  {
    alert("������Ӣ��ɼ�");
    theForm.English.focus();
    return (false);
  }  
  if (theForm.Sum.value == "")
  {
    alert("�������ܳɼ�");
    theForm.Sum.focus();
    return (false);
  }  
  return (true);
}
</script>
<html>
<head><title>ѧ������</title></head>
<body>
<div align="center">
  <h2 align="center">ѧ������</h2>
<form id="form1" name="form1" method="post" action="CjzjServlet" onSubmit="return check(this)">
	<table border="1">
	<tr><td>���</td><td><input name="id" type="text" id="bh" /></td></tr>
	<tr><td>����</td><td><input name="name" type="text" id="xm" /></td></tr>
	<tr><td>�༶</td><td><input name="classid" type="text" id="csrq" /></td></tr>
	<tr><td>���ĳɼ�</td><td><input name="Chinese" type="text" id="jbgz" /></td></tr>
	<tr><td>��ѧ�ɼ�</td><td><input name="Math" type="text" id="gwjt" /></td></tr>
	<tr><td>Ӣ��ɼ�</td><td><input name="English" type="text" id="gwjt" /></td></tr>
	</table>
	<br>
  	<input name="submit" type="submit"  value="ȷ��" />
  	<input name="reset" type="reset" value="����" />
  	<input type="button" onclick="window.location.href='score.jsp';" value="����">
</form>
</div>
</body>
</html>
