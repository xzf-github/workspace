<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<%request.setCharacterEncoding("gb2312"); %>
<html>
<head>
    <title>学生成绩管理系统</title>
    <div align="center"><img width="500" height="85" src ="images/Title.png" /></div>
</head>
<body>
<div  align="center">
    <table border="1">
        <tr>
            <td align="center" colspan="9">学生成绩信息</td>
        </tr>
        <tr>
        	<td>学号</td>
            <td>姓名</td>
            <td>班号</td>
            <td>语文</td>
            <td>数学</td>
            <td>英语</td>
            <td>总分</td>
            <td align="center" colspan="2">操作</td>
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
	            <td><img width='15' height='15' src ="images/LuArrow.gif" /><a href="cjxg.jsp?xh=<%=rs.getString("xh")%>"onClick="return confirm('确定修改?');">修改</a></td>
	            <td><img width='15' height='15' src ="images/LuWrong.jpg" /><a href="cjsc.jsp?xh=<%=rs.getString("xh")%>">删除</a></td> 
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
                 <img width='15' height='15' src ="images/LuRight.jpg" /><a href="cjzj.jsp">添加</a>
            </td>
        </tr>
        <tr>
            <td  align="center" colspan="9"><input type="button" onclick="window.location.href='welcome.jsp';" value="返回"></td>
        </tr> 
    </table>
</div>
</body>
</html>