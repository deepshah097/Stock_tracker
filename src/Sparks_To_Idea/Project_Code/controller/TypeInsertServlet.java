package Sparks_To_Idea.Project_Code.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Sparks_To_Idea.Project_Code.bean.CountryBean;
import Sparks_To_Idea.Project_Code.bean.TypeBean;
import Sparks_To_Idea.Project_Code.dao.CountryDao;
import Sparks_To_Idea.Project_Code.dao.TypeDao;
import Sparks_To_Idea.Project_Code.util.ValidationUtils;

/**
 * Servlet implementation class TypeInsertServlet
 */
public class TypeInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
        TypeBean type = new TypeBean();
		
		String typeName = request.getParameter("typeName");
		boolean isEmpty = false;
		
		
		if (ValidationUtils.isEmpty(typeName)) {
			request.setAttribute("typeName",
					"<font color=red>* USER TYPE is Required</font>");
			isEmpty = true;
				} else {
			type.setTypeName(typeName);
		}
		
		if (isEmpty){
			response.sendRedirect("type.jsp");
		}
		else{
			if(new TypeDao().insert(type)){
				System.out.println("User Type Registered............");
				response.sendRedirect("typeList");
			}else{
				System.out.println("User Type Registeration Failed............");
				
			}
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
		
	}
}
