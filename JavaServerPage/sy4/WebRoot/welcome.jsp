<%@ page contentType="text/html;charset=gb2312" language="java" %>
<%request.setCharacterEncoding("gb2312"); %>
<html>
	<head>
		<title>����ϵͳ��¼�ɹ�</title>
		<div align="center">
	    <img src ="images/welcome.png" /></div>
	</head>
	<body>
	    <table align="center" border="1">
	     <tr>
            <td align="center" colspan="10">����ϵͳѡ��</td>
        </tr>
        <tr>
        	<td align="center">�༶����ϵͳ</td>
            <td><img width='20' height='15' src ="images/LuEarth.GIF" /><input type="button" onclick="window.location.href='class.jsp';" value="����">
            </td>
        </tr> 
         <tr>
        	<td>ѧ���ɼ�����ϵͳ</td>
            <td><img width='20' height='15' src ="images/LuEarth.GIF" /><input type="button" onclick="window.location.href='score.jsp';" value="����"></td>
        </tr> 
         <tr>
        	<td align="center">�û�����ϵͳ</td>
            <td><img width='20' height='15' src ="images/LuEarth.GIF" /><input type="button" onclick="window.location.href='users.jsp';" value="����"></td>
        </tr> 
        <tr>
            <td  align="center" colspan="10"><input type="button" onclick="window.location.href='login.jsp';" value="�����û���¼"></td>
        </tr> 
	    </table>
	</body>
</html>
