package Sparks_To_Idea.Project_Code.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Sparks_To_Idea.Project_Code.bean.RegisterBean;
import Sparks_To_Idea.Project_Code.util.Database_Connection;

public class RegisterDao {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public boolean insert(RegisterBean register){
		boolean result = false;
		conn = Database_Connection.getDBConnection();
		
		int isactive=0;
		
		if(conn!=null){
			String insertSQL ="INSERT INTO REGISTER(first_name,last_name,contact,address,email,password,dob,gender_id,type_id,state_id,country_id,is_active) values(?,?,?,?,?,?,?,?,?,?,?,?)";
			try {
				pstmt = conn.prepareStatement(insertSQL );
				
				pstmt.setString(1,register.getFirstName());
				pstmt.setString(2,register.getLastName());
				pstmt.setString(3,register.getContact());
				pstmt.setString(4,register.getAddress());
				pstmt.setString(5,register.getEmail());
				pstmt.setString(6,register.getPassword());
				pstmt.setString(7,register.getDob());
				pstmt.setString(8,register.getGenderId());
				pstmt.setString(9,register.getTypeId());
				pstmt.setString(10,register.getStateId());
				pstmt.setString(11,register.getCountryId());
				pstmt.setInt(12,isactive);
				
				
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
	
public List<RegisterBean> select(){
		
		conn = Database_Connection.getDBConnection();
		List<RegisterBean> listOfRegister = new ArrayList<RegisterBean>();
		if(conn!=null){
			try {
				String selectSQL = "SELECT * FROM REGISTER";
				
				pstmt = conn.prepareStatement(selectSQL);
				
				rs = pstmt.executeQuery();
				
				RegisterBean register = null;
				
				while(rs.next()){
					register = new RegisterBean();
                    
					register.setRegisterId(rs.getString("register_Id"));
					register.setFirstName(rs.getString("first_name"));
					register.setLastName(rs.getString("last_name"));
					register.setContact(rs.getString("contact"));
					register.setAddress(rs.getString("address"));
					register.setEmail(rs.getString("email"));
					register.setPassword(rs.getString("password"));
					register.setDob(rs.getString("dob"));
					register.setGenderId(rs.getString("gender_Id"));
					register.setTypeId(rs.getString("type_Id"));
					register.setStateId(rs.getString("state_Id"));
					register.setCountryId(rs.getString("country_Id"));
					register.setIsActive(rs.getString("is_active"));
					
			
					listOfRegister.add(register);
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		System.out.println("List Size : "+listOfRegister.size());
		return listOfRegister;
	}
	
public RegisterBean getRegisterByPK(String registerId){
	
	RegisterBean register = new RegisterBean();
	
	conn = Database_Connection.getDBConnection();
	
	if(conn!=null){
		try {
			String selectSQL = "SELECT * FROM Register WHERE register_Id = ?";
			
			pstmt = conn.prepareStatement(selectSQL);
			
			pstmt.setString(1, registerId);
			
			
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				

				register.setRegisterId(rs.getString("Register_ID"));
				register.setFirstName(rs.getString("first_name"));
				register.setLastName(rs.getString("Last_name"));
				register.setContact(rs.getString("contact"));
				register.setAddress(rs.getString("address"));
				register.setEmail(rs.getString("email"));
				register.setPassword(rs.getString("password"));
				register.setDob(rs.getString("dob"));
				register.setGenderId(rs.getString("gender_ID"));
				register.setTypeId(rs.getString("type_ID"));
				register.setStateId(rs.getString("state_ID"));
				register.setCountryId(rs.getString("country_ID"));
				register.setIsActive(rs.getString("is_active"));
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	return register;
}

	public boolean update(RegisterBean register){
		boolean result = false;
		conn = Database_Connection.getDBConnection();
		
		if(conn!=null){
			String updateSQL ="UPDATE REGISTER SET first_name=?,last_name=?,contact =?,address=?,email=?,password=?,dob=?,gender_id=?,type_id=?,state_id=?,country_id=? WHERE register_Id = ?";
			try {
				pstmt = conn.prepareStatement(updateSQL );
				
				pstmt.setString(1,register.getFirstName());
				pstmt.setString(2,register.getLastName());
				pstmt.setString(3,register.getContact());
				pstmt.setString(4,register.getAddress());
				pstmt.setString(5,register.getEmail());
				pstmt.setString(6,register.getPassword());
				pstmt.setString(7,register.getDob());
				pstmt.setString(8,register.getGenderId());
				pstmt.setString(9,register.getTypeId());
				pstmt.setString(10,register.getStateId());
				pstmt.setString(11,register.getCountryId());
				pstmt.setString(12,register.getRegisterId());
				
				
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

	public boolean delete(String registerId) {
		boolean result = false;
		
		conn = Database_Connection.getDBConnection();
		
		if(conn!=null){
			String deleteSQL ="DELETE FROM register WHERE register_Id= ?";
			try {
				pstmt = conn.prepareStatement(deleteSQL );
				
				pstmt.setString(1, registerId);
				
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

	public boolean updateisActive(String registerId,String activeId){
		boolean result = false;
		conn = Database_Connection.getDBConnection();
		
		
		if(conn!=null){
			String updateSQL ="UPDATE REGISTER SET is_active=? WHERE register_Id = ?";
			try {
				pstmt = conn.prepareStatement(updateSQL );
				
				pstmt.setString(1,activeId);
				pstmt.setString(2,registerId);
				
				
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

	
	public boolean updatepass(RegisterBean register){
		boolean result = false;
		conn = Database_Connection.getDBConnection();
		
		if(conn!=null){
			String updateSQL ="UPDATE REGISTER SET password=? WHERE register_Id = ?";
			try {
				pstmt = conn.prepareStatement(updateSQL );
				
				
				pstmt.setString(1,register.getPassword());
				
				pstmt.setString(2,register.getRegisterId());
				
				
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
	
	
	
	public boolean getRegisterByPK2(String registerId,String oldpass){
		
		RegisterBean register = new RegisterBean();
		
		conn = Database_Connection.getDBConnection();
		
		if(conn!=null){
			try {
				String selectSQL = "SELECT * FROM Register WHERE register_Id = ? and password=?";
				
				pstmt = conn.prepareStatement(selectSQL);
				
				pstmt.setString(1, registerId);
				pstmt.setString(2, oldpass);
				
				
				rs = pstmt.executeQuery();
				
				
				
				while(rs.next()){
					

					return true;
					
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return false;
	}

	
	

}

