package test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Preparedstate {
	public static void main(String[] args) {
		Connection con = null;
		PreparedStatement ppstmt =null;
		ResultSet rs = null;
		
		try {	
		// 1. Driver Loading
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("Loading Success");
		
		// 2. Connection
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "SHOP", "1313");
			System.out.println("Connection Success");
		
		// 3. Statement
 			ppstmt = con.prepareStatement("insert into memberTBL values(?,?,?)"); 
 			ppstmt.setString(1,args[0]);
			ppstmt.setString(2,args[1]);
			ppstmt.setString(3,args[2]);
			System.out.println("Statement Success");
			
		// 4. SQL 전송
			int i = ppstmt.executeUpdate();
			
		// 5. 결과 얻기
			System.out.println("This is the Result");
			System.out.println(i+"행이 Insert되었습니다.");
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
			
		// 6. 자원종료
		} finally {
			try {
				if(rs!=null) {rs.close();}
				if (ppstmt!=null) {ppstmt.close();}
				if (con!=null) {con.close();}
			} catch (SQLException e) {
				e.printStackTrace();
			} 	
		}
	}

	private void setString(int i, String string) {
		// TODO Auto-generated method stub
		
	}
}
