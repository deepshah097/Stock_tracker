package Sparks_To_Idea.Project_Code.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Sparks_To_Idea.Project_Code.bean.RegisterBean;
import Sparks_To_Idea.Project_Code.dao.RegisterDao;

/**
 * Servlet implementation class ChangePasswordServlet
 */
public class ChangePasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//String registerId=request.getParameter("id");
		String oldpass=request.getParameter("oldpass");
		String newpass=request.getParameter("newpass");
		System.out.println(oldpass);
		System.out.println(newpass);
		
		
			
		String registerId = request.getParameter("id");
		
		boolean register = new RegisterDao().getRegisterByPK2(registerId,oldpass);
		
		if(register){
			RegisterBean regi=new RegisterBean();
			regi.setRegisterId(registerId);
			regi.setPassword(newpass);
			
			if(new RegisterDao().updatepass(regi)){
				System.out.println("Register Updated............");
				response.sendRedirect("Login.jsp");
			}else{
				System.out.println("Register Updation Failed............");
				response.sendRedirect("ChangePassword.jsp");
			}
			
		}
		else{
			System.out.println("in else condiiiiii");
			request.setAttribute("notmatch", "<font color=red>* password not match</font>");
			request.getRequestDispatcher("ChangePassword.jsp").forward(request, response);
		
	}

	}
		
	

}
