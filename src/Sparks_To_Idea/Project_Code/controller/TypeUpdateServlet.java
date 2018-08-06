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
 * Servlet implementation class TypeUpdateServlet
 */
public class TypeUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String typeId =request.getParameter("typeId");
		String typeName = request.getParameter("typeName");
		boolean isEmpty=false;
		
		//System.out.println("State name"+ request.getParameter("stateId")) ;

		TypeBean type = new TypeBean();
		
		if (ValidationUtils.isEmpty(typeName)) {
			request.setAttribute("typeName",
					"<font color=red>*USER TYPE is Required</font>");
			
		} else {
			
			
			type.setTypeName(typeName);
		}
		if(isEmpty)
		{
		request.getRequestDispatcher("type.jsp").forward(request, response);;
		}
		else
		
		{
			type.setTypeId(typeId);
			
			if(new TypeDao().update(type)){
				System.out.println("USER TYPE Updated............"+typeId);
				response.sendRedirect("typeList");
			}else{
				System.out.println("USER TYPE Updation Failed............");
				response.sendRedirect("typeList");
			}
			
		}
		
	}
	
      	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}


}
