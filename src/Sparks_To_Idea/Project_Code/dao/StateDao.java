package Sparks_To_Idea.Project_Code.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Sparks_To_Idea.Project_Code.bean.StateBean;
import Sparks_To_Idea.Project_Code.util.Database_Connection;

public class StateDao {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	

	public boolean insert(StateBean state) {
		boolean result = false;
		conn = Database_Connection.getDBConnection();
		
		if(conn!=null){
			String insertSQL ="INSERT INTO State(state_Name,country_Id) values(?,?)";
			try {
				pstmt = conn.prepareStatement(insertSQL);
				
				pstmt.setString(1, state.getStateName());
				pstmt.setString(2, state.getCountryId());
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

public List<StateBean> select(){
		
		conn = Database_Connection.getDBConnection();
		List<StateBean> listOfState = new ArrayList<StateBean>();
		if(conn!=null){
			try {
				String selectSQL = "SELECT * FROM STATE";
				
				pstmt = conn.prepareStatement(selectSQL);
				
				rs = pstmt.executeQuery();
				
				StateBean state = null;
				
				while(rs.next()){
					state = new StateBean();

					state.setStateId(rs.getString("state_Id"));
					state.setStateName(rs.getString("state_Name"));
					state.setCountryId(rs.getString("country_Id"));
					
					listOfState.add(state);
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		System.out.println("List Size : "+listOfState.size());
		return listOfState;
	}

public boolean delete(String stateId) {
	
	boolean result=false;
	int rowsaffected=0;
	conn=Database_Connection.getDBConnection();
	if(conn!=null)
	{
		String deletesql="DELETE FROM STATE WHERE state_Id = ?";
		try
		{
			pstmt=conn.prepareStatement(deletesql);
			pstmt.setString(1, stateId);
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
public StateBean getStateByPK(String stateId) {
	
	conn = Database_Connection.getDBConnection();
	StateBean state = new StateBean();

	if(conn!=null){
		try {
			String selectSQL = "SELECT * FROM STATE WHERE state_Id=?";
			
			pstmt = conn.prepareStatement(selectSQL);
		
			pstmt.setString(1, stateId);
			rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				//System.out.println("heeeeee");
				state.setStateId(rs.getString("state_Id"));
				state.setStateName(rs.getString("state_Name"));
				state.setCountryId(rs.getString("country_Id"));
			}
			
		} 
		catch (SQLException e)
		{
			e.printStackTrace();
		}
	}
	
	return state;
}

public boolean update(StateBean state) {
	
	conn=Database_Connection.getDBConnection();
	int rowsaffected=0;
	boolean result=false;
	if(conn!=null)
	{
		String updatesql="UPDATE STATE SET state_Name=?,country_Id=? WHERE state_Id = ?";
		try
		{
			pstmt=conn.prepareStatement(updatesql);
			//System.out.println(area.getAreaId());
			pstmt.setString(1, state.getStateName());
			pstmt.setString(2, state.getCountryId());
			pstmt.setString(3, state.getStateId());
			
			System.out.println("State id ::"+state.getStateId());
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
