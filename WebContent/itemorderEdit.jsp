
<%@page import="Sparks_To_Idea.Project_Code.bean.ItemorderBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Sparks_To_Idea.Project_Code.dao.ItemDao"%>
<%@page import="Sparks_To_Idea.Project_Code.bean.ItemBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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


<center> Item order Detail </center>
<form action="itemorderUpdate" name="" id="">
<input type="hidden" name="orderId" id="orderId" value="${itemorder.orderId}">
 
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
<select name="itemId" id="itemId">
<option value="0">---Select Item---</option>
<%
	
List<ItemBean> listOfItem = (ArrayList)new ItemDao().select();

ItemorderBean itemorder=(ItemorderBean)request.getAttribute("itemorder");

for(int i=0;i<listOfItem.size();i++)
{
	ItemBean item=listOfItem.get(i);
	
	if(item.getItemId().equals(itemorder.getItemId()))
	{	
      
%>
<option value="<%= item.getItemId()%>" selected="selected"><%=item.getItemName()%></option>
<%}else{%>
<option value="<%= item.getItemId()%>"><%=item.getItemName() %></option>
<%}} %>
</select>
${itemId}

<td><input type="submit" value="UPDATE">
<input type="reset" value="CLEAR"></td>
</tr>


</table>
</center>
</form>




</body>
</html>