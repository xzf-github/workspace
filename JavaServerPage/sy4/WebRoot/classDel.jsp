<%@ page contentType="text/html;charset=gb2312" language="java" %>
<%@ page import="java.sql.*"%>
<jsp:useBean id="myDbBean" scope="page" class="com.sy.bean.DbBean"></jsp:useBean>
<%request.setCharacterEncoding("gb2312"); %>
<script language="JavaScript">
</script>
<html>
<head><title>°à¼¶É¾³ý</title></head>
<body>
<%
  String bjbh = request.getParameter("bjbh");
%>
<div align="center">
  <h2 align="center">°à¼¶É¾³ý</h2>
<form id="form1" name="form1" method="post" action="BjscServlet" onSubmit="return check(this)">
	<table border="1">
	<tr><td>°à¼¶°àºÅ</td><td><input name="bjbh" type="text" readonly  unselectable="on" value=0233217122></td></tr>
	</table>
	<br>
  	<input name="submit" type="submit"  value="È·¶¨" />
  	<input type="button" onclick="window.location.href='class.jsp';" value="·µ»Ø">
</form>
</div>
</body>
</html>
