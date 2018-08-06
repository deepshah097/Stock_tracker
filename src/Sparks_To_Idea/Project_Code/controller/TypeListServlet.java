package Sparks_To_Idea.Project_Code.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Sparks_To_Idea.Project_Code.bean.CountryBean;
import Sparks_To_Idea.Project_Code.bean.TypeBean;
import Sparks_To_Idea.Project_Code.dao.CountryDao;
import Sparks_To_Idea.Project_Code.dao.TypeDao;

/**
 * Servlet implementation class TypeListServlet
 */
public class TypeListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
	     List<TypeBean> listOfType = new TypeDao().select();
			
			if(listOfType != null ){
				request.setAttribute("listOfType", listOfType);
				request.getRequestDispatcher("typeList.jsp").forward(request, response);
				System.out.println("List is in servlet..");
			}else{
				
				//System.out.println("list of states is nulll in list servlet:");
				
			}
			
		}

		
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			doGet(request, response);
		}

}
