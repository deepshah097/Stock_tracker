package Sparks_To_Idea.Project_Code.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Sparks_To_Idea.Project_Code.bean.ItemBean;
import Sparks_To_Idea.Project_Code.dao.ItemDao;


public class ItemListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		List<ItemBean> listOfItem = new ItemDao().select();
		if(listOfItem != null){
			request.setAttribute("listOfItem", listOfItem);
			request.getRequestDispatcher("itemList.jsp").forward(request, response);
		}else{
			
			//TODO 
			
		}

		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
