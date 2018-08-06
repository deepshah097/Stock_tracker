package Sparks_To_Idea.Project_Code.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Sparks_To_Idea.Project_Code.bean.ItemBean;
import Sparks_To_Idea.Project_Code.dao.ItemDao;
import Sparks_To_Idea.Project_Code.util.ValidationUtils;


public class ItemInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String itemName = request.getParameter("itemName");
		String itemPrice = request.getParameter("itemPrice");
		String itemQty = request.getParameter("itemQty");
		
		
		ItemBean item=new ItemBean();
		
		boolean isEmpty = false;
		
		if (ValidationUtils.isEmpty(itemName)) {
			request.setAttribute("itemName",
					"<font color=red>* Item name is Required</font>");
			isEmpty = true;
		} else {
			item.setItemName(itemName);
		}
		
		if (ValidationUtils.isEmpty(itemPrice)) {
			request.setAttribute("itemPrice",
					"<font color=red>* Item Price is Required</font>");
			isEmpty = true;
		} else {
			item.setItemPrice(itemPrice);
		}
		
		
		if (ValidationUtils.isEmpty(itemQty)) {
			request.setAttribute("itemQty",
					"<font color=red>* Item Quantity is Required</font>");
			isEmpty = true;
		} else {
			item.setItemQty(itemQty);
		}
		
				
		if(isEmpty){
			request.setAttribute("item", item);
			request.getRequestDispatcher("item.jsp").forward(request, response);
			
		}else{
				if(new ItemDao().insert(item)){
				System.out.println("Item Registered............");
				response.sendRedirect("itemList");
			}else{
				System.out.println("Item Registeration Failed............");
				
			}
			
		}


		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
