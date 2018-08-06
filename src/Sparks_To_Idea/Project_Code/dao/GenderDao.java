package Sparks_To_Idea.Project_Code.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Sparks_To_Idea.Project_Code.bean.CountryBean;
import Sparks_To_Idea.Project_Code.bean.GenderBean;
import Sparks_To_Idea.Project_Code.util.Database_Connection;

public class GenderDao {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public boolean insert(GenderBean gender){
		boolean result = false;
		conn = Database_Connection.getDBConnection();
		
		//System.out.println("Insert dao");
		
		if(conn!=null){
			String insertSQL ="INSERT INTO Gender(Gender_name) values(?)";
			try {
				pstmt = conn.prepareStatement(insertSQL );
				
				pstmt.setString(1,gender.getGenderName());
	
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

	public List<GenderBean> select(){
			
			conn = Database_Connection.getDBConnection();
			List<GenderBean>listOfGender = new ArrayList<GenderBean>();
			if(conn!=null){
				try {
					String selectSQL = "SELECT * FROM Gender";
					
					pstmt = conn.prepareStatement(selectSQL);
					
					rs = pstmt.executeQuery();
					
					GenderBean gender = null;
					
					while(rs.next()){
						gender= new GenderBean();

			//			country.setCountry_id(rs.getString("Country_id"));
			//			country.setCountry_name(rs.getString("Country_name"));
						
						gender.setGenderId(rs.getString("Gender_ID"));
						gender.setGenderName(rs.getString("Gender_NAME"));
						
						
						listOfGender.add(gender);
					}
					
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			System.out.println("List Size : "+listOfGender.size());
			return listOfGender;
		}
		
	public GenderBean getGenderByPK(String genderId){
		GenderBean gender =  new GenderBean();
		
		conn = Database_Connection.getDBConnection();
		
		if(conn!=null){
			try {
				String selectSQL = "SELECT * FROM Gender WHERE gender_Id = ?";
				
				pstmt = conn.prepareStatement(selectSQL);
				
				pstmt.setString(1,genderId);
				
				rs = pstmt.executeQuery();
				
				
				
				while(rs.next()){
					
					gender.setGenderId(rs.getString("Gender_ID"));
					gender.setGenderName(rs.getString("Gender_NAME"));
		
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return gender;
	}

	//update in dao


	public boolean update(GenderBean gender)
	{
			boolean result = false;
			conn = Database_Connection.getDBConnection();
			
			if(conn!=null){
				String updateSQL ="UPDATE Gender SET gender_Name=? WHERE gender_Id = ?";
				try {
					pstmt = conn.prepareStatement(updateSQL );
					
					pstmt.setString(1,gender.getGenderName());
					pstmt.setString(2,gender.getGenderId());
					
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


	public boolean delete(String genderId) {
			boolean result = false;
			
			System.out.println("hello");
			conn = Database_Connection.getDBConnection();
			
			if(conn!=null){
				String deleteSQL ="DELETE FROM Gender WHERE gender_Id = ?";
				try {
					pstmt = conn.prepareStatement(deleteSQL );
					
					pstmt.setString(1, genderId);
					
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
