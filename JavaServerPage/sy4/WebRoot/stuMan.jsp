<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%request.setCharacterEncoding("gb2312"); %>
<script language="JavaScript">
function check(theForm)
{
  if (theForm.xm.value == "")
  {
    alert("请输入姓名！");
    theForm.xm.focus();
    return (false);
  }
  if (theForm.bh.value == "")
  {
    alert("请输入学生班级！");
    theForm.bh.focus();
    return (false);
  }
  if (theForm.yw.value == "")
  {
    alert("请输入语文成绩");
    theForm.yw.focus();
    return (false);
  }
  if (theForm.sx.value == "")
  {
    alert("请输入数学成绩");
    theForm.sx.focus();
    return (false);
  }  
  if (theForm.yy.value == "")
  {
    alert("请输入英语成绩");
    theForm.yy.focus();
    return (false);
  }  
  return (true);
  }
</script>
<html>
<head>
   <title>学生成绩修改</title>
</head>
<body>
<%
  String xh = request.getParameter("xh");
%>
<div align="center">
    <form action="CjXgServlet" method="post" onSubmit="return check(this)">
        <h2 align="center">学生成绩修改</h2>
        <table>
            <tr>
                <td>学号</td>
                <td>
                    <input type="text" name="xh" readonly  unselectable="on" value=28>
                </td>
            </tr>
             <tr>
                <td>姓名</td>
                <td><input type="text" name="xm"/></td>
            </tr>
             <tr>
                <td>班号</td>
                <td><input type="text" name="bh"/></td>
            </tr>
            <tr>
                <td>语文</td>
                <td><input type="text" name="yw"/></td>
            </tr>
            <tr>
                <td>数学</td>
                <td><input type="text" name="sx"/></td>
            </tr>
            <tr>
                <td>英语</td>
                <td><input type="text" name="yy"/></td>
            </tr>
        </table>
        <p>
            <input type="submit" value="确定"/>
            <input type="button" onclick="window.location.href='score.jsp';" value="返回">
            
        </p>
    </form>
</div>
</body>
</html>