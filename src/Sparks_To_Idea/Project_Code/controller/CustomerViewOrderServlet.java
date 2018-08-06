package Sparks_To_Idea.Project_Code.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Sparks_To_Idea.Project_Code.bean.ItemBean;
import Sparks_To_Idea.Project_Code.bean.ItemorderBean;
import Sparks_To_Idea.Project_Code.dao.ItemorderDao;
import Sparks_To_Idea.Project_Code.util.ValidationUtils;

/**
 * Servlet implementation class CustomerViewOrderServlet
 */
public class CustomerViewOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       private String customerId;
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
    		throws ServletException, IOException {
    	// TODO Auto-generated method stub
    	
    	String itemQty=request.getParameter("itemQty");
		//String customerId=request.getParameter("customerId");
		//String orderQty=request.getParameter("orderQty");
		String itemName=request.getParameter("itemName");
		String itemPrice=request.getParameter("itemPrice");
		String itemId=request.getParameter("itemId");
		String itemImg=request.getParameter("itemImg");
		
		ItemBean item=new ItemBean();
		item.setItemId(itemId);
		item.setItemName(itemName);
		item.setItemQty(itemQty);
		item.setItemPrice(itemPrice);
		item.setItemImg(itemImg);
		
		request.setAttribute("item",item);
		request.getRequestDispatcher("BuyItemList.jsp").forward(request, response);
		
		//System.out.println(stateName+"hello "+stateName);
		
		
    }
}
