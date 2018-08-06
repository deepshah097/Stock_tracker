package Sparks_To_Idea.Project_Code.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Sparks_To_Idea.Project_Code.bean.RegisterBean;
import Sparks_To_Idea.Project_Code.dao.RegisterDao;
import Sparks_To_Idea.Project_Code.util.ValidationUtils;


public class RegisterInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String contact=request.getParameter("contact");
		String address=request.getParameter("address");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String dob=request.getParameter("dob");
		String genderId=request.getParameter("genderId");
		String typeId=request.getParameter("typeId");
		String stateId=request.getParameter("stateId");
		String countryId=request.getParameter("countryId");
		
		System.out.print("firstName:hiii");
		RegisterBean register=new RegisterBean();
		
		boolean isEmpty = false;
		
		if (ValidationUtils.isEmpty(firstName)) {
			request.setAttribute("firstName",
					"<font color=red>* First name is Required</font>");
			isEmpty = true;
		} else {
			register.setFirstName(firstName);
		}
		
		if (ValidationUtils.isEmpty(lastName)) {
			request.setAttribute("lastName",
					"<font color=red>* Last name is Required</font>");
			isEmpty = true;
		} else {
			register.setLastName(lastName);
		}
		
		if (ValidationUtils.isEmpty(contact)) {
			request.setAttribute("contact",
					"<font color=red>* contact is Required</font>");
			isEmpty = true;
		} else {
			register.setContact(contact);
		}
		
		if (ValidationUtils.isEmpty(address)) {
			request.setAttribute("address",
					"<font color=red>* address is Required</font>");
			isEmpty = true;
		} else {
			register.setAddress(address);
		}
		
		if (ValidationUtils.isEmpty(email)) {
			request.setAttribute("email",
					"<font color=red>* Email is Required</font>");
			isEmpty = true;
		} else {
			register.setEmail(email);
		}
		if (ValidationUtils.isEmpty(password)) {
			request.setAttribute("password",
					"<font color=red>* password is Required</font>");
			isEmpty = true;
		} else {
			register.setPassword(password);
		}
		
		if (ValidationUtils.isEmpty(dob)) {
			request.setAttribute("dob",
					"<font color=red>* Dob is Required</font>");
			isEmpty = true;
		} else {
			register.setDob(dob);
		}
		
		
		if(genderId.equals("0"))
		{
			System.out.println("hellohi");
			request.setAttribute("genderName","<font color=red> *Gender name is required</font>");
			isEmpty=true;
		}
		else
		{
			
			register.setGenderId(genderId);
		}
		
		
		if(typeId.equals("0"))
		{
			System.out.println("hellohi");
			request.setAttribute("typeName","<font color=red> * Type Name is required</font>");
			isEmpty=true;
		}
		else
		{
			
			register.setTypeId(typeId);
		}
		
		if(stateId.equals("0"))
		{
			System.out.println("hellohi");
			request.setAttribute("stateName","<font color=red> * State Name is required</font>");
			isEmpty=true;
		}
		else
		{
			
			register.setStateId(stateId);
		}
		
		if(countryId.equals("0"))
		{
			System.out.println("hellohi");
			request.setAttribute("countryName","<font color=red> *Country Name is required</font>");
			isEmpty=true;
		}
		else
		{
			
			register.setCountryId(countryId);
		}
		
		if(isEmpty){
			request.setAttribute("register", register);
			request.getRequestDispatcher("register.jsp").forward(request, response);
			
		}else{
				if(new RegisterDao().insert(register)){
				System.out.println(" Registered information insertion............");
				response.sendRedirect("Login.jsp");
			}else{
				System.out.println(" Registered information not insertion............");
				
			}
			
		}


		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}
}
