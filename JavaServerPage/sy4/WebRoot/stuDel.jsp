<%@ page contentType="text/html;charset=gb2312" language="java" %>
<%@ page import="java.sql.*"%>
<jsp:useBean id="myDbBean" scope="page" class="com.sy.bean.DbBean"></jsp:useBean>
<%request.setCharacterEncoding("gb2312"); %>
<script language="JavaScript">
</script>
<html>
<head><title>ѧ����Ϣɾ��</title></head>
<body>
<%
  String xh = request.getParameter("xh");
%>
<div align="center">
  <h2 align="center">ѧ����Ϣɾ��</h2>
<form id="form1" name="form1" method="post" action="CjscServlet" onSubmit="return check(this)">
	<table border="1">
	<tr><td>ѧ��</td><td><input name="xh" type="text" readonly  unselectable="on" value=28></td></tr>
	</table>
	<br>
  	<input name="submit" type="submit"  value="ȷ��" />
  	<input type="button" onclick="window.location.href='score.jsp';" value="����">
</form>
</div>
</body>
</html>
