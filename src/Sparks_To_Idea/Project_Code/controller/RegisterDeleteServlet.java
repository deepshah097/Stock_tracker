package Sparks_To_Idea.Project_Code.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Sparks_To_Idea.Project_Code.dao.RegisterDao;


public class RegisterDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String registerId = request.getParameter("registerId");
		
		if(new RegisterDao().delete(registerId)){
			response.sendRedirect("registerList");
		}else{
			response.sendRedirect("registerList");
		}
		
	}

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
			doGet(request, response);
	}
}
