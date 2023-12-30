<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=utf-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String xh = request.getParameter("xh");
    String xm = request.getParameter("xm");
    String bh = request.getParameter("bh");
    double yw = Double.parseDouble(request.getParameter("yw"));
    double sx = Double.parseDouble(request.getParameter("sx"));
    double yy = Double.parseDouble(request.getParameter("yy"));
    double zf = yw + sx + yy;
    try{
    	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        String url = "jdbc:sqlserver://localhost:1433;databaseName=student";
        String name = "sa";
        String pass= "20011228";
        Connection conn = DriverManager.getConnection(url, name, pass);
        String insert="insert into score values(?,?,?,?,?,?,?);";
        PreparedStatement ps=conn.prepareStatement(insert);
        ps.setString(1,xh);
        ps.setString(2,xm);
        ps.setString(3,bh);
        ps.setDouble(4,yw);
        ps.setDouble(5,sx);
        ps.setDouble(6,yy);
        ps.setDouble(7,zf);
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