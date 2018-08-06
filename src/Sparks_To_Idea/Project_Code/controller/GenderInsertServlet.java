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

/**
 * Servlet implementation class GenderInsertServlet
 */
public class GenderInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
        GenderBean gender = new GenderBean();
		
		String genderName = request.getParameter("genderName");
		boolean isEmpty = false;
		
		
		if (ValidationUtils.isEmpty(genderName)) {
			request.setAttribute("genderName",
					"<font color=red>* GENDER NAME is Required</font>");
			isEmpty = true;
				} else {
			gender.setGenderName(genderName);
		}
		
		if (isEmpty){
			response.sendRedirect("gender.jsp");
		}
		else{
			if(new GenderDao().insert(gender)){
				System.out.println("Gender Registered............");
				response.sendRedirect("genderList");
			}else{
				System.out.println("Gender Registeration Failed............");
				
			}
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
		
	}

}
