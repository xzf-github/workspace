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
   <title>用户密码重置</title>
</head>
<body>
<%
  String username = request.getParameter("username");
%>
<div align="center">
    <form action="CzmmServlet" method="post" onSubmit="return check(this)">
        <h2 align="center">用户密码重置</h2>
        <table>
            <tr>
                <td>用户名</td>
                <td>
                    <input type="text" name="username" readonly  unselectable="on" value=xzf>
                </td>
            </tr>
        </table>
        <p>
            <input type="submit" onClick="return confirm('确定将密码重置为 123 ?');" value="确定"/>
            <input type="button" onclick="window.location.href='users.jsp';" value="返回">
            
        </p>
    </form>
</div>
</body>
</html>