package Sparks_To_Idea.Project_Code.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import Sparks_To_Idea.Project_Code.bean.ItemorderBean;

import Sparks_To_Idea.Project_Code.dao.ItemorderDao;


public class ItemorderListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		List<ItemorderBean> listOfItemorder = new ItemorderDao().select();
		if(listOfItemorder != null){
			request.setAttribute("listOfItemorder",listOfItemorder);
			request.getRequestDispatcher("itemorderList.jsp").forward(request, response);
		}else{
			
			//TODO 
			
		}

		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
