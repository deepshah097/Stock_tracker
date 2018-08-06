package Sparks_To_Idea.Project_Code.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Sparks_To_Idea.Project_Code.bean.RegisterBean;
import Sparks_To_Idea.Project_Code.dao.RegisterDao;

/**
 * Servlet implementation class CustomerActiveServlet
 */
public class CustomerActiveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			String registerId = request.getParameter("registerId");
			String activeId = request.getParameter("activeId");
			System.out.println("activeId is:::::"+activeId);
		
			if(new RegisterDao().updateisActive(registerId,activeId)){
				response.sendRedirect("registerList");
			}else{
				response.sendRedirect("registerList");
			}
		
	}
	

}
