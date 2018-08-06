package Sparks_To_Idea.Project_Code.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ContactUsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String name=request.getParameter("name");
		//String email=request.getParameter("email");
		String details=request.getParameter("Details");
		
		System.out.println("NAME---"+name);
		System.out.println("detail---"+details);
		
		/*String to="janavi121496@gmail.com";
		String msg="Restaurant name";*/
		String subject=name;
		String msg=details;
		String to="socialinfluencesite@gmail.com";
		
		//String msg1="Thank you:"+name+"We got your application to join Storage Space Tracker.Soon we will proceed for that.";
		
		String subject1="Thank you";
		
		ContactEmail.sendmail(to, subject, msg);//email to admin for request
		
		//SendMail.send(to1, subject1, msg1);
		response.sendRedirect("contactUs.jsp");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request,response);
	}

}



