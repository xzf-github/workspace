<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<%request.setCharacterEncoding("gb2312"); %>
<html>
<head>
    <title>ѧ���ɼ�����ϵͳ</title>
    <div align="center"><img width="500" height="85" src ="images/Title.png" /></div>
</head>
<body>
<div  align="center">
    <table border="1">
        <tr>
            <td align="center" colspan="9">ѧ���ɼ���Ϣ</td>
        </tr>
        <tr>
        	<td>ѧ��</td>
            <td>����</td>
            <td>���</td>
            <td>����</td>
            <td>��ѧ</td>
            <td>Ӣ��</td>
            <td>�ܷ�</td>
            <td align="center" colspan="2">����</td>
        </tr> 
        <%
	         try{
	           Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			   String url = "jdbc:sqlserver://localhost:1433;databaseName=student";
	           String name = "sa";
	           String pass= "123456";
	           Connection conn = DriverManager.getConnection(url, name, pass);
	           String sql="select * from score;";
	           Statement statement=conn.createStatement();
	           ResultSet rs=statement.executeQuery(sql);
	           while (rs.next()) {
	        %>
	        <tr>
	            <td><%=rs.getString("xh")%></td>
	            <td><%=rs.getString("xm")%></td>
	            <td><%=rs.getString("bh")%></td>
	            <td><%=rs.getString("yw")%></td>
	            <td><%=rs.getString("sx")%></td>
	            <td><%=rs.getString("yy")%></td>
	            <td><%=rs.getString("zf")%></td>
	            <td><img width='15' height='15' src ="images/LuArrow.gif" /><a href="cjxg.jsp?xh=<%=rs.getString("xh")%>"onClick="return confirm('ȷ���޸�?');">�޸�</a></td>
	            <td><img width='15' height='15' src ="images/LuWrong.jpg" /><a href="cjsc.jsp?xh=<%=rs.getString("xh")%>">ɾ��</a></td> 
	        </tr>
	        <%}%>
	        <% 
	                           rs.close();
	                           statement.close();
	                           conn.close();
	                        }catch (Exception e) {
	                           out.println(e.getMessage());
	                        }
	                      %>
        <tr>
            <td align="center" colspan="9">
                 <img width='15' height='15' src ="images/LuRight.jpg" /><a href="cjzj.jsp">���</a>
            </td>
        </tr>
        <tr>
            <td  align="center" colspan="9"><input type="button" onclick="window.location.href='welcome.jsp';" value="����"></td>
        </tr> 
    </table>
</div>
</body>
</html>