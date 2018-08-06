package Sparks_To_Idea.Project_Code.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Sparks_To_Idea.Project_Code.bean.CountryBean;
import Sparks_To_Idea.Project_Code.dao.CountryDao;
import Sparks_To_Idea.Project_Code.util.ValidationUtils;

public class CountryInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
        CountryBean country = new CountryBean();
		
		String countryName = request.getParameter("countryName");
		boolean isEmpty = false;
		
		
		if (ValidationUtils.isEmpty(countryName)) {
			request.setAttribute("countryName",
					"<font color=red>* COUNTRY NAME is Required</font>");
			isEmpty = true;
				} else {
			country.setCountryName(countryName);
		}
		
		if (isEmpty){
			response.sendRedirect("country.jsp");
		}
		else{
			if(new CountryDao().insert(country)){
				System.out.println("Country Registered............");
				response.sendRedirect("countryList");
			}else{
				System.out.println("Country Registeration Failed............");
				
			}
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
		
	}

}
