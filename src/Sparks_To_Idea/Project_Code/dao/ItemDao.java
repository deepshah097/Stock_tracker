package Sparks_To_Idea.Project_Code.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Sparks_To_Idea.Project_Code.bean.ItemBean;
import Sparks_To_Idea.Project_Code.util.Database_Connection;

public class ItemDao {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public boolean insert(ItemBean item){
		boolean result = false;
		conn = Database_Connection.getDBConnection();
		
		if(conn!=null){
			String insertSQL ="INSERT INTO ITEM(ITEM_NAME,ITEM_PRICE,ITEM_QTY,ITEM_IMG) values(?,?,?,?)";
			try {
				pstmt = conn.prepareStatement(insertSQL );
				
				pstmt.setString(1,item.getItemName());
				pstmt.setString(2,item.getItemPrice());
				pstmt.setString(3,item.getItemQty());
				pstmt.setString(4,item.getItemImg());
				
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
	
public List<ItemBean> select(){
		
		conn = Database_Connection.getDBConnection();
		List<ItemBean> listOfItem = new ArrayList<ItemBean>();
		if(conn!=null){
			try {
				String selectSQL = "SELECT * FROM ITEM";
				
				pstmt = conn.prepareStatement(selectSQL);
				
				rs = pstmt.executeQuery();
				
				ItemBean item = null;
				
				while(rs.next()){
					item = new ItemBean();
                    
					item.setItemId(rs.getString("ITEM_ID"));
					item.setItemName(rs.getString("ITEM_NAME"));
					item.setItemPrice(rs.getString("ITEM_PRICE"));
					item.setItemQty(rs.getString("ITEM_QTY"));
					item.setItemImg(rs.getString("ITEM_IMG"));
					
					listOfItem.add(item);
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		System.out.println("List Size : "+listOfItem.size());
		return listOfItem;
	}
	
public ItemBean getItemByPK(String itemId){
	ItemBean item =  new ItemBean();
	
	conn = Database_Connection.getDBConnection();
	
	if(conn!=null){
		try {
			String selectSQL = "SELECT * FROM ITEM WHERE item_Id = ?";
			
			pstmt = conn.prepareStatement(selectSQL);
			
			pstmt.setString(1, itemId);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				
				item.setItemId(rs.getString("ITEM_ID"));
				item.setItemName(rs.getString("ITEM_NAME"));
				item.setItemPrice(rs.getString("ITEM_PRICE"));
				item.setItemQty(rs.getString("ITEM_QTY"));
				item.setItemImg(rs.getString("ITEM_IMG"));
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	return item;
}

	public boolean update(ItemBean item){
		boolean result = false;
		conn = Database_Connection.getDBConnection();
		
		if(conn!=null){
		String updateSQL ="UPDATE ITEM SET item_Name=?,item_price=?,item_qty=? WHERE item_Id = ?";
			try {
				pstmt = conn.prepareStatement(updateSQL );
				
				pstmt.setString(1,item.getItemName());
				pstmt.setString(2,item.getItemPrice());
				pstmt.setString(3,item.getItemQty());
				pstmt.setString(4,item.getItemId());

				
				int rowsAffected = pstmt.executeUpdate();
				
				if(rowsAffected>0){
					result = true;
					System.out.println("Update Successful......");
				}else{
					System.out.println("Updation Failed......");
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		return result;
	}

	public boolean delete(String itemId) {
		boolean result = false;
		
		conn = Database_Connection.getDBConnection();
		
		if(conn!=null){
			String deleteSQL ="DELETE FROM ITEM WHERE item_Id= ?";
			try {
				pstmt = conn.prepareStatement(deleteSQL );
				
				pstmt.setString(1, itemId);
				
				int rowsAffected = pstmt.executeUpdate();
				
				if(rowsAffected>0){
					result = true;
					System.out.println("Delete Successful......");
				}else{
					System.out.println("Deletion Failed......");
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		
		
	}
		return result;
	
	}
	
	
	
	
	
	
	
}
