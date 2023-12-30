<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<%request.setCharacterEncoding("gb2312"); %>
<html>
<head>
    <title>学生成绩详细查询</title>
</head>
<body>
<div align="center">
   <h2 align="center">学生详细</h2>
   <%
      request.setCharacterEncoding("gb2312");
      String bjbh=request.getParameter("bh");
      Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
      String url = "jdbc:sqlserver://localhost:1433;databaseName=student";
      String name = "sa";
      String pass= "20011228";
      Connection conn = DriverManager.getConnection(url, name, pass);
      String sql="select bjmc,xh,xm,yw,sx,yy,zf from class,score where score.bh=class.bjbh and '"+bjbh+"'=score.bh;";
      Statement statement=conn.createStatement();
      ResultSet rs=statement.executeQuery(sql);
      rs.next();
      String bjmc=rs.getString("bjmc");
      String xh=rs.getString("xh").trim();
      String xm=rs.getString("xm").trim();
      double yw=rs.getDouble("yw");
      double sx=rs.getDouble("sx");
      double yy=rs.getDouble("yy");
      double zf=rs.getDouble("zf");
      rs.close();
      statement.close();
      conn.close();
   %>
<table>
    <tr>
        <td>班级</td>
        <td>
            <input type="text" value="<%=bjmc%>" disabled/>
        </td>
    </tr>
    <tr>
                <td>编号</td>
                <td><input type="text" value="<%=xh%>" disabled/></td>
            </tr>
            <tr>
                <td>姓名</td>
                <td><input type="text" value="<%=xm%>" disabled/></td>
            </tr>
            <tr>
                <td>语文</td>
                <td><input type="text" value="<%=yw%>" disabled/></td>
            </tr>
            <tr>
                <td>数学</td>
                <td><input type="text" value="<%=sx%>" disabled/></td>
            </tr>
            <tr>
                <td>英语</td>
                <td><input type="text" value="<%=yy%>" disabled/></td>
            </tr>
            <tr>
                <td>总分</td>
                <td><input type="text" value="<%=zf%>" disabled/></td>
            </tr>
     </table>
     <p>
        <a href="javaScript:window.close()">[关闭]</a>
     </p>
</div>
</body>
</html>