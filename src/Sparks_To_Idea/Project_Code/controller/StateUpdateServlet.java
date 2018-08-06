package Sparks_To_Idea.Project_Code.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Sparks_To_Idea.Project_Code.bean.StateBean;
import Sparks_To_Idea.Project_Code.dao.StateDao;
import Sparks_To_Idea.Project_Code.util.ValidationUtils;

/**
 * Servlet implementation class StateUpdateServlet
 */
public class StateUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String stateId=request.getParameter("stateId");
		String stateName=request.getParameter("stateName");
		String countryId=request.getParameter("countryId");
		
		System.out.println("in update");
		System.out.println("stateId:"+stateId+"stateName::"+stateName+"countryId::"+countryId);
		StateBean state=new StateBean();
		
		boolean isEmpty = false;
		
		
		
		if (ValidationUtils.isEmpty(stateName)) {
			request.setAttribute("stateName",
					"<font color=red>* State name is Required</font>");
			isEmpty = true;
			System.out.println("hiiii "+isEmpty);
		} else {
			System.out.println("hello"+stateName);
			state.setStateId(stateId);
			state.setStateName(stateName);
			
		}
		
		
		if(countryId.equals("0"))
		{
			request.setAttribute("countryId","<font color=red> *country name required");
			isEmpty=true;
		}
		else
		{
			state.setCountryId(countryId);
		}

		request.setAttribute("state", state);
		if(isEmpty)
		{
		request.getRequestDispatcher("stateEdit.jsp").forward(request, response);;
		}
		else
		{
		if(new StateDao().update(state))
		{
			System.out.println("updated successfully");
			request.getRequestDispatcher("stateList").forward(request, response);
		}
		else
		{
			System.out.println("updation failed");
			request.getRequestDispatcher("stateList").forward(request, response);
			
		
		}
		}
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
