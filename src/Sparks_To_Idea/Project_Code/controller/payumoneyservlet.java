package Sparks_To_Idea.Project_Code.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Sparks_To_Idea.Project_Code.bean.ItemorderBean;
import Sparks_To_Idea.Project_Code.bean.ParamBean;

/**
 * Servlet implementation class payumoneyservlet
 */
public class payumoneyservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String firstname=request.getParameter("firstname");
		String amount=request.getParameter("amount");
		String email=request.getParameter("email");
		String productinfo=request.getParameter("productinfo");
		String phone=request.getParameter("phone");
		String orderId=request.getParameter("orderId");
		String surl="http://localhost:6018/StockTracker/WebContent/success.jsp";
		String furl="http://localhost:6018/StockTracker/WebContent/falier.jsp";
		
		
		ParamBean paramName=new ParamBean();
		paramName.setFirstname(firstname);
		paramName.setAmount(amount);
		paramName.setEmail(email);
		paramName.setPhone(phone);
		paramName.setProductinfo(productinfo);
		paramName.setSurl(surl);
		paramName.setFurl(furl);
		paramName.setOrderId(orderId);
		
		request.setAttribute("paramName", paramName);
		request.getRequestDispatcher("payuform.jsp").forward(request, response);
		
		
		
	}

}
