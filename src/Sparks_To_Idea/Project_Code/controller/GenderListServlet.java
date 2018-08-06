package Sparks_To_Idea.Project_Code.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Sparks_To_Idea.Project_Code.bean.CountryBean;
import Sparks_To_Idea.Project_Code.bean.GenderBean;
import Sparks_To_Idea.Project_Code.dao.CountryDao;
import Sparks_To_Idea.Project_Code.dao.GenderDao;

/**
 * Servlet implementation class GenderListServlet
 */
public class GenderListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
	     List<GenderBean> listOfGender = new GenderDao().select();
			
			if(listOfGender != null ){
				request.setAttribute("listOfGender", listOfGender);
				request.getRequestDispatcher("genderList.jsp").forward(request, response);
				System.out.println("List is in servlet..");
			}else{
				
				//System.out.println("list of states is nulll in list servlet:");
				
			}
			
		}

		
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			doGet(request, response);
		}

}
