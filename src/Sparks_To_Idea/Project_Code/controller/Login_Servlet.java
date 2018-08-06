package Sparks_To_Idea.Project_Code.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import Sparks_To_Idea.Project_Code.bean.RegisterBean;
import Sparks_To_Idea.Project_Code.dao.RegisterDao;


/**
 * Servlet implementation class Login_Servlet
 */
public class Login_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	private String loginId,loginPass,email;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		loginId=request.getParameter("Id");
		loginPass=request.getParameter("Password");
		List<RegisterBean> userlist = new RegisterDao().select();
		
		
		if(loginId.equals("admin") && loginPass.equals("admin"))
		{
			//HttpSession session=request.getSession();
			//session.setAttribute("session_check","admin");
			HttpSession session=request.getSession();
			System.out.println("i am in if");
			session.setAttribute("adminId",loginId);
			response.sendRedirect("adminpanel.jsp");
			//break;
			
		}
		for(int i=0;i<userlist.size();i++)
		{
			RegisterBean customer=userlist.get(i);
			if(loginId.equals(customer.getEmail()) && loginPass.equals(customer.getPassword()))
			{	
				System.out.println("your active status is:;;;;;;;;"+customer.getIsActive());
				
				System.out.println("your typeid is:;;;;;;;;"+customer.getTypeId());
				
				if(customer.getTypeId().equals("1"))
				{
					
				
						if(customer.getIsActive().equals("true"))
						{
					
				
							HttpSession session=request.getSession();
							System.out.println("i am in if");
							session.setAttribute("customer",customer);
							System.out.println("my id is"+customer.getTypeId());
							response.sendRedirect("CustomerIndexOnlyList");
						}else
						{
							System.out.println("you r not active");
						}
				}	
				
				if(customer.getTypeId().equals("2"))
				{
					
				
						if(customer.getIsActive().equals("true"))
						{
					
				
							HttpSession session=request.getSession();
							System.out.println("i am in if");
							session.setAttribute("customer",customer);
							System.out.println("my id is"+customer.getTypeId());
							response.sendRedirect("warehouse_main.jsp");
							
							
							System.out.println("you r warehouse");
						}
						else
						{
							System.out.println("you r not active");
						}
				}	
				if(customer.getTypeId().equals("3"))
				{
					
				
						if(customer.getIsActive().equals("true"))
						{
					
				
							HttpSession session=request.getSession();
							System.out.println("i am in if");
							session.setAttribute("customer",customer);
							System.out.println("my id is"+customer.getTypeId());
							response.sendRedirect("Shipmanager_main.jsp");
							
							
							System.out.println("you r ship");
						}
						else
						{
							System.out.println("you r not active");
						}
				}	
				
				
			}
				
		}
	}	
}


