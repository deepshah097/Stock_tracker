package Sparks_To_Idea.Project_Code.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Sparks_To_Idea.Project_Code.bean.CountryBean;
import Sparks_To_Idea.Project_Code.dao.CountryDao;
import Sparks_To_Idea.Project_Code.util.ValidationUtils;

public class CountryUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String countryId =request.getParameter("countryId");
		String countryName = request.getParameter("countryName");
		boolean isEmpty=false;
		
		//System.out.println("State name"+ request.getParameter("stateId")) ;

		CountryBean country = new CountryBean();
		
		if (ValidationUtils.isEmpty(countryName)) {
			request.setAttribute("countryName",
					"<font color=red>*COUNTRY NAME is Required</font>");
			
		} else {
			
			
			country.setCountryName(countryName);
		}
		if(isEmpty)
		{
		request.getRequestDispatcher("country.jsp").forward(request, response);;
		}
		else
		
		{
			country.setCountryId(countryId);
			
			if(new CountryDao().update(country)){
				System.out.println("Country Updated............"+countryId);
				response.sendRedirect("countryList");
			}else{
				System.out.println("Country Updation Failed............");
				response.sendRedirect("countryList");
			}
			
		}
		
	}
	
      	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}


}
