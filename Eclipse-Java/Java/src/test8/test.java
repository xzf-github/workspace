package test8;
import java.util.Scanner;
public class test {
	public static void main(String[] args) {
		Scanner scanner=new Scanner(System.in);
		
		Compute compute=new Gymnastics();
		double []scores=new double[6];
		for(int i=0;i<6;i++) {
			scores[i]=scanner.nextDouble();
		}
		double []score=new double[6];
		for(int i=0;i<6;i++) {
			score[i]=scanner.nextDouble();
		}
		System.out.printf("%6.3f\n",compute.average(scores));
		
		compute=new School();
		
		System.out.printf("%-6.2f\n",compute.average(score));
		scanner.close();
	}
}
import java.sql.Connection;  
import java.sql.DriverManager;  
import java.sql.PreparedStatement;  
import java.sql.ResultSet;  
import java.sql.SQLException;  
  
public class BookApp {  
    private static final String DB_URL = "jdbc:sqlserver://localhost:1433;databaseName=Books";  
    private static final String USER = "username";  // 替换为你的数据库用户名  
    private static final String PASS = "password";  // 替换为你的数据库密码  
  
    public static void main(String[] args) {  
        try {  
            // 连接数据库  
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);  
            System.out.println("Connected to the database!");  
  
            // 查询数据  
            String query = "SELECT * FROM book_message";  
            PreparedStatement pstmt = conn.prepareStatement(query);  
            ResultSet rs = pstmt.executeQuery();  
            while (rs.next()) {  
                System.out.println("Book Name: " + rs.getString("book_name") + ", Author: " + rs.getString("author") + ", Publisher: " + rs.getString("publisher") + ", Publication Date: " + rs.getString("publication_date") + ", Price: " + rs.getDouble("price"));  
            }  
            rs.close();  
            pstmt.close();  
            conn.close();  
        } catch (SQLException e) {  
            e.printStackTrace();  
        }  
    }  
}