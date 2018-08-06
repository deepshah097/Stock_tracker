package Sparks_To_Idea.Project_Code.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;



import Sparks_To_Idea.Project_Code.bean.ItemorderBean;
import Sparks_To_Idea.Project_Code.util.Database_Connection;

public class ItemorderDao {
	
	
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	

	public boolean insert(ItemorderBean itemorder) {
		boolean result = false;
		conn = Database_Connection.getDBConnection();
		
		if(conn!=null){
			String insertSQL ="INSERT INTO ITEMORDER(source,destination,order_qty,order_status,total_price,item_id,customer_id,payment) values(?,?,?,?,?,?,?,?)";
			try {
				pstmt = conn.prepareStatement(insertSQL);
				
				pstmt.setString(1, itemorder.getSource());
				pstmt.setString(2, itemorder.getDestination());
				pstmt.setString(3, itemorder.getOrderQty());
				pstmt.setString(4, itemorder.getOrderStatus());
				pstmt.setString(5, itemorder.getTotalPrice());
				pstmt.setString(6, itemorder.getItemId());
				pstmt.setString(7, itemorder.getCustomerId());
				pstmt.setString(8, "0");
				
				int rowsAffected = pstmt.executeUpdate();
				
				if(rowsAffected>0){
					System.out.println("Data Inserted Successful......");
					result = true;
				}else{
					System.out.println("Insertion Failed......");
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		return result;
	
}

public List<ItemorderBean> select(){
		
		conn = Database_Connection.getDBConnection();
		List<ItemorderBean> listOfItemorder = new ArrayList<ItemorderBean>();
		if(conn!=null){
			try {
				String selectSQL = "SELECT * FROM ITEMORDER";
				
				pstmt = conn.prepareStatement(selectSQL);
				
				rs = pstmt.executeQuery();
				
				ItemorderBean itemorder = null;
				
				while(rs.next()){
					 itemorder  = new ItemorderBean();

					
					itemorder.setOrderId(rs.getString("order_Id"));
					itemorder.setSource(rs.getString("source"));
					itemorder.setDestination(rs.getString("destination"));
					itemorder.setOrderQty(rs.getString("order_qty"));
					itemorder.setOrderStatus(rs.getString("order_status"));
					itemorder.setTotalPrice(rs.getString("total_price"));
					itemorder.setItemId(rs.getString("item_id"));
					
					
					listOfItemorder.add(itemorder);
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		System.out.println("List Size : "+listOfItemorder.size());
		return listOfItemorder;
	}



public List<ItemorderBean> getItemorderBycustId(String customerId) {
	
	conn = Database_Connection.getDBConnection();
	List<ItemorderBean> itemorder = new ArrayList<ItemorderBean>();
	
	if(conn!=null){
		try {
			String selectSQL = "SELECT * FROM ITEMORDER WHERE customer_Id=?";
			
			pstmt = conn.prepareStatement(selectSQL);
		
			pstmt.setString(1, customerId);
			rs = pstmt.executeQuery();
			ItemorderBean itemorder1=null;
			while(rs.next())
			{
				System.out.println("heeeeee");
				itemorder1=new ItemorderBean();
				itemorder1.setOrderId(rs.getString("order_Id"));
				itemorder1.setSource(rs.getString("source"));
				itemorder1.setDestination(rs.getString("destination"));
				itemorder1.setOrderQty(rs.getString("order_qty"));
				itemorder1.setOrderStatus(rs.getString("order_status"));
				itemorder1.setTotalPrice(rs.getString("total_price"));
				itemorder1.setItemId(rs.getString("item_id"));
				itemorder1.setCustomerId(rs.getString("customer_id"));
				itemorder1.setPayment(rs.getString("payment"));
				
				itemorder.add(itemorder1);
				
			}
			
		} 
		catch (SQLException e)
		{
			e.printStackTrace();
		}
	}
	
	return itemorder;
}



public boolean delete(String orderId) {
	
	boolean result=false;
	int rowsaffected=0;
	conn=Database_Connection.getDBConnection();
	if(conn!=null)
	{
		String deletesql="DELETE FROM ITEMORDER WHERE order_Id = ?";
		try
		{
			pstmt=conn.prepareStatement(deletesql);
			pstmt.setString(1, orderId);
			rowsaffected=pstmt.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		if(rowsaffected>0)
		{
			System.out.println("deletion successful");
		}
		else
		{
			System.out.println("deletion failed");
		}
	}

	return result;
}
public ItemorderBean getItemorderByPK(String orderId) {
	
	conn = Database_Connection.getDBConnection();
	ItemorderBean itemorder = new ItemorderBean();

	if(conn!=null){
		try {
			String selectSQL = "SELECT * FROM ITEMORDER WHERE order_Id=?";
			
			pstmt = conn.prepareStatement(selectSQL);
		
			pstmt.setString(1, orderId);
			rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				//System.out.println("heeeeee");
				
				itemorder.setOrderId(rs.getString("order_Id"));
				itemorder.setSource(rs.getString("source"));
				itemorder.setDestination(rs.getString("destination"));
				itemorder.setOrderQty(rs.getString("order_qty"));
				itemorder.setOrderStatus(rs.getString("order_status"));
				itemorder.setTotalPrice(rs.getString("total_price"));
				itemorder.setItemId(rs.getString("item_id"));
				itemorder.setCustomerId(rs.getString("customer_id"));
				
			}
			
		} 
		catch (SQLException e)
		{
			e.printStackTrace();
		}
	}
	
	return itemorder;
}

public boolean update(ItemorderBean itemorder) {
	
	conn=Database_Connection.getDBConnection();
	int rowsaffected=0;
	boolean result=false;
	if(conn!=null)
	{
		String updatesql="UPDATE ITEMORDER SET source=?,destination=?,order_qty=?,order_status=?,total_price=?,item_Id=? WHERE order_Id = ?";
		try
		{
			pstmt=conn.prepareStatement(updatesql);
			//System.out.println(area.getAreaId());
			

			pstmt.setString(1, itemorder.getSource());
			pstmt.setString(2, itemorder.getDestination());
			pstmt.setString(3, itemorder.getOrderQty());
			pstmt.setString(4, itemorder.getOrderStatus());
			pstmt.setString(5, itemorder.getTotalPrice());
			pstmt.setString(6, itemorder.getItemId());
			pstmt.setString(7, itemorder.getOrderId());
			
			System.out.println("Order id ::"+itemorder.getOrderId());
			rowsaffected=pstmt.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		if(rowsaffected>0)
		{
			result=true;
			System.out.println("update successful");
		}
		else
		{
			System.out.println("update unsuccessful");
			
		}
	}
	return result;
	
}



public boolean updatepayment(String orderId) {
	
	conn=Database_Connection.getDBConnection();
	int rowsaffected=0;
	boolean result=false;
	String status="1";
	if(conn!=null)
	{
		String updatesql="UPDATE ITEMORDER SET payment=? WHERE order_Id = ?";
		try
		{
			pstmt=conn.prepareStatement(updatesql);
			//System.out.println(area.getAreaId());
			

			pstmt.setString(1, status);
			
			pstmt.setString(2, orderId);
			
			//System.out.println("Order id ::"+itemorder.getOrderId());
			rowsaffected=pstmt.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		if(rowsaffected>0)
		{
			result=true;
			System.out.println("update successful");
		}
		else
		{
			System.out.println("update unsuccessful");
			
		}
	}
	return result;
	
}











public boolean updatebyqty(String itemorder,String order_id) {
	
	conn=Database_Connection.getDBConnection();
	int rowsaffected=0;
	boolean result=false;
	if(conn!=null)
	{
		String updatesql="UPDATE ITEMORDER SET order_qty=?  WHERE order_Id = ?";
		try
		{
			pstmt=conn.prepareStatement(updatesql);
			//System.out.println(area.getAreaId());
			

			
			pstmt.setString(1, itemorder);
			
			pstmt.setString(2, order_id);
			
			//System.out.println("Order id ::"+itemorder.getOrderId());
			rowsaffected=pstmt.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		if(rowsaffected>0)
		{
			result=true;
			System.out.println("update successful");
		}
		else
		{
			System.out.println("update unsuccessful");
			
		}
	}
	return result;
	
}



public boolean updatebytotal(String total,String orderId) {
	
	conn=Database_Connection.getDBConnection();
	int rowsaffected=0;
	boolean result=false;
	if(conn!=null)
	{
		String updatesql="UPDATE ITEMORDER SET total_price=?  WHERE order_Id = ?";
		try
		{
			pstmt=conn.prepareStatement(updatesql);
			//System.out.println(area.getAreaId());
			

			
			pstmt.setString(1, total);
			
			pstmt.setString(2, orderId);
			
			//System.out.println("Order id ::"+itemorder.getOrderId());
			rowsaffected=pstmt.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		if(rowsaffected>0)
		{
			result=true;
			System.out.println("update successful");
		}
		else
		{
			System.out.println("update unsuccessful");
			
		}
	}
	return result;
	
}






public boolean updatechangestatus(ItemorderBean itemorder) {
	
	conn=Database_Connection.getDBConnection();
	int rowsaffected=0;
	boolean result=false;
	if(conn!=null)
	{
		String updatesql="UPDATE ITEMORDER SET order_status=? WHERE order_Id = ?";
		try
		{
			pstmt=conn.prepareStatement(updatesql);
			//System.out.println(area.getAreaId());
			

			
			pstmt.setString(1, itemorder.getOrderStatus());
			pstmt.setString(2, itemorder.getOrderId());
			
			System.out.println("Order id ::"+itemorder.getOrderId());
			rowsaffected=pstmt.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		if(rowsaffected>0)
		{
			result=true;
			System.out.println("update successful");
		}
		else
		{
			System.out.println("update unsuccessful");
			
		}
	}
	return result;
	
}





}
