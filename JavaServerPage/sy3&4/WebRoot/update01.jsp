<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%request.setCharacterEncoding("gb2312"); %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String xh = request.getParameter("xh");
    String xm = request.getParameter("xm");
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
        String insert="update score set xm='"+xm+"',yw='"+yw+"',sx='"+sx+"',yy='"+yy+"',zf='"+zf+"' where xh='"+xh+"';";
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