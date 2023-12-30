package yz.java.util;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
 
public class DbUtil {
	// 数据库地址
	private static String dbUrl = "jdbc:sqlserver://localhost:1433;databaseName=student";
	// 用户名
	private static String dbUserName = "sa";
	// 密码
	private static String dbPassword = "123123";
	// 驱动名称
	private static String jdbcName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
 
	public static void main(String[] args) {
		try {
			Class.forName(jdbcName);
			System.out.println("加载驱动成功！");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("加载驱动失败！");
		}
 
		Connection con = null;
		try {
			// 获取数据库连接
			con = DriverManager.getConnection(dbUrl, dbUserName, dbPassword);
			System.out.println("获取数据库连接成功！");
			System.out.println("进行数据库操作！");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("获取数据库连接失败！");
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
 
	}
}

