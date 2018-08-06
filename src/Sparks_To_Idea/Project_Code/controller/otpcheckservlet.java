package Sparks_To_Idea.Project_Code.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class otpcheckservlet
 */
public class otpcheckservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.getAttribute("emailid");
		String originalotp=SendMail.getotp();
		System.out.println("original"+ originalotp);
		
		String otp=request.getParameter("otp");
		System.out.println("otp" + otp);
		
		if(originalotp.equals(otp))
		{
			//System.out.println("Maja Avi gayi");
			HttpSession session=request.getSession();
			String sessionEmail = (String)session.getAttribute("userid");
			System.out.println(sessionEmail);
			response.sendRedirect("changpassword.jsp");
			
		}
		
		
	}

}
