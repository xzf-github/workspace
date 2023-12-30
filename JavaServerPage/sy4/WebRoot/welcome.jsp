<%@ page contentType="text/html;charset=gb2312" language="java" %>
<%request.setCharacterEncoding("gb2312"); %>
<html>
	<head>
		<title>管理系统登录成功</title>
		<div align="center">
	    <img src ="images/welcome.png" /></div>
	</head>
	<body>
	    <table align="center" border="1">
	     <tr>
            <td align="center" colspan="10">管理系统选择</td>
        </tr>
        <tr>
        	<td align="center">班级管理系统</td>
            <td><img width='20' height='15' src ="images/LuEarth.GIF" /><input type="button" onclick="window.location.href='class.jsp';" value="进入">
            </td>
        </tr> 
         <tr>
        	<td>学生成绩管理系统</td>
            <td><img width='20' height='15' src ="images/LuEarth.GIF" /><input type="button" onclick="window.location.href='score.jsp';" value="进入"></td>
        </tr> 
         <tr>
        	<td align="center">用户管理系统</td>
            <td><img width='20' height='15' src ="images/LuEarth.GIF" /><input type="button" onclick="window.location.href='users.jsp';" value="进入"></td>
        </tr> 
        <tr>
            <td  align="center" colspan="10"><input type="button" onclick="window.location.href='login.jsp';" value="返回用户登录"></td>
        </tr> 
	    </table>
	</body>
</html>
