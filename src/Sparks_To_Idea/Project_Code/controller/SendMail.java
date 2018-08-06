package Sparks_To_Idea.Project_Code.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Sparks_To_Idea.Project_Code.bean.RegisterBean;
import Sparks_To_Idea.Project_Code.dao.RegisterDao;



/**
 * Servlet implementation class SendMail
 */
public class SendMail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	static String activation_code;
	public static void storeotp(String otp)
	{
		activation_code=otp;
	}
	
	public static String getotp()
	{
		return activation_code;
	}
	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
String email=request.getParameter("emailid");
		
		List<RegisterBean> userlist = new RegisterDao().select();
		 /*List<BlogBean> bloglist = new Blog_dao().select();*/
		//request.setAttribute("userlist",userlist);
		for(int i=0;i<userlist.size();i++)
		{
			RegisterBean user=userlist.get(i);
			if(email.equals(user.getEmail()))
			{
				HttpSession session=request.getSession();
				System.out.println("i am in if");
				//session.setAttribute("userlist", );
				session.setAttribute("userid", user.getRegisterId());
				
				
			}
			
			
			
		}
		
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		request.setAttribute("emailid", email);
		
		Random random=new Random();
		activation_code = ""+(int)(100000+random.nextInt(900000));
		String subject="your otp";
		String to=request.getParameter("emailid");
	//	String subject=request.getParameter("your otp");
	//	String msg=request.getParameter();
		SendMail.storeotp(activation_code);
		try {
			email2.sendmail(to, subject,activation_code );
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.getRequestDispatcher("forgot_password.jsp").forward(request, response);;
		//out.print("message has been sent successfully");
		//out.close();
	}

	

}
