package Sparks_To_Idea.Project_Code.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Sparks_To_Idea.Project_Code.bean.StateBean;
import Sparks_To_Idea.Project_Code.dao.StateDao;

/**
 * Servlet implementation class StateListServlet
 */
public class StateListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<StateBean> listOfState = new StateDao().select();
				
				if(listOfState!=null){
					request.setAttribute("listOfState", listOfState);
			
					request.getRequestDispatcher("stateList.jsp").forward(request, response);
					System.out.println("jjjjkkk");
					
				
				
				}else{
					
					//TODO 
					
				}
				
			}
			
			protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
				doGet(request, response);
			}

}
