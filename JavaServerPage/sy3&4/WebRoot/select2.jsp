<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<%request.setCharacterEncoding("gb2312"); %>
<html>
<head>
   <title>学生选择表</title>
</head>
<body>
<form action="update.jsp" method="post">
  选择要修改学生学号:
  <select name="xh">
     <%
                        try{
                        	 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                             String url = "jdbc:sqlserver://localhost:1433;databaseName=student";
                             String name = "sa";
                             String pass= "20011228";
                             Connection conn = DriverManager.getConnection(url, name, pass);
                             String sql="select * from score;";
                             Statement statement=conn.createStatement();
                             ResultSet rs=statement.executeQuery(sql);
                             while(rs.next()){
                            	 String xh=rs.getString("xh");
                            	
                           %>
                           <option value="<%=xh%>"><%=xh%></option>
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
  <input type="submit" name="submit" value="修改"/>
</form>
</body>
</html>