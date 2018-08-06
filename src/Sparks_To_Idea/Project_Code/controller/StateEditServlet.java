package Sparks_To_Idea.Project_Code.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Sparks_To_Idea.Project_Code.bean.StateBean;
import Sparks_To_Idea.Project_Code.dao.StateDao;

/**
 * Servlet implementation class StateEditServlet
 */
public class StateEditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String stateId=request.getParameter("stateId");
		System.out.println("stateId ="+stateId);
		StateBean state=new StateDao().getStateByPK(stateId);
		
		if(state!=null)
		{
			request.setAttribute("state",state);
			request.getRequestDispatcher("stateEdit.jsp").forward(request, response);
		}
	
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
