<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%request.setCharacterEncoding("gb2312"); %>
<script language="JavaScript">
function check(theForm)
{
  if (theForm.bjbh.value.length !=9)
  {
    alert("�༶��ű���Ϊ9λ��");
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
<head>
   <title>�༶��Ϣ�޸�</title>
</head>
<body>
<%
  String bjbh = request.getParameter("bjbh");
%>
<div align="center">
    <form action="BjxgServlet" method="post" onSubmit="return check(this)">
        <h2 align="center">�༶��Ϣ�޸�</h2>
        <table>
            <tr>
                <td>�༶���</td>
                <td>
                    <input type="text" name="bjbh" readonly  unselectable="on" value=0233217122>
                </td>
            </tr>
             <tr>
                <td>�༶����</td>
                <td><input type="text" name="bjmc"/></td>
            </tr>
        </table>
        <p>
            <input type="submit" value="ȷ��"/>
            <input type="button" onclick="window.location.href='class.jsp';" value="����">
            
        </p>
    </form>
</div>
</body>
</html>