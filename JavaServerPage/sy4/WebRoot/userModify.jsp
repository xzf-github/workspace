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
    alert("密码最少要六位！");
    theForm.password.focus();
    return (false);
  }
  return (true);
}
</script>
<html>
<head>
   <title>用户信息修改</title>
</head>
<body>
<%
  String username = request.getParameter("username");
%>
<div align="center">
    <form name="form1" action="YhxgServlet" method="post" onSubmit="return check(this)">
        <h2 align="center">用户信息修改</h2>
        <table>
            <tr>
                <td>用户名</td>
                <td>
                    <input type="text" name="username" readonly  unselectable="on" value=xzf>
                </td>
            </tr>
             <tr>
                <td>密码</td>
                <td><input type="text" name="password"/></td>
            </tr>
        </table>
        <p>
            <input type="submit" value="确定"/>
            <input type="button" onclick="window.location.href='users.jsp';" value="返回">
            
        </p>
    </form>
</div>
</body>
</html>