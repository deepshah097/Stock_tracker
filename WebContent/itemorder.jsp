<%@page import="Sparks_To_Idea.Project_Code.bean.ItemBean"%>
<%@page import="Sparks_To_Idea.Project_Code.dao.ItemDao"%>
<%@page import="java.util.ArrayList"%>
<!-- <%@page import="Sparks_To_Idea.Project_Code.bean.ItemBean"%> -->
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order Item</title>
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
<body>

<center>Itemorder Details </center>
<form action="itemorderInsert" name="itemorderInsert" id="itemorderInsert" method="get">
<center>
<table border="2">

<tr>
<th>Enter Source ::</th>
<td><input type="text" name="source" id="source" value="${itemorder.source}">${source}</td>
</tr>


<tr>
<th>Enter Destination ::</th>
<td><input type="text" name="destination" id="destination" value="${itemorder.destination}">${destination}</td>
</tr>


<tr>
<th>Enter Order Qty ::</th>
<td><input type="text" name="orderQty" id="orderQty" value="${itemorder.orderQty}">${orderQty}</td>
</tr>


<tr>
<th>Enter order status ::</th>
<td><input type="text" name="orderStatus" id="orderStatus" value="${itemorder.orderStatus}">${orderStatus}</td>
</tr>

<tr>
<th>Enter total price ::</th>
<td><input type="text" name="totalPrice" id="totalPrice" value="${itemorder.totalPrice}">${totalPrice}</td>
</tr>


<tr>
<th>Enter Item ::</th>
<td>
<select name="itemId" id="itemId" >
<option value="0">----Select Item-----</option>
<% 

    
    List<ItemBean> listOfItem =(ArrayList) new ItemDao().select();
    
	for(int i=0;i<listOfItem.size();i++)
	{
			ItemBean item=listOfItem.get(i);
	
%>

<option value="<%= item.getItemId()%>"><%=item.getItemName() %></option> 
<% } %>
</select>${itemName}</td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="submit"></td>
</tr>


</table>
</center>

</form>



</body>
</html>