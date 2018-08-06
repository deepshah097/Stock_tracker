<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Item Insert</title>
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
             <!-- <a href="state.jsp"><label class="badge badge-info">ADD+</label></a> -->
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
              <h4 class="card-title">Add Item</h4>
              <div class="row">
                <div class="col-12">
                  <div class="table-responsive">

<form action="ItemInsertWithImageServlet" name="itemInsert" id="itemInsert" method="post" enctype="multipart/form-data">

<table class="table">

<div class="form-group ">
	<div class="col-xs-12">
Enter Item Name ::&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" name="itemName" id="itemName" value="${item.itemName}">${itemName}
</div>
</div>

<div class="form-group ">
	<div class="col-xs-12">
Enter Item Price ::&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" name="itemPrice" id="itemPrice" value="${item.itemPrice}">${itemPrice}
</div>
</div>

<div class="form-group ">
	<div class="col-xs-12">
Enter Item Quantity ::
<input type="text" name="itemQty" id="itemQty" value="${item.itemQty}">${itemQty}
</div>
</div>


<div class="form-group ">
	<div class="col-xs-12">
Enter Item Image ::
<input type="file" name="itemImg" id="itemImg" value="${item.itemImg}">${itemImg}
</div>
</div>

<div class="form-group ">
	<div class="col-xs-12">
<!-- <input type="submit" value="submit"></td> -->
 <a href="itemList"><label class="badge badge-gradient-warning"><input type="submit" style="background-color:orange; border: none;" id="btnSubmit" name="btnSubmit" value="submit"></label></a>
 </div>
</div>
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
       <footer class="footer">
          <div class="d-sm-flex justify-content-center justify-content-sm-between">
            <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © 2018 <a href="https://www.urbanui.com/" target="_blank">Urbanui</a>. All rights reserved.</span>
            <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Hand-crafted & made with <i class="mdi mdi-heart text-danger"></i></span>
          </div>
        </footer>
 
   
</body>
</html>