package Sparks_To_Idea.Project_Code.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Sparks_To_Idea.Project_Code.bean.RegisterBean;
import Sparks_To_Idea.Project_Code.dao.RegisterDao;


public class RegisterEditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String registerId = request.getParameter("registerId");
		
		RegisterBean register = new RegisterDao().getRegisterByPK(registerId);
		
		if(register!=null){
			request.setAttribute("register", register);
			request.getRequestDispatcher("registerEdit.jsp").forward(request, response);
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
