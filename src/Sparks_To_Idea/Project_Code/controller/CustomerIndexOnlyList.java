package Sparks_To_Idea.Project_Code.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Sparks_To_Idea.Project_Code.bean.ItemBean;
import Sparks_To_Idea.Project_Code.dao.ItemDao;

/**
 * Servlet implementation class CustomerIndexItemListServlet
 */
public class CustomerIndexOnlyList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		List<ItemBean> listOfItem = new ItemDao().select();
		if(listOfItem != null){
			request.setAttribute("listOfItem", listOfItem);
			request.getRequestDispatcher("customer_index.jsp").forward(request, response);
		}else{
			
			//TODO 
			
		}

		
	}

}
