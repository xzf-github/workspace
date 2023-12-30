<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%request.setCharacterEncoding("gb2312"); %>
<html>
<head>
    <title>É¾³ý³É¹¦</title>
</head>
<body>
<%
    String xh = request.getParameter("xh");
    try{
    	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        String url = "jdbc:sqlserver://localhost:1433;databaseName=student";
        String name = "sa";
        String pass= "20011228";
        Connection conn = DriverManager.getConnection(url, name, pass);
        String insert="delete from score where xh='"+xh+"';";
        PreparedStatement ps=conn.prepareStatement(insert);
        if(ps.executeUpdate()>0){
        	System.out.println("Ok......");
        }else{
        	System.out.println("No......");
        }
        ps.close();
        conn.close();
    }catch (Exception e) {
        out.println(e.getMessage());
    }
%>
</body>
</html>