<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%request.setCharacterEncoding("gb2312"); %>
<script language="JavaScript">
function check(theForm)
{
  if (theForm.xm.value == "")
  {
    alert("������������");
    theForm.xm.focus();
    return (false);
  }
  if (theForm.bh.value == "")
  {
    alert("������ѧ���༶��");
    theForm.bh.focus();
    return (false);
  }
  if (theForm.yw.value == "")
  {
    alert("���������ĳɼ�");
    theForm.yw.focus();
    return (false);
  }
  if (theForm.sx.value == "")
  {
    alert("��������ѧ�ɼ�");
    theForm.sx.focus();
    return (false);
  }  
  if (theForm.yy.value == "")
  {
    alert("������Ӣ��ɼ�");
    theForm.yy.focus();
    return (false);
  }  
  return (true);
  }
</script>
<html>
<head>
   <title>ѧ���ɼ��޸�</title>
</head>
<body>
<%
  String xh = request.getParameter("xh");
%>
<div align="center">
    <form action="CjXgServlet" method="post" onSubmit="return check(this)">
        <h2 align="center">ѧ���ɼ��޸�</h2>
        <table>
            <tr>
                <td>ѧ��</td>
                <td>
                    <input type="text" name="xh" readonly  unselectable="on" value=28>
                </td>
            </tr>
             <tr>
                <td>����</td>
                <td><input type="text" name="xm"/></td>
            </tr>
             <tr>
                <td>���</td>
                <td><input type="text" name="bh"/></td>
            </tr>
            <tr>
                <td>����</td>
                <td><input type="text" name="yw"/></td>
            </tr>
            <tr>
                <td>��ѧ</td>
                <td><input type="text" name="sx"/></td>
            </tr>
            <tr>
                <td>Ӣ��</td>
                <td><input type="text" name="yy"/></td>
            </tr>
        </table>
        <p>
            <input type="submit" value="ȷ��"/>
            <input type="button" onclick="window.location.href='score.jsp';" value="����">
            
        </p>
    </form>
</div>
</body>
</html>