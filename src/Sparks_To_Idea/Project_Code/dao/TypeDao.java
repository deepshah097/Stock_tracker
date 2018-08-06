package Sparks_To_Idea.Project_Code.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Sparks_To_Idea.Project_Code.bean.CountryBean;
import Sparks_To_Idea.Project_Code.bean.TypeBean;
import Sparks_To_Idea.Project_Code.util.Database_Connection;

public class TypeDao {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public boolean insert(TypeBean type){
		boolean result = false;
		conn = Database_Connection.getDBConnection();
		
		//System.out.println("Insert dao");
		
		if(conn!=null){
			String insertSQL ="INSERT INTO type(type_name) values(?)";
			try {
				pstmt = conn.prepareStatement(insertSQL );
				
				pstmt.setString(1,type.getTypeName());
	
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

	//select the in dao

	public List<TypeBean> select(){
			
			conn = Database_Connection.getDBConnection();
			List<TypeBean>listOfType = new ArrayList<TypeBean>();
			if(conn!=null){
				try {
					String selectSQL = "SELECT * FROM Type";
					
					pstmt = conn.prepareStatement(selectSQL);
					
					rs = pstmt.executeQuery();
					
					TypeBean type = null;
					
					while(rs.next()){
						type = new TypeBean();

			//			country.setCountry_id(rs.getString("Country_id"));
			//			country.setCountry_name(rs.getString("Country_name"));
						
						type.setTypeId(rs.getString("type_ID"));
						type.setTypeName(rs.getString("type_NAME"));
						
						
						listOfType.add(type);
					}
					
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			System.out.println("List Size : "+listOfType.size());
			return listOfType;
		}
		
	public TypeBean getTypeByPK(String typeId){
		TypeBean type =  new TypeBean();
		
		conn = Database_Connection.getDBConnection();
		
		if(conn!=null){
			try {
				String selectSQL = "SELECT * FROM TYPE WHERE type_Id = ?";
				
				pstmt = conn.prepareStatement(selectSQL);
				
				pstmt.setString(1,typeId);
				
				rs = pstmt.executeQuery();
				
				
				
				while(rs.next()){
					
					type.setTypeId(rs.getString("TYPE_ID"));
					type.setTypeName(rs.getString("TYPE_NAME"));
		
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return type;
	}

	//update in dao


	public boolean update(TypeBean type)
	{
			boolean result = false;
			conn = Database_Connection.getDBConnection();
			
			if(conn!=null){
				String updateSQL ="UPDATE TYPE SET type_Name=? WHERE type_Id = ?";
				try {
					pstmt = conn.prepareStatement(updateSQL );
					
					pstmt.setString(1,type.getTypeName());
					pstmt.setString(2,type.getTypeId());
					
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


	//delete in dao


	public boolean delete(String typeId) {
			boolean result = false;
			
			System.out.println("hello");
			conn = Database_Connection.getDBConnection();
			
			if(conn!=null){
				String deleteSQL ="DELETE FROM TYPE WHERE type_Id = ?";
				try {
					pstmt = conn.prepareStatement(deleteSQL );
					
					pstmt.setString(1, typeId);
					
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
