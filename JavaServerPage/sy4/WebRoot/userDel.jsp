<%@ page contentType="text/html;charset=gb2312" language="java" %>
<%@ page import="java.sql.*"%>
<jsp:useBean id="myDbBean" scope="page" class="com.sy.bean.DbBean"></jsp:useBean>
<%request.setCharacterEncoding("gb2312"); %>
<script language="JavaScript">
</script>
<html>
<head><title>�û�ɾ��</title></head>
<body>
<%
  String username = request.getParameter("username");
%>
<div align="center">
  <h2 align="center">�û�ɾ��</h2>
<form id="form1" name="form1" method="post" action="YhscServlet" onSubmit="return check(this)">
	<table border="1">
	<tr><td>�û���</td><td><input name="username" type="text" readonly  unselectable="on" value=xzf></td></tr>
	</table>
	<br>
  	<input name="submit" type="submit"  value="ȷ��" />
  	<input type="button" onclick="window.location.href='users.jsp';" value="����">
</form>
</div>
</body>
</html>