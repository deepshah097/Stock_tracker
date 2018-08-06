package Sparks_To_Idea.Project_Code.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Sparks_To_Idea.Project_Code.bean.CountryBean;
import Sparks_To_Idea.Project_Code.util.Database_Connection;

public class CountryDao {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public boolean insert(CountryBean country){
		boolean result = false;
		conn = Database_Connection.getDBConnection();
		
		//System.out.println("Insert dao");
		
		if(conn!=null){
			String insertSQL ="INSERT INTO COUNTRY(Country_name) values(?)";
			try {
				pstmt = conn.prepareStatement(insertSQL );
				
				pstmt.setString(1,country.getCountryName());
	
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

	public List<CountryBean> select(){
			
			conn = Database_Connection.getDBConnection();
			List<CountryBean>listOfCountry = new ArrayList<CountryBean>();
			if(conn!=null){
				try {
					String selectSQL = "SELECT * FROM COUNTRY";
					
					pstmt = conn.prepareStatement(selectSQL);
					
					rs = pstmt.executeQuery();
					
					CountryBean country = null;
					
					while(rs.next()){
						country = new CountryBean();

			//			country.setCountry_id(rs.getString("Country_id"));
			//			country.setCountry_name(rs.getString("Country_name"));
						
						country.setCountryId(rs.getString("COUNTRY_ID"));
						country.setCountryName(rs.getString("COUNTRY_NAME"));
						
						
						listOfCountry.add(country);
					}
					
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			System.out.println("List Size : "+listOfCountry.size());
			return listOfCountry;
		}
		
	public CountryBean getCountryByPK(String countryId){
		CountryBean country =  new CountryBean();
		
		conn = Database_Connection.getDBConnection();
		
		if(conn!=null){
			try {
				String selectSQL = "SELECT * FROM COUNTRY WHERE country_Id = ?";
				
				pstmt = conn.prepareStatement(selectSQL);
				
				pstmt.setString(1,countryId);
				
				rs = pstmt.executeQuery();
				
				
				
				while(rs.next()){
					
					country.setCountryId(rs.getString("COUNTRY_ID"));
					country.setCountryName(rs.getString("COUNTRY_NAME"));
		
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return country;
	}

	//update in dao


	public boolean update(CountryBean country)
	{
			boolean result = false;
			conn = Database_Connection.getDBConnection();
			
			if(conn!=null){
				String updateSQL ="UPDATE COUNTRY SET country_Name=? WHERE country_Id = ?";
				try {
					pstmt = conn.prepareStatement(updateSQL );
					
					pstmt.setString(1,country.getCountryName());
					pstmt.setString(2,country.getCountryId());
					
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


	public boolean delete(String countryId) {
			boolean result = false;
			
			System.out.println("hello");
			conn = Database_Connection.getDBConnection();
			
			if(conn!=null){
				String deleteSQL ="DELETE FROM COUNTRY WHERE country_Id = ?";
				try {
					pstmt = conn.prepareStatement(deleteSQL );
					
					pstmt.setString(1, countryId);
					
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
