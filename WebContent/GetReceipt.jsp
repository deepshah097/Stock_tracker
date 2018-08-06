<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.apache.naming.java.javaURLContextFactory"%>
<%@page import="Sparks_To_Idea.Project_Code.dao.RegisterDao"%>
<%@page import="Sparks_To_Idea.Project_Code.dao.ItemorderDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Sparks_To_Idea.Project_Code.bean.ItemorderBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//Dth HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dth">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Get Receipt</title>
<script type="text/javascript">

window.addEventListener( "pageshow", function ( event ) {
	  var historyTraversal = event.persisted || 
	                         ( typeof window.performance != "undefined" && 
	                              window.performance.navigation.type === 2 );
	  if ( historyTraversal ) {
	    // Handle page restore.
	    window.location.reload();
	  }
	});
	
	

</script>
<script>
function myFunction() {
    window.print();
}
</script>

 <meta charset="utf-8">
    <title>A simple, clean, and responsive HTML invoice template</title>
    
    <style>
    .invoice-box {
        max-width: 800px;
        margin: auto;
        padding: 30px;
        border: 1px solid #eee;
        box-shadow: 0 0 10px rgba(0, 0, 0, .15);
        font-size: 16px;
        line-height: 24px;
        font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
        color: #555;
    }
    
    .invoice-box table {
        width: 100%;
        line-height: inherit;
        text-align: left;
    }
    
    .invoice-box table td {
        padding: 5px;
        vertical-align: top;
    }
    
    .invoice-box table tr td:nth-child(2) {
        text-align: right;
    }
    
    .invoice-box table tr.top table td {
        padding-bottom: 20px;
    }
    
    .invoice-box table tr.top table td.title {
        font-size: 45px;
        line-height: 45px;
        color: #333;
    }
    
    .invoice-box table tr.information table td {
        padding-bottom: 40px;
    }
    
    .invoice-box table tr.heading td {
        background: #eee;
        border-bottom: 1px solid #ddd;
        font-weight: bold;
    }
    
    .invoice-box table tr.details td {
        padding-bottom: 20px;
    }
    
    .invoice-box table tr.item td{
        border-bottom: 1px solid #eee;
    }
    
    .invoice-box table tr.item.last td {
        border-bottom: none;
    }
    
    .invoice-box table tr.total td:nth-child(2) {
        border-top: 2px solid #eee;
        font-weight: bold;
    }
    
    @media only screen and (max-width: 600px) {
        .invoice-box table tr.top table td {
            width: 100%;
            display: block;
            text-align: center;
        }
        
        .invoice-box table tr.information table td {
            width: 100%;
            display: block;
            text-align: center;
        }
    }
    
    /** RTL **/
    .rtl {
        direction: rtl;
        font-family: Tahoma, 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
    }
    
    .rtl table {
        text-align: right;
    }
    
    .rtl table tr td:nth-child(2) {
        text-align: left;
    }
    </style>

</head>
<%@include file="Customer_header.jsp" %>
<body>
<%
String orderId=request.getParameter("orderId");

ItemorderBean listofitem=new ItemorderDao().getItemorderByPK(orderId);
if(listofitem!=null){
	
		RegisterBean user=new RegisterDao().getRegisterByPK(customer.getRegisterId());
		if(user!=null){
	
%>
<br>
<div class="invoice-box" style="background-color: white!important;">
        <table cellpadding="0" cellspacing="0">
            <tr class="top">
                <td colspan="2">
                    <table>
                        <tr>
                            <td class="title">
                               <!--  <img src="https://www.sparksuite.com/images/logo.png" style="width:100%; max-width:300px;"> -->
                           	<label style="color: grey; font-size: 70%;">Storage Space Tracker</label>
                            </td>
                            
                            <td>
                                Order No.: <%=listofitem.getOrderId()%><br>
                                Customer Name: <%=user.getFirstName() %>&nbsp;<%=user.getLastName() %>
                                <br>
                                Created Date:
                              <%--  <%=(new java.util.Date()).toLocaleString()%> --%>
                               <%
                               	SimpleDateFormat sdf=new SimpleDateFormat("dd-MM-yyyy");
                               String date=sdf.format(new Date());
                               %> 
                               <%=date%>    
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            
            <tr class="information">
                <td colspan="2">
                    <table>
                        <tr>
                            <td>
                                StorageSpaceTracker, Inc.<br>
                                12345 Sunny Road<br>
                                Sunnyville, Mumbai
                            </td>
                            
                            <td>
                                
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <%
		}
            %>
            <tr class="heading">
               <!--  <td>
                    Payment Method
                </td>
                
                <td>
                    Check #
                </td> -->
            </tr>
            
            <tr class="details">
               <!--  <td>
                    Check
                </td>
                
                <td>
                    1000
                </td> -->
            </tr>
            
            <tr class="heading">
                
                <td style="text-align: right;">
                    Item Detail
                </td>
                <td></td>
                
                <!-- <td>
                    Price
                </td> -->
            </tr>
            <%
            List<ItemBean> item=(ArrayList)new ItemDao().select();
        	for(int i=0;i<item.size();i++){
        		
        	ItemBean it=item.get(i);
        	if(listofitem.getItemId().equals(it.getItemId())){
            
            
            %>
            
            <tr class="item">
                <td>
                    Item Name
                </td>
                
                <td>
                    <%=it.getItemName()%>
                    
                </td>
            </tr>
            
            <tr class="item">
                <td>
                    Item Quantity
                </td>
                
                <td>
                    <%=listofitem.getOrderQty()%>
                </td>
            </tr>
            
            <tr class="item last">
                <td>
                    Item Price
                </td>
                
                <td>
                   <b><%=it.getItemPrice()%></b>
                </td>
            </tr>
            
            <tr class="total">
                 <td>
                 Total Amount
                 </td>
                
                <td>
                   <%=listofitem.getTotalPrice()%>
                </td> 
            </tr>
        </table>
        
    </div><br>
    <center>
    <button onclick="myFunction()">Print</button>
</center>
<%
	}
}
}

%>

</body>
</html>