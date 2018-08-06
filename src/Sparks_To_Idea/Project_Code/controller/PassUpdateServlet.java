package Sparks_To_Idea.Project_Code.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Sparks_To_Idea.Project_Code.dao.forgotpass_dao;


public class PassUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private String new_pass;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		new_pass=request.getParameter("newpass");
		HttpSession session=request.getSession();
		String userId = (String)session.getAttribute("userid");
		System.out.println(userId);
		
		if(new forgotpass_dao().update(new_pass, userId))
		{
			
			response.sendRedirect("Login.jsp");
			
		}		
		
	}

}
