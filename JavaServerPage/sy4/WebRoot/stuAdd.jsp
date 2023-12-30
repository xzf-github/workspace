<%@ page contentType="text/html;charset=gb2312" language="java" %>
<%@ page import="java.sql.*"%>
<jsp:useBean id="myDbBean" scope="page" class="com.sy.bean.DbBean"></jsp:useBean>
<%request.setCharacterEncoding("gb2312"); %>
<script language="JavaScript">
function check(theForm)
{
  if (theForm.id.value.length !=11)
  {
    alert("学生编号必须为11位！");
    theForm.id.focus();
    return (false);
  }  
  if (theForm.name.value == "")
  {
    alert("请输入姓名！");
    theForm.name.focus();
    return (false);
  }
  if (theForm.classid.value == "")
  {
    alert("请输入学生班级！");
    theForm.classid.focus();
    return (false);
  }
  if (theForm.Chinese.value == "")
  {
    alert("请输入语文成绩");
    theForm.Chinese.focus();
    return (false);
  }
  if (theForm.Math.value == "")
  {
    alert("请输入数学成绩");
    theForm.Math.focus();
    return (false);
  }  
  if (theForm.English.value == "")
  {
    alert("请输入英语成绩");
    theForm.English.focus();
    return (false);
  }  
  if (theForm.Sum.value == "")
  {
    alert("请输入总成绩");
    theForm.Sum.focus();
    return (false);
  }  
  return (true);
}
</script>
<html>
<head><title>学生增加</title></head>
<body>
<div align="center">
  <h2 align="center">学生增加</h2>
<form id="form1" name="form1" method="post" action="CjzjServlet" onSubmit="return check(this)">
	<table border="1">
	<tr><td>编号</td><td><input name="id" type="text" id="bh" /></td></tr>
	<tr><td>姓名</td><td><input name="name" type="text" id="xm" /></td></tr>
	<tr><td>班级</td><td><input name="classid" type="text" id="csrq" /></td></tr>
	<tr><td>语文成绩</td><td><input name="Chinese" type="text" id="jbgz" /></td></tr>
	<tr><td>数学成绩</td><td><input name="Math" type="text" id="gwjt" /></td></tr>
	<tr><td>英语成绩</td><td><input name="English" type="text" id="gwjt" /></td></tr>
	</table>
	<br>
  	<input name="submit" type="submit"  value="确定" />
  	<input name="reset" type="reset" value="重置" />
  	<input type="button" onclick="window.location.href='score.jsp';" value="返回">
</form>
</div>
</body>
</html>
