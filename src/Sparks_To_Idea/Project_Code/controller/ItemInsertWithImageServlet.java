package Sparks_To_Idea.Project_Code.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import Sparks_To_Idea.Project_Code.bean.ItemBean;
import Sparks_To_Idea.Project_Code.dao.ItemDao;
import Sparks_To_Idea.Project_Code.util.ValidationUtils;

/**
 * Servlet implementation class ItemInsertWithImageServlet
 */
public class ItemInsertWithImageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   private String itemName,itemPrice,itemQty,itemImg;
   
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		FileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(factory);
		boolean isError=false;
		List<FileItem> items = null;//TO Store All File Items
		String fieldName = null;//TO Store All HTML Field Names 
		String fieldValue = null;//TO Store All Field Values
		String fileName = null;//TO Store File Name
		File file = null;
		ItemBean itembean=new ItemBean();
		
		try {
			items = upload.parseRequest(request);// Parse Request
			for (int i = 0; i < items.size(); i++)
			{
				FileItem item = items.get(i);
				
				if (item.isFormField()) 
				{
					fieldName = item.getFieldName();
					fieldValue = item.getString();
					if (fieldName.equalsIgnoreCase("itemName")) 
					{
						itemName = fieldValue;				
						System.out.println("itemName : " + itemName);
						
						if(ValidationUtils.isEmpty(itemName))
						{
							request.setAttribute("itemName", "<font color=red>*Enter item name</font>");
							isError=true;
						}
					}
				
				}
				
				
				
				if (item.isFormField()) 
				{
					fieldName = item.getFieldName();
					fieldValue = item.getString();
					if (fieldName.equalsIgnoreCase("itemPrice")) 
					{
						itemPrice = fieldValue;				
						System.out.println("itemPrice : " + itemPrice);
						
						if(ValidationUtils.isEmpty(itemPrice))
						{
							request.setAttribute("itemPrice", "<font color=red>*Enter item price</font>");
							isError=true;
						}
					}
				
				}
				
				
				
				if (item.isFormField()) 
				{
					fieldName = item.getFieldName();
					fieldValue = item.getString();
					if (fieldName.equalsIgnoreCase("itemQty")) 
					{
						itemQty = fieldValue;				
						System.out.println("itemQty : " + itemQty);
						
						if(ValidationUtils.isEmpty(itemQty))
						{
							request.setAttribute("itemQty", "<font color=red>*Enter item quantitys</font>");
							isError=true;
						}
					}
				
				}
				
				else
				{
					fieldName = item.getFieldName();
					System.out.println("FieldName : "+fieldName);
					itemImg = item.getName();
					System.out.println("itemImg : "+itemImg);
					
					itemImg = itemImg.substring(
							itemImg.lastIndexOf("\\") + 1,
							itemImg.length());
					System.out.println("image 1 : "+itemImg);
					
					//Get Application Path Dynamically to Store File
					ServletContext context = getServletContext();
					String appPath = context.getRealPath("\\");
					System.out.println("Path : "+appPath);
					
					//Static Path to Store File
					String path = "C:\\Third year\\core java\\StockTracker\\WebContent\\Upload\\Images";
					file = new File(path + File.separator
							+ itemImg);
					
					try {

						if (itemImg.isEmpty()) {

							if(ValidationUtils.isEmpty(itemImg))
							{
								//request.setAttribute("blog_content", "<font color=red>*Upload Image</font>");
								//isError=true;
								itembean.setItemImg("./images/blank.png");
								
							}
							
						} else {
							System.out.println("MIME : "+context.getMimeType(itemImg));
							if (context.getMimeType(itemImg).equals(
									"image/gif")
									|| context.getMimeType(itemImg)
											.equals("image/jpeg")
											|| context.getMimeType(itemImg)
											.equals("image/jpg")
									|| context.getMimeType(itemImg)
											.equals("image/png")) {
								
								item.write(file);
								System.out.println("===> "+file.getName());
								
								//student.setPhoto(file.getName());
								//System.out.println("Student Photo "+student.getPhoto());
								
								//req.setAttribute("missing_person_image", file.getName());
								//request.getRequestDispatcher("success.jsp").forward(request, response);
							
							} else {

								request.setAttribute(
										"itemImg",
										"<font color=red>*Please upload files that end in types .png,.jpeg only.</font>");
										isError=true;
							}
						}
					} catch (Exception e) {
						e.printStackTrace();
					}
					
					
				}//else for image(file)
				
			}//for 
			
			if(isError)
			{
				request.getRequestDispatcher("item.jsp").forward(request, response);
			}
			
			
			else{
				
				itembean.setItemName(itemName);
				itembean.setItemPrice(itemPrice);
				itembean.setItemQty(itemQty);
				itembean.setItemImg(itemImg);
				
				if(new ItemDao().insert(itembean));
				{
					System.out.println("Successful");
					request.getRequestDispatcher("itemList").forward(request, response);
				}	
				
			}

		}catch (Exception e) {
			e.printStackTrace();
			
		}
	}
}
				
				
		
	


