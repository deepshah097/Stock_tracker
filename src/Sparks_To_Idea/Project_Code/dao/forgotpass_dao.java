package Sparks_To_Idea.Project_Code.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import Sparks_To_Idea.Project_Code.util.Database_Connection;


public class forgotpass_dao {

	private static Connection conn = Database_Connection.getDBConnection();
	private PreparedStatement pstmt = null;
	private java.sql.ResultSet rs = null;
	
	public boolean update(String newpass,String userid) {
		boolean result = false;
		// conn = DatabaseConnectioncheck.getDBConnection();

		
		
		
		if (conn != null) {
			String updateCountrySQL = "UPDATE register SET password=? where register_id=?";
			try {
				
				pstmt = conn.prepareStatement(updateCountrySQL);

				pstmt.setString(1,newpass);
				pstmt.setString(2,userid);
				System.out.println("in dao after");
				int rowsAffacted = pstmt.executeUpdate();

				if (rowsAffacted > 0) {
					System.out.println(rowsAffacted + " Row updated......");
					result = true;
				} else {
					System.out.println(rowsAffacted + "Row not updated......");
				}
			} catch (SQLException e) {
				System.out.println("Update state: " + e.getMessage());
			}
		}
		return result;

	}
	
}
