<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html; charset=utf-8" language="java" %>

<html>
<head>
   <title>学生成绩增加</title>
</head>
<body>
<div align="center">
    <form action="insert01.jsp" method="post">
        <h2 align="center">学生成绩增加</h2>
        <table>
            <tr>
                <td>班级</td>
                <td>
                   <select name="bh">
                      <%
                        try{
                        	 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                             String url = "jdbc:sqlserver://localhost:1433;DatabaseName=student";
                             String name = "sa";
                             String pass= "20011228";
                             Connection conn = DriverManager.getConnection(url, "sa", "20011228");
                             String sql="select * from class;";
                             Statement statement=conn.createStatement();
                             ResultSet rs=statement.executeQuery(sql);
                             while(rs.next()){
                            	 String bmbh=rs.getString("bjbh");
                            	 String bmmc=rs.getString("bjmc");
                           %>
                           <option value="<%=bmbh%>"><%=bmmc%>
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
            <tr>
                <td>学号</td>
                <td><input type="text" name="xh"/></td>
            </tr>
            <tr>
                <td>姓名</td>
                <td><input type="text" name="xm"/></td>
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
            <input type="reset" value="重置"/>
        </p>
    </form>
</div>
</body>
</html>