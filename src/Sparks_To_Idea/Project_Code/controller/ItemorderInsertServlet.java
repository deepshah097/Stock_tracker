package Sparks_To_Idea.Project_Code.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Sparks_To_Idea.Project_Code.bean.ItemorderBean;
import Sparks_To_Idea.Project_Code.dao.ItemorderDao;
import Sparks_To_Idea.Project_Code.util.ValidationUtils;


public class ItemorderInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String source=request.getParameter("source");
		String destination=request.getParameter("destination");
		String orderQty=request.getParameter("orderQty");
		String orderStatus=request.getParameter("orderStatus");
		String totalPrice=request.getParameter("totalPrice");
		String itemId=request.getParameter("totalPrice");
		
		
		
		//System.out.println(stateName+"hello "+stateName);
		
		ItemorderBean  itemorder=new ItemorderBean();
		boolean isEmpty = false;
		
		
		
		if (ValidationUtils.isEmpty(source)) {
			request.setAttribute("source",
					"<font color=red>*source is Required</font>");
			isEmpty = true;
			
		} else {
			
			System.out.println("in else");
			itemorder.setSource(source);
			
		}
		
		if (ValidationUtils.isEmpty(destination)) {
			request.setAttribute("destination",
					"<font color=red>*Destination is Required</font>");
			isEmpty = true;
			
		} else {
			
			System.out.println("in else");
			itemorder.setDestination(destination);
			
		}
		
		if (ValidationUtils.isEmpty(orderQty)) {
			request.setAttribute("orderQty",
					"<font color=red>*order qty is Required</font>");
			isEmpty = true;
			
		} else {
			
			System.out.println("in else");
			itemorder.setOrderQty(orderQty);
			
		}
		
		if (ValidationUtils.isEmpty(orderStatus)) {
			request.setAttribute("orderStatus",
					"<font color=red>*orderStatus is Required</font>");
			isEmpty = true;
			
		} else {
			
			System.out.println("in else");
			itemorder.setOrderStatus(orderStatus);
			
		}

		
		if (ValidationUtils.isEmpty(totalPrice)) {
			request.setAttribute("totalPrice",
					"<font color=red>*Total Price is Required</font>");
			isEmpty = true;
			
		} else {
			
			System.out.println("in else");
			itemorder.setTotalPrice(totalPrice);
			
		}

		if(itemId.equals("0"))
		{
			System.out.println("hellohi");
			request.setAttribute("itemName","<font color=red> *Item name is required</font>");
			isEmpty=true;
		}
		else
		{
			
		itemorder.setItemId(itemId);
			//request.setAttribute("cityname",cityId);
		}


	if(isEmpty)
	{
		request.setAttribute("itemorder", itemorder);
		request.getRequestDispatcher("itemorder.jsp").forward(request, response);
	}
	else
	{
		if(new ItemorderDao().insert(itemorder))
		{
			System.out.println("inseted successfully");
			request.getRequestDispatcher("itemorderList").forward(request, response);
		}
		else
		{
			System.out.println("insertion failed");
			request.getRequestDispatcher("itemorderList").forward(request, response);
			
		
		}
	}

		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
