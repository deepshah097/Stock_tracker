<%@page import="Sparks_To_Idea.Project_Code.bean.ItemorderBean"%>
<%@page import="java.util.ArrayList"%>

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
 <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Storage space tracker Admin</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="vendors/iconfonts/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
  <link rel="stylesheet" href="vendors/css/vendor.bundle.addons.css">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="css/style1.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="images/favicon.png" />
</head>
<body>
<%@include file="adminHeader.jsp" %>
<div class="main-panel" style="position: absolute; left: 25%; top:10%;">
        <div class="content-wrapper">
          <div class="page-header">
            <h3 class="page-title">
           <!--    <a href="itemorder.jsp"><label class="badge badge-info">ADD+</label></a> -->
            </h3>
            <nav aria-label="breadcrumb">
              <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Storage Space Tracker</a></li>
                <li class="breadcrumb-item active" aria-current="page">Item Order Table</li>
              </ol>
            </nav>
          </div>
          <div class="card">
            <div class="card-body">
              <h4 class="card-title">Item Order Table</h4>
              <div class="row">
                <div class="col-12">
                  <div class="table-responsive">


<form action="itemorderUpdate" name="itemorderlist" id="itemorderlist">
<input type="hidden" name="orderId" id="orderId" > 
<table class="table">
<thead>

<%


List<ItemorderBean>itemorderlist=(ArrayList)request.getAttribute("listOfItemorder");

if(itemorderlist!=null){%>
	
	<tr>
	<th>ORDER ID</th>
	<th>SOURCE</th>
	<th>DESTINATION</th>
	<th>ORDER QTY</th>
	<th>ORDER STATUS</th>
	<th>TOTAL PRICE</th>
	<th>ITEM ID</th>
	
	</tr>
</thead>
<tbody>
	
<% 	
	
	for(int i=0;i<itemorderlist.size();i++)
	{
		ItemorderBean itemorder=itemorderlist.get(i);
%>

<tr>

<th><%=itemorder.getOrderId() %></th>
<th><%=itemorder.getSource() %></th>
<th><%=itemorder.getDestination() %></th>
<th><%=itemorder.getOrderQty() %></th>
<th><%=itemorder.getOrderStatus() %></th>
<th><%=itemorder.getTotalPrice() %></th>
<th><%=itemorder.getItemId() %></th>



<td>
<a href="itemorderEdit?orderId=<%= itemorder.getOrderId()%>"><label class="badge badge-gradient-warning">Edit</label></a>
<a href="itemorderDelete?orderId=<%= itemorder.getOrderId()%>"><label class="badge badge-danger">Delete</label></a>
</td>
</tr>

<% }} %>

</tbody>
</table>
</form>
</div>
</div>
</div>
</div>
</div>
</div>
</div>



</body>
</html>