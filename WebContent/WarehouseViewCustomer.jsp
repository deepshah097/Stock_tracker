<%@page import="Sparks_To_Idea.Project_Code.bean.RegisterBean"%>
<%@page import="Sparks_To_Idea.Project_Code.bean.ItemorderBean"%>
<%@page import="java.util.ArrayList"%>

<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Customer</title>
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
</head>
<%@include file="Customer_header.jsp"%>
<body>

<center>
<form action="ChangeOrderStatusServlet" name="ChangeOrderStatusServlet" id="ChangeOrderStatusServlet">
<input type="hidden" name="orderId" id="orderId" > 
<br>

<img alt="" src="./images/storage.jpeg" style="width: 90%; height: 300px;">
<br>
<br>
<h4>Checkout Orders</h4>
<br>
<br>
<table style="background-color: white!important; width: 90%; font-size: 110%;">


<%

RegisterBean warehouse=(RegisterBean)session.getAttribute("customer");
RegisterBean ship=(RegisterBean)session.getAttribute("customer");
List<ItemorderBean>itemorderlist=(ArrayList)request.getAttribute("listofwarecust");


if(itemorderlist!=null){%>
	
	<tr style="background-color: #088da5; color: white!important;">
	<td rowspan="1">ORDER ID</td>
	<td rowspan="1">SOURCE</td>
	<td>DESTINATION</td>
	<td>ORDER QTY</td>
	<td>ORDER STATUS</td>
	<td>TOTAL PRICE</td>
	<td>ITEM ID</td>
	<td>ORDER DETAIL</td>
	
	</tr>

	
<% 	
	
	for(int i=0;i<itemorderlist.size();i++)
	{
		ItemorderBean itemorder=itemorderlist.get(i);
		ItemBean it=new ItemDao().getItemByPK(itemorder.getItemId());
		if(itemorder.getItemId().equals(it.getItemId())){
			
		
%>

<tr>

<td><%=itemorder.getOrderId() %></td>
<td><%=itemorder.getSource() %></td>
<td><%=itemorder.getDestination() %></td>
<td><%=itemorder.getOrderQty() %></td>
<td><%=itemorder.getOrderStatus() %></td>
<td><%=itemorder.getTotalPrice() %></td>
<td><%=it.getItemName() %></td>


<%

if(itemorder.getOrderStatus().equals("Shipped")){
%>
<td>
<a href="ChangeOrderStatusServlet?orderId=<%=itemorder.getOrderId()%>&orderstatus=Move In">Change Status</a>
</td>
<%
}else if(itemorder.getOrderStatus().equals("Booked")){
	
%>
<td>
Not Ship
</td>
<%	
}else{
	



%>
<td>Transaction Complated</td>
</tr>

<% }}}} %>


</table>
</form>
</center>
<br><br>
<%@include file="footer.jsp" %>
</body>
</html>