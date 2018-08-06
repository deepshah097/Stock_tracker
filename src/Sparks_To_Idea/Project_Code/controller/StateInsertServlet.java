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
 * Servlet implementation class StateInsertServlet
 */
public class StateInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String stateName=request.getParameter("stateName");
		String countryId=request.getParameter("countryId");
		
		System.out.println(stateName+"hello "+stateName);
		
		StateBean  state=new StateBean();
		boolean isEmpty = false;
		
		
		
		if (ValidationUtils.isEmpty(stateName)) {
			request.setAttribute("stateName",
					"<font color=red>*stateName is Required</font>");
			isEmpty = true;
			
		} else {
			
			System.out.println("in else");
			state.setStateName(stateName);
			
		}
		
		if(countryId.equals("0"))
		{
			System.out.println("hellohi");
			request.setAttribute("countryName","<font color=red> *Country name is required</font>");
			isEmpty=true;
		}
		else
		{
			
			state.setCountryId(countryId);
			//request.setAttribute("cityname",cityId);
		}


	if(isEmpty)
	{
		request.setAttribute("state", state);
		request.getRequestDispatcher("state.jsp").forward(request, response);
	}
	else
	{
		if(new StateDao().insert(state))
		{
			System.out.println("inseted successfully");
			request.getRequestDispatcher("stateList").forward(request, response);
		}
		else
		{
			System.out.println("insertion failed");
			request.getRequestDispatcher("stateList").forward(request, response);
			
		
		}
	}

		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
