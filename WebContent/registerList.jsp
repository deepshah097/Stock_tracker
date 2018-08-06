<%@page import="java.util.ArrayList"%>
<%@page import="Sparks_To_Idea.Project_Code.bean.RegisterBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
             <!--  Data table -->
            </h3>
            <nav aria-label="breadcrumb">
              <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Storage Space Tracker</a></li>
                <li class="breadcrumb-item active" aria-current="page">Register Table</li>
              </ol>
            </nav>
          </div>
          <div class="card">
            <div class="card-body">
              <h4 class="card-title">Register Table</h4>
              <div class="row">
                <div class="col-12">
                  <div class="table-responsive">
                    
<form action="registerUpdate" name="registerlist" id="registerlist">
<input type="hidden" name="registerId" id="registerId" > 

<table class="table">
<thead>

<tr>
<th>REGISTER ID</th>
<th>FIRST NAME</th>
<th>LAST NAME</th>
<th>CONTACT</th>
<th>ADDRESS</th>
<th>EMAIL</th>
<th>PASSWORD</th>
<th>DOB</th>
<th>GENDER ID</th>
<th>TYPE ID</th>
<th>STATE ID</th>
<th>COUNTRY ID</th>
<th>IS ACTIVE</th>

<th>Action</th>
</tr>
</thead>
<tbody>
<%

List<RegisterBean> registerlist=(ArrayList)request.getAttribute("listOfRegister");


if(registerlist!=null){
	for(int i=0;i<registerlist.size();i++)
	{
		RegisterBean register=registerlist.get(i);
%>

<tr>

<th><%=register.getRegisterId() %></th>
<th><%=register.getFirstName() %></th>
<th><%=register.getLastName() %></th>
<th><%=register.getContact() %></th>
<th><%=register.getAddress() %></th>
<th><%=register.getEmail() %></th>
<th><%=register.getPassword() %></th>
<th><%=register.getDob() %></th>
<th><%=register.getGenderId() %></th>
<th><%=register.getTypeId() %></th>
<th><%=register.getStateId() %></th>
<th><%=register.getCountryId() %></th>
<th><%=register.getIsActive() %></th>



<td>
<a href="registerEdit?registerId=<%= register.getRegisterId()%>"><label class="badge badge-gradient-warning">Edit</label></a>
<%if(register.getIsActive()=="false"){
	
	%>
	<a href="CustomerActiveServlet?registerId=<%= register.getRegisterId()%>&activeId=1"><label class="badge badge-info">Active</label></a>
	
	<%
}else{
	%>
	<a href="CustomerActiveServlet?registerId=<%= register.getRegisterId()%>&activeId=0"><label class="badge badge-info">Diactive</label></a>	
	<%
	}


%>

<a href="registerDelete?registerId=<%= register.getRegisterId()%>"><label class="badge badge-danger">Delete</label></a>

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