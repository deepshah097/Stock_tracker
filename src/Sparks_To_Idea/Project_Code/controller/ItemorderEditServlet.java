package Sparks_To_Idea.Project_Code.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Sparks_To_Idea.Project_Code.bean.ItemorderBean;
import Sparks_To_Idea.Project_Code.dao.ItemorderDao;



public class ItemorderEditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String orderId=request.getParameter("orderId");
		System.out.println("orderId ="+orderId);
		ItemorderBean itemorder=new ItemorderDao().getItemorderByPK(orderId);
		
		if(itemorder!=null)
		{
			request.setAttribute("itemorder",itemorder);
			request.getRequestDispatcher("itemorderEdit.jsp").forward(request, response);
		}
	
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}


}
