package yz.java.util;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
 
public class DbUtil {
	// ���ݿ��ַ
	private static String dbUrl = "jdbc:sqlserver://localhost:1433;databaseName=student";
	// �û���
	private static String dbUserName = "sa";
	// ����
	private static String dbPassword = "123123";
	// ��������
	private static String jdbcName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
 
	public static void main(String[] args) {
		try {
			Class.forName(jdbcName);
			System.out.println("���������ɹ���");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("��������ʧ�ܣ�");
		}
 
		Connection con = null;
		try {
			// ��ȡ���ݿ�����
			con = DriverManager.getConnection(dbUrl, dbUserName, dbPassword);
			System.out.println("��ȡ���ݿ����ӳɹ���");
			System.out.println("�������ݿ������");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("��ȡ���ݿ�����ʧ�ܣ�");
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

