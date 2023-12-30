package com.sy.bean;

import java.sql.*;

public class DbBean {
    private Connection conn = null;
    private Statement stat = null;
    ResultSet rs = null;

    public DbBean() {

    }

    public void getConnection() {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
            String url = "jdbc:sqlserver://localhost:1433;databaseName=student";
            String user = "sa";
            String pas = "123456";
            conn = DriverManager.getConnection(url, user, pas);
        } catch (ClassNotFoundException e) {
            System.out.println(e.getMessage());
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    public ResultSet executeQuery(String sql) {
        rs = null;
        try {
            stat = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs = stat.executeQuery(sql);
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return rs;
    }

    public int executeNoQuery(String sql) {
        int n = 0;
        try {
            stat = conn.createStatement();
            n = stat.executeUpdate(sql);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return n;
    }

    public void close() {
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }
        }
        if (stat != null) {
            try {
                stat.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        if(conn!=null) {
            try {
                conn.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }

    }
}
