package Sparks_To_Idea.Project_Code.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Sparks_To_Idea.Project_Code.bean.ItemorderBean;
import Sparks_To_Idea.Project_Code.dao.ItemorderDao;


public class CustomerViewOrderServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private String customerId;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		customerId=request.getParameter("customerId");
    	System.out.println("customer id is"+customerId);
    	List<ItemorderBean> itemorder=new ItemorderDao().getItemorderBycustId(customerId);
		
		if(itemorder!=null)
		{
			//System.out.println("customer id is++++"+itemorder.get);
			request.setAttribute("itemorder",itemorder);
			request.getRequestDispatcher("CustomerViewOrder.jsp").forward(request, response);
		}
	}

}
