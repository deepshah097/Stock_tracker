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
<title>Ship View Customer</title>
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
<%@include file="Customer_header.jsp" %>
<body>

<center>
<form action="ChangeOrderStatusServlet" name="ChangeOrderStatusServlet" id="ChangeOrderStatusServlet">
<input type="hidden" name="orderId" id="orderId" > 
<br>
<img alt="delivery" src="./images/delivery3.jpg" style="width: 90%; height: 300px;">
<br>
<br>
<h4>Checkout Orders</h4>
<br>
<br>
<table style="background-color: white!important; width: 90%; font-size: 110%;">
<%

RegisterBean warehouse=(RegisterBean)session.getAttribute("warehouse");
RegisterBean ship=(RegisterBean)session.getAttribute("ship");
List<ItemorderBean>itemorderlist=(ArrayList)request.getAttribute("listofshipcust");

if(itemorderlist!=null){%>
	
	<tr style="background-color: #088da5; color: white!important;">
	<td rowspan="1">ORDER ID</td>
	<td rowspan="1">SOURCE</td>
	<td rowspan="1">DESTINATION</td>
	<td rowspan="1">ORDER QTY</td>
	<td rowspan="1">ORDER STATUS</td>
	<td rowspan="1">TOTAL PRICE</td>
	<td rowspan="1">ITEM ID</td>
	<td rowspan="1">ORDER DETAIL</td>
	
	</tr>

	
<% 	
	
	for(int i=0;i<itemorderlist.size();i++)
	{
		ItemorderBean itemorder=itemorderlist.get(i);
		ItemBean it=new ItemDao().getItemByPK(itemorder.getItemId());
		if(itemorder.getItemId().equals(it.getItemId())){
%>

<tr>

<td rowspan="1"><%=itemorder.getOrderId() %></td>
<td rowspan="1"><%=itemorder.getSource() %></td>
<td rowspan="1"><%=itemorder.getDestination() %></td>
<td rowspan="1"><%=itemorder.getOrderQty() %></td>
<td rowspan="1"><%=itemorder.getOrderStatus() %></td>
<td rowspan="1"><%=itemorder.getTotalPrice() %></td>
<td rowspan="1"><%=it.getItemName() %></td>


<%

if(itemorder.getOrderStatus().equals("Booked")){
%>
<td rowspan="1">
<a href="ChangeOrderShipStatusServlet?orderId=<%=itemorder.getOrderId()%>&orderstatus=Shipped">Confirm to ship</a>
</td>
<%
}
%>

<%	
	


%>

</tr>

<% }}} %>


</table>
</form>
</center>
<br><br>
<%@include file="footer.jsp" %>
</body>
</html>