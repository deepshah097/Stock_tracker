package Sparks_To_Idea.Project_Code.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Sparks_To_Idea.Project_Code.dao.CountryDao;
import Sparks_To_Idea.Project_Code.dao.TypeDao;

/**
 * Servlet implementation class TypeDeleteServlet
 */
public class TypeDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String typeId = request.getParameter("typeId");
		
		if(new TypeDao().delete(typeId)){
			response.sendRedirect("typeList");
		}else{
			response.sendRedirect("typeList");
		}

		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}


}
