<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%request.setCharacterEncoding("gb2312"); %>
<script language="JavaScript">
function check(theForm)
{
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
<head>
   <title>�û���Ϣ�޸�</title>
</head>
<body>
<%
  String username = request.getParameter("username");
%>
<div align="center">
    <form name="form1" action="YhxgServlet" method="post" onSubmit="return check(this)">
        <h2 align="center">�û���Ϣ�޸�</h2>
        <table>
            <tr>
                <td>�û���</td>
                <td>
                    <input type="text" name="username" readonly  unselectable="on" value=xzf>
                </td>
            </tr>
             <tr>
                <td>����</td>
                <td><input type="text" name="password"/></td>
            </tr>
        </table>
        <p>
            <input type="submit" value="ȷ��"/>
            <input type="button" onclick="window.location.href='users.jsp';" value="����">
            
        </p>
    </form>
</div>
</body>
</html>