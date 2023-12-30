<%@ page contentType="text/html;charset=gb2312" language="java" %>
<%@ page import="java.sql.*"%>
<jsp:useBean id="myDbBean" scope="page" class="com.sy.bean.DbBean"></jsp:useBean>
<%request.setCharacterEncoding("gb2312"); %>
<script language="JavaScript">
</script>
<html>
<head><title>学生信息删除</title></head>
<body>
<%
  String xh = request.getParameter("xh");
%>
<div align="center">
  <h2 align="center">学生信息删除</h2>
<form id="form1" name="form1" method="post" action="CjscServlet" onSubmit="return check(this)">
	<table border="1">
	<tr><td>学号</td><td><input name="xh" type="text" readonly  unselectable="on" value=28></td></tr>
	</table>
	<br>
  	<input name="submit" type="submit"  value="确定" />
  	<input type="button" onclick="window.location.href='score.jsp';" value="返回">
</form>
</div>
</body>
</html>
