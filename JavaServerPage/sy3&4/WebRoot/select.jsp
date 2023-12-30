<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<%request.setCharacterEncoding("gb2312"); %>
<html>
<head>
   <title>班级选择</title>
</head>
<body>
<form action="detail.jsp" method="post">
  班级:
  <select name="bh">
     <%
                        try{
                        	 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                             String url = "jdbc:sqlserver://localhost:1433;databaseName=student";
                             String name = "sa";
                             String pass= "20011228";
                             Connection conn = DriverManager.getConnection(url, name, pass);
                             String sql="select * from class;";
                             Statement statement=conn.createStatement();
                             ResultSet rs=statement.executeQuery(sql);
                             while(rs.next()){
                            	 String bjbh=rs.getString("bjbh");
                            	 String bjmc=rs.getString("bjmc");
                           %>
                           <option value="<%=bjbh%>"><%=bjmc%></option>
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
  <input type="submit" name="submit" value="查询"/>
</form>
</body>
</html>