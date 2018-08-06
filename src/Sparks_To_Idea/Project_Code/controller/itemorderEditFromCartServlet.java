package Sparks_To_Idea.Project_Code.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Sparks_To_Idea.Project_Code.bean.ItemBean;
import Sparks_To_Idea.Project_Code.bean.ItemorderBean;
import Sparks_To_Idea.Project_Code.dao.ItemDao;
import Sparks_To_Idea.Project_Code.dao.ItemorderDao;

/**
 * Servlet implementation class itemorderEditFromCartServlet
 */
public class itemorderEditFromCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public itemorderEditFromCartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/plain");
		String orderId=request.getParameter("orderId");
		String itemId=request.getParameter("itemId");
		String status=request.getParameter("status");
		System.out.println("orderId ="+orderId);
		System.out.println("itemId ="+itemId);
		System.out.println("status="+status);
		PrintWriter out=response.getWriter();
		int orderqty=0;
		int wareqty=0;
		
		ItemorderBean itemorder=new ItemorderDao().getItemorderByPK(orderId);
		ItemBean it=new ItemDao().getItemByPK(itemId);
		System.out.println("orderQQQQQQQQ----------Qty"+orderqty);
		System.out.println("orderWWWWWWWWWWW----------Qty"+wareqty);
		if(status.equals("plus")){
			
			if(itemorder!=null && it!=null){
				orderqty=Integer.parseInt(itemorder.getOrderQty());
				wareqty=Integer.parseInt(it.getItemQty());

				System.out.println("orderQQQQQQQQ------&&&&&&----Qty"+orderqty);
				System.out.println("orderWWWWWWWWWWW-----&&&&&&&-----Qty"+wareqty);
				if(orderqty>=wareqty){
					System.out.println("orderQQQQQQQQ----IF------Qty"+orderqty);
					System.out.println("orderWWWWWWWWWWW-----IF-----Qty"+wareqty);
					out.print("full");
					//response.sendRedirect("CustomerViewOrder.jsp");
					
				}
				else{
					orderqty+=1;
					System.out.println("orderQQQQQQQQQty"+orderqty);
					boolean itemor=new ItemorderDao().updatebyqty(""+orderqty,itemorder.getOrderId());					
					ItemorderBean ite=new ItemorderDao().getItemorderByPK(orderId);
					ItemBean ite2=new ItemDao().getItemByPK(ite.getItemId());
					double a=Double.parseDouble(ite.getOrderQty());
					double b=Double.parseDouble(ite2.getItemPrice());
					double tot=a*b;
					boolean i=new ItemorderDao().updatebytotal(""+tot,orderId);
					
					out.print(""+ite.getOrderQty()+":"+tot);
					//response.sendRedirect("CustomerViewOrder.jsp");
					
				}
				
			}
		}	
			
			if(status.equals("minus")){
				
				if(itemorder!=null && it!=null){
					orderqty=Integer.parseInt(itemorder.getOrderQty());
					wareqty=Integer.parseInt(it.getItemQty());

					System.out.println("orderQQQQQQQQ------&&&&&&----Qty"+orderqty);
					System.out.println("orderWWWWWWWWWWW-----&&&&&&&-----Qty"+wareqty);
					if(orderqty<=1){
						System.out.println("orderQQQQQQQQ----IF------Qty"+orderqty);
						System.out.println("orderWWWWWWWWWWW-----IF-----Qty"+wareqty);
						//response.sendRedirect("itemorderDelete?orderId="+itemorder.getOrderId());
						out.print("less");
					}
					else{
						orderqty-=1;
						System.out.println("orderQQQQQQQQQty"+orderqty);
						boolean itemor=new ItemorderDao().updatebyqty(""+orderqty,itemorder.getOrderId());					
						ItemorderBean ite=new ItemorderDao().getItemorderByPK(orderId);
						ItemBean ite2=new ItemDao().getItemByPK(ite.getItemId());
						double a=Double.parseDouble(ite.getOrderQty());
						double b=Double.parseDouble(ite2.getItemPrice());
						double tot=a*b;
						boolean i=new ItemorderDao().updatebytotal(""+tot,orderId);
						
						out.print(""+ite.getOrderQty()+":"+tot);
												
					}
					
				}
			
			
		}
		
		
		
		}
	

}
