<%@page import="Sparks_To_Idea.Project_Code.bean.ItemorderBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Sparks_To_Idea.Project_Code.bean.ItemBean"%>
<%@page import="java.util.List"%>
<%@page import="Sparks_To_Idea.Project_Code.dao.ItemDao"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="struct1.css" rel="stylesheet" type="text/css" >
<title>Customer</title>

<script type="text/javascript">
function doFunction(itemid) {
	var f=document.CustomerIndexItemListServlet;
	var a1=document.getElementById("itemqty").value;
	var b1=document.getElementById("buyqty").value;
	var itemId=itemid;
	if(b1>a1 || b1<=0){
		window.alert("Enter Proper Product Quantity!!"+itemId);
	}
	else{
		f.action="CustomerIndexItemListServlet";
		f.submit();
	}
	
}

</script>
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
<br>
<%-- <h4>Welcome&nbsp;<%=customer.getFirstName()%>&nbsp;<%=customer.getLastName()%></h4> --%>

<div class="cont">
	<div class="row1">
		 
	</div>
</div>
<div class="cont">
	<div class="row1">
		<div class="col_12" style="background-color: black;"><img alt="" src="./images/ad1.jpg" width="100%" height="350">
		</div>
	</div>
</div>
<!-- <center>Itemorder Details </center> -->
<div class="cont" style="background-color:white !important;">
	<div class="row1" style="background-color:white !important;">
		
		
<form action="itemorderInsert" name="itemorderInsert" id="itemorderInsert" method="get">
<input type="hidden" name="itemId" id="itemId" > 
<input type="hidden" name="customerId">
<%


List<ItemBean>itemlist=(ArrayList)request.getAttribute("listOfItem");

if(itemlist!=null){
	for(int i=0;i<itemlist.size();i++)
	{
		ItemBean item=itemlist.get(i);
%>
<div class="col_4" style=" margin-right:5px;margin-left:5px;background-color:white !important;border-style: ridge;border-radius:10px;margin-top:10px;"><center>
<table class="table" style="background-color:white !important;">

<tr>

<td><center><img src="./Upload/Images/<%=item.getItemImg()%>" style="height: 160px;width: 250px;"></center></td>
</tr>
<tr>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><%=item.getItemName()%></b></td>
</tr>
<tr>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Rs. <%=item.getItemPrice() %></b></td>
</tr>
<tr>
<%-- <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <%=item.getItemQty()%></td> --%>

</tr>
<tr>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<button class=" hoverbtn badge badge-gradient-warning" style="font-size: 110%;width:150px;"><a href="CustomerViewOrderServlet?itemId=<%= item.getItemId()%>&itemQty=<%=item.getItemQty()%>&itemPrice=<%=item.getItemPrice()%>&itemName=<%=item.getItemName()%>&itemImg=<%=item.getItemImg()%>&customerId=<%=customer.getRegisterId()%>" style="background-color: none; color:black; width:600px;" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Select Item&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></button>

</td>
</tr>
</table>
</center>
</div>
<% }} %>

<!-- </tbody> -->
</form>
		
		</div>
		
	</div>
	
<%@include file="footer.jsp" %>
</body>
</html>