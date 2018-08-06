package Sparks_To_Idea.Project_Code.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Sparks_To_Idea.Project_Code.bean.ItemorderBean;
import Sparks_To_Idea.Project_Code.dao.ItemorderDao;

/**
 * Servlet implementation class ChangeOrderStatusServlet
 */
public class ChangeOrderShipStatusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String orderId=request.getParameter("orderId");
		String orderStatus=request.getParameter("orderstatus");
		ItemorderBean  itemorder=new ItemorderBean();
		itemorder.setOrderId(orderId);
		itemorder.setOrderStatus(orderStatus);
		if(new ItemorderDao().updatechangestatus(itemorder))
		{
			System.out.println("updated successfully");
			request.getRequestDispatcher("ShipViewCustomerServlet").forward(request, response);
		}
		else
		{
			System.out.println("updation failed");
			request.getRequestDispatcher("ShipViewCustomerServlet").forward(request, response);
			
		
		}
		
		
	}

}
