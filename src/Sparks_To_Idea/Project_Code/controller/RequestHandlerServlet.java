package Sparks_To_Idea.Project_Code.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Sparks_To_Idea.Project_Code.bean.ItemorderBean;
import Sparks_To_Idea.Project_Code.bean.RegisterBean;
import Sparks_To_Idea.Project_Code.dao.ItemorderDao;
import Sparks_To_Idea.Project_Code.dao.RegisterDao;

/**
 * Servlet implementation class RequestHandlerServlet
 */
public class RequestHandlerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       private String name,msg,to;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String status=request.getParameter("status");
	
		System.out.println("STATUS IS---->"+status);
		
		
		
		if(status.equals("success")){
			
			String orderId=request.getParameter("orderId");
			ItemorderBean itemorder=new ItemorderDao().getItemorderByPK(orderId);
			
			if(itemorder!=null)
			{
				RegisterBean register = new RegisterDao().getRegisterByPK(itemorder.getCustomerId());
				
				if(register!=null){
			
					System.out.println("email id handler is"+register.getEmail());
					String subject="Checkout your payment Receipt";
					String to=register.getEmail().toString();
					String msg="Click here "+"http://localhost:6018/StockTracker/GetReceipt.jsp?orderId="+orderId;
					
					System.out.println("email id handler is--->"+to);
					
					ContactEmail.sendmail(to, subject, msg);
					
					if(new ItemorderDao().updatepayment(orderId))
					{
						System.out.println("updated successfully");
						response.sendRedirect("CustomerViewOrderServlet2");
					}				
				}
			}
			
		}
		
		if(status.equals("cancel")){
			
			response.sendRedirect("CustomerViewOrderServlet2");
		}
		
		
	}

}
