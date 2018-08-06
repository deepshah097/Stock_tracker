<%@page import="java.util.ArrayList"%>
<%@page import="Sparks_To_Idea.Project_Code.bean.ItemBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
<%@include file="adminHeader.jsp" %>
<div class="main-panel" style="position: absolute; left: 25%; top:10%;">
        <div class="content-wrapper">
          <div class="page-header">
            <h3 class="page-title">
            <a href="item.jsp"><label class="badge badge-info">ADD+</label></a>
            </h3>
            <nav aria-label="breadcrumb">
              <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Storage Space Tracker</a></li>
                <li class="breadcrumb-item active" aria-current="page">Item Table</li>
              </ol>
            </nav>
          </div>
          <div class="card">
            <div class="card-body">
              <h4 class="card-title">Item Table</h4>
              <div class="row">
                <div class="col-12">
                  <div class="table-responsive">



<form action="itemUpdate" name="itemlist" id="itemlist">
<input type="hidden" name="itemId" id="itemId" > 
<table class="table">
<thead>
<tr>
<th>ITEM ID</th>
<th>ITEM NAME</th>
<th>ITEM PRICE</th>
<th>ITEM QTY</th>
<th>Action</th>
</tr>
</thead>
<tbody>
<%


List<ItemBean>itemlist=(ArrayList)request.getAttribute("listOfItem");

if(itemlist!=null){
	for(int i=0;i<itemlist.size();i++)
	{
		ItemBean item=itemlist.get(i);
%>

<tr>

<th><%=item.getItemId() %></th>
<th><%=item.getItemName()%></th>
<th><%=item.getItemPrice() %></th>
<th><%=item.getItemQty()%></th>



<td>
<a href="itemEdit?itemId=<%= item.getItemId()%>"><label class="badge badge-gradient-warning">Edit</label></a>
<a href="itemDelete?itemId=<%= item.getItemId()%>"><label class="badge badge-danger">Delete</label></a>
</td>
</tr>

<% }} %>

</tbody>
</table>
</form>
</div></div>
</div></div>
</div></div>
</div>

</body>
</html>