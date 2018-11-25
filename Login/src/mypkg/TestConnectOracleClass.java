package mypkg;

// connect with Oracle database
// use java.sql pkg : DriverManager
// Statement interface , PreparedStatement interface
import java.sql.*;


public class TestConnectOracleClass {
	
	// Result of connection with Oracle database
	static Connection refOracleConnection = null;

	public static Connection getConnection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("OracleDriver Class success");
			
			refOracleConnection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "jsp_user", "1234");
			System.out.println("Oracle Database Connection success");
			
		}catch(ClassNotFoundException e) {
			System.out.println("OracleDriver Class fail");
		}catch(SQLException e) {
			System.out.println("Connection Error");
			System.out.println("Fail Error : "+e.getMessage());
			e.printStackTrace();
		}
		return refOracleConnection;
	}
	
	public static void closeOracle() {
		try {
			if(refOracleConnection !=null) {
				refOracleConnection.close();
				System.out.println("Oracle Disconnection");
			}
		}catch(SQLException e) {
			System.out.println("Disconnection Error : "+e.getMessage());
		}
	}
}
