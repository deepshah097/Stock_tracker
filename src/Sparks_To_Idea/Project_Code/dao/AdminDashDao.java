package Sparks_To_Idea.Project_Code.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Sparks_To_Idea.Project_Code.util.Database_Connection;


public class AdminDashDao {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public int customercnt()
	{
		conn = Database_Connection.getDBConnection();
		int totalcustomers=0;
		System.out.println("-------User cnt dao--------");
		if(conn!=null){
			String query ="SELECT count(register_id) as totalcustomers from REGISTER where type_id=1";
			try
			{
				pstmt = conn.prepareStatement(query);
				
				rs=pstmt.executeQuery();
				
				if(rs.next())
				{
					System.out.println("customer count successful..");
					
					totalcustomers=rs.getInt("totalcustomers");
				}
				else{
					System.out.println("customer count Unsuccessful..");
				}
			}catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
		
		
	
	return totalcustomers;
	
	
}
	
	
	public int shipcnt()
	{
		conn = Database_Connection.getDBConnection();
		int totalships=0;
		System.out.println("-------Ship cnt dao--------");
		if(conn!=null){
			String query ="SELECT count(register_id) as totalships from REGISTER where type_id=3";
			try
			{
				pstmt = conn.prepareStatement(query);
				
				rs=pstmt.executeQuery();
				
				if(rs.next())
				{
					System.out.println("ship count successful..");
					
					totalships=rs.getInt("totalships");
				}
				else{
					System.out.println("ship count Unsuccessful..");
				}
			}catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
		
		
	
	return totalships;
	
	
}
	

	public int warecnt()
	{
		conn = Database_Connection.getDBConnection();
		int totalwares=0;
		System.out.println("-------warehouse cnt dao--------");
		if(conn!=null){
			String query ="SELECT count(register_id) as totalwares from REGISTER where type_id=2";
			try
			{
				pstmt = conn.prepareStatement(query);
				
				rs=pstmt.executeQuery();
				
				if(rs.next())
				{
					System.out.println("warehouse count successful..");
					
					totalwares=rs.getInt("totalwares");
				}
				else{
					System.out.println("warehouse count Unsuccessful..");
				}
			}catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
		
		
	
	return totalwares;
	
	
}

	
	
	
public int itemcnt()
	{
		
		conn = Database_Connection.getDBConnection();
		int totalitems=0;
		System.out.println("-------Item cnt dao--------");
		if(conn!=null){
			String query ="SELECT count(item_id) as totalitems from ITEM";
			try
			{
				pstmt = conn.prepareStatement(query);
				
				rs=pstmt.executeQuery();
				
				if(rs.next())
				{
					System.out.println("Item count successful..");
					
					totalitems=rs.getInt("totalitems");
				}
				else{
					System.out.println("Item count Unsuccessful..");
				}
			}catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
		
	return totalitems;
	
}


public int ordercnt()
{
	
	conn = Database_Connection.getDBConnection();
	int totalorders=0;
	System.out.println("-------Order cnt dao--------");
	if(conn!=null){
		String query ="SELECT count(order_id) as totalorders from ITEMORDER";
		try
		{
			pstmt = conn.prepareStatement(query);
			
			rs=pstmt.executeQuery();
			
			if(rs.next())
			{
				System.out.println("order count successful..");
				
				totalorders=rs.getInt("totalorders");
			}
			else{
				System.out.println("order count Unsuccessful..");
			}
		}catch(SQLException e)
		{
			e.printStackTrace();
		}
	}
	
return totalorders;

}
 


public int itemordercnt(String id)
{
	conn = Database_Connection.getDBConnection();
	int totalitemorder=0;
	System.out.println("-------warehouse cnt dao--------");
	if(conn!=null){
		String query ="SELECT count(order_id) as totalitemorder from itemorder where customer_id=? and payment=0";
		try
		{
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1,id);
			rs=pstmt.executeQuery();
			
			if(rs.next())
			{
				System.out.println("warehouse count successful..");
				
				totalitemorder=rs.getInt("totalitemorder");
			}
			else{
				System.out.println("warehouse count Unsuccessful..");
			}
		}catch(SQLException e)
		{
			e.printStackTrace();
		}
	}
	
	

return totalitemorder;


}



}
