<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<%request.setCharacterEncoding("gb2312"); %>
<html>
	<head>
	    <title>�༶����ϵͳ</title>
	    <div align="center"><img width='30' height='30' src ="images/LuVblue.png" /><h1>�༶����ϵͳ</h1></div>
	</head>
	<body>
	<div align="center">
	    <table border="2">
	        <tr>
	            <td align="center" colspan="5">�༶��Ϣ</td>
	        </tr>
	        <tr>
	        	<td>�༶���</td>
	            <td>�༶����</td>
	            <td align="center" colspan="2">����</td>
	        </tr> 
	        <%
		         try{
		           Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
				   String url = "jdbc:sqlserver://localhost:1433;databaseName=student";
		           String name = "sa";
		           String pass= "123456";
		           Connection conn = DriverManager.getConnection(url, name, pass);
		           String sql="select * from class;";
		           Statement statement=conn.createStatement();
		           ResultSet rs=statement.executeQuery(sql);
		           while (rs.next()) {
		        %>
		        <tr>
		            <td><%=rs.getString("bjbh")%></td>
		            <td><%=rs.getString("bjmc")%></td>
		            <td><img width='15' height='15' src ="images/LuArrow.gif" /><a href="classMan.jsp?bjbh=<%=rs.getString("bjbh")%>"onClick="return confirm('ȷ���޸�?');">�޸�</a></td>
		            <td><img width='15' height='15' src ="images/LuWrong.jpg" /><a href="classDel.jsp?bjbh=<%=rs.getString("bjbh")%>">ɾ��</a></td> 
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
	            <td align="center" colspan="5">
	                 <img width='15' height='15' src ="images/LuRight.jpg" /><a href="classAdd.jsp">���</a>
	            </td>
	        </tr>
	        <tr>
	            <td  align="center" colspan="5"><input type="button" onclick="window.location.href='welcome.jsp';" value="����"></td>
	        </tr> 
	    </table>
	</div>
	</body>
</html>