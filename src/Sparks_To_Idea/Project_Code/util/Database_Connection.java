package Sparks_To_Idea.Project_Code.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Database_Connection {
	private static String driverClassName="com.mysql.jdbc.Driver";
	private static String connectionURL = "jdbc:mysql://localhost:3306/stock_tracker";
	private static String userName = "root";
	private static String password = "root";
	
	public static Connection getDBConnection()
	{
		Connection conn = null;
		try {
			Class.forName(driverClassName);
			conn = DriverManager.getConnection(connectionURL, userName, password);
						
			if(conn!=null){
				System.out.println("Connected With Database......");
			}else{
			    System.out.println("Database Connection Failedled......");
			}
		
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}catch (SQLException e) {
			e.printStackTrace();
		}
		
		return conn;
	}
	public static void main(String[] args) {
		Database_Connection.getDBConnection();
		
	}
	}

