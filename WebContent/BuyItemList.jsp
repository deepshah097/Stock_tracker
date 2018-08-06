<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
function check() {
	var f=document.CustomerIndexItemListServlet;
	var a=document.getElementById("buyQty").value;
	var b=document.getElementById("itemQty").value;
	var c=document.getElementById("address").value;
	
	if(a>b || a=='' ||c=='' ||a=='0'){
		alert("Enter proper Valid Details");	
	}else{
		alert("Item added in your cart Continue Shopping...");
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

<form action="CustomerIndexItemListServlet" name="CustomerIndexItemListServlet" id="CustomerIndexItemListServlet">
<input type="hidden" name="customerId" value="<%=customer.getRegisterId()%>">
<input type="hidden" name="itemId" value="${item.itemId}">
<br>
<!-- <div style="position: fixed;left:2px; height: 400px; width: 150px;">
<img alt="" src="./images/ad1.jpg" style="position: fixed; height: 400px; width: 250px; top:160px;">
</div> -->
<center>
<div style="position: fixed; height: 400px; width: 600px; border-style: outset; background-color: white; left:300px;">
<img name ="itemImg" alt="" src="./Upload/Images/${item.itemImg}" style="height: 290px; width: 200px; position: fixed;left:310px;top:110px;">
<div style="position: relative; height: 400px; width: 600px; left:100px; top:45px;">
<table>
<tr>
<td>Name</td>
<td><input type="text" name="itemName" value="${item.itemName}" readonly="readonly">
</td>
</tr>




<tr>
<td>Qty In Warehouse</td>
<td><input type="text" name="itemQty" id="itemQty" value="${item.itemQty}" readonly="readonly">
</td>
</tr>


<tr>
<td>Price</td>
<td><input type="text" name="itemPrice" value="${item.itemPrice}" readonly="readonly">
</td>
</tr>

<tr>
<td>Enter Your Qty</td>
<td><input type="text" name="buyQty" id="buyQty">
</td>
</tr>

<tr>
<td>Your Address</td>
<td>
<textarea rows="" cols="" name="address" id="address"><%=customer.getAddress()%></textarea>
<%-- <input type="text" name="address" id="address" value="<%=customer.getAddress()%>"> --%>
</td>
</tr>
<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>

<tr>
<td></td>
<td><input type="button" name="btnsub" value="ADD TO CART" onclick="check();"></td>
</tr>


</table>
</div>
</div>
</center>
</form>
</body>
</html>