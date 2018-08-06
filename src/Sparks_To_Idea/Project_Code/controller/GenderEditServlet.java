package Sparks_To_Idea.Project_Code.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Sparks_To_Idea.Project_Code.bean.CountryBean;
import Sparks_To_Idea.Project_Code.bean.GenderBean;
import Sparks_To_Idea.Project_Code.dao.CountryDao;
import Sparks_To_Idea.Project_Code.dao.GenderDao;

/**
 * Servlet implementation class GenderEditServlet
 */
public class GenderEditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String genderId = request.getParameter("genderId");
		
		
		GenderBean gender=new GenderDao().getGenderByPK(genderId);
		
		if(gender!=null){
			request.setAttribute("gender", gender);
			request.getRequestDispatcher("genderEdit.jsp").forward(request, response);
		}
	
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}




}
