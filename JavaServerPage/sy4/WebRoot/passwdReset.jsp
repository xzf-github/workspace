<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%request.setCharacterEncoding("gb2312"); %>
<script language="JavaScript">
</script>
<html>
<head>
   <title>�û���������</title>
</head>
<body>
<%
  String username = request.getParameter("username");
%>
<div align="center">
    <form action="CzmmServlet" method="post" onSubmit="return check(this)">
        <h2 align="center">�û���������</h2>
        <table>
            <tr>
                <td>�û���</td>
                <td>
                    <input type="text" name="username" readonly  unselectable="on" value=xzf>
                </td>
            </tr>
        </table>
        <p>
            <input type="submit" onClick="return confirm('ȷ������������Ϊ 123 ?');" value="ȷ��"/>
            <input type="button" onclick="window.location.href='users.jsp';" value="����">
            
        </p>
    </form>
</div>
</body>
</html>