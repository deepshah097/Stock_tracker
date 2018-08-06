package Sparks_To_Idea.Project_Code.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Sparks_To_Idea.Project_Code.bean.ItemBean;
import Sparks_To_Idea.Project_Code.bean.ItemorderBean;
import Sparks_To_Idea.Project_Code.bean.RegisterBean;
import Sparks_To_Idea.Project_Code.dao.ItemDao;
import Sparks_To_Idea.Project_Code.dao.ItemorderDao;
import Sparks_To_Idea.Project_Code.util.ValidationUtils;

/**
 * Servlet implementation class CustomerIndexItemListServlet
 */
public class CustomerIndexItemListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     private String customerId;
     private String itemId;
     private String itemName;
     private String Source;
     private String Destination;
     private String itemQty;
     private String itemPrice;
     private String OrderStatus;
     private String itemImg;
     private double totalPrice;
    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		customerId=request.getParameter("customerId");
		itemId=request.getParameter("itemId");
		Destination=request.getParameter("address");
		itemQty=request.getParameter("buyQty");
		System.out.println("tttttttttttttttttttttttttttttttt"+itemQty);
		itemPrice=request.getParameter("itemPrice");
		itemName=request.getParameter("itemName");
		int a=Integer.parseInt(itemQty);
		
		double b=Double.parseDouble(itemPrice);
		totalPrice=a*b;
		OrderStatus="Booked";
		
		
		
		
		System.out.println(customerId);
		System.out.println(itemId);
		System.out.println(Destination);
		
		System.out.println(totalPrice);
		
		ItemorderBean  itemorder=new ItemorderBean();
		itemorder.setItemName(itemName);
		Source="ahmedabad";
		boolean isEmpty = false;
		System.out.println(Source);
		
		
		if (ValidationUtils.isEmpty(Destination)) {
			request.setAttribute("source",
					"<font color=red>*source is Required</font>");
			isEmpty = true;
			
		} else {
			
			System.out.println("in else");
			itemorder.setDestination(Destination);
			
			
		}
		if (ValidationUtils.isEmpty(Source)) {
			request.setAttribute("source",
					"<font color=red>*source is Required</font>");
			isEmpty = true;
			
		} else {
			
			System.out.println("in else");
			itemorder.setSource(Source);
			
		}
		if (ValidationUtils.isEmpty(itemQty)) {
			request.setAttribute("source",
					"<font color=red>*source is Required</font>");
			isEmpty = true;
			
		} else {
			
			System.out.println("in else");
			itemorder.setOrderQty(itemQty);
			
		}
		if (ValidationUtils.isEmpty(String.valueOf(OrderStatus))) {
			request.setAttribute("source",
					"<font color=red>*source is Required</font>");
			isEmpty = true;
			
		} else {
			
			System.out.println("in else");
			itemorder.setOrderStatus(OrderStatus);
			
		}
		if (ValidationUtils.isEmpty(String.valueOf(totalPrice))) {
			request.setAttribute("source",
					"<font color=red>*source is Required</font>");
			isEmpty = true;
			
		} else {
			
			System.out.println("in else");
			itemorder.setTotalPrice(String.valueOf(totalPrice));
			
		}
		
		
		
		if (ValidationUtils.isEmpty(itemId)) {
			request.setAttribute("source",
					"<font color=red>*source is Required</font>");
			isEmpty = true;
			
		} else {
			
			System.out.println("in else");
			itemorder.setItemId(itemId);
			
		}
		
		if (ValidationUtils.isEmpty(customerId)) {
			request.setAttribute("source",
					"<font color=red>*source is Required</font>");
			isEmpty = true;
			
		} else {
			
			System.out.println("in else");
			itemorder.setCustomerId(customerId);
			
		}
		
		
		
		
		
		if(isEmpty)
		{
			request.setAttribute("itemorder", itemorder);
			request.getRequestDispatcher("customer_index.jsp").forward(request, response);
		}
		else
		{
			if(new ItemorderDao().insert(itemorder))
			{
				System.out.println("inseted successfully");
				request.getRequestDispatcher("CustomerIndexOnlyList").forward(request, response);
			}
			else
			{
				System.out.println("insertion failed");
				request.getRequestDispatcher("customer_index.jsp").forward(request, response);
				
			
			}
		}
		
	}

}
