<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%request.setCharacterEncoding("gb2312"); %>
<html>
<head>
   <title>学生成绩删除</title>
</head>
<body>
<div align="center">
    <form action="delete01.jsp" method="post">
        <h2 align="center">学生成绩删除</h2>
        <table>
            <tr>
                <td>学号</td>
                <td>
                   <select name="xh">
                      <%
                        try{
                        	 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                             String url = "jdbc:sqlserver://localhost:1433;DatabaseName=student";
                             String name = "sa";
                             String pass= "20011228";
                             Connection conn = DriverManager.getConnection(url, name, pass);
                             String sql="select * from score;";
                             Statement statement=conn.createStatement();
                             ResultSet rs=statement.executeQuery(sql);
                             while(rs.next()){
                            	 String xh=rs.getString("xh");
                           %>
                           <option value="<%=xh%>"><%=xh%>
                           </option>
                           <% }%>
                           <% 
                           rs.close();
                           statement.close();
                           conn.close();
                        }catch (Exception e) {
                           out.println(e.getMessage());
                        }
                      %>
                   </select>
                </td>
            </tr>
         </table>
        <p>
            <input type="submit" value="确定"/>
            <input type="reset" value="重置"/>
        </p>
    </form>
</div>
</body>
</html>