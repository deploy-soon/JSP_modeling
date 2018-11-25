package mypkg;
import java.sql.*;


// Manage Member Table to Regist user
/* Sql table structure
 * create table member(
	username varchar2(30) primary key,
	password varchar2(30) not null,
	name varchar2(30),
	age number,
	reg_date date default sysdate
	);
 */
public class MemberDAOClass {
	
	public static int insertMethod(Connection refOracleConnection, MemberBeanClass refMemberBean) {
		int result = 0;
		String query = "INSERT INTO member(username,password,name,age) VALUES (?,?,?,?)";
		PreparedStatement pStmt = null;
		try {
			pStmt = refOracleConnection.prepareStatement(query);
			pStmt.setString(1,refMemberBean.getUsername());
			pStmt.setString(2,refMemberBean.getPassword());
			pStmt.setString(3,refMemberBean.getName());
			pStmt.setInt(4,refMemberBean.getAge());
			result = pStmt.executeUpdate();
			
		}catch(SQLException e) {
			System.out.println("SQL ERROR : " + e.getMessage());
		}catch(Exception e) {
			System.out.println("ERROR : " + e.getMessage());
		}finally {
			try {
				if(pStmt != null) {
					pStmt.close();
					System.out.println("close prepared statetment");
				}
				
			}catch(SQLException e) {
				System.out.println("SQL ERROR : " + e.getMessage());
			}
		}
		return result;
	}
}
