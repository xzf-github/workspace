<%@ page contentType="text/html;charset=gb2312" language="java" %>
<%@ page import="java.sql.*"%>
<jsp:useBean id="myDbBean" scope="page" class="com.sy.bean.DbBean"></jsp:useBean>
<%request.setCharacterEncoding("gb2312"); %>
<script language="JavaScript">
function check(theForm)
{
  if (theForm.bjbh.value.length =="")
  {
    alert("请输入班级编号! ");
    theForm.bjbh.focus();
    return (false);
  }  
  if (theForm.bjmc.value == "")
  {
    alert("请输入班级名称！");
    theForm.bjmc.focus();
    return (false);
  }
  return (true);
}
</script>
<html>
<head><title>班级信息增加</title></head>
<body>
<div align="center">
   <h2 align="center">班级信息增加</h2>
<form id="form1" name="form1" method="post" action="BjzjServlet" onSubmit="return check(this)">
	<table border="1">
	<tr><td>班级班号</td><td><input name="bjbh" type="text" id="bjbh" /></td></tr>
	<tr><td>班级名称</td><td><input name="bjmc" type="text" id="bjmc" /></td></tr>
	</table>
	<br>
  	<input name="submit" type="submit"  value="确定" />
  	<input name="reset" type="reset" value="重置" />
  	<input type="button" onclick="window.location.href='class.jsp';" value="返回">
</form>
</div>
</body>
</html>
