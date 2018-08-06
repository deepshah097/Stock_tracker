package Sparks_To_Idea.Project_Code.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Sparks_To_Idea.Project_Code.bean.ItemorderBean;
import Sparks_To_Idea.Project_Code.dao.ItemorderDao;


public class WarehouseViewCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		List<ItemorderBean> listofwarecust = new ItemorderDao().select();
		if(listofwarecust != null){
			request.setAttribute("listofwarecust",listofwarecust);
			request.getRequestDispatcher("WarehouseViewCustomer.jsp").forward(request, response);
		}else{
			
			//TODO 
			
		}

	}

}
