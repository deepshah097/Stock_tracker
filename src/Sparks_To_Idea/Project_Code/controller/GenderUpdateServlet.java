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
import Sparks_To_Idea.Project_Code.util.ValidationUtils;

public class GenderUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String genderId =request.getParameter("genderId");
		String genderName = request.getParameter("genderName");
		boolean isEmpty=false;
		
		//System.out.println("State name"+ request.getParameter("stateId")) ;

		GenderBean gender = new GenderBean();
		
		if (ValidationUtils.isEmpty(genderName)) {
			request.setAttribute("genderName",
					"<font color=red>*GENDER NAME is Required</font>");
			
		} else {
			
			
			gender.setGenderName(genderName);
		}
		if(isEmpty)
		{
		request.getRequestDispatcher("gender.jsp").forward(request, response);;
		}
		else
		
		{
			gender.setGenderId(genderId);
			
			if(new GenderDao().update(gender)){
				System.out.println("Gender Updated............"+genderId);
				response.sendRedirect("genderList");
			}else{
				System.out.println("Gender Updation Failed............");
				response.sendRedirect("genderList");
			}
			
		}
		
	}
	
      	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}


}
